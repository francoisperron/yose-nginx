#!/bin/bash

# create, then go into the build directory
sudo mkdir -p /usr/local/src
cd /usr/local/src

# download, build, and install pcre
sudo curl -OL ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.33.tar.gz
sudo tar xvzf pcre-8.33.tar.gz
cd pcre-8.33
sudo ./configure --prefix=/usr/local
sudo make
sudo make install
cd ..

# download, build, and install nginx
sudo curl -OL http://nginx.org/download/nginx-1.5.7.tar.gz
sudo tar xvzf nginx-1.5.7.tar.gz
cd nginx-1.5.7
sudo ./configure --prefix=/usr/local --with-cc-opt="-Wno-deprecated-declarations" --with-http_ssl_module --with-pcre=../pcre-8.33
sudo make
sudo make install