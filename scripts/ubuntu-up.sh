# shortcuts: https://help.ubuntu.com/lts/ubuntu-help/shell-keyboard-shortcuts.html.en

# # to see all intentionally installed packages
# (zcat $(ls -tr /var/log/apt/history.log*.gz); cat /var/log/apt/history.log) 2>/dev/null |
#   egrep '^(Start-Date:|Commandline:)' |
#   grep -v aptdaemon |
#   egrep -B1 '^Commandline:'

echo "sudo apt-get install command line apps"
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
sudo apt-get install postgres postgresql-contrib pgadmin3 -y # setup: https://help.ubuntu.com/community/PostgreSQL

echo "curl for yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get install yarn

npm init -y
yarn global add nodemon 
yarn global add eslint eslint-plugin-react

sudo apt update
sudo apt-get install python3-dev python3-pip
sudo pip3 install thefuck

sudo apt-get install openjdk-8-jre

wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
rm -f ngrok-stable-linux-amd64.zip

sudo snap install chromium -y
sudo snap install postman -y
sudo snap install spotify -y
sudo snap install tusk -y
sudo snap install heroku --classic

echo "clone zpresto"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo "change shell to zsh (remember to log out / log in to reset)"
chsh -s /bin/zsh

source ./scripts/ubuntu-up.sh
