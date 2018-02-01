#!/bin/bash
# This shell script install composer on Cent OS Virtual Box on 20171225.
# File Name: 026aimeos-artisan.sh
# Last Modified: 2018.01.11
# Author: Kylin

read -p "Please input dir name? " dir_name && \
cd /var/www/$dir_name && \
php artisan vendor:publish --all && \
php artisan migrate && \
php artisan aimeos:setup --option=setup/default/demo:1 && \
php artisan aimeos:cache
