
#!/bin/bash

#preinstall
apt-get update
apt-get install -y nano vim htop telnet git curl gcc openssh-server net-tools mlocate zip unzip whois
sed -i -e 's/^PermitRootLogin/#PermitRootLogin/g' /etc/ssh/sshd_config

#include scripts
source scripts/php.sh
source scripts/nginx.sh
source scripts/mysql.sh
source scripts/mongo.sh

#reboot
reboot
