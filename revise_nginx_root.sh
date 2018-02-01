#!/bin/bash
# This shell script install composer on Cent OS Virtual Box on 20171225.
# File Name: revise_nginx_root.sh
# Last Modified: 2018.01.12
# Author: Kylin

read -p "Please enter path of html? " path_to_html && \
sed -i "s/root \/var\/.*$/root \/var\/www\/$path_to_html\/public;/g" nginx.conf && \
echo -e "Revise successfully!\n\n"
