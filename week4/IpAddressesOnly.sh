#!/bin/bash
#script that uses sed to get ip address only from ifconfig
#Phillip 13/02/2022

#filter only IP address
./IpInfo.sh | sed -n '/IP Address/ {
    p
    }'