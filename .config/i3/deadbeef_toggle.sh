#! /bin/bash

if pgrep -f '^deadbeef$'>/dev/null
then
        deadbeef --quit
else
        deadbeef
fi
