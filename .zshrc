# aliases
alias c="clear"
alias m="make"
alias nv="nvim"
alias rmf="rm -rf"
alias tn="tmux new-session"
mkcd() {
  mkdir $1 && cd $1
}

# exports
export EDITOR="nvim"
export BAT_THEME="Nord"
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaa"

# sources
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zsh autocompletion
autoload -Uz compinit
compinit

# plugins
plugins=(git sudo)

# evals
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"