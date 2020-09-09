#! /bin/bash


mkdir   /www

cd /www

wget https://wordpress.org/latest.tar.gz

tar -xvf latest.tar.gz

cp wp-config.php  /www/wordpress/wp-config.php

php -S 0.0.0.0:5050 -t /www/