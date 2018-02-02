#!/bin/bash
# This shell script config database for new laravel project
# File Name: 035yarn_install.sh
# Last Modified: 2018.02.03
# Author: Kylin

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/prysc/.local/bin:/home/prysc/bin
export PATH


su - root -c 'echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' && \
su - root -c 'echo 1 > /proc/sys/net/ipv6/conf/default/disable_ipv6' && \
sudo wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo && \
curl --silent --location https://rpm.nodesource.com/setup_6.x | sudo bash - && \
sudo yum install yarn && \
su - root -c 'echo 0 > /proc/sys/net/ipv6/conf/default/disable_ipv6' && \
su - root -c 'echo 0 > /proc/sys/net/ipv6/conf/all/disable_ipv6' && \
sudo systemctl restart network && \
echo -e '\n\n\n--------Finish Yarn Install---------\n\n\n'

