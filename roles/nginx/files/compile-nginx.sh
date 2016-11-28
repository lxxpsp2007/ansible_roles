#!/bin/bash
#
#
cd /opt/$1/

./configure --prefix=/usr/local/$1 \
--with-pcre  \
--with-http_stub_status_module \
--with-http_realip_module \
$2
make -j2 && make install
