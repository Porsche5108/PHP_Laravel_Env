#!/bin/bash
# This bash script aims to install php 7.1.12 mysql-5.7 nginx on Cent OS 7.4 server, reference on https://qiita.com/shadowhat/items/a9ec289b44af9a8e8ad3
# Last Modified: 2018.01.10
# File name: 019php_install.sh
# Author: Kylin
sudo sed -i '/#include "jmorecfg.h"		\/\* seldom changed options \*\//a#include <stdio.h>' /usr/local/include/jpeglib.h && \
tar -jxv -f tarball/php-7.1.12.tar.bz2 -C extract_tarball/ && \
cd extract_tarball/php-7.1.12 && \
./configure \
--enable-fpm \
--with-fpm-user=www-data \
--with-fpm-group=www-data \
--enable-mbstring \
--enable-mbregex \
--with-gd=/usr/local/include \
--with-xpm-dir=/usr \
--with-jpeg-dir=/usr \
--with-png-dir=/usr \
--with-zlib-dir=/usr \
--with-libexpat-dir=/usr \
--with-libxml-dir=/usr/local \
--enable-zip \
--with-curl=/usr/local \
--with-openssl=/usr/local/ssl \
--with-gettext \
--with-mysqli=/usr/bin/mysql_config \
--with-pdo-mysql=/usr/ \
--with-mysql-sock=/tmp/mysql.sock && \
make && \
sudo make install && \
sudo cp php.ini-production /usr/local/lib/php.ini && \
sudo cp /usr/local/etc/php-fpm.conf.default /usr/local/etc/php-fpm.conf && \
sudo sed -i 's/include=NONE\/etc\/php-fpm.d\/\*.conf/include=\/usr\/local\/etc\/php-fpm.d\/\*.conf/g' /usr/local/etc/php-fpm.conf && \
sudo cp /usr/local/etc/php-fpm.d/www.conf.default /usr/local/etc/php-fpm.d/www.conf

