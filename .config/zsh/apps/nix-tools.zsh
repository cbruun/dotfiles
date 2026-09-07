# Convenience wrapper for the nix-tools ai-dev project. It activates its flox environment from
# anywhere. Anything but plain activation is delegated to the project's own entry point.
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

  if [[ $# -gt 0 ]]; then
    "$NIX_TOOLS_LOCATION/ai-dev/scripts/ai.sh" "$@"
    return $?
  fi

  flox activate -d "${NIX_TOOLS_LOCATION}/ai-dev"
}
