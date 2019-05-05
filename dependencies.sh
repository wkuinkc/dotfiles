#!/bin/bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

if ! hash stow 2>/dev/null; then
  echo "Installing GNU stow to symlink files..."
  if hash apt-get 2>/dev/null; then
    echo sudo apt-get update && sudo apt-get install -y stow
    sudo apt-get update && sudo apt-get install -y stow
  elif hash yum 2>/dev/null; then
    echo sudo yum install -y stow --enablerepo=epel
    sudo yum install -y stow --enablerepo=epel
  else
    echo "Neither apt-get nor yum found. Terminating..."
    exit 1
  fi
fi
