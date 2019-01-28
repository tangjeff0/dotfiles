echo "did you `xcode-select --install` before running this script?"

echo "show dotfiles"
defaults write com.apple.finder AppleShowAllFiles NO
killall -KILL Finder

echo "press and hold to repeat keys (rather than showing accent chars!)"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

echo "download homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

echo "brew install command line apps"
brew install coreutils
brew install vim --with-override-system-vi
brew install emacs
brew install tmux
brew install grep
brew install ag
brew install tree
brew install node
brew install yarn
brew install thefuck
brew install python
brew install jq
brew install the_silver_searcher

echo "brew cleanup"
brew cleanup

echo "brew cask install gui apps"
brew cask install google-chrome
brew cask install postico
brew cask install spectacle
brew cask install postman
brew cask install evernote
brew cask install docker
brew cask install minikube
brew cask install dropbox
brew cask install spotify
brew cask install virtualbox
brew cask install macvim
brew cask install iterm2

echo "install zsh"
brew install zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
chsh -s /bin/zsh

echo "copy dotfiles out"
./scripts/nix-out.sh

echo "npm install global packages"
./scripts/npm.sh
