#!/bin/bash

#Update and upgrade server
sudo apt-get update
sudo apt-get upgrade

#Install MariDB(MySQL)
sudo apt-get install mariadb-server mariadb-client
sudo mysql_secure_installation

#Install Apache2
sudo apt-get install apache2

#Install PHP7
sudo apt-get install php7.0 php7.0-mysql libapache2-mod-php7.0 php7.0-curl
sudo service apache2 restart

#Getting some tools
sudo apt-get install git tree

