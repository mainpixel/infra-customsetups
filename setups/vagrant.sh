#!/bin/bash

echo "Be sure to add the next line to your hosts file:"
echo "192.168.10.10	homestead.app"
read -p "Press enter to continue..."

repoDir=$(pwd)

cd ~
mkdir Vagrant
mkdir -p Code/Laravel/public

vagrant box add laravel/homestead
git clone https://github.com/laravel/homestead.git Vagrant/Homestead


cd Vagrant/Homestead
bash init.sh
vagrant up

cd ~/Code
git clone https://github.com/zakhttp/Mongostead7.git
cp $repoDir/setups/sources/vagrant/tune.sh ~/Code
cp $repoDir/setups/sources/vagrant/createUser ~/Code

ssh vagrant@homestead.app sudo bash /home/vagrant/Code/Mongostead7/mongoHomestead7.sh
ssh vagrant@homestead.app sudo bash /home/vagrant/Code/tune.sh

clear
echo "---INSTALLATION COMPLETED---"
echo "Mongo username: mainpixel"
echo "Mongo password: vagrantDev"
echo "Mongo database: admin"