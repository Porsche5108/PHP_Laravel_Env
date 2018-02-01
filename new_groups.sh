#!/bin/bash
# This shell script install a new project entered by user
# File Name: new_groups.sh
# Last Modified: 2018.01.12
# Author: Kylin

WHO=`whoami`

sudo usermod -aG www-data $WHO && \
newgrp www-data;
