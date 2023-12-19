################################
# EXPORT ENVIRONMENT VARIABLES #
################################

# XDG using defaults
export DOTFILES=$HOME/.config
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=river
export XDG_CURRENT_DESKTOP=river

# editor
export EDITOR="hx"
export VISUAL="hx"
export SUDO_EDITOR="hx"

# Mozilla apps
export MOZ_ENABLE_WAYLAND=1

# PATH
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# STYLE 󰱫
export GTK_THEME='Catppuccin-Mocha-Standard-Mauve-Dark:dark'

#emojis haha
export BEMOJI_PICKER_CMD="/usr/bin/fuzzel --dmenu"

. "$HOME/.cargo/env"



################################
#            ALIASES           #
################################

alias lazyconf='lazygit --git-dir=/home/phil/.cfg/ --work-tree=/home/phil'
alias config='/usr/bin/git --git-dir=/home/phil/.cfg/ --work-tree=/home/phil'

alias d='dirs -v'

alias rebootuefi='grub-reboot "UEFI Firmware Settings"'
alias sudo='sudo '



################################
#           START WM           #
################################

[ "$(tty)" = "/dev/tty1" ] && dbus-run-session river



################################
#        DROP INTO FISH        #
################################

[ -x /bin/fish ] && SHELL=/bin/fish exec fish
