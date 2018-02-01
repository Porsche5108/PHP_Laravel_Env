#!/bin/bash
# This shell script config database for new laravel project
# File Name: 032samba_config.sh
# Last Modified: 2018.01.31
# Author: Kylin

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/prysc/.local/bin:/home/prysc/bin
export PATH


sudo yum -y install samba samba-common samba-client && \
sudo cp smb.conf /etc/samba/ && \
sudo pdbedit -a -u www-data && \
sudo systemctl enable smb && \ 
sudo systemctl enable nmb && \
sudo systemctl start smb && \
sudo systemctl start nmb
