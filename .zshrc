# Aliases
alias rmf="rm -rf"
alias c="clear"
alias m="make"
alias tn="tmux new-session"
alias exp="explorer.exe ."
mkcd() {
  mkdir $1 && cd $1
}
# Exports
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export BAT_THEME="Nord"
export BROWSER="wslview"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaa"

# Enable zsh autocompletion
autoload -Uz compinit
compinit

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

# Make new tabs and panes in Terminal keep current path
keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}
precmd_functions+=(keep_current_path)

# zoxide
eval "$(zoxide init zsh)"

# asdf
. "$HOME/.asdf/asdf.sh"
