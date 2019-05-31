#!/bin/bash

symlink=(
.profile
.tmux.conf
eslintrc.js
.gitconfig
.gitignore_global
)

for x in ${symlink[*]}; do
  ln -sf $PWD/$x $HOME/$x
done


dir=(
zsh
vim
)
for x in ${dir[*]}; do
  if [[ ! -d  ~/.$x ]]; then
    mkdir ~/ ~/.$x
  fi
  stow -vR $x -t ~/.$x
done
