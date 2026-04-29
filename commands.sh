#!/bin/bash

# Network Packet Analysis & MITM Attack Lab
# Professional Commands File
# Author: Senha Fathimaa

# TCPDUMP
sudo tcpdump -i wlan0 -nn
sudo tcpdump -i wlan0 tcp
sudo tcpdump -i wlan0 udp
sudo tcpdump -i wlan0 port 53
sudo tcpdump -i wlan0 port 80

# TSHARK
tshark -D
sudo tshark -i wlan0
sudo tshark -i wlan0 -Y dns
sudo tshark -i wlan0 -Y http.request

# BETTERCAP
sudo bettercap -iface wlan0
net.probe on
arp.spoof on
net.sniff on
