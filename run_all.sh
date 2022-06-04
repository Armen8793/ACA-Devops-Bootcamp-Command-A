#!/bin/bash

if [[ $USER == root ]]
then
	./nginx-install.sh
	./nginx-direct.sh
	./device-info.sh &

else
	 echo "Permission denied: run script as root"
fi





