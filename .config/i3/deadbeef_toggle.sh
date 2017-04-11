#! /bin/bash

if pgrep ^deadbeef-gtkui$
then
        deadbeef --quit
else
        deadbeef --play &
fi
