#!/bin/sh

FILE=`readlink -f $0`
DIR=`dirname $FILE`

ln -s $DIR/bashrc $HOME/.bashrc
ln -s $DIR/scripts/env $HOME/.env
ln -s $DIR/gitconfig $HOME/.gitconfig
ln -s $DIR/gitignore_global $HOME/.gitignore_global
ln -s $DIR/i3 $HOME/.i3
ln -s $DIR/ssh_config $HOME/.ssh/config
ln -s $DIR/tmux.conf $HOME/.tmux.conf
ln -s $DIR/vimrc $HOME/.vimrc
ln -s $DIR/zshrc $HOME/.zshrc
sed -i "4s?.*?export SCRITPS_INSTALL=$DIR\/scripts?" $DIR/scripts/env
