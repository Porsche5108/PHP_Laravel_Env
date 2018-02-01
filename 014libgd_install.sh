#!/bin/bash
# This bash script aims to install php 7.1.12 mysql-5.7 nginx on Cent OS 7.4 server, reference on https://qiita.com/shadowhat/items/a9ec289b44af9a8e8ad3
# Last Modified: 2018.01.10
# File name: 014libgd_install.sh
# Author: Kylin

tar -xvz -f tarball/libgd-2.2.5.tar.gz -C extract_tarball/ && \
cd extract_tarball/libgd-2.2.5 && \
./configure --with-png=/usr/local \
            --with-freetype=/usr/local/include/freetype2/ \
            --with-jpeg=/usr/local \
            --with-xpm=/usr \
            --with-libiconv-prefix=/usr/local && \
	    make && \
	    sudo make install
