# Load commands provided by the nix-tools project when it is available.
if [[ -n "${NIX_TOOLS_LOCATION:-}" && -d "${NIX_TOOLS_LOCATION}" ]]; then
  source "${NIX_TOOLS_LOCATION}/commands.zsh"
fi
