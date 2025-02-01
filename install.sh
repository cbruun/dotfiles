#!/bin/sh

set -eu

DOTFILES_LOCATION="${HOME}"/.dotfiles

dotfiles() {
  git --git-dir="${DOTFILES_LOCATION}" --work-tree="${HOME}" "$@"
}

if [ ! -d "$DOTFILES_LOCATION" ]; then
  git clone --bare https://github.com/cbruun/dotfiles.git "$DOTFILES_LOCATION"
else
  dotfiles pull
fi

dotfiles checkout
dotfiles config --local status.showUntrackedFiles no

dotfiles submodule update --init --recursive --depth=1
