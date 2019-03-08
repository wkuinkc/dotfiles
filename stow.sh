#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ "$1" = "" ]
then
  echo "usage: stow.sh target-directory" >&2
  exit 1
fi
TARGET="$1"
pushd "$DIR"
stow -t "$TARGET"/ -S root
popd
