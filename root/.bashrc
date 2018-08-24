# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set -o vi
alias vi=vim
alias info="info --vi-keys"
alias viall=./viall.sh
export GREP_OPTIONS="-s -I"

export EDITOR=vim

export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -f ~/downloads/z.sh ]] && . ~/downloads/z.sh
