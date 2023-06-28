source_if_exists() {
  [[ -f "$1" ]] && source "$1"
}
