#!/bin/bash
# This bash script aims to install php 7.1.12 mysql-5.7 nginx on Cent OS 7.4 server, reference on https://qiita.com/shadowhat/items/a9ec289b44af9a8e8ad3
# Last Modified: 2018.01.10
# File name: 018libexpat_install.sh
# Author: Kylin

tar -jxv -f ./tarball/expat-2.2.5.tar.bz2 -C extract_tarball/ && \
cd extract_tarball/expat-2.2.5 && \
./configure && \
make && \
sudo make install