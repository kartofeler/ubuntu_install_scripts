#!/bin/bash
apt-get update -y
apt-get install -y nginx software-properties-common

apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db 
add-apt-repository 'deb http://mirror.jmu.edu/pub/mariadb/repo/5.5/ubuntu trusty main'
apt-get update
apt-get install mariadb-server -y
mysql_install_db
mysql_secure_installation

apt-get install -y php5-fpm php5-mysql php5-curl php5-cli php5-sqlite sqlite3 libsqlite3-dev curl php5-mongodb

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

apt-get update
apt-get install -y build-essential tcl8.5 

wget http://download.redis.io/releases/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
cd redis-stable
make
make test
make install
cd utils
./install_server.sh
service redis_6379 start 

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org


