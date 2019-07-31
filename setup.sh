#!/bin/sh

# link dotfiles
if [ -f ~/.gitignore_global ]; then
  rm ~/.gitignore_global
fi
ln -sf ~/dotfiles/gitignore_global ~/.gitignore_global

if [ -f ~/.tmux.com ]; then
  rm ~/.tmux.conf
fi
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf

if [ -f ~/.vimrc ]; then
  rm ~/.vimrc
fi
ln -sf ~/dotfiles/vimrc ~/.vimrc

if [ -f ~/.zshenv ]; then
  rm ~/.zshenv
fi
ln -sf ~/dotfiles/zshenv ~/.zshenv

if [ -f ~/.zshrc ]; then
  rm ~/.zshrc
fi
ln -sf ~/dotfiles/zshrc ~/.zshrc

if [ -f ~/.hyper.js ]; then
  rm ~/.hyper.js
fi
ln -sf ~/dotfiles/hyper.js ~/.hyper.js

# install homebrew
if [ ! -f /usr/local/bin/brew ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install zsh
brew install zsh
if [ ! -f /usr/local/bin/zsh ]; then
  chsh -s /usr/local/bin/zsh
fi

# install ruby
brew install ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
gem install rubocop ruby-debug-ide debase rcodetools fastri

# install php
brew install php
brew install composer
composer global require squizlabs/php_codesniffer
composer global require friendsofphp/php-cs-fixer

# install node
brew install node

# install typescript
npm install -g typescript

# install elm
npm install -g elm

# install go
brew install go

# install python
brew install python

# install tig
brew install tig

# cleanup
brew cleanup
rm -f .bash_history
rm -f .bash_sessions

# install zplug
if [ ! -d ~/.zplug ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi
