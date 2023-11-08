#!/bin/sh

set -eu

dotfiles() {
  git --git-dir="${HOME}"/.dotfiles/ --work-tree="${HOME}" "$@"
}

DOTFILES_LOCATION="${HOME}"/.dotfiles

if [ ! -d "$DOTFILES_LOCATION" ]; then
  git clone --bare https://github.com/cbruun/dotfiles.git "${HOME}"/.dotfiles
else
  dotfiles pull
fi

dotfiles checkout
dotfiles config --local status.showUntrackedFiles no

. ${HOME}/.zshenv

[ -d "${ZDOTDIR}"/.antidote ] && rm -rf "${ZDOTDIR}"/.antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git "${ZDOTDIR}"/.antidote
