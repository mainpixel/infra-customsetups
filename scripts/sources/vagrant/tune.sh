cd /home/vagrant/Code
mongo < createUser
sudo killall -9 mongod
sudo sed -i -e 's/bindIp/#bindIp/g' /etc/mongod.conf
sudo /usr/bin/mongod -quiet --auth --fork --config /etc/mongod.conf
echo "sudo /usr/bin/mongod -quiet --auth --fork --config /etc/mongod.conf" > /etc/rc.local
echo "exit 0" >> /etc/rc.local
