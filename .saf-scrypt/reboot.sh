#! /bin/bash
if `pgrep chromium 1>/dev/null`
then
        killall -2 chromium && shutdown -r now
else
        shutdown -r now
fi
