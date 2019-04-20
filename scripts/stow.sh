#!/bin/sh

if [[ ! -d ~/.vim/bundle/Vundle.vim ]]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

symlink=(
.profile
.tmux.conf
)

for x in ${symlink[*]}; do
  if [[ ! -L ~/$x ]]; then
    ln -s $PWD/$x ~/$x
  fi
done


dir=(
zsh
vim
git
)
for x in ${dir[*]}; do
  if [[ ! -d  ~/.$x ]]; then
	  mkdir ~/ ~/.$x
    stow -vR $x -t ~/.$x
  fi
done
