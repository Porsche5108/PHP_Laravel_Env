#!/bin/bash
# This shell script config database for new laravel project
# File Name: 034heroku_install.sh
# Last Modified: 2018.02.02
# Author: Kylin

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/prysc/.local/bin:/home/prysc/bin
export PATH


wget https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-linux-x64.tar.gz -O heroku.tar.gz
 && \
 tar -xvzf heroku.tar.gz && \
 sudo mv heroku-cli-v*-linux-x64 /usr/local/lib/heroku && \
 ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku
