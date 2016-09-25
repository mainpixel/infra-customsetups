#repos for php 5
apt-get -y install python-software-properties
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
apt-get update

#install webserver software
apt-get -y install nginx nginx-extras php5.6 php5.6-mcrypt php5.6-fpm php5.6-gd php5.6-mysql php5.6-dev php5.6-curl mysql-server mysql-client python-mysqldb php5.6-mbstring php5.6-dom php5.6-sqlite3

apt-get -y purge php7*

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

#Configure and restart nginx
sed -i -e 's/php7.0/php5.6/g' /etc/nginx/sites-enabled/homestead.app
service nginx restart
