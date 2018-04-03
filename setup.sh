# xcode-select --install
# git clone --recurse-submodules git@github.com:tangsauce/dotfiles.git
# install pathogen

sudo nvram SystemAudioVolume=" "
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

brew install coreutils
brew install vim --with-override-system-vi
brew install tmux
brew install grep
brew install ag
brew install tree
brew install node
brew install yarn

brew cleanup

brew cask install google-chrome
brew cask install opera
brew cask install postico
brew cask install spectacle
brew cask install postman
brew cask install evernote

cp eslintrc.js ~/.eslintrc.js
cp gitconfig ~/.gitconfig
cp gitignore_global ~/.gitignore_global
cp tmux.conf ~/.tmux.conf
cp -R tmux/ ~/.tmux
cp -R .vim/ ~/.vim/
cp zshrc ~/.zshrc
