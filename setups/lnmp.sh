#!/bin/bash

#repos for php 7
apt-get -y install python-software-properties
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
apt-get update

#install webserver software
apt-get -y install nginx nginx-extras php7.0 php7.0-mcrypt php7.0-fpm php7.0-gd php7.0-mysql php7.0-dev php7.0-curl mysql-server mysql-client python-mysqldb php7.0-mbstring

#set config files
mkdir -p /var/www/html/public
cp -f setups/sources/lnmp/default.conf /etc/nginx/conf.d/default.conf
cp -f setups/sources/lnmp/index.php /var/www/html/public/index.php
cp -f setups/sources/lnmp/nginx.conf /etc/nginx/nginx.conf
cp -f setups/sources/lnmp/www.conf /etc/php/7.0/fpm/pool.d/www.conf

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

