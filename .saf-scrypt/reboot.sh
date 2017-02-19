#! /bin/bash
if `pgrep chromium 1>/dev/null`
then
        killall -2 chromium && reboot
else
        shutdown -r now
fi
