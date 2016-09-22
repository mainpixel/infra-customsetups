
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
    echo "sudo ./install.sh vagrant:  Laravel 5.3, PHP 7"
  else

    #run setup
    source setups/$1.sh

  fi
else
  echo "Geen setup ingevoerd. Bekijk een overzicht via sudo ./install.sh --help"
fi

