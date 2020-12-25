#!/bin/bash

echo -n "APT update & upgrade ... "
apt update
apt -qq -y upgrade
apt -qq -y install curl
echo "+"

echo -n "Remove Apache2 ... "
apt -qq -y remove apache2
echo "+"

echo -n "Install Nginx ... "
apt -qq -y install nginx
echo "+"

echo "Install Git ... "
apt -qq -y install git
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

echo -n "Install NVM ..."
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.37.2/install.sh -o install_nvm.sh
echo -n "..."
chmod +x install_nvm.sh
./install_nvm.sh
echo -n "..."
nvm install v14
echo "+"

echo "=== DONE ==="

