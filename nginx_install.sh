#!/bin/bash

# create function

function ensure_nginx(){
  if [ -x "$(command -v nginx)" ]; then
      echo "Nginx already installed"
  else
      echo "Installing nginx..."
      sudo apt update
      sudo apt install nginx -y
      sudo ufw app list
      sudo ufw allow nginx
      sudo ufw reload
      echo "Nginx installed!"
  fi
}

ensure_nginx


function StatuscheckNginx() {
	Statuscheck=$(systemctl show nginx.service --property=ActiveState | cut -d "=" -f 2)
	if [[ $Statuscheck = active ]]; then
		echo "Nginx is active"
	else
		echo "Going to activate Nginx"
		systemctl start nginx.service
	fi
}

StatuscheckNginx


#checking if curl does not exist, install it 
which curl &> /dev/null || sudo apt install curl

# checking nginx start page
curl 127.0.0.1
