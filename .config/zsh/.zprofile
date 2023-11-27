#!/usr/bin/env zsh

[ "$(tty)" = "/dev/tty1" ] && exec river
