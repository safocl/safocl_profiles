#! /bin/bash

if pgrep ^compton$>/dev/null
then
        killall -9 compton 
else
        compton -C -G -b  --backend glx --vsync opengl-oml --refresh-rate 60 --config $HOME/.config/compton.conf -i 0.93 &
fi
