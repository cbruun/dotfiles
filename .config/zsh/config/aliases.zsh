alias zshconfig='code $ZDOTDIR $ZDOTDIR/.zshrc'
alias zshplugins='code $ZDOTDIR/.zsh_plugins.txt'
alias dotfiles-edit='code $HOME/projects/dotfiles'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias o=xdg-open

if command_exists terraform; then
  alias tf=terraform
fi

if command_exists terramate; then
  alias tm=terramate
fi

if command_exists pulumi; then
  alias pl=pulumi
fi

# See https://sw.kovidgoyal.net/kitty/faq/#i-get-errors-about-the-terminal-being-unknown-or-opening-the-terminal-failing-or-functional-keys-like-arrow-keys-don-t-work
if command_exists kitten && [[ "$TERMINFO" == *kitty/terminfo* ]]; then
  alias ssh="kitten ssh"
fi
