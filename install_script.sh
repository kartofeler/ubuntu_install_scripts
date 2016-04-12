#!/bin/bash
apt-get update -y
apt-get install -y nginx software-properties-common

apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db 
add-apt-repository 'deb http://mirror.jmu.edu/pub/mariadb/repo/5.5/ubuntu trusty main'
apt-get update
apt-get install mariadb-server -y
mysql_install_db
mysql_secure_installation

apt-get install -y php5-fpm php5-mysql php5-curl php5-cli

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

curl -sSL https://get.docker.com/ | sh
https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash
apt-get install gitlab-ci-multi-runner -y

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

