/* **********************************************************************
 * This populates the entry relay tables in the inserted kernel module
 *
 * The relays are written to memory for use by the kernel modules
 * which ensure that all network traffic is being run through tor
 **********************************************************************
*/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <glob.h>
#include <sys/types.h>
#include <arpa/inet.h>

/* maximum number of tor entry relays allowed to be used at once */
#define MAX_RELAY 8

#define TOR_PROC_NAME "tor"

pid_t determine_pid(char *process_name);
int * determine_tor_relay(pid_t tor_pid);
int check_ip_is_relay(int ip);


int main(){
  FILE *relays;
  pid_t pid;
  int *relay_ip, tor_running, i;

  /* ensure running as root */
  if(getuid() != 0){
    printf("Must run as root!\n");
    exit(0);
  }

  /* find tor process */
  pid = determine_pid(TOR_PROC_NAME);
  if(pid == -1){
    printf("could not find running tor process...\n");
    exit(0);
  }
  printf("[*] Found running Tor process (%d)\n", pid);


  /* save currently used tor relays and ensure tor service is still running */
  tor_running = 1;
  while(1){
    if(~tor_running){
      pid = determine_pid(TOR_PROC_NAME);
      if(pid == -1){
        printf("Tor is no longer running...\n");
        fclose(relays);
        exit(0);
      }
    }

    relay_ip = determine_tor_relay(pid);
    if(relay_ip[0] == 0){
      tor_running = 0;
    } else{
      relays = fopen("/proc/tor_relays", "w");
      if(relays == NULL){
        printf("kernel modules not loaded\n");
        exit(0);
      }
      for(i=0; i<MAX_RELAY; i++){
          fwrite(&relay_ip[i], 1, sizeof(int), relays);
      }
      printf("[*] Entry relay table populated\n");
      fclose(relays);
      free(relay_ip);
      exit(0);
    }

    sleep(5);
  }

  return 0;
}



/* find tor relays currently being used
 * return integer array of ip addresses */
int * determine_tor_relay(pid_t tor_pid){
  FILE *tcp;
  char *tcp_path, *buf;
  char ip[9], ip_b[3], ignore_ip_1[9], ignore_ip_2[9];
  int *relay_ip, ip_count, res;
  size_t path_length;


  /* Allocate buffers */
  path_length = strlen("/proc/") + ((sizeof(pid_t)/4)*10+1) + strlen("/net/tcp") + 1;
  tcp_path = malloc(path_length);
  buf = malloc(500);
  relay_ip = malloc(sizeof(int)*MAX_RELAY);

  /* initialize ips */
  int i;
  for(i=0; i<MAX_RELAY; i++){
    relay_ip[i] = 0;
  }

  /* get path to tcp file for tor process */
  sprintf(tcp_path, "/proc/%d/net/tcp", tor_pid);

  /* parse file to get tor relay currently being used */
  if((tcp = fopen(tcp_path,"r")) == NULL) return relay_ip;


  /* ignore NULL and loopback address */
  strcpy(ignore_ip_1, "00000000");
  strcpy(ignore_ip_2, "0100007F");

  /* loop through file extracting ips */
  ip_count = 0;
  ip_b[2] = '\x00';
  if(fgets(buf, 500, tcp) == NULL) return relay_ip; // skip first line
  while((fgets(buf, 500, tcp) != NULL)){
    if(ip_count > MAX_RELAY) break;

    /* retrieve ip and filter out ignored ips */
    strncpy(ip, buf+20, 9);
    ip[8] = '\x00';
    if(strcmp(ignore_ip_1, ip) == 0) continue;
    if(strcmp(ignore_ip_2, ip) == 0) continue;

    /* add relay ip to array */
    relay_ip[ip_count] = 0;
    strncpy(ip_b, ip, 2);
    relay_ip[ip_count] = (relay_ip[ip_count] | strtol(ip_b,NULL,16) <<24);
    strncpy(ip_b, ip+2, 2);
    relay_ip[ip_count] = (relay_ip[ip_count] | (strtol(ip_b,NULL,16) << 16));
    strncpy(ip_b, ip+4, 2);
    relay_ip[ip_count] = (relay_ip[ip_count] | (strtol(ip_b,NULL,16) << 8));
    strncpy(ip_b, ip+6, 2);
    relay_ip[ip_count] = (relay_ip[ip_count] | (strtol(ip_b,NULL,16)));

    /* ensure ip is tor relay */
    res = check_ip_is_relay(relay_ip[ip_count]);
    if(!res){
      relay_ip[ip_count] = 0;
      continue;
    }

    ip_count++;

  }


  fclose(tcp);
  free(tcp_path);
  free(buf);
  return relay_ip;

}




/* find pid for a given process name */
pid_t determine_pid(char *process_name){
  pid_t pid = -1;
  glob_t pglob;
  size_t name_length = strlen(process_name);
  char *name_buf, *proc_name;
  unsigned int i;

  if(glob("/proc/*/comm", 0, NULL, &pglob) != 0) return pid;

  name_buf = malloc(name_length+2);

  proc_name = malloc(name_length+2);
  strcpy(proc_name, process_name);
  proc_name[name_length] = '\n';
  proc_name[name_length+1] = '\x00';


  for(i=0; i<pglob.gl_pathc; i++){
    FILE *pid_comm;

    if((pid_comm = fopen(pglob.gl_pathv[i], "r")) == NULL) continue;

    if((fgets(name_buf, name_length+2, pid_comm)) == NULL) continue;

    if(strcmp(proc_name, name_buf) == 0) pid = (pid_t)atoi(pglob.gl_pathv[i] + strlen("/proc/"));

    fclose(pid_comm);

  }

  free(name_buf);
  free(proc_name);
  globfree(&pglob);
  return pid;



}



int check_ip_is_relay(int ip){
  FILE *file;
  pid_t pid = -1;
  char c, *environ_path, *tor_data_path, *buf;
  char env_tor_data[]="TOR_BROWSER_TOR_DATA_DIR";
  char ip_str[INET_ADDRSTRLEN], match_ip[INET_ADDRSTRLEN];
  int i, k, len, path_length;

  /* Convert ip address to string */
  if(inet_ntop(AF_INET, &ip, ip_str, INET_ADDRSTRLEN) == NULL){
    printf("couldn't convert ip address\n");
    exit(0);
  }
  

  pid = determine_pid(TOR_PROC_NAME);
  if(pid == -1){
    printf("could not find running tor process...\n");
    exit(0);
  }

  /* Allocate buffers */
  path_length = strlen("/proc/") + ((sizeof(pid_t)/4)*10+1) + strlen("/environ") + 1;
  environ_path = malloc(path_length);
  tor_data_path = malloc(500);
  buf = malloc(500);

  /* get path to environment variables for tor process */
  sprintf(environ_path, "/proc/%d/environ", pid);

  /* parse file to get tor relay currently being used */
  if((file = fopen(environ_path,"r")) == NULL){
    free(environ_path);
    free(tor_data_path);
    free(buf);
    printf("error opening environment for tor\n");
    exit(0);
  }

  i = 0;
  len = strlen(env_tor_data)-1;
  while(c != EOF){
    c = getc(file);
    if(c == (int) env_tor_data[i]){
      if(i == len) break;
      i++;
    } else{
      i=0;
    }
  }

  if(c == EOF){
    free(environ_path);
    free(tor_data_path);
    free(buf);
    printf("error parsing environment for tor\n");
    exit(0);
  }

  /* read equal sign */
  getc(file);
  i = 0;
  while((c != EOF) & (c != 0x00)){
    c = getc(file);
    tor_data_path[i] = c;
    i++;
    if(i>=500){
      printf("overflow protection, in retrieving tor data directory path\n");
      exit(0);
    }
  }
  tor_data_path[i] = 0x00;
  fclose(file);


  /* open tor consensus file */
  sprintf(tor_data_path, "%s%s", tor_data_path, "/cached-microdesc-consensus");
  if((file = fopen(tor_data_path,"r")) == NULL){
    tor_data_path[i] = 0x00;
    sprintf(tor_data_path, "%s%s", tor_data_path, "/cached-consensus");
    if((file = fopen(tor_data_path,"r")) == NULL){
      free(environ_path);
      free(tor_data_path);
      free(buf);
      printf("error parsing environment for tor\n");
      exit(0);
    }
  }


  /* parse relay entries looking for matching ip */
  while((fgets(buf, 500, file) != NULL)){
    if(!strncmp(buf, "r ", 2)){ //is relay entry
      i=0;
      k=0;
      c=buf[i]; 
      while(i < strlen(buf)){
        if(c == 0x20) k++; //space character (0x20)
        if(k == 5) break; // five spaces till ip address
        i++;
        c=buf[i];
      }
      i++;
      k=0;
      c=buf[i];
      while(c != 0x20){ // get relay ip to compare
        match_ip[k]=c;
        k++;
        i++;
        c=buf[i];
      }
      match_ip[k]=0x00;
      if(!strcmp(ip_str, match_ip)){ // see if it matches input and return 1 if found
        free(environ_path);
        free(tor_data_path);
        free(buf);
        fclose(file);
        return 1;
      }
    }
  }


  free(environ_path);
  free(tor_data_path);
  free(buf);
  fclose(file);

  /* input ip is not a tor relay */
  return 0;
}











