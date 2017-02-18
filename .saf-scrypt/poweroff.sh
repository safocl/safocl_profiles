#! /bin/bash
if [ "pgrep chromium 1>/dev/null" ]
then
        killall -2 chromium && shutdown -h now
else
        shutdown -h now
fi
