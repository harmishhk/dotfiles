#!/bin/bash

DIR="$(dirname "$(readlink -f ${BASH_SOURCE[0]})")"

ln -s -f $DIR/bashrc $HOME/.bashrc
ln -s -f $DIR/scripts/env $HOME/.env
ln -s -f $DIR/gitconfig $HOME/.gitconfig
ln -s -f $DIR/gitignore_global $HOME/.gitignore_global
ln -s -f $DIR/i3 $HOME/.i3
test -d "$HOME/.ssh" || mkdir "$HOME/.ssh"
ln -s -f $DIR/ssh_config $HOME/.ssh/config
ln -s -f $DIR/tmux.conf $HOME/.tmux.conf
ln -s -f $DIR/vimrc $HOME/.vimrc
ln -s -f $DIR/zshrc $HOME/.zshrc
sed -i "4s?.*?export SCRITPS_INSTALL=$DIR\/scripts?" $DIR/scripts/env
