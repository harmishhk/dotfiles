# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# if running bash on windows...
if grep -q Microsoft /proc/version; then
    # ...set umaks
    if [ "$(umask)" == '0000' ]; then
        umask 0022
    fi
    # ...and start zsh
    exec zsh
else
    source $HOME/.env
fi
