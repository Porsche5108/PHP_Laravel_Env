#!/bin/bash
# This shell script install composer on Cent OS Virtual Box on 20171225.
# File Name: 029Setup_Admin.sh
# Last Modified: 2018.01.11
# Author: Kylin

read -p "Enter your dir? " dir_name;

if [ -f app.blade.php ]; then
    cp app.blade.php /var/www/$dir_name/resources/views/
fi

php /var/www/$dir_name/artisan cache:clear

php /var/www/$dir_name/artisan make:auth

php /var/www/$dir_name/artisan migrate

php /var/www/$dir_name/artisan aimeos:account --admin

if [ -f AuthServiceProvider.php ]; then
    cp AuthServiceProvider.php /var/www/$dir_name/app/Providers/;
fi

sudo restorecon -R /var/www/$dir_name/*
