starship_update() {
  curl -sS https://starship.rs/install.sh | sh -s -- -y
}

eval "$(starship init zsh)"
