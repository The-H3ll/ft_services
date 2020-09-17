#! /bin/bash


mkdir -p /var/www/

cd /var/www

wget https://wordpress.org/latest.tar.gz

tar -xvf latest.tar.gz

cd /
cp wp-config.php  /var/www/wordpress/wp-config.php

telegraf & php -S 0.0.0.0:5050 -t /var/www/wordpress