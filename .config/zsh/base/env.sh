#!/bin/sh

export CARGO_HOME="${XDG_DATA_HOME}"/cargo
export RUSTUP_HOME="${XDG_DATA_HOME}"/rustup

export DOCKER_CONFIG="${XDG_CONFIG_HOME}"/docker

export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}"/npm/npmrc
export NPM_CONFIG_CACHE="${XDG_CACHE_HOME}"/npm
export NPM_CONFIG_PREFIX="${XDG_DATA_HOME}"/npm

export AZURE_CONFIG_DIR="${XDG_CONFIG_HOME}"/azure

export CLAUDE_CONFIG_DIR="${XDG_CONFIG_HOME}"/claude
