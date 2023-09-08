# Aliases
alias rmf="rm -rf"
alias c="clear"
alias m="make"
alias tn="tmux new-session"

# Exports
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export BAT_THEME="Nord"
export BROWSER="wslview"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#222222,bg=cyan,bold,underline"

# Initializing Node Version Manager
# source /usr/share/nvm/init-nvm.sh

# Initializing pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

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
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle asdf

antigen apply

# Evals
eval "$(starship init zsh)"

