#!/bin/sh

set -eu

# Get the absolute path to this script. See https://stackoverflow.com/a/1638397
STARSHIP_PATH=$(dirname $(readlink -f "${BASH_SOURCE}"))

cp -f ${STARSHIP_PATH}/starship.toml ${XDG_CONFIG_HOME}/starship.toml
