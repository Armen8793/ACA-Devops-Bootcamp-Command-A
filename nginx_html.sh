#!/bin/bash

# making "/var/www/bootcamp_aca" directory
mkdir /var/www/bootcamp_aca
# creating dummy index.html file and adding some data to it
echo "Hello ACA_Bootcamp_Team" > /var/www/bootcamp_aca/index.html
echo
# restarting nginx
systemctl restart nginx
# getting data from nginx index.html file
curl 127.0.0.1

