# Custom install script

## Dev installer
Simply install your Ubuntu dev server in few steps. The installer runs in one command.

## Included software
You can choose one of the software compositions listed below.

- Vagrant (LNMP + Mongo) - MacOS compatible
- LNMP (Nginx, Mysql, PHP7 including default serverblock, Laravel modules)
- LNMP5 (nginx, MySQL, PHP5 including Laravel moduels, PHP 5.6, WhatsApp modules)
- Mongo (Just a Mongod server)

## How to use
Choose one of the setups:
- sudo ./install.sh --help:	Up-to-date list of all posible  setups
- sudo ./install.sh lnmp:	Nginx, MySQL5.6, PHP7.0
- sudo ./install.sh lnmp5:	Nginx, MySQL5.6, PHP5.6
- sudo ./install.sh mongo:	MongoDB
- ./install.sh vagrant:		Laravel 5.3, PHP 7
- ./install.sh whatsapp:	Switch vagrant to PHP 5 for WhatsApp support (online in combination with Vagrant installer!)

## Just for dev!
This installer is written for easy setup a dev server. To prevent devers against abstacles Mongo, MySQL and other services aren't secured so users can access it from anywhere.
