# Enable ZSH history for improved suggestions. See https://unix.stackexchange.com/questions/273861/unlimited-history-in-zsh
touch "${ZDOTDIR}"/.zsh_history           # Ensure the history file exists
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=2000
export SAVEHIST=2000
setopt appendhistory                      # Write to history
setopt hist_ignore_all_dups               # Delete old recorded entry if new entry is a duplicate
setopt hist_reduce_blanks                 # Remove superfluous blanks before recording entry
