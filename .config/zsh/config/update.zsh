update_dotfiles() {
  dotfiles pull
  dotfiles submodule update --init --recursive --remote --depth=1
  antidote update
}
