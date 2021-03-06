#!/bin/bash
#
#
cd /opt/$1/

./configure --prefix=/usr/local/$1 \
--with-config-file-path=/usr/local/$1/etc \
--with-iconv=/usr/local/libiconv-1.14 \
--with-mcrypt=/usr/local/libmcrypt-2.5.8 \
--with-mysqli=mysqlnd \
--with-mysql=mysqlnd \
--with-pdo-mysql \
--with-mysql-sock=/var/lib/mysql/mysql.sock \
--with-freetype-dir \
--enable-bcmath \
--enable-mbstring \
--with-readline \
--enable-sockets \
--with-jpeg-dir \
--with-openssl \
--with-png-dir \
--enable-fpm \
--with-zlib \
--with-curl \
--with-gd \
--enable-opcache \
--with-gettext \
--with-tidy "$2"

make -j2 && make install
cp php.ini-production /usr/local/$1/etc/php.ini
