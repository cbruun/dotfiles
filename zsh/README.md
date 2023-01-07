# ZSH configuration

## Installation
Install ZSH, [Starship](https://starship.rs/) and the ZSH plugin manager [Antidote](https://getantidote.github.io/).

```sh
sudo dnf install zsh
curl -sS https://starship.rs/install.sh | sh
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
```

## Dotfiles
Place `.zsh_plugins.txt` and `.zshrc` in `~/`.
