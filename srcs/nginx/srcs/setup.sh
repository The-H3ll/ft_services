#! bin/bash

#	Configuration

adduser -D -g 'nginx' user

chown -R user:user /var/lib/nginx

mkdir -p /run/nginx

cp	nginx.conf  /etc/nginx/nginx.conf

cp  nginx.key   /etc/ssl/private/nginx.key

cp  nginx.crt   /etc/ssl/certs/nginx.crt
