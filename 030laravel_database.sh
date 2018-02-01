#!/bin/bash
# This shell script config database for new laravel project
# File Name: 030laravel_database.sh
# Last Modified: 2018.01.30
# Author: Kylin

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/prysc/.local/bin:/home/prysc/bin
export PATH


read -p "Please Enter dir Name: " dir_name && \
read -p "Please Enter DB Name: " db_name && \
read -p "Please Enter USER Name: " u_name && \
read -p "Please Enter UPD Name: " u_pd && \
sudo sed -i "s/DB_DATABASE=homestead/DB_DATABASE=$db_name/g" /var/www/$dir_name/\.env && \
sudo sed -i "s/DB_USERNAME=homestead/DB_USERNAME=$u_name/g" /var/www/$dir_name/\.env && \
sudo sed -i "s/DB_PASSWORD=secret/DB_PASSWORD=$u_pd/g" /var/www/$dir_name/\.env
