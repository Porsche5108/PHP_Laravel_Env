#!/bin/bash
# This bash script aims to install php 7.1.12 mysql-5.7 nginx on Cent OS 7.4 server, reference on https://qiita.com/shadowhat/items/a9ec289b44af9a8e8ad3
# Last Modified: 2018.01.10
# File name: reference_qiita_com_php_7_1_12_build.sh
# Author: Kylin

# create www-data user and tarball extract directory.

sudo useradd -M -s /sbin/nologin www-data && \
mkdir extract_tarball;
if [ -f nginx.repo ]; then
    sudo cp nginx.repo /etc/yum.repos.d/;
fi

if [ -f 001mysql_install_repo.sh ]; then
    sh 001mysql_install_repo.sh && echo "finish 001 step" > config.status;
fi

echo -e '\n\n\n\n\n\n\n';



read -p "Change repo to ALI?(Y/N) " answer;
if [ "$answer" == "Y" -o "$answer" == "y" ];then
    if [ -f 031yum_repo.sh ]; then
        sh 031yum_repo.sh && echo "finish 031 step" >> config.status;
    fi
fi

echo -e '\n\n\n\n\n\n\n';

if [ -f 002pre_rpm_install.sh ]; then
    sh 002pre_rpm_install.sh && echo "finish 002 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 003openssl_install.sh ]; then
    sh 003openssl_install.sh && echo "finish 003 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 004libssh_install.sh ]; then
    sh 004libssh_install.sh && echo "finish 004 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 005jpeg_install.sh ]; then
    sh 005jpeg_install.sh && echo "finish 005 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
#if [ -f 006tiff_install.sh ]; then
#    sh 006tiff_install.sh && echo "finish 006 step" >> config.status;
#fi
	
echo -e '\n\n\n\n\n\n\n';

#if [ -f 007freetype_install.sh ]; then
#    sh 007freetype_install.sh && echo "finish 007 step" >> config.status;
#fi

echo -e '\n\n\n\n\n\n\n';


if [ -f 009zlib_install.sh ]; then
    sh 009zlib_install.sh && echo "finish 009 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 010m4_install.sh ]; then
    sh 010m4_install.sh && echo "finish 010 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 011autoconf_install.sh ]; then
    sh 011autoconf_install.sh && echo "finish 011 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
#if [ -f 012libiconv_install.sh ]; then
#    sh 012libiconv_install.sh && echo "finish 012 step" >> config.status;
#fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 013libxml2_install.sh ]; then
    sh 013libxml2_install.sh && echo "finish 013 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';

if [ -f 008libpng_install.sh ]; then
    sh 008libpng_install.sh && echo "finish 008 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 014libgd_install.sh ]; then
    sh 014libgd_install.sh && echo "finish 014 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
#if [ -f 015libmcrypt_install.sh ]; then
#    sh 015libmcrypt_install.sh && echo "finish 015 step" >> config.status;
#fi

echo -e '\n\n\n\n\n\n\n';
	
#if [ -f 016imap_install.sh ]; then
#    sh 016imap_install.sh && echo "finish 016 step" >> config.status;
#fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 017curl_install.sh ]; then
    sh 017curl_install.sh && echo "finish 017 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 018libexpat_install.sh ]; then
    sh 018libexpat_install.sh && echo "finish 018 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 019php_install.sh ]; then
    sh 019php_install.sh && echo "finish 019 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 020phpredis_install.sh ]; then
    sh 020phpredis_install.sh && echo "finish 020 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	

if [ -f 024composer_binary.sh ]; then
    sh 024composer_binary.sh && echo "finish 024 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	


if [ -f 022compser_repo_install.sh ]; then
    sh 022compser_repo_install.sh && echo "finish 022 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';


if [ -f systemd.sh ]; then
    sh systemd.sh && echo "finish mysql php-fpm sytemctl step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	

read -p "Create an empty Project?(Y/N) " answer;
if [ "$answer" == "N" -o "$answer" == "n" ];then
    exit 0;
fi


if [ -f 023laravel_project_install.sh ]; then
    sh 023laravel_project_install.sh && echo "finish 023 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 030laravel_database.sh ]; then
    sh 030laravel_database.sh && echo "finish 030 step" >> config.status;
fi


read -p "Install samba?(Y/N) " ans;
if [ "ans" == "Y" -o "ans" == "y" ];then
    if [ -f 032samba_config.sh ];then
        sh 032samba_config.sh && echo "finish 032 step" >> config.status;
    fi
fi


read -p "Install Aimeos too?(Y/N) " answer;
if [ "$answer" == "N" -o "$answer" == "n" ];then
    exit 0;
fi

   
if [ -f 025aimeos-laravel_install.sh ]; then
    sh 025aimeos-laravel_install.sh && echo "finish 025 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	

if [ -f 027laravel_env.sh ]; then
    sh 027laravel_env.sh && echo "finish 027 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	

if [ -f 028config_app.sh ]; then
    sh 028config_app.sh && echo "finish 028 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	
if [ -f 026aimeos-artisan.sh ]; then
    sh 026aimeos-artisan.sh && echo "finish 026 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
	

if [ -f 029Setup_Admin.sh ]; then
    sh 029Setup_Admin.sh && echo "finish 029 step" >> config.status;
fi

echo -e '\n\n\n\n\n\n\n';
