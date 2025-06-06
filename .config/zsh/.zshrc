# Remove Last Login that is always displayed on a Mac
printf '\33c\e[3J'

autoload -Uz compinit
compinit

source ${ZDOTDIR}/config/common.zsh
source ${ZDOTDIR}/.antidote/antidote.zsh

# Antidote plugin manager:
# Initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# Customize alias reminder message for plugin: MichaelAquilina/zsh-you-should-use
export YSU_MESSAGE_FORMAT="\n $(tput setaf 3) $(tput bold)$(tput setaf 4)%alias$(tput setaf 7) => %command"

# Enable tab autocomplete, for instance when changing directory
zstyle ':completion:*' menu select

# Enable ZSH history for improved suggestions. See https://unix.stackexchange.com/questions/273861/unlimited-history-in-zsh
touch "${ZDOTDIR}"/.zsh_history           # Ensure the history file exists
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=2000
export SAVEHIST=2000
setopt appendhistory                      # Write to history
setopt hist_ignore_all_dups               # Delete old recorded entry if new entry is a duplicate
setopt hist_reduce_blanks                 # Remove superfluous blanks before recording entry

# Enable functions to cycle through sub-command history.
# Needs a keybind to work, see Keybinds section: up-line-or-search, down-line-or-search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Keybinds. Find key sequences using "sed -n l"
bindkey "^[[H"     beginning-of-line                     # Support Home key
bindkey "^[[F"     end-of-line                           # Support End key
bindkey "^[[3~"    delete-char                           # Support Del key
bindkey "^[[Z"     reverse-menu-complete                 # Support Alt-Tab when auto-completing to cycle backwards
bindkey "5~"       kill-word                             # Support Ctrl + Backspace to delete word
bindkey "^H"       backward-kill-word                    # Support Ctrl + Delete to delete word backwards
bindkey "^[[1;5C"  forward-word                          # Support Ctrl + RightArrow to move forward a word
bindkey "^[[1;5D"  backward-word                         # Support Ctrl + LeftArrow to move backward a word
bindkey "^[[A"     up-line-or-search                     # Support UpArrow for searching backward in history or sub-command history
bindkey "^[[B"     down-line-or-search                   # Support DownArrow for searching forward in history or sub-command history
bindkey "^[[1;3A"  history-beginning-search-backward     # Support Alt + UpArrow for searching backward in history based on cursor position
bindkey "^[[1;3B"  history-beginning-search-forward      # Support Alt + DownArrow for searching forward in history based on cursor position

# Set terminal window title to current path
precmd() {
  print -Pn "\e]0;Terminal %~\a"
}

source "${ZDOTDIR}/base/env.sh"
source "${ZDOTDIR}/base/paths.sh"

source_if_exists "${ZDOTDIR}/custom_paths.zsh}"

if [[ "$OSTYPE" == "darwin"* ]]; then
  source "${ZDOTDIR}/os/mac.zsh"
fi

if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
  source "${ZDOTDIR}/os/wsl.zsh"
fi

source "${ZDOTDIR}/apps/1password-ssh-agent.zsh"
source "${ZDOTDIR}/apps/direnv.zsh"
source "${ZDOTDIR}/apps/docker.zsh"
source "${ZDOTDIR}/apps/fnm.zsh"
source "${ZDOTDIR}/apps/starship.zsh"

# Load aliases at the end to ensure all commands are available
source "${ZDOTDIR}/config/aliases.zsh"

# Depends on aliases, so load last
source "${ZDOTDIR}/config/update.zsh"
