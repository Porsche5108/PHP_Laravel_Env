#!/bin/bash
# This shell script install composer on Cent OS Virtual Box on 20171225.
# File Name: 025aimeos-larvel_install.sh
# Last Modified: 2018.01.11
# Author: Kylin

read -p "Please input dir name? " dir_name && \
sed -i 's/    "require": {/    "prefer-stable": true,\n    "minimum-stability": "dev",\n    "require": {\n        "aimeos\/aimeos-laravel": "~2017.10",\n        "aimeos/ai-payments": "2017.10.2",\n        "lokielse\/omnipay-alipay": "^2.0",\n        "lokielse\/omnipay-wechatpay": "^1.0",/g' /var/www/$dir_name/composer.json && \
sed -i 's/    "scripts": {/    "scripts": {\n        "post-update-cmd": [\n            "php artisan vendor:publish --tag=public --force",\n            "php artisan migrate"\n        ],/g' /var/www/$dir_name/composer.json
