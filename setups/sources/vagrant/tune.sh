cd /home/vagrant/Code
mongo < createUser
sudo killall -9 mongod
sudo sed -i -e 's/bindIp/#bindIp/g' /etc/mongod.conf
sudo /usr/bin/mongod -quiet --auth --config /etc/mongod.conf &