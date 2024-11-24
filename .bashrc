# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
. "$HOME/.cargo/env"

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export EDITOR="/usr/bin/nvim"
#export MANPAGER='nvim +Man!'
export PICO_SDK_PATH=/home/texotek/.pico-sdk
export PS1='[\[\e[92m\]\u\[\e[0m\]@\H \[\e[38;5;33m\]\w\[\e[0m\] ]\\$ '

source ~/.bash_aliases

eval "$(fzf --bash)"
