#! /bin/bash
setxkbmap -layout "us,ru" ",winkeys" "grp:ctrl_shift_toggle" &
$HOME/.saf-scrypt/nvmode &
$HOME/.saf-scrypt/urxvtc_start.sh &
$HOME/.config/i3/compton_toggle.sh &
pamixer --source 1 --set-volume 45 &
pamixer --set-volume 100 &
numlockx &
fbxkb &
kbdd &
nitrogen --restore &
udiskie -0 -a -t &
pasystray &
sleep 5
albert &
kshare -b &

if pgrep sylpheed; then
        kill -9 $(pgrep sylpheed)
        sylpheed
else
sylpheed
fi

sleep 1
google-chrome-stable &
sleep 7
liferea &
skypeforlinux &
