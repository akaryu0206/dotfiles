#!/bin/sh

# install zplug
if [ ! -d ~/.zplug ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
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

# install phpbrew
if [ ! -d ~/.phpbrew ]; then
  curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
  chmod +x phpbrew
  sudo mv phpbrew /usr/local/bin/phpbrew
  phpbrew init
fi

# install nodebrew
if [ ! -d ~/.nodebrew ]; then
  curl -L git.io/nodebrew | perl - setup
fi

# link dotfiles
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshenv ~/.zshenv
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.hyper.js ~/.hyper.js

# install zsh plugins via zplug
zplug install

# restart shell
exec $SHELL -l
