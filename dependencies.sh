#!/bin/bash
set -euo pipefail

DIR=$(cd $(dirname $0) && pwd)
cd "$DIR"

if ! hash stow 2>/dev/null; then
  echo "Installing GNU stow to symlink files..."

  if hash apt-get 2>/dev/null; then
    sudo apt-get update
    sudo apt-get install -y stow
    exit 0
  elif hash yum 2>/dev/null; then
    sudo yum install -y stow --enablerepo=epel
    exit 0
  fi

  echo "Neither apt-get nor yum found. Terminating..."
  exit 1
fi
