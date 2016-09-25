#!/bin/bash

repoDir=$(pwd)

cp $repoDir/setups/sources/vagrant/whatsapp.sh ~/Code

ssh vagrant@homestead.app sudo bash /home/vagrant/Code/whatsapp.sh
