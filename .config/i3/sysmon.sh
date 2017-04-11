#! /bin/bash

if pgrep 'gnome-system'>/dev/null
then
        killall -9 gnome-system-monitor 
else
        gnome-system-monitor
fi
