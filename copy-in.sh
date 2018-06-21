#! /bin/bash
# script to copy in dotfiles from jeff's macbook to `dotfiles` repo

cp ~/.eslintrc.js eslintrc.js
cp ~/.gitconfig gitconfig
cp ~/.gitignore_global gitignore_global
cp ~/.vim/vimrc vim/vimrc # only copies config file, not entire directory, because directory has submodules
cp ~/.tmux.conf tmux.conf
cp ~/.zshrc zshrc
cp ~/.zpreztorc zpreztorc

# to add submodule
  # git submodule add <repo> <path>
# to remove 
  # Delete the relevant section from the .gitmodules file.
  # Stage the .gitmodules changes git add .gitmodules
  # Delete the relevant section from .git/config.
  # Run git rm --cached path_to_submodule (no trailing slash).
  # Run rm -rf .git/modules/path_to_submodule
  # Commit git commit -m "Removed submodule <name>"
  # Delete the now untracked submodule files
  # rm -rf path_to_submodule
  # https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule#1260982
  # wtf...
