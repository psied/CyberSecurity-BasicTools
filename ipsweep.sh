#!/bin/bash

if [ "$1" == " " ]
then
echo "Enter an IP address to perform IP Sweep"
echo "Syntax: ./ipsweep.sh 192.168.4"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> sweepedips.txt & 
done
fi
