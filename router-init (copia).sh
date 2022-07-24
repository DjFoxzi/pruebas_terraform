#!/bin/bash

# Install necessary dependencies
sudo yum -y install git
sudo yum update -y
sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
sudo yum install -y httpd mariadb-server
sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www
cd /var/www
mkdir inc
cd inc
echo "<?php
define('DB_SERVER', 'terraform-20220723224721520300000001.crq5gsjduwmx.us-east-1.rds.amazonaws.com:3306');
define('DB_USERNAME', 'user');
define('DB_PASSWORD', 'password');
define('DB_DATABASE', 'dbname');
?>" > dbinfo.inc

sudo git clone https://github.com/DjFoxzi/pruebas_terraform.git && cd pruebas_terraform
sudo cp SamplePage.php index.html  /var/www/html/
