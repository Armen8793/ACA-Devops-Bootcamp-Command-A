#!/bin/bash

apt update
apt install -y nginx
systemctl start nginx
systemctl enable nginx
ufw allow 'nginx full'
ufw reload
apt-get install -y curl
curl –i 127.0.0.1
