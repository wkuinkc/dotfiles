#!/bin/bash
set -euo pipefail

echo "Installing git and GNU stow..."

if hash apt-get 2>/dev/null; then
  sudo apt-get update
  sudo apt-get install -y stow
  exit 0
elif hash yum 2>/dev/null; then
  sudo yum install -y stow --enablerepo=epel
  exit 0
else
  echo "Neither apt-get nor yum found. Terminating..."
  exit 1
fi
