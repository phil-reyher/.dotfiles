#!/usr/bin/dash

choice=$(printf "  Lock\n󰍃  Logout\n󰒲  Suspend\n  Reboot\n  Shutdown" | fuzzel --dmenu)

case "$choice" in
    "  Lock")
        waylock
        ;;
    "󰍃  Logout")
        pkill -KILL -u "$USER"
        ;;
    "󰒲  Suspend")
        sudo zzz
        ;;
    "  Reboot")
        sudo reboot
        ;;
    "  Shutdown")
        sudo shutdown -h now
        ;;
esac
