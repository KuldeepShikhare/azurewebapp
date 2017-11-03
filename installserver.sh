#!/bin/sh
sudo yum install httpd wget unzip java-1.8.0-openjdk 
sudo service httpd start
sudo service mysqld start
sudo systemctl stop firewalld.service
sudo systemctl disable firewalld.service
nohup java -jar -Dspring.config.location=application.properties spring-boot.jar &