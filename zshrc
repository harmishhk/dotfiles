# path to oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# name of the theme to load
ZSH_THEME="robbyrussell"

# plugins to load
plugins=(command-not-found docker docker-compose git git-extras github gitignore history node npm nvm tmux z)

source $ZSH/oh-my-zsh.sh

# customization outsize oh-my-zsh
source $HOME/.env
