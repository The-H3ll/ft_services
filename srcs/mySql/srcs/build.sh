# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    build.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: molabhai <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/16 11:19:46 by molabhai          #+#    #+#              #
#    Updated: 2020/10/16 11:19:48 by molabhai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#! bin/bash

openrc

touch /run/openrc/softlevel

echo "Install modfication.."
/usr/bin/mysql_install_db


echo "starting mariadb"
rc-service mariadb start

echo "Apllying DataBase"
echo "CREATE DATABASE wordpress;" | mysql -u root

echo "CREATE USER 'molabhai'@'%' identified by 'molabhai';" | mysql -u root

echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'molabhai'@'%';" | mysql -u root

echo "FLUSH PRIVILEGES;" | mysql -u root

/usr/bin/mysqld_safe --datadir="/var/lib/mysql"

telegraf & tail -f /dev/null