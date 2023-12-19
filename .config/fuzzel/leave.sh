#!/usr/bin/env bash

choice=$(printf "  Lock\n󰍃  Logout\n󰒲  Suspend\n  Reboot\n  Shutdown" | fuzzel --dmenu)
if [[ $choice == "  Lock" ]];then
    bash /home/phil/.config/system_scripts/lock.sh
    elif [[ $choice == "󰍃  Logout" ]];then
    pkill -KILL -u "$USER"
elif [[ $choice == "󰒲  Suspend" ]];then
    sudo zzz
elif [[ $choice == "  Reboot" ]];then
    sudo reboot
elif [[ $choice == "  Shutdown" ]];then
    sudo poweroff
fi
