#!/bin/bash
# This shell script config database for new laravel project
# File Name: 033redis_server.sh
# Last Modified: 2018.01.31
# Author: Kylin

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/prysc/.local/bin:/home/prysc/bin
export PATH

tar -zxv -f tarball/redis-stable.tar.gz -C extract_tarball/ && \
cd extract_tarball/redis-stable && make && \
cd .. && \
sudo cp -r redis-stable/ /usr/local
