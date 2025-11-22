if command_exists carapace; then
  export CARAPACE_BRIDGES="zsh"
  source <(carapace _carapace)
fi
