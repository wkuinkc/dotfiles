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

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Borrowed from https://github.com/junegunn/fzf/issues/383#issuecomment-266884262
export FZF_CTRL_T_COMMAND='ag -g ""'
export FZF_DEFAULT_OPTS='--color=bw'
