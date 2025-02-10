
eval "$(/opt/homebrew/bin/brew shellenv)"

starship init fish | source
zoxide init fish | source
# fastfetch init fish | source
# lolcat init fish | source
thefuck --alias fk | source

# Hide welcome message
set fish_greeting

fastfetch --logo none && fortune || lolcat

set -g fish_autosuggestion_enabled 0

# Starship Prompt
function starship_transient_prompt_func
    starship module character
end

enable_transience

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
