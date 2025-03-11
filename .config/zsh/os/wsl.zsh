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

if [ -d ~/.asdf ]; then
  source ~/.asdf/asdf.sh
  fpath=(${ASDF_DIR}/completions $fpath)
  # initialise completions with ZSH's compinit
  autoload -Uz compinit && compinit
fi
