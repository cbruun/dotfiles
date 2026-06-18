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

# `git submodule` resolves the work tree relative to the current directory, so
# run it from $HOME (the work tree) in a subshell, leaving the caller's CWD
# untouched. The script may be invoked from anywhere.
(cd "${HOME}" && dotfiles submodule update --init --recursive --depth=1)
