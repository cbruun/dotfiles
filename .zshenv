# Only read by a zsh session that starts without ZDOTDIR defined. This file ensures
# the real .zshenv file is read.
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
[[ -r $ZDOTDIR/.zshenv ]] && source "$ZDOTDIR/.zshenv"
