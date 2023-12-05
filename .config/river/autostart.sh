#!/usr/bin/env bash

killall -q yambar fnott udiskie wbg wl-paste wl-clip-persist
wbg ~/Pictures/puccin.jpg &
yambar &
fnott &
udiskie &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
wl-clip-persist --clipboard both &

