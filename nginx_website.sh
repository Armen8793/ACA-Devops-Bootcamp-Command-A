#!/bin/bash

# get 'cpu usage percentage, memory usage, disk usage for "/" directory' and pass it to html file
vmstat -SM 10 >> /var/www/bootcamp_aca/index.html &



