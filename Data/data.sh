#! /bin/bash

sudo -i
sudo yum update -y

#Install java
sudo yum -y install java-1.8.0-openjdk-devel.x86_64

#Install Nginx
sudo amazon-linux-extras install nginx1 -y
sudo systemctl start nginx

#Install Git
sudo yum install git -y


#Install Jenkins
