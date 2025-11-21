update_dotfiles() {
  dotfiles pull --recurse-submodules
  antidote update
}
