# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# if running bash on windows...
if [[ $(uname -a) == *"Microsoft"* ]]; then
	# ...start zsh
	exec zsh
else
    source $HOME/.env
fi
