#!/bin/bash
# This shell configure and install the laravel envirment on cent os 7.
# Last modified: 20180109
# File name: 001mysql_install_repo.sh
# Author: Kylin

sudo yum -y localinstall mysql57-community-release-el7-11.noarch.rpm && \
sudo rpm --import mysql_pubkey.asc
