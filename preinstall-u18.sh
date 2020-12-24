#!/bin/bash

echo "=== Apt update & upgrade ==="
apt update
apt -y upgrade
apy -y install curl

echo ">>> Remove Apache2"
apt -y remove apache2

echo ">>> Install Nginx"
apt -y install nginx

echo "Install Git"
apt -y install git

echo ">>> Install PHP7.4"
apt -y install software-properties-common
add-apt-repository -y ppa:ondrej/php
apt update
apt -y install php7.4
apt -y install php7.4-bcmath php7.4-bz2 php7.4-intl php7.4-gd php7.4-mbstring php7.4-mysql php7.4-zip php7.4-dev
apt -y install php7.4-fpm

echo "Install NVM"
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.37.2/install.sh -o install_nvm.sh


