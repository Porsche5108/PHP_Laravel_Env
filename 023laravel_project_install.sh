#!/bin/bash
# This shell script install a new project entered by user
# File Name: 023laravel_project_install.sh
# Last Modified: 2018.01.11
# Author: Kylin

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/prysc/.local/bin:/home/prysc/bin
export PATH

WHO=`whoami`

read -p "Remember create your mysql user and database?" tip && \
echo -e "$tip\n" && \
sudo mkdir -p /var/www && sudo chown $WHO /var/www && \
echo -e "This shell command create a laravel project for you!!\n" && \
echo -e "Project default place is /var/www \n\n" && \
read -p "Please Enter Porject Name: " pro_name && \
/usr/local/bin/composer create-project --prefer-dist laravel/laravel /var/www/$pro_name && \
sudo chown -R www-data:www-data /var/www/$pro_name && \
sudo chmod -R 2775 /var/www/$pro_name && \
echo -e "Create finish!!!\n"
