#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export MOZ_ENABLE_WAYLAND=1

export HELIX_RUNTIME=/home/phil/.config/helix/runtime

export SUDO_EDITOR="/home/phil/.cargo/bin/hx"

export EDITOR=hx

export VISUAL="$EDITOR"

export PATH="$HOME/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"

if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec Hyprland
fi
. "$HOME/.cargo/env"
