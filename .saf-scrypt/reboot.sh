#! /bin/bash
if [[ -n $(wmctrl -l) ]]
then
     IFS=$'\n'
     
     for i in `wmctrl -l | tr -s \  | cut -d \  -f 4-`; do
        wmctrl -c "$i"
     done
     
     sleep 1

     reboot

else
     reboot
fi
