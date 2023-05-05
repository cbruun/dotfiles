#!/bin/sh

set -eu

KITTY_PATH=$DOTFILES_PATH/kitty

# Ensure the Kitty config folder exists
mkdir -p "${XDG_CONFIG_HOME}"/kitty

# Copy the Kitty config files
cp -f "${KITTY_PATH}"/kitty.conf "${XDG_CONFIG_HOME}"/kitty/kitty.conf
cp -f "${KITTY_PATH}"/current-theme.conf "${XDG_CONFIG_HOME}"/kitty/current-theme.conf
