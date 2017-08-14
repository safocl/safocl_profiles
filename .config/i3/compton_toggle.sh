#! /bin/bash

if pgrep ^compton$>/dev/null
then
        killall -9 compton 
else
        #compton -C -G -b  --backend xr_glx_hybrid --vsync-use-glfinish --glx-use-gpushader4 --xrender-sync --xrender-sync-fence --vsync opengl-oml --refresh-rate 60 --config $HOME/.config/compton.conf --inactive-dim 0.2 --detect-client-opacity --blur-background &
        compton -C -G -b  --backend glx --vsync-use-glfinish --glx-use-gpushader4 --vsync opengl-oml --refresh-rate 60 --config $HOME/.config/compton.conf --inactive-dim 0.2 --detect-client-opacity --blur-background &
fi
