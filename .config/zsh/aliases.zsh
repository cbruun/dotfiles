alias zshconfig='code $ZDOTDIR/.zshrc'
alias zshplugins='code $ZDOTDIR/.zsh_plugins.txt'
alias dotfiles-edit='code $HOME/projects/dotfiles'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias o=xdg-open

if command_exists terraform; then
  alias tf=terraform
fi

if command_exists pulumi; then
  alias pl=pulumi
fi
