#! /bin/bash
while [[ -n $(pgrep chromium) ]]
do
     killall -2 chromium
     sleep 2
done
systemctl poweroff
