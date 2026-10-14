# ******************************************
# Tools and aliases
# ******************************************
# Enable Vi mode for command line editing
set -o vi

export HISTCONTROL="ignoredups:ignorespace:erasedups"
export HISTIGNORE="history*"
bind '"\e[A": history-search-backward'            # arrow up
bind '"\e[B": history-search-forward'             # arrow down

# TODO: Add config directory for eza
# export EZA_CONFIG_DIR="$HOME/.config/eza/"
alias ls="eza --icons auto"
alias eza="eza --icons auto"

# cat change to bat
alias cat="bat"

# ******************************************
# Prompt
# ******************************************
# Starship configuration
export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init bash)"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# cd change to zoxide 
eval "$(zoxide init bash)" # MUST be at the END
alias cd=z
