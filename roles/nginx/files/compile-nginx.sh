#!/bin/bash
#
#
cd /opt/$1/

./configure --prefix=/usr/local/$1 \
     --with-pcre --with-stream \
     --with-threads --with-http_gzip_static_module \
     --with-http_stub_status_module --with-http_realip_module \
     --with-stream_ssl_module --with-http_v2_module \
     --with-http_ssl_module
$2
make -j2 && make install
