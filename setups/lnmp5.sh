#!/bin/bash
source ubuntuDefault.sh

#repos for php 5
apt-get -y install python-software-properties
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
apt-get update

#install webserver software
apt-get -y install nginx nginx-extras php5.6 php5.6-mcrypt php5.6-fpm php5.6-gd php5.6-mysql php5.6-dev php5.6-curl mysql-server mysql-client python-mysqldb php5.6-mbstring php5.6-dom php5.6-sqlite3

#set config files
mkdir -p /var/www/html/public
cp -f setups/sources/lnmp/default.conf /etc/nginx/conf.d/default.conf
cp -f setups/sources/lnmp/index.php /var/www/html/public/index.php
cp -f setups/sources/lnmp/nginx.conf /etc/nginx/nginx.conf
cp -f setups/sources/lnmp/www.conf /etc/php/5.6/fpm/pool.d/www.conf

#composer install
wget https://getcomposer.org/composer.phar -O /usr/local/bin/composer
chmod 755 /usr/local/bin/composer

#nodejs / npm
apt-get install npm #install npm
apt-get install nodejs nodejs-legacy #install nodejs
npm install --global gulp #install gulp
npm install #install Elixir, require /var/ww/html/package.json

#envoy
composer global require "laravel/envoy=~1.0"
ln -s /root/.config/composer/vendor/laravel/envoy/envoy /usr/local/bin/envoy

#phpmyadmin
apt-get -y install phpmyadmin

#mongodb
pecl install mongodb

#crypto
pecl install crypto channel://pecl.php.net/crypto-0.2.2

#enable php modules
echo "extension=crypto.so" >> /etc/php/5.6/fpm/php.ini
echo "extension=mongodb.so" >> /etc/php/5.6/fpm/php.ini
echo "extension=curve25519.so" >> /etc/php/5.6/fpm/php.ini
echo "extension=protobuf.so" >> /etc/php/5.6/fpm/php.ini

#curve
cd /root
git clone https://github.com/mgp25/curve25519-php.git
cd /root/curve25519-php
phpize
./configure
make
sudo make install

#Protobuf
cd /root
git clone https://github.com/allegro/php-protobuf.git
cd /root/php-protobuf
phpize
./configure
make
sudo make install
