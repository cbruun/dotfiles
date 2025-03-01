alias zshconfig='code $ZDOTDIR $ZDOTDIR/.zshrc'
alias dotfiles-edit='code $HOME/projects/dotfiles'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

if command_exists xdg-open; then
  alias o=xdg-open
fi

if command_exists terraform; then
  alias tf=terraform
fi

if command_exists terramate; then
  alias tm=terramate
fi

if command_exists pulumi; then
  alias pl=pulumi
fi

if command_exists nvim; then
  alias vim=nvim
  alias v=nvim
fi

# See https://sw.kovidgoyal.net/kitty/faq/#i-get-errors-about-the-terminal-being-unknown-or-opening-the-terminal-failing-or-functional-keys-like-arrow-keys-don-t-work
if command_exists kitten && [[ "$TERMINFO" == *kitty/terminfo* ]]; then
  alias ssh="kitten ssh"
fi
