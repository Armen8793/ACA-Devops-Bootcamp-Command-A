#!/bin/bash

#make root directory
mkdir /var/www/bootcamp_aca

#Print " Hello BootCamp team " in index.html
echo " Hello BootCamp team " > /var/www/bootcamp_aca/index.html

#Restart nginx for changes
systemctl restart nginx

#Run 127.0.0.1
curl 127.0.0.1
