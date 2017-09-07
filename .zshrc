# Enable vim mode
bindkey -v

# Enable completion
autoload -Uz compinit; compinit

# Enable colors
autoload -Uz colors; colors

# Make it changeable directory without 'cd' command
setopt auto_cd

# List current directory after change directory
function chpwd() { ls -l -G }

# Remember directory changes history
setopt auto_pushd

# Remove duplicates from directory change history
setopt pushd_ignore_dups

# Correct typo
setopt correct

# Share histories with other terminals
setopt share_history

# Remove duplicates from shared command history
setopt histignorealldups
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=10000

# Aliases
alias restartshell='exec $SHELL -l'
alias la='ls -la -G'
alias ll='ls -l -G'

# Ignore uppercase and lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Zplug
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-completions"
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
zplug "mollifier/cd-gitroot"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug load --verbose
