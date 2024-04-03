# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias egrep='egrep -s'
alias fgrep='fgrep -s'
alias grep='grep -s'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set -o vi
alias vi=vim
alias info="info --vi-keys"
alias viall=./viall.sh

alias grep='grep -s -I'
alias fgrep='fgrep -s -I'
alias egrep='egrep -s -I'

export EDITOR=vim

export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -f ~/downloads/z.sh ]] && . ~/downloads/z.sh

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Setup rust's cargo command if it exists
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

export PATH="/usr/local/lib/nodejs/node-v20.11.1-linux-x64/bin:$PATH"
