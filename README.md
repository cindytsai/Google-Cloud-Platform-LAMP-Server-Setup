# Google Cloud Platform LAMP Server Setup
Set up LAMP (Linux, Apache2, MySQL, PHP7) on Google Cloud Platform Compute Engine, with OS Debian 9 Stretch.</br>
And connect to Cloud Storage to backup.

## Contents
- [Set up compute engine](https://github.com/cindytsai/Google-Cloud-Platform-LAMP-Server-Setup#set-up-compute-engine)
- [Set up cloud storage](https://github.com/cindytsai/Google-Cloud-Platform-LAMP-Server-Setup#set-up-cloud-storage)
- [Set up your virtual machine](https://github.com/cindytsai/Google-Cloud-Platform-LAMP-Server-Setup#set-up-your-virtual-machine)

## Set Up Compute Engine
###### 1.Create a project
![pic](image/SetupGCP/1.png)

![pic](image/SetupGCP/2.png)

![pic](image/SetupGCP/3.png)

![pic](image/SetupGCP/4.png)

###### 2.Go to Google Compute Engine and create an instance
![pic](image/SetupGCP/5.png)

![pic](image/SetupGCP/6.png)

**Remember to allow full access to all Cloud APIs.**</br>
![pic](image/SetupGCP/7.png)

###### 3.Entering SSH
![pic](image/SetupGCP/8.png)

![pic](image/SetupGCP/9.png)

###### 4.Reserving a static external IP address
![pic](image/SetupGCP/10.png)

![pic](image/SetupGCP/11.png)

![pic](image/SetupGCP/12.png)

![pic](image/SetupGCP/13.png)

![pic](image/SetupGCP/14.png)

## Set Up Cloud Storage
###### 1.Go to Cloud Storage and create a bucket
![pic](image/SetupGCS/1.png)

![pic](image/SetupGCS/2.png)

**For more details :**</br>
[Storage class](https://cloud.google.com/storage/docs/storage-classes)</br>
[Access control model](https://cloud.google.com/storage/docs/access-control/)</br>

![pic](image/SetupGCS/3.png)

![pic](image/SetupGCS/4.png)

## Set Up Your Virtual Machine
###### 1.Update and get Apache2, PHP7, MariaDB(MySQL)
Get the setup script.</br>
```
wget https://raw.githubusercontent.com/cindytsai/Google-Cloud-Platform-LAMP-Server-Setup/master/setup.sh
```
Let setup.sh be executable.</br>
```
chmod 777 setup.sh
```
Run [`setup.sh`](setup.sh).</br>
```
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
```

###### 2.