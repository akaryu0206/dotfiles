# 日本語
export LANG=ja_JP.UTF-8

# プロンプト表示をカスタマイズ
PROMPT="%(?.%{${fg[green]}%}.%{${fg[red]}%})%n${reset_color}@${fg[blue]}%m${reset_color}(%*%) %~
%# "

# 補完
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit
compinit

# 色を使用
autoload -Uz colors
colors

# 他のターミナルとヒストリーを共有
setopt share_history

# ヒストリーに重複を表示しない
setopt histignorealldups
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

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

# エイリアス
alias la='ls -la -G'
alias ll='ls -l -G'
alias so='source'
alias v='vim'
alias ..='../'
