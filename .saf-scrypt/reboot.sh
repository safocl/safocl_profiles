#! /bin/bash
if pgrep chromium 1>/dev/null
then
        killall -2 chromium && sleep 2 && reboot
else
        reboot
fi

