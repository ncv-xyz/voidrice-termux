#!/bin/sh

# Source voidrice shell profile first if it exists:
[ -f "$HOME/.config/shell/profile" ] && source "$HOME/.config/shell/profile"

# Prepend wrappers to $PATH
export PATH="${XDG_CONFIG_DIR:-$HOME/.config}/termux/scripts:$PATH"

# Set user and host names:
export USER="larbs"
export HOST="$(getprop ro.product.device)"

# Required for some ~/.local/bin scripts:
export XDG_RUNTIME_DIR="$PREFIX/tmp"

# Fix "ncmpcpp: No such file or directory"
export MPD_HOST="${MPD_HOST:-localhost}"

# Fix "gpg: cannot open '/dev/tty'"
export GPG_TTY="$TTY"


# Start tmux if not already running:
if command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ]; then
	# Autostart these programs:
	autostart="mpd"
	for program in $autostart; do
		pidof -sx "$program" || "$program"
	done >/dev/null 2>&1
	unset ZDOTDIR # Required to update GPG_TTY
	exec tmux new -A -s "$USER" >/dev/null 2>&1
fi
