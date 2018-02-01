#!/bin/bash
# This bash script aims to install php 7.1.12 mysql-5.7 nginx on Cent OS 7.4 server, reference on https://qiita.com/shadowhat/items/a9ec289b44af9a8e8ad3
# Last Modified: 2018.01.10
# File name: 004libssh_install.sh
# Author: Kylin

sudo ln -s /usr/local/ssl/lib/libssl.so /usr/local/lib/libssl.so && \
sudo ln -s /usr/local/ssl/lib/libcrypto.so /usr/local/lib/libcrypto.so && \
tar -xvz -f tarball/libssh2-1.8.0.tar.gz -C extract_tarball/ && \
cd extract_tarball/libssh2-1.8.0 && \
export LDFLAGS="-L/usr/local/ssl/lib" && \
export CPPFLAGS="-I/usr/local/ssl/include" && \
export CFLAGS="-I/usr/local/ssl/include" && \
./configure \
--with-openssl=/usr/local/ssl \
--with-libssl-prefix=/usr/local/ssl/include/openssl && \
make && \
sudo make install
