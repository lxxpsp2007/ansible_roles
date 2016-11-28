#!/bin/bash
#
tar xf /opt/libmcrypt-2.5.8.tar.gz
cd /opt/libmcrypt-2.5.8
./configure --prefix=/usr/local/libmcrypt-2.5.8 && make -j2 && make install
