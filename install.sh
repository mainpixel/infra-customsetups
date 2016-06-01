#!/bin/bash

#update repos
apt-get update

#install default tools
apt-get install -y nano vim htop telnet git curl gcc openssh-server net-tools mlocate

#enable ssh root login
sed -i -e 's/PermitRootLogin/#PermitRootLogin/g' /etc/ssh/sshd_config

#include setup
if [ ! -z $1 ]
then
  source setups/$1.sh
  reboot
else
  echo "============"
  echo "Gebruik het commando als volgt: ./install.sh [software]"
  echo "Voorbeeld: ./install.sh lnmp (installeert NGINX, MySQL5.6, PHP7)"
fi
