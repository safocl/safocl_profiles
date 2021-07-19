#! /bin/bash

if ! [[ -d /tmp/dota2content ]]
then
    mkdir /tmp/dota2content
fi

if ! [[ -L ~/.local/share/Steam/steamapps/workshop/content ]]
then
    ln -s /tmp/dota2content ~/.local/share/Steam/steamapps/workshop/content
fi
