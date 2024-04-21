export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(
git
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export EDITOR='nano'

# -------
# Aliases
# -------
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder

# ----------------------
# Git Aliases
# ----------------------
alias gaa='git add .'
alias gcm='git commit -m'
alias gpsh='git push'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ------------------------
# dpway
# ------------------------
export CONFIG_DIR="$HOME/Desktop/projects/github/config-files"

# ------------------------
# Source
# ------------------------
source "$CONFIG_DIR/sync-config.sh"

# ------------------------
# Export
# ------------------------
export PATH="$HOME/Desktop/tools/bin:$PATH"

# ------------------------
# Aliases
# ------------------------
alias nz="nano $HOME/.zshrc"
alias cz="cat $HOME/.zshrc"
alias sz="source $HOME/.zshrc"
alias cdpj="cd $HOME/Desktop/projects"
alias cdscr="cd $HOME/Desktop/projects/scripts"
