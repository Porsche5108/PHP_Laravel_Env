#!/bin/bash
# This shell script install composer on Cent OS Virtual Box on 20171225.
# File Name: systemd.sh
# Last Modified: 2018.01.11
# Author: Kylin

if [ -f revise_nginx_root.sh ]; then
    sh revise_nginx_root.sh && sudo cp nginx.conf /etc/nginx/;
fi


if [ -f nginx.service ]; then
   sudo cp nginx.service /etc/systemd/system 
fi

if [ -f php-fpm.service ]; then
   sudo cp php-fpm.service /etc/systemd/system 
fi

read -p "Install redis server?(Y/N) " ans
if [ "ans" == "Y" -o "ans" == "y" ]; then
    if [ -f 033redis_server.sh ]; then
        sh 033redis_server.sh && \
        echo "finish 033 step" >> config.status && \
        sudo cp redis-server.service /etc/systemd/system && \
        sudo systemctl daemon-reload && \
        sudo systemctl enable redis-server;
    fi
fi

sudo systemctl daemon-reload && \
sudo systemctl enable nginx && \
sudo systemctl enable php-fpm 
