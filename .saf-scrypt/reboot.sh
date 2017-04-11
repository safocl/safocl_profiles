#! /bin/bash
while [[ -n $(pgrep chromium) ]]
do
     killall -2 chromium
     sync -f /home/safff/.cache/chromium/Default/Cache/*
     sleep 4
done
systemctl reboot
