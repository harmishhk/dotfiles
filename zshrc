# path to oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# name of the theme to load
ZSH_THEME="robbyrussell"

# ssh identities to use
zstyle :omz:plugins:ssh-agent identities bitbucket_rsa github_rsa gitlab_rsa laas_rsa vsts_rsa

# plugins to load
plugins=(command-not-found docker docker-compose git git-extras github gitignore history ssh-agent tmux z)

source $ZSH/oh-my-zsh.sh

# customization outsize oh-my-zsh
source $HOME/.env
