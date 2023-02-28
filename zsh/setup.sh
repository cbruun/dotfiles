#!/bin/sh

set -eu

# Get the absolute path to this script. See https://stackoverflow.com/a/1638397
ZSH_PATH=$(dirname $(readlink -f "${BASH_SOURCE}"))

# Set config paths
. "${ZSH_PATH}/.zshenv"

# Create XDG fodlers and ZDOTDIR
mkdir -p $XDG_CONFIG_HOME
mkdir -p $XDG_CACHE_HOME
mkdir -p $XDG_DATA_HOME
mkdir -p $XDG_STATE_HOME
mkdir -p $ZDOTDIR

# Install dependencies
sudo dnf install -y git zsh util-linux-user

# Set ZSH as default shell. See https://askubuntu.com/questions/131823/how-to-make-zsh-the-default-shell
chsh -s $(which zsh)

# Set ZSH environment. See https://stackoverflow.com/a/46962370
cp -f ${ZSH_PATH}/.zshenv ~/.zshenv

# Copy profile
cp -f ${ZSH_PATH}/.profile ~/.profile

# Copy ZSH dotfiles
cp -f ${ZSH_PATH}/.zshrc ${ZDOTDIR}/.zshrc
cp -f ${ZSH_PATH}/.zsh_plugins.txt ${ZDOTDIR}/.zsh_plugins.txt

# Create ZSH history file
touch ${ZDOTDIR}/.zsh_history

# Install Antidote ZSH plugin manager. See https://getantidote.github.io/
[ -d ${ZDOTDIR:-~}/.antidote ] && rm -rf ${ZDOTDIR:-~}/.antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# Install Starship.rs
curl -sS https://starship.rs/install.sh | sh -s -- -y
