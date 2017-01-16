# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# *env
eval "$(ndenv init -)"
eval "$(phpenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"

# 日本語
export LANG=ja_JP.UTF-8

# 補完
autoload -U compinit
compinit

# 色を使用
autoload -Uz colors
colors

# cdコマンドを省略
setopt auto_cd

# cdの後にlsを実行
function chpwd() { ls -l -G }

# 自動でpushdを実行
setopt auto_pushd

# pushdから重複を削除
setopt pushd_ignore_dups

# コマンドミスを修正
setopt correct

# 他のターミナルとヒストリーを共有
setopt share_history

# ヒストリーに重複を表示しない
setopt histignorealldups
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# エイリアス
alias restartshell='exec $SHELL -l'
alias ..='cd ../'
alias la='ls -la -G'
alias ll='ls -l -G'
alias so='source'
alias v='vim'
alias vg='vagrant'
alias cmpsr='composer'
alias parti='php artisan'

# 大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# zplug
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-completions"
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
zplug load --verbose
