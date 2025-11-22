if command_exists zoxide; then
  eval "$(zoxide init zsh --cmd j)"
  bindkey '^F' fzf-cd-widget
fi
