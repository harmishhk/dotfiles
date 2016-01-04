#!/bin/sh

ln -s bashrc $HOME/.bashrc
ln -s scripts/env $HOME/.env
ln -s gitconfig $HOME/.gitconfig
ln -s gitignore_global $HOME/.gitignore_global
ln -s i3 $HOME/.i3
ln -s ssh_config $HOME/.ssh/config
ln -s tmux.conf $HOME/.tmux.conf
ln -s vimrc $HOME/.vimrc
ln -s zshrc $HOME/.zshrc
sed -i "4s?.*?export SCRITPS_INSTALL=`pwd`\/scripts?" scripts/env
