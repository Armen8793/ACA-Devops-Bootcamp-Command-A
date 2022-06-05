#!/bin/bash

if [[ $USER == root ]]
then
	./nginx_install.sh
	./nginx_direct.sh
	./device_info.sh &

else
	 echo "Permission denied: run script as root"
fi





