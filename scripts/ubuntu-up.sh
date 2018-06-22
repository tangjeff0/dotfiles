echo "sudo apt install command line apps"
sudo apt install vim -y
sudo apt install tmux -y
sudo apt install curl -y
sudo apt install silversearcher-ag -y
sudo apt install tree -y
sudo apt install nodejs -y
sudo apt install gnome-tweak-tool -y
sudo apt install zsh -y

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install yarn

sudo apt update
sudo apt install python3-dev python3-pip
sudo pip3 install thefuck

echo "clone zpresto"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo "change shell to zsh (remember to log out / log in to reset)"
chsh -s /bin/zsh

source ./scripts/ubuntu-up.sh
