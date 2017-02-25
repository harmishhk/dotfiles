# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

## if running in terminal...
#if test -t 1; then
#	# ...start zsh
#	exec zsh
#else
    source $HOME/.env
#fi

