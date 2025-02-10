# Navigation aliases
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'

# Custom Git aliases
alias ga='git add .'
alias gs='git status'

# Utility aliases
alias ft='fortune'
alias ff='fastfetch'
alias f='yazi'
alias o='open .'
alias x='clear'
alias n='nvim .'

# Enhanced ls with icons
# function ll 
#     lsd -la "$argv"
# end

function ls
    lsd "$argv"
end

# Colorful cat replacement
function cat
    bat "$argv"
end

# Brew package management
function install
    brew install "$argv"
end

function uninstall
    brew uninstall "$argv"
end

function reinstall
    brew reinstall "$argv"
end

function upgrade
    brew upgrade "$argv"
end

function update
    brew update "$argv"
end

# Borders function
function BORDERS
    brew services start borders
    borders width=5.0 active_color=0xC0FF79C6 ax_focus=off style=round &
end

# function v
#     mv "$argv"
# end

function rr
    rm -rf "$argv"
end

# Custom Git aliases and functions
alias ga='git add .'
alias gs='git status'

function g
    git add .
    git commit -m "$argv"
    git push
end

function gl
    git log
end

function gc
    git clone "https://github.com/$argv[1]"
end

alias bak="rsync -av ~/.config ~/Documents/.bak/"

# Run fastfetch if session is interactive
if status --is-interactive && type -q fastfetch
end
