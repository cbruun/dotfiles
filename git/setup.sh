#!/bin/sh

set -eu

GIT_PATH=$DOTFILES_PATH/git

# Ensure the Git config folder exists
mkdir -p "${XDG_CONFIG_HOME}"/git

# Copy the Git config file
cp -f "${GIT_PATH}"/config "${XDG_CONFIG_HOME}"/git/config
