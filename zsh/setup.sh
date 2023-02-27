#!/bin/sh

set -eu

# Get the absolute path to this script, e.g. /home/user/bin/foo.sh. See https://stackoverflow.com/a/1638397
SCRIPT=$(readlink -f "$0")
SCRIPT_PATH=$(dirname "${SCRIPT}")

# Set config paths
export XDG_CONFIG_HOME="${HOME}/.config"
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

mkdir -p ~/.config
mkdir -p ~/.config/zsh

# Install dependencies
sudo dnf install -y git zsh util-linux-user

# Set ZSH as default shell: https://askubuntu.com/questions/131823/how-to-make-zsh-the-default-shell
chsh -s $(which zsh)

# Set ZSH environment: https://stackoverflow.com/a/46962370
cp -f ${SCRIPT_PATH}/.zshenv ~/.zshenv

# Copy profile
cp -f ${SCRIPT_PATH}/.profile ~/.profile

# Copy ZSH dotfiles
cp -f ${SCRIPT_PATH}/.zshrc ${ZDOTDIR}/.zshrc
cp -f ${SCRIPT_PATH}/.zsh_plugins.txt ${ZDOTDIR}/.zsh_plugins.txt

# Create ZSH history file
touch ${ZDOTDIR}/.zsh_history

# Install Antidote ZSH plugin manager: https://getantidote.github.io/
[ -d ${ZDOTDIR:-~}/.antidote ] && rm -rf ${ZDOTDIR:-~}/.antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote

# Install Starship.rs
curl -sS https://starship.rs/install.sh | sh
