#!/bin/bash

#Update and upgrade server
sudo apt-get -y update
sudo apt-get -y upgrade

#Install MariDB(MySQL)
sudo apt-get install -y mariadb-server mariadb-client
sudo mysql_secure_installation

#Install Apache2
sudo apt-get install -y apache2

#Install PHP7
sudo apt-get install -y php7.0 php7.0-mysql libapache2-mod-php7.0 php7.0-curl
sudo service apache2 restart

#Getting some tools if you needed
sudo apt-get install -y git tree

