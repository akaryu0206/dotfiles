#!/bin/sh

ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

exec $SHELL -l
