#!/bin/sh

set -eu

# Get the absolute path to this script. See https://stackoverflow.com/a/1638397
VSCODE_PATH=$(dirname $(readlink -f "${BASH_SOURCE}"))

# Copy Kitty config files
mkdir -p ${XDG_CONFIG_HOME}/Code
mkdir -p ${XDG_CONFIG_HOME}/Code/User

cp -f ${VSCODE_PATH}/settings.json ${XDG_CONFIG_HOME}/Code/User/settings.json
cp -f ${VSCODE_PATH}/keybindings.json ${XDG_CONFIG_HOME}/Code/User/keybindings.json
