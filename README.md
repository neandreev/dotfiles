# Requirements for dotfiles:

 - Installed packages: git, tmux, zsh, unzip, zoxide
 - Installed oh-my-zsh:
 ```
 sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
 ```
 - Installed starship prompt:
 ```
 curl -sS https://starship.rs/install.sh | sh
 ```
 - Installed nvm:
 ```
 curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
 ```
 - Installed fzf:
 ```
 git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
 ~/.fzf/install
 ```