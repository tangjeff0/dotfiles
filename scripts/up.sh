#!/usr/bin/env bash

# tangsauce's cross platform up script for environment configuration

up::mac () {
  # update xcode (and git)
  # xcode-select --install

  # show dotfiles in finder
  defaults write com.apple.finder AppleShowAllFiles NO
  defaults write com.apple.screencapture location /Users/jefftang/Desktop/screenshots
  killall -KILL Finder

  # press and hold to repeat keys, rather than showing accent chars
  defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

  # install homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew update
  brew upgrade

  # brew install command line apps
  brew install $(cat ./data/brew.list)

  # brew cask install gui apps
  brew install --cask $(cat ./data/cask.list)

  brew cleanup
}

up::linux () {
  sudo apt-get install -y $(cat ./data/brew.list)

  # shortcuts: https://help.ubuntu.com/lts/ubuntu-help/shell-keyboard-shortcuts.html.en
  # view ethernet addresses sudo lshw -class network

  # # to see all intentionally installed packages
  # (zcat $(ls -tr /var/log/apt/history.log*.gz); cat /var/log/apt/history.log) 2>/dev/null |
    #   egrep '^(Start-Date:|Commandline:)' |
    #   grep -v aptdaemon |
    #   egrep -B1 '^Commandline:'

  sudo apt-get install \
    git \
    vim \
    tmux \
    curl \
    zsh \
    tree \
    nodejs \
    npm \
    gnome-tweak-tool \
    xclip \
    bspwm \
    redshift \
    stow \
    vim-gui-common \ # important for xterm-clipboard in vim for copy and paste
    silversearcher-ag \
    emacs \
    htop \
    jq \
      -y

  # redshift
  echo "[redshift]
  allowed=true
  system=false
  users=" >> /etc/geoclue/geoclue.conf
  sudo apt-get install postgres postgresql-contrib pgadmin3 -y # setup: https://help.ubuntu.com/community/PostgreSQL
  sudo apt-get install dockerio
  sudo systemctl start docker
  sudo systemctl enable docker

  # yarn
  sudo apt-get remove cmdtest
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt update && sudo apt install --no-install-recommends yarn

  npm init -y
  yarn global add nodemon
  yarn global add eslint \
    eslint-plugin-react \
    babel-eslint \
    @typescript-eslint/parser \
    @typescript-eslint/eslint-plugin

  echo "\nJAVA\n"
  sudo apt-get install openjdk-8-jre -y

  # clojure
  apt-get install -y software-properties-common
  wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
  sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
  sudo apt-get update
  sudo apt-get install -y adoptopenjdk-11-hotspot
  curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > lein
  sudo mv lein /usr/local/bin/lein
  sudo chmod a+x /usr/local/bin/lein

  # nvm
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
  wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash





  echo "\nSNAP\n"
  sudo snap install \
    postman \
    slack


}

up::shared () {
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  chsh -s /bin/zsh
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
up::main
