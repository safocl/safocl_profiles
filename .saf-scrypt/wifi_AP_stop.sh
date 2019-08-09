#!/bin/sh
iptables -D POSTROUTING -t nat -o enp3s0 -j MASQUERADE
sysctl net.ipv4.ip_forward=0
systemctl stop dnsmasq
systemctl stop hostapd
