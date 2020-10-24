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

     wget https://wordpress.org/latest.tar.gz

     tar -xvf latest.tar.gz

     mkdir /var/www/wordpress

     mv wordpress/*      /var/www/wordpress/
     cp wp-config.php  /var/www/wordpress/wp-config.php
     adduser -G www-data -D www-data

    chown -R www-data:www-data /var/www/wordpress
    telegraf &
    php-fpm7 &
    nginx -g 'daemon off;' 
