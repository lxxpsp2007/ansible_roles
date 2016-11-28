#!/bin/bash
#
#

cd /opt/$1/
./configure --prefix=/usr/local/$1 $2
make -j2 && make install
