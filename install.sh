#!/bin/sh

set -eu

# Get the absolute path to this script. See https://stackoverflow.com/a/1638397
DOTFILES_PATH=$(dirname $(readlink -f "${BASH_SOURCE}"))

. ${DOTFILES_PATH}/zsh/setup.sh
. ${DOTFILES_PATH}/starship/setup.sh
. ${DOTFILES_PATH}/kitty/setup.sh
. ${DOTFILES_PATH}/git/setup.sh
. ${DOTFILES_PATH}/vscode/setup.sh
