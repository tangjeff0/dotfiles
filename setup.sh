# xcode-select --install

# git clone --recurse-submodules git@github.com:tangsauce/dotfiles.git

# show dotfiles
defaults write com.apple.finder AppleShowAllFiles NO
killall -KILL Finder

# press and hold to repeat keys (don't show those accent chars!)
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# install command line apps
brew install coreutils
brew install vim --with-override-system-vi
brew install tmux
brew install grep
brew install ag
brew install tree
brew install node
brew install yarn

brew cleanup

# install gui apps stuff
brew cask install google-chrome
brew cask install opera
brew cask install postico
brew cask install spectacle
brew cask install postman
brew cask install evernote

# copy dotfiles
./copy-out.sh
