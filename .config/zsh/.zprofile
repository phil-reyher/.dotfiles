#!/usr/bin/env zsh

[ "$(tty)" = "/dev/tty1" ] && dbus-run-session river

export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=river
export XDG_CURRENT_DESKTOP=river
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct
export _JAVA_AWT_WM_NONREPARENTING=1
