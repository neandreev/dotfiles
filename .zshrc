# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

antigen theme romkatv/powerlevel10k

antigen apply

alias pscale="docker run -e HOME=/tmp -v $HOME/.config/planetscale:/tmp/.config/planetscale --user $(id -u):$(id -g) --rm -it -p 3306:3306/tcp planetscale/pscale:latest"
alias rmf="rm -rf"
alias m="make"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/home/neandreev/yandex-cloud/path.bash.inc' ]; then source '/home/neandreev/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/home/neandreev/yandex-cloud/completion.zsh.inc' ]; then source '/home/neandreev/yandex-cloud/completion.zsh.inc'; fi


# pnpm
export PNPM_HOME="/home/neandreev/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm endexport GPG_TTY=$(tty)

# bun completions
[ -s "/home/neandreev/.bun/_bun" ] && source "/home/neandreev/.bun/_bun"

# Bun
export BUN_INSTALL="/home/neandreev/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
