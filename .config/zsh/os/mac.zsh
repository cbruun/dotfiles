alias o=open

export PATH="$PATH":/opt/homebrew/bin
export HOMEBREW_NO_ENV_HINTS="1"

local has_1p=false
if command_exists brew && brew list --cask 1password >/dev/null 2>&1; then
  has_1p=true
fi

# Use the same path for the 1Password agent socket across Linux and Mac.
# This ensures `1password-ssh-agent.zsh` file works on both systems.
if $has_1p; then
  mkdir -p "$HOME/.1password"
  ln -sfn "$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock" "$HOME/.1password/agent.sock"
fi
