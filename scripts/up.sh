#!/usr/bin/env bash

# tangsauce's cross platform up script for environment configuration

set -e

up::mac () {
  # update xcode (and git)
  xcode-select --install

  # show dotfiles in finder
  defaults write com.apple.finder AppleShowAllFiles NO
  defaults write com.apple.screencapture location /Users/jefftang/Desktop/screenshots
  killall -KILL Finder

  # press and hold to repeat keys, rather than showing accent chars
  defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

  # install homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew upgrade

  # brew install command line apps
  brew install $(cat ./data/brew.list)

  # brew cask install gui apps
  brew cask install $(cat ./data/brew_cask.list)

  brew cleanup

  chsh -s /usr/bin/zsh
}

up::linux () {
  sudo apt-get install -y $(cat ./data/brew.list)
  chsh -s /bin/zsh
}

up::shared () {
  :
}

up::main () {
  if [[ "$OSTYPE" == "linux-gnu" ]]; then
    up::linux
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    up::mac
  else
    echo "what OS are you running?"
    exit 1
  fi
  up::shared
}
