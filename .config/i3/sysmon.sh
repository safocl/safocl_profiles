#! /bin/bash

if pgrep 'gnome-system'>/dev/null
then
        kill -s TERM $(pgrep 'gnome-system')
else
        gnome-system-monitor
fi
