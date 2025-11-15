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
