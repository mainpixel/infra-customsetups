#repos for php 7
apt-get -y install python-software-properties
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
apt-get update

#install php 7.1
apt-get -y install php7.1 php7.1-mcrypt php7.1-fpm php7.1-gd php7.1-mysql php7.1-dev php7.1-curl php7.1-mbstring

#install php 7.0
apt-get -y install php7.0 php7.0-mcrypt php7.0-fpm php7.0-gd php7.0-mysql php7.0-dev php7.0-curl php7.0-mbstring

#install php 5.6
apt-get -y install php5.6 php5.6-mcrypt php5.6-fpm php5.6-gd php5.6-mysql php5.6-dev php5.6-curl php5.6-mbstring

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

#mongodb
pecl install mongodb