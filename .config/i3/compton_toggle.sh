#! /bin/bash

if pgrep ^picom$>/dev/null
then
        killall -9 picom
else

        picom -b  --config $HOME/.config/picom.conf &
fi
