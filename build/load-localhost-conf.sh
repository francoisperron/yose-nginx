#!/bin/sh

cp -a ../nginx.conf /usr/local/conf/nginx.conf
sed -i.bak "s/NGINX_IP_PORT/localhost:80/" /usr/local/conf/nginx.conf
sed -i.bak "s/YOSE_CLIENT/localhost:5001/g" /usr/local/conf/nginx.conf
sed -i.bak "s/YOSE_NODE/localhost:5000/g" /usr/local/conf/nginx.conf
sed -i.bak "s/YOSE_MINESWEEPER_CLIENT/localhost:5002/g" /usr/local/conf/nginx.conf
