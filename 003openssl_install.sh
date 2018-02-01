#!/bin/bash
# This shell configure and install the laravel envirment on cent os 7.
# Last modified: 20180110
# File name: 003openssl_install.sh
# Author: Kylin

tar -xvz -f tarball/openssl-1.0.2m.tar.gz -C extract_tarball/ && \
cd extract_tarball/openssl-1.0.2m && \
./config -fPIC shared && \
make && \
sudo make install && \
sudo sed -i '$a\/usr\/local\/ssl\/lib\ninclude ld.so.conf.d\/\*.conf' /etc/ld.so.conf && \
sudo ldconfig && \
sudo ldconfig -p | grep ssl && \
/usr/local/ssl/bin/openssl version
