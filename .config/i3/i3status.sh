#!/bin/sh
# shell script to prepend i3status with more stuff
 
i3status --config ~/.config/i3/i3status.conf | while :
do
    read line
    echo "Sp: `sh ~/.config/i3/net_speed.sh` | \
Mem: "`free -m | grep Mem | awk '{a = $3/$2; print a}' | cut -c 3-4`"% | \
Root: "`df -h | grep -w '/' | awk '{print $5}'`" | \
Home: "`df -h | grep -w '/home' | awk '{print $5}'`" | \
$line |\
"    `xkblayout-state print %s | tr rus RUS`" |\
"    `date +%d-%b-%y" "%H:%M`" |\
" || exit 1
done