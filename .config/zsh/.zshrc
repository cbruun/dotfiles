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

source "${ZDOTDIR}/config/history.zsh"

# Enable cycle through sub-command history.
# Needs a keybind to work, see Keybinds section: up-line-or-search, down-line-or-search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

source "${ZDOTDIR}/config/keybinds.zsh"
source "${ZDOTDIR}/base/env.sh"
source "${ZDOTDIR}/base/paths.sh"

if [[ "$OSTYPE" == "darwin"* ]]; then
  source "${ZDOTDIR}/os/mac.zsh"
fi

if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
  source "${ZDOTDIR}/os/wsl.zsh"
fi

source "${ZDOTDIR}/apps/1password-ssh-agent.zsh"
source "${ZDOTDIR}/apps/carapace.zsh"
source "${ZDOTDIR}/apps/direnv.zsh"
source "${ZDOTDIR}/apps/docker.zsh"
source "${ZDOTDIR}/apps/starship.zsh"

# Load aliases at the end to ensure all commands are available
source "${ZDOTDIR}/config/aliases.zsh"

# Depends on aliases, so load last
source "${ZDOTDIR}/config/update.zsh"
