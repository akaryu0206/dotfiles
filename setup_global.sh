#!/bin/sh

# install zplug

if [ ! -d ~/.zplug ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
  export ZPLUG_HOME="$HOME/.zplug"
fi

# install anyenv

if [ ! -d ~/.anyenv ]; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
  export PATH="$HOME/.anyenv/bin:$PATH"
  eval "$(anyenv init -)"

  mkdir -p $(anyenv root)/plugins
  git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
fi

# install rbenv

if [ ! -d ~/.anyenv/envs/rbenv ]; then
  anyenv install rbenv
fi

# install pyenv

if [ ! -d ~/.anyenv/envs/pyenv ]; then
  anyenv install pyenv
fi

# install phpenv

if [ ! -d ~/.anyenv/envs/phpenv ]; then
  anyenv install phpenv
fi

# install ndenv

if [ ! -d ~/.anyenv/envs/ndenv ]; then
  anyenv install ndenv
fi

# link dotfiles

ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshenv ~/.zshenv
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# install zsh plugins via zplug

zplug install

# restart shell

exec $SHELL -l
