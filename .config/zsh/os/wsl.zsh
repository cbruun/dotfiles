alias home="cd ~/"
alias win="cd /mnt/c/Users/cbr"
alias proj="win && cd projects"

alias o="explorer.exe"
alias winget="winget.exe"
alias java="java.exe"
alias op="op.exe"

# Enable ssh-agent to remember passwords
eval $(ssh-agent) &>/dev/null

update_time() {
  if command_exists ntpdate; then
    sudo ntpdate time.windows.com
  else
    echo "Error: ntpdate command not found. Install package 'ntpsec'"
  fi
}

export PATH="${HOME}/go/bin:$PATH"
export ASDF_DATA_DIR="$XDG_DATA_HOME"/asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# Read by the nix-tools/ai-dev project
export AI_DEV_DEFAULT_OP_PROFILE="employee"
