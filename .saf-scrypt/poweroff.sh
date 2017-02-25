#! /bin/bash
     IFS=$'\n'
     
     for i in `wmctrl -l | tr -s \  | cut -d \  -f 4-`; do
        wmctrl -c "$i"
     done
     
     while [[ -n `wmctrl -l` ]]
     do
     sleep 1
     done
     shutdown -h now
