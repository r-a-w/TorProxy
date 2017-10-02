#!/bin/bash
set -e

torproxy="torproxy_module"
torprocess="tor"

# check if tor is running
tor_running(){
  if pgrep -x "$torprocess" >> /dev/null
  then
    echo 1
  else
    echo 0
  fi
  return 0
}


# checks if tor module already loaded
module_loaded(){
  while read -r line
  do
    module=$(echo "$line"|cut -d' ' -f1)
    if [ $module = $torproxy ]; then
      echo 1
      return 0
    fi
  done <<< "$(lsmod)"

  echo 0
  return 0
}

# removes tor module
remove_tor_module(){
  local mod_loaded=$(module_loaded)
  if [ $mod_loaded = 1 ]; then
    rmmod ${torproxy}
    echo "[-] torproxy module removed"
  else
    echo "[-] torproxy module is not loaded"
  fi
}

# inserts necceasry kernel modules
insert_module(){
  local tor_is_running=$(tor_running)
  if [ $tor_is_running = 0 ] ; then
    echo "[*] Could not find running Tor process"
    exit
  fi

  # ensure necessary netfilter modules are loaded 
  modprobe -a nf_conntrack nf_conntrack_ipv4 nf_nat nf_nat_ipv4 x_tables ip_tables iptable_nat xt_REDIRECT

  local mod_loaded=$(module_loaded)
  if [ $mod_loaded = 0 ] ; then
    modprobe ${torproxy}
    echo "[+] torproxy module inserted"
    echo "[+] Remember to remove module using '-r' option to allow regular internet access"
  fi
}

# starts the proxy
start_torproxy(){
  /usr/local/lib/torproxy/relay_pop
  echo "[*] All network traffic now being routed through Tor network"
  exit
}

# Displays usage
usage(){
  echo "  _______         _____                     "
  echo " |__   __|       |  __ \                    "
  echo "    | | ___  _ __| |__) | __ _____  ___   _ "
  echo "    | |/ _ \| '__|  ___/ '__/ _ \ \/ / | | |"
  echo "    | | (_) | |  | |   | | | (_) >  <| |_| |"
  echo "    |_|\___/|_|  |_|   |_|  \___/_/\_\\__, |"
  echo "                                       __/ |"
  echo "                                      |___/ "
  echo ""
  echo "Uses netfilter hooks to route all network traffic through tor network"
  echo "options:"
  echo "  -s insert module and start proxy"
  echo "  -i insert torproxy kernel module"
  echo "  -r remove torproxy kernel module"
  echo "  -t refresh tor relays table"
  echo ""
}


# Check root
if (( $EUID != 0 )); then
  echo "must run as root!"
  exit
fi


while getopts "hsirt" opt; do
  case $opt in
    h)
      usage
      ;;
    s)
      insert_module
      start_torproxy
      ;;
    i)
      insert_module
      ;;
    r)
      remove_tor_module
      ;;
    t)
      ./relay_pop
      ;;
    \?)
      echo "Invalid option: -$OPTARG"
      ;;
  esac
done

if [ $OPTIND = 1 ]; then
  usage
fi

