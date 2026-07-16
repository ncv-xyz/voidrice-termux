# Set prompt username to $USER
PS1="${PS1%\%n*}${USER:-$USERNAME}${PS1#*%n}"

# Disable command-not-found handler:
unset -f command_not_found_handler 2>/dev/null

# Load syntax highlighting from ~/.local/src
source "$HOME/.local/src/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" 2>/dev/null
