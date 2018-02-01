#!/bin/bash
# This bash script aims to install php 7.1.12 mysql-5.7 nginx on Cent OS 7.4 server, reference on https://qiita.com/shadowhat/items/a9ec289b44af9a8e8ad3
# Last Modified: 2018.01.10
# File name: 008libpng_install.sh
# Author: Kylin

tar -xvz -f tarball/libpng-1.6.34.tar.gz -C extract_tarball/ && \
cd extract_tarball/libpng-1.6.34 && \
cp scripts/makefile.linux Makefile && \
./configure --prefix=/usr/local LDFLAGS="-L/usr/local/lib -lz" && \
make && \
sudo make install