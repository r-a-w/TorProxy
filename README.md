<div>
  _______         _____  
 |__   __|       |  __ \  
    | | ___  _ __| |__) | __ _____  ___   _  
    | |/ _ \| '__|  ___/ '__/ _ \ \/ / | | |  
    | | (_) | |  | |   | | | (_) >  <| |_| |  
    |_|\___/|_|  |_|   |_|  \___/_/\_\\__, |  
                                       __/ |  
                                      |___/  
  
</div>
*TorProxy is kernel module which routes all network traffic through the Tor anonymity network.*

The module uses netfilter hooks in the linux kernel to filter/NAT packets and ensure all outbound traffic is headed for the Tor network.

The Tor network currently only supports TCP ipv4 traffic so all other protocol packets are dropped, with the exception of DNS packets, these are allowed and are forwarded to the TorDNS proxy to prevent DNS leaks.

This means no ICMP pings, ipv6, UDP etc...

Applications do not have to be configured to use the proxy as it uses Tors transparent proxy and NAT's all outbound TCP requests.

Access to hidden services still has to be performed through the Tor browser.


# Installation:

## To build:

> make

you can either run the proxy portably within the folder after compilation or install using:

> make install

ensure you have the Tor DNS and Transparent Tor proxy running on the following ports:

add to your torrc configuration file:

> DNSPort 9053  
> TransPort 9040

# Usage:

The proxy must be run as root and Tor must be running. Insert the module and your done! Remember to remove the module when you want regular internet access.

If Tor chooses a new entry relay you may need to refresh the relays table in the module using '-r'.

## Arguments:
    -s insert module and start proxy  
    -i insert torproxy kernel module  
    -r remove torproxy kernel module  
    -t refresh tor relays table



