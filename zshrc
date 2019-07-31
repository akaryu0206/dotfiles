# Language setting
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

# Enable emacs mode
bindkey -e

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
alias rr='bin/rails routes'
alias rc='bin/rails c'
alias fs='RACK_HANDLER=falcon rails server'
alias bi='bundle install'
alias rsp='bin/rails spec'

# Ignore uppercase and lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Zplug
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-completions"
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
zplug "mollifier/cd-gitroot"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install zplug plugins
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Homebrew
export PATH="/usr/local/sbin:$PATH"
