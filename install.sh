#!/bin/bash

DIR="$(dirname "$(readlink -f ${BASH_SOURCE[0]})")"

# create symbolic links for dotfiles
# ln -s -f $DIR/bashrc $HOME/.bashrc
ln -s -f $DIR/scripts/env $HOME/.env
ln -s -f $DIR/gitconfig $HOME/.gitconfig
ln -s -f $DIR/gitignore_global $HOME/.gitignore_global
test -d "$HOME/.ssh" || mkdir "$HOME/.ssh"
ln -s -f $DIR/ssh_config $HOME/.ssh/config
ln -s -f $DIR/tmux.conf $HOME/.tmux.conf
ln -s -f $DIR/vimrc $HOME/.vimrc
echo | echo | vim +PluginInstall +qall &>/dev/null
ln -s -f $DIR/zshrc $HOME/.zshrc

# create symbolic links for all execs
test -d "$HOME/.local/bin" || mkdir -p "$HOME/.local/bin"
for exec in $DIR/exec/*; do
    ln -s -f $exec $HOME/.local/bin/$(basename $exec)
done

sed -i "4s?.*?export SCRITPS_INSTALL=$DIR\/scripts?" $DIR/scripts/env
