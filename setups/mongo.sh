#!/bin/bash
sudo apt-get install -y pkg-config libssl-dev libsslcommon2-dev
sudo apt-get install -y mongodb-clients mongodb-server
echo "extension=mongodb.so" >> /etc/php/7.0/fpm/php.ini
echo "extension=mongodb.so" >> /etc/php/7.0/cli/php.ini