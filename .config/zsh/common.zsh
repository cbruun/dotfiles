source_if_exists() {
  # Source a file if it exists
  # Usage: source_if_exists <file_path>
  # Arguments:
  #   file_path  - The path to the file to be sourced.

  local file_path="$1"

  # Validate the file path argument
  if [[ -z "$file_path" ]]; then
    echo "Error: No file path provided to source_if_exists function."
    return 1
  fi

  # Source the file if it exists
  if [[ -f "$file_path" ]]; then
    source "$file_path"
  fi
}

command_exists() {
  # Check if a command exists.
  # Usage: command_exists <command_name>

  local command_name="$1"

  if command_loc="$(type -p "$command_name")" && [[ -n $command_loc ]]; then
    return 0  # true
  else
    return 1  # false
  fi
}

update_all() {
  echo "Updating Starship..."
  update_starship()
  echo "Updating Antidote..."
  antidote update
}
