#!/bin/sh

set -eu

# Get the absolute path to this script. See https://stackoverflow.com/a/1638397
GIT_PATH=$(dirname $(readlink -f "${BASH_SOURCE}"))

# Copy Kitty config files
mkdir -p ${XDG_CONFIG_HOME}/git
cp -f ${GIT_PATH}/config ${XDG_CONFIG_HOME}/git/config
