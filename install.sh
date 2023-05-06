#!/bin/sh

set -eu

dotfiles() {
  git --git-dir="$HOME"/.dotfiles/ --work-tree="$HOME" "$@"
}

DOTFILES_LOCATION="${HOME}"/.dotfiles

if [ ! -d "$DOTFILES_LOCATION" ]; then
  git clone --bare git@gitlab.com:cbruun/dotfiles.git "${HOME}"/.dotfiles
fi

dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
