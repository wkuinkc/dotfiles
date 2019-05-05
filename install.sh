#!/bin/bash
#
# Installs the dotfiles onto a newly provisioned server
#
# We use GNU stow to place the dotfiles, so here we install that
# Command check notation borrowed from:
# http://stackoverflow.com/a/677212/1243823

DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

backup_dotfiles() {
	if ! [[ -e "$1" ]]; then
		return 0
	elif [[ $(dirname $(readlink -f $1)) =~ $(pwd) ]]; then
		return 0
	fi

	backup_name="$1.$(date).bak"

	echo "Moving $1 to $backup_name"
	mv "$1" "$backup_name"
}

backup_dotfiles "$HOME/.bashrc"
backup_dotfiles "$HOME/.vimrc"

./dependencies.sh
./stow.sh

vim +PlugInstall +qall
