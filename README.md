# Google Cloud Platform LAMP Server Setup
Set up LAMP (Linux, Apache2, MySQL, PHP7) on Google Cloud Platform Compute Engine, with OS Debian 9 Stretch.</br>
And connect to Cloud Storage to backup.

## Contents
- [Set up compute engine](https://github.com/cindytsai/Google-Cloud-Platform-LAMP-Server-Setup#set-up-compute-engine)
- [Set up cloud storage](https://github.com/cindytsai/Google-Cloud-Platform-LAMP-Server-Setup#set-up-cloud-storage)

## Set Up Compute Engine
###### 1.Create a project</br>
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

Time to setup your instance.

## Set Up Cloud Storage
###### 1.Go to Cloud Storage and create a bucket
![pic](image/SetupGCS/1.png)

![pic](image/SetupGCS/2.png)

**For more details :**
[Storage class](https://cloud.google.com/storage/docs/storage-classes)</br>
[Access control model](https://cloud.google.com/storage/docs/access-control/)</br>

![pic](image/SetupGCS/3.png)

![pic](image/SetupGCS/4.png)

