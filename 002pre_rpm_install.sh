#!/bin/bash
# This shell configure and install the laravel envirment on cent os 7.
# Last modified: 20180109
# File name: 002pre_rpm_install.sh
# Author: Kylin
sudo yum -y install xorg-x11-proto-devel.noarch \
                    libXpm-devel \
		    wget \
		    gcc \
		    git \
		    bzip2 \
		    mysql-community-server \
		    mysql-community-devel \
		    nginx \
		    gcc-c++ \
		    'perl(Data::Dumper)' \
		    pam-devel \

