#!/bin/bash
# This shell script install a new project entered by user
# File Name: 028config_app.sh
# Last Modified: 2018.01.11
# Author: Kylin

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/prysc/.local/bin:/home/prysc/bin
export PATH


backslash='\\'
read -p "Please Enter dir Name: " dir_name;
line=`cat -n /var/www/$dir_name/config/app.php | grep 'Package Service ' | cut -d ' ' -f 4` 

editline=1 

until [ $line == "$editline" ]
do
    editline=$(($editline+1))
done

editline=$(($editline+2))

sed -i "${editline}a\        Aimeos${backslash}Shop${backslash}ShopServiceProvider::class,\n" /var/www/$dir_name/config/app.php
#sed -i "${editline}a\        Aimeos${backslash}Shop${backslash}ShopServiceProvider::class,\n" app.php

