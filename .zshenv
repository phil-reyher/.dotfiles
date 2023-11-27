#!/usr/bin/env zsh

################################
# EXPORT ENVIRONMENT VARIABLES #
################################

# XDG using defaults
export DOTFILES=$HOME/.config
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# editor
export EDITOR="hx"
export VISUAL="hx"
export SUDO_EDITOR="hx"

# Mozilla apps
export MOZ_ENABLE_WAYLAND=1

# PATH
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# ZSH
export ZDOTDIR="$DOTFILES/zsh"
export ZPLUGINS="$ZDOTDIR/plugins"
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompcache"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export SAVEHIST=10000                   # Maximum events in history file
export HISTSIZE=10000                   # Maximum events for internal history

# LOGIND
export LIBSEAT_BACKEND="logind"

# GTK
export GTK_THEME='Catppuccin-Macchiato-Standard-Mauve-Dark:dark'

#emojis haha
export BEMOJI_PICKER_CMD="/usr/bin/fuzzel --dmenu"
