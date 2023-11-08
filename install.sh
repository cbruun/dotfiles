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

ANTIDOTE_LOCATION="${ZDOTDIR:-${XDG_CONFIG_HOME:-${HOME}/.config}/zsh}/.antidote"

[ -d "${ANTIDOTE_LOCATION}" ] && rm -rf "${ANTIDOTE_LOCATION}"
git clone --depth=1 https://github.com/mattmc3/antidote.git "${ANTIDOTE_LOCATION}"
