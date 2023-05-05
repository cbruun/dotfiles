#!/bin/sh

set -eu

VSCODE_PATH=$DOTFILES_PATH/vscode

# Ensure the VS Code config folders exist
mkdir -p "${XDG_CONFIG_HOME}"/Code
mkdir -p "${XDG_CONFIG_HOME}"/Code/User

# Copy VS Code config files
cp -f "${VSCODE_PATH}"/settings.json "${XDG_CONFIG_HOME}"/Code/User/settings.json
cp -f "${VSCODE_PATH}"/keybindings.json "${XDG_CONFIG_HOME}"/Code/User/keybindings.json
