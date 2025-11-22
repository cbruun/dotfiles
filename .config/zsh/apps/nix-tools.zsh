function ai {
  if ! command_exists flox; then
    echo "Error: flox command not found"
    return 1
  fi

  if [[ ! -d "${NIX_TOOLS_LOCATION}" ]]; then
    echo "Error: nix-tools project not found at ${NIX_TOOLS_LOCATION}"
    echo "Set NIX_TOOLS_LOCATION or clone the nix-tools repository"
    return 1
  fi

  case "$1" in
    --upgrade)
      echo "Upgrading AI dev tools..."
      # Create a subshell to avoid cd affecting the current location
      (
        cd "${NIX_TOOLS_LOCATION}/ai-dev"
        git restore .flox/env/manifest.toml
        git pull
        flox upgrade
      )
      return $?
      ;;
    --*)
      # Catch any unrecognized flags
      echo "Error: Unknown option $1"
      echo "Usage: ai [--upgrade]"
      return 1
      ;;
    *)
      flox activate -d "${NIX_TOOLS_LOCATION}/ai-dev"
      ;;
  esac
}
