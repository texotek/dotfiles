# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export PATH


export EDITOR="/usr/bin/nvim"
#export PS1='${PWD}$ '

source ~/.bash_aliases

. "$HOME/.cargo/env"

PS1='[\[\e[92m\]\u\[\e[0m\]@\H \[\e[38;5;33m\]\w\[\e[0m\] ]\\$ '
