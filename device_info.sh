#!/bin/bash 


#Using Spaces of CPU, Memory and 
echo "CPU usage on $(date) = $(top -b -n 1 | grep Cpu | awk '{print $8}'|cut -f 1 -d ".")"%""
echo "Memory usage on $(date) = $(free -m | grep "Mem" | awk '{print $4+$6}')"MB""
echo "Disk usage for "/" 0n $(date) = $(df -h | grep / |sed -n 3p | awk '{print $5}')"

#Sending our CPU, Memory and Disk info to ACA html file

echo "CPU: $(cpu_usage on $(date))   ||   RAM: $(Memory usage on $(date))   ||   Disk: $(Disk usage for "/" 0n $(date))" > /var/www/aca_bootcamp/index.html
	    
sleep 10 

	


