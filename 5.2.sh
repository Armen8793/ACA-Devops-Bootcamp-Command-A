#!/bin/bash

#update apps
Sudo apt update

#install wget command
sudo apt-get install wget

#remove .conf file
rm /etc/nginx/site-available/bootcamp_aca.conf

#download .conf file
wget https://transfer.sh/get/QX7UuX/bootcamp_aca.conf

#copy .conf file
sudo mv ./bootcamp_aca.conf /etc/nginx/sites-available

#create link from available to enable
sudo ln -s /etc/nginx/sites-available/bootcamp_aca.conf /etc/nginx/sites-enabled

#remove default file
sudo rm /etc/nginx/sites-enabled/default

#reload nginx
sudo service nginx reload

#test nginx
sudo nginx -t
