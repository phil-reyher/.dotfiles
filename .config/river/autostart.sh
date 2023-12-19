#!/usr/bin/sh

killall -q  yambar fnott wbg wl-paste wl-clip-persist pipewire cliphist
pipewire &
wbg ~/Pictures/puccin.jpg &
yambar &
fnott &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
wl-clip-persist --clipboard both &

