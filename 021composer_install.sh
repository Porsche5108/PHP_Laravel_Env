#!/bin/bash
# This shell script install composer on Cent OS Virtual Box on 20171225.
# File Name: 021composer_install.sh
# Last Modified: 2018.01.11 
# Author: Kylin

EXPECTED_SIGNATURE=$(wget -q -O - https://composer.github.io/installer.sig)
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_SIGNATURE=$(php -r "echo hash_file('SHA384', 'composer-setup.php');")

if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]; then
	>&2 echo 'ERROR: Invalid installer signature'
	rm composer-setup.php
	exit 1
fi

sudo /usr/local/bin/php composer-setup.php --install-dir=/usr/local/bin \
                       --filename=composer \
		       --quiet 
RESULT=$?
rm composer-setup.php
exit $RESULT

