export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export BAT_THEME="GitHub"

export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH="/mnt/d/Machines"
export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox"

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

alias pscale="docker run -e HOME=/tmp -v $HOME/.config/planetscale:/tmp/.config/planetscale --user $(id -u):$(id -g) --rm -it -p 3306:3306/tcp planetscale/pscale:latest"
alias rmf="rm -rf"
alias m="make"
alias tn="tmux new-session"
alias vpnstart="wsl.exe -d wsl-vpnkit service wsl-vpnkit start"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/neandreev/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# bun completions
[ -s "/home/neandreev/.bun/_bun" ] && source "/home/neandreev/.bun/_bun"

# Bun
export BUN_INSTALL="/home/neandreev/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(starship init zsh)"
eval "wsl.exe -d wsl-vpnkit --cd /app service wsl-vpnkit start"
