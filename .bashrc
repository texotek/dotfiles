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
export PICO_SDK_PATH=/home/texotek/.pico-sdk
export PS1='[\u@\H \W ]\\$ '

source ~/.bash_aliases

eval "$(fzf --bash)"
