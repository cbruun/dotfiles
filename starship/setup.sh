#!/bin/sh

set -eu

STARSHIP_PATH=$DOTFILES_PATH/starship

cp -f "${STARSHIP_PATH}"/starship.toml "${XDG_CONFIG_HOME}"/starship.toml
