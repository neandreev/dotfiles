# Aliases
alias rmf="rm -rf"
alias m="make"
alias tn="tmux new-session"

# Exports
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export BAT_THEME="Nord"

# Initializing Node Version Manager
source /usr/share/nvm/init-nvm.sh

# Initializing Antigen.zsh
source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle nvm
antigen bundle npm
antigen bundle node
antigen bundle sudo
antigen bundle web-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle asdf

antigen apply

# Evals
eval "$(starship init zsh)"
eval "wsl.exe -d wsl-vpnkit --cd /app service wsl-vpnkit start"

