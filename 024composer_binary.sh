#!/bin/bash
# This shell script install composer on Cent OS Virtual Box on 20171225.
# File Name: 024composer_binary.sh
# Last Modified: 2018.01.11
# Author: Kylin

echo -e "Installing composer...\n\n";
if [ -e composer.phar ]; then
    sudo cp composer.phar /usr/local/bin/composer && echo -e "composer install completely!\n\n";
fi
