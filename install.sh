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

# `git clone --bare` flags the repo bare, but it actually has a working tree ($HOME).
# Mark the repo as not bare, otherwise `git submodule` refuses to run.
dotfiles config --local core.bare false

dotfiles submodule update --init --recursive --depth=1
