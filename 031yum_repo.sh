#!/bin/bash
# This shell script config database for new laravel project
# File Name: 031yum_repo.sh
# Last Modified: 2018.01.31
# Author: Kylin

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/prysc/.local/bin:/home/prysc/bin
export PATH


sudo mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak && \
sudo cp CentOS-Base.repo /etc/yum.repos.d/ && \
sudo yum makecache && \
sudo yum -y update
