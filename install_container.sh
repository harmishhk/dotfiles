#!/bin/bash

DIR="$(dirname "$(readlink -f ${BASH_SOURCE[0]})")"

# create symbolic links for dotfiles
ln -s -f $DIR/scripts/env_container $HOME/.env_container
ln -s -f $DIR/gitconfig $HOME/.gitconfig
ln -s -f $DIR/gitignore_global $HOME/.gitignore_global
ln -s -f $DIR/tmux.conf $HOME/.tmux.conf
ln -s -f $DIR/vimrc $HOME/.vimrc
echo | echo | vim +PluginInstall +qall &>/dev/null

sed -i "4s?.*?export SCRITPS_INSTALL=$DIR\/scripts?" $DIR/scripts/env_container
echo 'source $HOME/.env_container' >> ~/.bashrc
