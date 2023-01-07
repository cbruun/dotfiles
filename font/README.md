# How to install the fonts

Download Nerd Font version of `JetBrains Mono` and `Cascadia Code` (called `Caskaydia Cove`) [from here](https://www.nerdfonts.com/font-downloads).

Unzip the archives and place them in `~/.local/share/fonts`, then reset the font cache.

```sh
cp ~/Downloads/JetBrainsMono ~/.local/share/fonts
cp ~/Downloads/CaskaydiaCove ~/.local/share/fonts
fc-cache -f -v
```
