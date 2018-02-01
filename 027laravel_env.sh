#!/bin/bash
# This shell script install a new project entered by user
# File Name: 027laravel_env.sh
# Last Modified: 2018.01.11
# Author: Kylin

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/prysc/.local/bin:/home/prysc/bin
export PATH


read -p "Please Enter dir Name: " dir_name && \
cd /var/www/$dir_name && composer update
