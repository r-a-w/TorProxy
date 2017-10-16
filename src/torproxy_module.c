/*
 ***************************************************
 *
 * this module automaticaly forwards all TCP traffic
 * through a user chosen proxy
 *
 ***************************************************
*/


#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/proc_fs.h>
#include <linux/ip.h>
#include <linux/tcp.h>
#include <linux/netfilter.h>
#include <linux/netfilter_ipv4.h>
#include <linux/types.h>
#include <linux/kthread.h>
#include <linux/time.h>
#include <linux/version.h>
#include <net/ip.h>
#include <net/netfilter/nf_conntrack_core.h>
#include <uapi/linux/netfilter/nf_nat.h>
#include <net/netfilter/nf_nat.h>

MODULE_LICENSE("GPL");

/* tor proxy in network byte order */
#define TOR_PROXY_IP 0x0100007f /* 127.0.0.1 */
#define TOR_TRANSPROXY_PORT 0x5023 /* 9040 */
#define TOR_DNS_PORT 0x5d23 /* 9053 */
#define RELAY_FILE_NAME "tor_relays"

#define MAX_RELAY 8
#define MAX_NAT_ENTRY 500

#define IP_NAT_RANGE_MAP_IPS (1 << 0)
#define IP_NAT_RANGE_PROTO_SPECIFIED (1 << 1)

/* netfilter hook registration */
static struct nf_hook_ops nfho_local_out, nfho_pre_routing, nfho_forward, nfho_ipv6;

/* for kernel thread */
struct task_struct *task;
int data=0;

/* IANA Reserved IP blocks */
int n_reserved_blocks = 4;
unsigned int reserved_blocks[] = {
  0x0000000a,   // 10.0.0.0/8
  0x0000007f,   // 127.0.0.0/8
  0x000010ac,   // 172.16.0.0/12
  0x006358c0    // 192.168.0.0/16
};
unsigned int cidr_mask[] = {8, 8, 12, 16};

/* for NAT'ing requests */
typedef struct{
  unsigned int ip_src;
  unsigned int ip_dst;
  short port_src;
  short port_dst;
} nat_entry;
nat_entry *nat_table;

/* func. defs */
ssize_t relay_file_read(struct file *file, char *buf, size_t count, loff_t *offset);
ssize_t relay_file_write(struct file *file, const char *buf, size_t count, loff_t *offset);

/* for creation of proc entry for kernel-userspace communication */
struct proc_dir_entry *proc_entry;
static const struct file_operations proc_file_ops= {
  .read = relay_file_read,
  .write = relay_file_write,
};

/* for storing currently used tor relays */
int *relays;

/* mutex for reading from relays */
static DEFINE_MUTEX(cache_lock);


/* for reading from created tor relays proc entry */
ssize_t relay_file_read(struct file *file, char *buf, size_t count, loff_t *offset){
  int ret;

  if(*offset > sizeof(int)*MAX_RELAY) return 0;

  if(count > (sizeof(int)*MAX_RELAY)+*offset){
    ret = sizeof(int)*MAX_RELAY-*offset;
  } else{
    ret = count;
  }

  memcpy(buf, relays+*offset, ret);
  *offset += ret;

  return ret;

}

/* for writing to created tor relays proc entry */
ssize_t relay_file_write(struct file *file, const char *buf, size_t count, loff_t *offset){
  int ret;

  if(count > (sizeof(int)*MAX_RELAY)-*offset){
    ret = sizeof(int)*MAX_RELAY-*offset;
  } else{
    ret = count;
  }

  mutex_lock(&cache_lock);
  if(copy_from_user(relays+*offset, buf, ret)){
    mutex_unlock(&cache_lock);
    return -EFAULT;
  }
  mutex_unlock(&cache_lock);
  *offset += ret;

  return ret;

}



/* netfilter local out hook function */
unsigned int local_out_hook_func(unsigned int hooknum,
    struct sk_buff *skb,
    const struct net_device *in,
    const struct net_device *out,
    int (*okfn)(struct sk_buff *),
    struct xt_action_param *param)
{
  int i, err, len, offset;
  unsigned int ret;
  struct iphdr *ip_header;
  struct tcphdr *tcp_header;
  struct udphdr *udp_header;
  struct nf_nat_range newrange;
  enum ip_conntrack_info ctinfo;
  struct nf_conn *ct;
  nat_entry *nat;

  ip_header = (struct iphdr *) skb_network_header(skb);

  /* Handle UDP packets */
  if(ip_header->protocol == IPPROTO_UDP){

    udp_header = (struct udphdr *) skb_transport_header(skb);

    /* If regular DNS request forward to TorDNS */
    if((short) udp_header->dest == (short) 0x3500){ // UDP port 53

      /* store nat entry */
      mutex_lock(&cache_lock);
      for(i=0; i<MAX_NAT_ENTRY; i++){
        nat = &nat_table[i];
        if(nat->ip_dst == 0){
          nat->ip_dst = ip_header->daddr;
          nat->port_dst = udp_header->dest;
          nat->ip_src = ip_header->saddr;
          nat->port_src = udp_header->source;
          break;
        }
      }
      mutex_unlock(&cache_lock);

      if(i == MAX_NAT_ENTRY){
        printk(KERN_INFO "Torproxy NAT table full, dropping packet %pI4:%d\n", &ip_header->daddr, ntohs(udp_header->dest));
        return NF_DROP;
      }

      /* modify dest to go to DNS proxy */
      ip_header->daddr = (unsigned int) TOR_PROXY_IP; 
      udp_header->dest = (short) TOR_DNS_PORT;

      /* correct the IP checksum */
      ip_send_check(ip_header);

      /* correct UDP checksum */
      offset = skb_transport_offset(skb);
      len = skb->len - offset;
      udp_header->check = 0;
      if(skb->len > 60){
        udp_header->check  = csum_tcpudp_magic(ip_header->saddr,
                                                 ip_header->daddr,
                                                 len,
                                                 IPPROTO_UDP,
                                                 csum_partial((unsigned char *)udp_header,len,0));
      }
      else{
        udp_header->check  = ~csum_tcpudp_magic(ip_header->saddr,
                                                  ip_header->daddr,
                                                  len,
                                                  IPPROTO_UDP,
                                                  0);
      }

      /* re-route mangled packets */
#if LINUX_VERSION_CODE >= KERNEL_VERSION(4,4,0)
      err = ip_route_me_harder(param->state->net, skb, RTN_UNSPEC);
#else
      err = ip_route_me_harder(skb, RTN_UNSPEC);
#endif

      if(err < 0){
       return NF_DROP;
      }

      return NF_ACCEPT;

    }


    /* If packet is from TorDNS */
    if((ip_header->saddr == (unsigned int) TOR_PROXY_IP) && (udp_header->source == (short) TOR_DNS_PORT)){ // UDP port 53

      /* look for entry in NAT table */
      mutex_lock(&cache_lock);
      for(i=0; i<MAX_NAT_ENTRY; i++){
        nat = &nat_table[i];
        if(nat->port_src == (short) udp_header->dest){
          ip_header->saddr = nat->ip_dst;
          udp_header->source = nat->port_dst;
          /* erase NAT entry */
          memset(nat, 0, sizeof(nat_entry));
          break;
        }
      }
      mutex_unlock(&cache_lock);

      /* port not in NAT table */
      if(i == MAX_NAT_ENTRY){
        return NF_ACCEPT;
      }


      /* correct the IP checksum */
      ip_send_check(ip_header);

      /* correct UDP checksum */
      offset = skb_transport_offset(skb);
      len = skb->len - offset;
      udp_header->check = 0;
      if(skb->len > 60){
        udp_header->check  = csum_tcpudp_magic(ip_header->saddr,
                                                ip_header->daddr,
                                                len,
                                                IPPROTO_UDP,
                                                csum_partial((unsigned char *)udp_header,len,0));
      }
      else{
        udp_header->check  = ~csum_tcpudp_magic(ip_header->saddr,
                                                  ip_header->daddr,
                                                  len,
                                                  IPPROTO_UDP,
                                                  0);
      }


      /* re-route mangled packets */
#if LINUX_VERSION_CODE >= KERNEL_VERSION(4,4,0)
      err = ip_route_me_harder(param->state->net, skb, RTN_UNSPEC);
#else
      err = ip_route_me_harder(skb, RTN_UNSPEC);
#endif

      if(err < 0){
        printk("Error rerouting packet\n");
        return NF_DROP;
      }

      return NF_ACCEPT;

    }
  }



  /* Drop all non TCP packets */
  if(ip_header->protocol != IPPROTO_TCP){
    return NF_DROP;
  }

  tcp_header = (struct tcphdr *) skb_transport_header(skb);

  /* ensure all outbound packets are tor relays */
  mutex_lock(&cache_lock);
  for(i=0; i<MAX_RELAY;i++){
    if(ip_header->daddr == relays[i]){
      mutex_unlock(&cache_lock);
      return NF_ACCEPT;
    }
  }
  mutex_unlock(&cache_lock);


  /* allow connections to reserved blocks */
  for(i=0; i< n_reserved_blocks; i++){
    if((ip_header->daddr & (0xffffffff >> cidr_mask[i])) ==  reserved_blocks[i]){
      return NF_ACCEPT;
    }
  }


  /* retrieve conntrack entry */
  ct = nf_ct_get(skb, &ctinfo);
  if(!ct){
    /* initialize conntrack */
    ret = nf_conntrack_in(dev_net(out), PF_INET, hooknum, skb);
    ct = nf_ct_get(skb, &ctinfo);
    if(!ct){
      printk(KERN_INFO "Could not insert conntrack %pI4:%d, packet dropped\n", &ip_header->daddr,ntohs(tcp_header->dest));
      return NF_DROP;
    }
  }


  /* setup natting to transparent TOR proxy */
  if(ct && (ctinfo == IP_CT_NEW || ctinfo == IP_CT_RELATED)){
    newrange.flags = (IP_NAT_RANGE_MAP_IPS | IP_NAT_RANGE_PROTO_SPECIFIED);
    newrange.min_addr.ip = (__be32) TOR_PROXY_IP;
    newrange.max_addr.ip =  (__be32) TOR_PROXY_IP;
    newrange.min_proto.tcp.port = (__be16) TOR_TRANSPROXY_PORT;
    newrange.max_proto.tcp.port = (__be16) TOR_TRANSPROXY_PORT;

    ret = nf_nat_setup_info(ct, &newrange, NF_NAT_MANIP_DST);
  }

  //printk("packet %pI4:%d\n", &ip_header->daddr,ntohs(tcp_header->dest));
  return NF_ACCEPT;


}

/* netfilter pre-routing hook function double check to
 * ensure ALL outgoing packets are for Tor relay
 * right before they hit the wire */
unsigned int post_routing_hook_func(unsigned int hooknum,
    struct sk_buff *skb,
    const struct net_device *in,
    const struct net_device *out,
    int (*okfn)(struct sk_buff *))
{
  int i;
  struct iphdr *ip_header;

  return NF_ACCEPT;

  ip_header = (struct iphdr *) skb_network_header(skb);

  // ensure all outbound packets are tor relays 
  mutex_lock(&cache_lock);
  for(i=0; i<MAX_RELAY;i++){
    if(ip_header->daddr == relays[i]){
      mutex_unlock(&cache_lock);
      return NF_ACCEPT;
    }
  }
  mutex_unlock(&cache_lock);

  /* allow connections to reserved blocks */
  for(i=0; i< n_reserved_blocks; i++){
    if((ip_header->daddr & (0xffffffff >> cidr_mask[i])) ==  reserved_blocks[i]){
      return NF_ACCEPT;
    }
  }

  /* drop if not headed for relay */
  return NF_DROP;

}

/* Drop all forwarded traffic */
unsigned int forward_hook_func(unsigned int hooknum,
      struct sk_buff *skb,
      const struct net_device *in,
      const struct net_device *out,
      int (*okfn)(struct sk_buff *))
{
  return NF_DROP;
}

/* Drop all ipv6 traffic */
unsigned int ipv6_hook_func(unsigned int hooknum,
    struct sk_buff *skb,
    const struct net_device *in,
    const struct net_device *out,
    int (*okfn)(struct sk_buff *))
{
  return NF_DROP;
}


/* Thread for clearing NAT table every 30 seconds */
int purge_relays_th(void *data){
  struct timespec ts;
  time_t time_b, time_c;
  int i;

  while(!kthread_should_stop()){
    getnstimeofday(&ts);
    time_b = time_c = ts.tv_sec;
    while((time_c-time_b) < (time_t) 30){
      schedule();
      if(kthread_should_stop()) return 0;
      getnstimeofday(&ts);
      time_c = ts.tv_sec;
    }
    /* clear NAT table */
    mutex_lock(&cache_lock);
    for(i=0; i<MAX_NAT_ENTRY; i++){
      memset(nat_table, 0, sizeof(nat_entry)*MAX_NAT_ENTRY);
    }
    mutex_unlock(&cache_lock);
  }

  return 0;
}

/* initialization routine */
int init_module(){

  int i;

  /* For storing currently used tor relays */
  relays = kmalloc(sizeof(int)*MAX_RELAY, GFP_KERNEL);

  /* For storing NAT entries */
  nat_table = kmalloc(sizeof(nat_entry)*MAX_NAT_ENTRY, GFP_KERNEL);
  memset(nat_table, 0, sizeof(nat_entry)*MAX_NAT_ENTRY);

  /* initialize ips */
  for(i=0; i<MAX_RELAY; i++){
    relays[i] = -1;
  }

  /* start kernel thread removing tor relays periodically */
  task = kthread_run(&purge_relays_th, (void *) &data, "purge_relays");

  /* creates entry in proc for reading and writing
   * needed for communication between kernel and userspace */
  proc_entry= proc_create(RELAY_FILE_NAME, 0644, NULL, &proc_file_ops);
  if(proc_entry == NULL){
    proc_remove(proc_entry);
    printk(KERN_ALERT "Error: could not create /proc/%s entry\n", RELAY_FILE_NAME);
    return -ENOMEM;
  }

  /*  Fill in our hooking structures */
  nfho_local_out.hook = (nf_hookfn *) local_out_hook_func;
  nfho_local_out.hooknum = NF_INET_LOCAL_OUT;
  nfho_local_out.pf = PF_INET;
  nfho_local_out.priority = NF_IP_PRI_MANGLE;
  nf_register_hook(&nfho_local_out);

  nfho_pre_routing.hook = (nf_hookfn *) post_routing_hook_func;
  nfho_pre_routing.hooknum = NF_INET_POST_ROUTING;
  nfho_pre_routing.pf = PF_INET;
  nfho_pre_routing.priority = NF_IP_PRI_FIRST;
  nf_register_hook(&nfho_pre_routing);

  nfho_forward.hook = (nf_hookfn *) forward_hook_func;
  nfho_forward.hooknum = NF_INET_FORWARD;
  nfho_forward.pf = PF_INET;
  nfho_forward.priority = NF_IP_PRI_FIRST;
  nf_register_hook(&nfho_forward);

  nfho_ipv6.hook = (nf_hookfn *) ipv6_hook_func;
  nfho_ipv6.hooknum = NF_INET_PRE_ROUTING;
  nfho_ipv6.pf = PF_INET6;
  nfho_ipv6.priority = NF_IP_PRI_FIRST;
  nf_register_hook(&nfho_ipv6);


  printk(KERN_INFO "Tor Proxy module inserted\n");
  return 0;
}

/* cleanup routine */
void cleanup_module(){

  kthread_stop(task);

  /*unregister netfilter hook */
  nf_unregister_hook(&nfho_local_out);
  nf_unregister_hook(&nfho_pre_routing);
  nf_unregister_hook(&nfho_forward);

  /* remove /proc/tor_relays */
  proc_remove(proc_entry);

  kfree(relays);
  kfree(nat_table);

  printk(KERN_INFO "Tor Proxy module removed\n");
}


