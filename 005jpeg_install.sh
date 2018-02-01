#!/bin/bash
# This bash script aims to install php 7.1.12 mysql-5.7 nginx on Cent OS 7.4 server, reference on https://qiita.com/shadowhat/items/a9ec289b44af9a8e8ad3
# Last Modified: 2018.01.10
# File name: 005jpeg_install.sh
# Author: Kylin

tar -xvz -f tarball/jpegsrc.v9b.tar.gz -C extract_tarball/ && \
cd extract_tarball/jpeg-9b && \
./configure --enable-shared && \
make && \
sudo make install