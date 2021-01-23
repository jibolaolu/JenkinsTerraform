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
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins --nogpgcheck -y
sudo service jenkins start

sudo echo  'jenkins ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/90-cloud-init-users

#Install Terraform
wget https://releases.hashicorp.com/terraform/0.12.13/terraform_0.12.13_linux_amd64.zip
unzip terraform_0.12.13_linux_amd64.zip -d /usr/bin/
