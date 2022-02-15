#!/bin/bash
#gets ip information via ifconfig command
#Phillip 13/02/2022

net_info="$(ifconfig)"

#parse ip via sed
addresses=$(echo "$net_info" | sed -n '/inet / {
    
    s/inet/IP Address:/
    s/netmask/\n\t\tSubnet Mask:/
    s/broadcast/\n\t\tBroadcast Address:/

    p
}')

#format output
echo -e "IP addresses on this computer are:\n$addresses"