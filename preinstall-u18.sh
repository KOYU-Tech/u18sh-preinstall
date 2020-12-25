#!/bin/bash

echo -n "APT update & upgrade ... "
apt update
apt -qq -y upgrade
echo "+"

echo "Install Curl & Git ... "
apt -qq -y install curl git
echo "+"

echo -n "Remove Apache2 ... "
apt -qq -y remove apache2
echo "+"

echo -n "Install Nginx ... "
apt -qq -y install nginx
echo "+"

echo -n "Install PHP7.4 ..."
apt -y install software-properties-common
echo -n "... "
add-apt-repository -y ppa:ondrej/php
echo -n "... "
apt update
echo -n "... "
apt -y install php7.4
echo -n "... "
apt -y install php7.4-bcmath php7.4-bz2 php7.4-intl php7.4-gd php7.4-mbstring php7.4-mysql php7.4-zip php7.4-dev
echo -n "... "
apt -y install php7.4-fpm
echo "+"

echo -n "Install NVM & NPM ..."
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.37.2/install.sh -o install_nvm.sh
echo -n "..."
chmod +x install_nvm.sh
./install_nvm.sh
echo -n "..."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install v14
rm -f ./install_nvm.sh
apt -qq -y install npm
echo "+"

echo -n "Install Yarn ..."
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt -qq update
apt -qq -y install yarn

apt -qq -y autoremove
echo "=== DONE ==="

