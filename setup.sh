# git clone --recurse-submodules git@github.com:tangsauce/dotfiles.git

sudo nvram SystemAudioVolume=" "
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

brew install coreutils
brew install vim --with-override-system-vi
brew install tmux
brew install grep
brew install ag
brew install git
brew install tree
brew install node
brew install yarn

brew cleanup

# make sure to install submodules

brew cask install google-chrome
brew cask install opera
brew cask install postico
brew cask install spectacle
brew cask install postman
brew cask install evernote
