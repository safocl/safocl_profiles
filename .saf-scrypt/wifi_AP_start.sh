#!/bin/sh
ifconfig wlp0s29u1u2 10.10.10.1
systemctl restart dnsmasq
sysctl net.ipv4.ip_forward=1
iptables -t nat -A POSTROUTING -o enp3s0 -j MASQUERADE
systemctl start hostapd
