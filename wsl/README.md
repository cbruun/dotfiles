# WSL Fedora setup
First download the `rootfs` file. See guide here: https://dev.to/bowmanjd/install-fedora-on-windows-subsystem-for-linux-wsl-4b26

On the Windows host, run the following in `pwsh`:
```pwsh
mkdir $HOME/wsl/fedora
wsl --import fedora $HOME\wsl\fedora $HOME\Downloads\fedora-37-rootfs.tar
wsl -s fedora
wsl -d fedora
```

Inside the Fedora container, run the following:
```sh
dnf install -y passwd cracklib-dicts
useradd -G wheel cbr
passwd cbr

# Set cbr as default wsl user
printf "\n[user]\ndefault = myusername\n" | sudo tee -a /etc/wsl.conf
```

## WSL specific ZSH config
```zsh
# Aliases - WSL
alias zshconfig="vim ~/.zshrc"
alias zshplugins="vim ~/.zsh_plugins.txt"

alias op="explorer.exe"
alias pwsh="pwsh.exe"

alias home="cd ~/"
alias win="cd /mnt/c/Users/cbr"
alias proj="win && cd projects"

# Enable ssh-agent to remember passwords
eval $(ssh-agent) &>/dev/null
```
