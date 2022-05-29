#!/bin/bash

# installing nginx and ufw curl
apt update
apt install -y nginx ufw

# starting nginx
systemctl start nginx

# making nginx run with system boot up
systemctl enable nginx

# adding nginx firewall rules
ufw allow 'nginx full'

# sestarting ufw
ufw reload

# checking nginx start page
curl –i 127.0.0.1
