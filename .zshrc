# enable zplug
source ~/.zplug/init.zsh

# 日本語
export LANG=ja_JP.UTF-8

# 補完
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit
compinit

# 色を使用
autoload -Uz colors
colors

# cdコマンドを省略
setopt auto_cd

# cdの後にlsを実行
chpwd() { ls -l -G }

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
alias ..='../'
alias la='ls -la -G'
alias ll='ls -l -G'
alias so='source'
alias v='vim'
alias vg='vagrant'
alias cmpsr='composer'
alias parti='php artisan'

# 大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# プロンプト表示をカスタマイズ
local p_l_cdir="%{${fg[blue]}%}[%~]%{${reset_color}%}"$'\n'
local p_l_info="${fg[yellow]}%n@%m${reset_color}"
local p_l_mark="%(?,${fg[green]},${fg[red]})%(!,#,$)${reset_color}"
PROMPT="$p_l_cdir$p_l_info $p_l_mark "
local p_r_info="%{${fg[magenta]}%}[%*]%{${reset_color}%}"
RPROMPT="$p_r_info"
