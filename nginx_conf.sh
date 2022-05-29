#!/bin/bash

# installing wget
apt update
apt-get install wget

# getting "bootcamp_aca.conf"
wget https://transfer.sh/QX7UuX/bootcamp_aca.conf

# mooving "bootcamp_aca.conf" to nginx configuration directory
mv ./bootcamp_aca.conf /etc/nginx/sites-available

# making soft link to nginx config file from "sites-available" directory to "sites-enabled" directory
ln -s /etc/nginx/sites-available/bootcamp_aca.conf /etc/nginx/sites-enabled/bootcamp_aca.conf

# removing nginx default config file
rm /etc/nginx/sites-enabled/default

# se\\restarting nginx
systemctl reload nginx

# cheking nginx
nginx -t

