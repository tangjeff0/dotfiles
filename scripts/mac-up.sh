echo "did you `xcode-select --install` before running this script?"

echo "show dotfiles"
defaults write com.apple.finder AppleShowAllFiles NO
defaults write com.apple.screencapture location /Users/jefftang/Desktop/screenshots
killall -KILL Finder

echo "press and hold to repeat keys (rather than showing accent chars!)"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

echo "download homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

echo "brew install command line apps"
brew install $(cat ./data/brew.list)

echo "brew cask install gui apps"
brew cask install $(cat ./data/brew_cask.list)

brew cleanup

# echo "yarn global install"
# yarn global add $(cat ./npm.list)

# echo "npm install global packages"
# ./scripts/npm.sh

chsh -s /bin/zsh
