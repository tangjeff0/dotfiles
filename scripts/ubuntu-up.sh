# shortcuts: https://help.ubuntu.com/lts/ubuntu-help/shell-keyboard-shortcuts.html.en
# view ethernet addresses sudo lshw -class network

# # to see all intentionally installed packages
# (zcat $(ls -tr /var/log/apt/history.log*.gz); cat /var/log/apt/history.log) 2>/dev/null |
#   egrep '^(Start-Date:|Commandline:)' |
#   grep -v aptdaemon |
#   egrep -B1 '^Commandline:'

echo "\nSUDO APT PACKAGES\n"
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install tmux -y
sudo apt-get install curl -y
sudo apt-get install zsh -y
sudo apt-get install tree -y
sudo apt-get install nodejs -y
sudo apt-get install npm -y
sudo apt-get install gnome-tweak-tool -y
sudo apt-get install xclip -y
sudo apt-get install bspwm -y
sudo apt-get install redshift redshift-gtk -y
echo "[redshift]
allowed=true
system=false
users=" >> /etc/geoclue/geoclue.conf
sudo apt-get install postgres postgresql-contrib pgadmin3 -y # setup: https://help.ubuntu.com/community/PostgreSQL

echo "\nYARN\n"
sudo apt-get remove cmdtest
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get install yarn

npm init -y
yarn global add nodemon 
yarn global add eslint eslint-plugin-react

echo "\nTHEFUCK\n"
sudo apt update
sudo apt-get install python3-dev python3-pip -y
sudo pip3 install thefuck -y

echo "\nJAVA\n"
sudo apt-get install openjdk-8-jre -y

echo "\nNGROK\n"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
rm -f ngrok-stable-linux-amd64.zip

echo "\nSNAP\n"
sudo snap install chromium
sudo snap install postman
sudo snap install spotify
sudo snap install tusk
sudo snap install heroku --classic

echo "\nZPRESTO\n"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo "\nVUNDLE\n"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
source ./scripts/nix-in.sh

echo "\nCHANGE SHELL (RESTART)\n"
chsh -s /bin/zsh
