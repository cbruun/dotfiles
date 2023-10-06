source_if_exists() {
  [[ -f "$1" ]] && source "$1"
}

command_exists() {
  return ! COMMAND_LOCATION="$(type -p "$1")" || [[ -z $COMMAND_LOCATION ]]
}
