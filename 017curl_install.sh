#!/bin/bash
# This bash script aims to install php 7.1.12 mysql-5.7 nginx on Cent OS 7.4 server, reference on https://qiita.com/shadowhat/items/a9ec289b44af9a8e8ad3
# Last Modified: 2018.01.10
# File name: 017curl_install.sh
# Author: Kylin

tar -xvz -f tarball/curl-7.56.1.tar.gz -C extract_tarball/ && \
cd extract_tarball/curl-7.56.1 && \
CPPFLAGS="-I/usr/local/ssl/include" LDFLAGS="-L/usr/local/ssl/lib" && \
./configure \
--enable-http \
--enable-ftp \
--enable-file \
--enable-proxy \
--enable-cookies \
--with-zlib=/usr/local \
--with-ssl=/usr/local/ssl \
--with-libssh2=/usr/local && \
make && \
sudo make install