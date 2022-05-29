#!/bin/bash -e

#install wget command
#sudo apt-get install wget

#checking availibility in enabled
if [[ -z /etc/nginx/sites-enabled/bootcamp_aca.conf ]]
  then

#removing bootcamp_aca in enabled directory 
    sudo rm /etc/nginx/sites-enabled/bootcamp_aca.conf

fi

#checking availibility for bootcamp_aca.conf file
 if [[ -z /etc/nginx/site-available/bootcamp_aca.conf ]]	
   then

#remove .conf file
    sudo rm /etc/nginx/site-available/bootcamp_aca.conf ;
     else

#download .conf file
      wget https://transfer.sh/get/QX7UuX/bootcamp_aca.conf 

#copy .conf file
      sudo mv ./bootcamp_aca.conf /etc/nginx/sites-available 
 fi

#create link from available to enable
sudo ln -s /etc/nginx/sites-available/bootcamp_aca.conf /etc/nginx/sites-enabled 

#checking availibility default
   if [[ -z /etc/nginx/sites-enabled/default ]]
    then
    	
#remove default file
     sudo rm /etc/nginx/sites-enabled/default
 
   fi

#reload nginx
sudo service nginx reload

#test nginx
sudo nginx -t
