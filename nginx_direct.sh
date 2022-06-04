#!/bin/bash

#make root directory
sudo mkdir -p /var/www/bootcamp_aca

#Print " Hello BootCamp team " in index.html
sudo echo " Hello BootCamp team " > /var/www/bootcamp_aca/index.html

#Restart nginx for changes
sudo systemctl restart nginx

#Run 127.0.0.1
curl -i 127.0.0.1
