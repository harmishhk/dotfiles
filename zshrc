# path to oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# name of the theme to load
ZSH_THEME="robbyrussell"

# ssh identities to use
zstyle :omz:plugins:ssh-agent identities bb_rsa gh_rsa gl_rsa vs_rsa

# plugins to load
plugins=(colored-man-pages common-aliases command-not-found docker docker-compose git git-extras github gitignore history ssh-agent sudo tmux z)

source $ZSH/oh-my-zsh.sh

# customization outsize oh-my-zsh
source $HOME/.env
