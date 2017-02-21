#! /bin/bash
if pgrep chromium >/dev/null
then
        killall -2 chromium && sleep 2 && shutdown -h now
else
        shutdown -h now
fi
