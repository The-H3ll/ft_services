# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    build.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: molabhai <molabhai@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/16 11:18:17 by molabhai          #+#    #+#              #
#    Updated: 2020/10/19 19:24:32 by molabhai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#! /bin/bash



cd /var/www

wget https://wordpress.org/latest.tar.gz

tar -xvf latest.tar.gz

cd /
cp wp-config.php  /var/www/wordpress/wp-config.php


adduser -G www-data -D www-data

chown -R www-data:www-data /var/www/wordpress

php-fpm7

nginx -g daemon off;

#telegraf & php -S 0.0.0.0:5050 -t /var/www/wordpress
