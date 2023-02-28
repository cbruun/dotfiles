#!/bin/sh

set -eu

# Get the absolute path to this script. See https://stackoverflow.com/a/1638397
KITTY_PATH=$(dirname $(readlink -f "${BASH_SOURCE}"))

# Copy Kitty config files
mkdir -p ${XDG_CONFIG_HOME}/kitty

cp -f ${KITTY_PATH}/kitty.conf ${XDG_CONFIG_HOME}/kitty/kitty.conf
cp -f ${KITTY_PATH}/current-theme.conf ${XDG_CONFIG_HOME}/kitty/current-theme.conf
