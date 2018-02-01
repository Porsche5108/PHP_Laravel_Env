#!/bin/bash
# This bash script aims to install php 7.1.12 mysql-5.7 nginx on Cent OS 7.4 server, reference on https://qiita.com/shadowhat/items/a9ec289b44af9a8e8ad3
# Last Modified: 2018.01.10
# File name: 019php_install.sh
# Author: Kylin

tar -zxv -f tarball/phpredis-3.1.5.tar.gz -C extract_tarball/ && \
BASE_PATH=`ls extract_tarball/ | grep phpredis` && \
cd extract_tarball/$BASE_PATH && \
phpize && ./configure && make && sudo make install && \
sudo sed -i 's/session.save_handler = files/;session.save_handler = files/g' /usr/local/lib/php.ini && \
sudo sed -i '$acgi.fix_pathinfo=0;\nsession.save_handler = redis;\nextension=/usr/local/lib/php/extensions/no-debug-non-zts-20160303/redis.so;\nsession.save_path = "tcp://127.0.0.1:6379?weight=1, tcp://127.0.0.1:6379?weight=2&timeout=2.5, tcp://127.0.0.1:6379?weight=2&read_timeout=2.5"' /usr/local/lib/php.ini 
