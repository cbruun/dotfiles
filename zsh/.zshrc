autoload -Uz compinit
compinit

source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# Antidoe plugin manager:
# nitialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# Enable tab autocomplete, for instance when changing directory
zstyle ':completion:*' menu select

# Keybinds
bindkey  "^[[H"     beginning-of-line     # Support Home key
bindkey  "^[[F"     end-of-line           # Support End key
bindkey  "^[[3~"    delete-char           # Support Del key
bindkey  "^[[Z"     reverse-menu-complete # Support Alt-Tab when auto-completing to cycle backwards
bindkey  "5~"       kill-word             # Support Ctrl + Backspace to delete word
bindkey  "^H"       backward-kill-word    # Support Ctrl + Delete to delete word backwards
bindkey  "^[[1;5C"  forward-word          # Support Ctrl + RightArrow to move forward a word
bindkey  "^[[1;5D"  backward-word         # Support Ctrl + LeftArrow to move backward a word

# Set window title to current path
precmd() {
  print -Pn "\e]0;Kitty %~\a"
}

# PATH
export PATH=$PATH:$HOME/.dotnet
export PATH=$PATH:$HOME/.rider/rider-2022.3/bin
export PATH=$PATH:$HOME/.pulumi/bin
export PATH="$HOME/.cargo/bin:$PATH"

# Aliases
alias zshconfig="code ~/.zshrc"
alias zshplugins="code ~/.zsh_plugins.txt"

alias op=xdg-open

# Starship - https://starship.rs/
eval "$(starship init zsh)"
