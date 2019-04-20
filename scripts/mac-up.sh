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
brew install $(cat ./brew.list)

echo "brew cask install gui apps"
brew cask install $(cat ./brew_cask.list)

brew cleanup

echo "yarn global install"
yarn global add $(cat ./npm.list)


# echo "install zsh"
# brew install zsh
# git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# chsh -s /bin/zsh

# echo "copy dotfiles out"
# ./scripts/nix-out.sh

# echo "npm install global packages"
# ./scripts/npm.sh

main () {
  echo 'yeet'
}
