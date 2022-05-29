#!/bin/bash

#update apps
sudo apt update

#install nginx
sudo apt install -y nginx

#start nginx
systemctl start nginx

#enable nginx
systemctl enable nginx

#enable firewalls
ufw allow 'nginx full'

#reload firewalls
ufw reload

#install curl
sudo apt-get install -y curl

#run 127.0.0.1
curl –i 127.0.0.1
