#!/bin/sh

set -eu

# Get the absolute path to this script, e.g. /home/user/bin/foo.sh. See https://stackoverflow.com/a/1638397
SCRIPT=$(readlink -f "$0")
SCRIPT_PATH=$(dirname "${SCRIPT}")

# Copy Kitty config files
mkdir -p ~/.config/kitty
cp -f ${SCRIPT_PATH}/kitty.conf ~/.config/kitty/kitty.conf
cp -f ${SCRIPT_PATH}/current-theme.conf ~/.config/kitty/current-theme.conf
