
#!/bin/bash

#include setup
if [ ! -z $1 ]
then

  if [ "$1" == "--help" ]
  then
    echo "sudo ./install.sh --help:   Overzicht alle setupmogelijkheden"
    echo "sudo ./install.sh lnmp:     Nginx, MySQL5.6, PHP7.0"
    echo "sudo ./install.sh lnmp5:    Nginx, MySQL5.6, PHP5.6"
    echo "sudo ./install.sh mongo:    MongoDB"
  else


    #update repos
    apt-get update

    #install default tools
    apt-get install -y nano vim htop telnet git curl gcc openssh-server net-tools mlocate zip unzip whois

    #enable ssh root login
    sed -i -e 's/^PermitRootLogin/#PermitRootLogin/g' /etc/ssh/sshd_config

    #run setup
    source setups/$1.sh

    #reboot te load configs
    reboot

  fi
else
  echo "Geen setup ingevoerd. Bekijk een overzicht via sudo ./install.sh --help"
fi

