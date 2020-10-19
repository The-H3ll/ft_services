# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: molabhai <molabhai@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/16 11:20:01 by molabhai          #+#    #+#              #
#    Updated: 2020/10/18 11:20:15 by molabhai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    alpine

LABEL   maintainer="molabhai@student.1337.ma"

RUN     apk update

RUN     apk add php wget phpmyadmin php-mbstring php-gettext  php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom

RUN         apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN     mkdir -p /var/www/phpmyadmin

RUN     cd /var/www/phpmyadmin

RUN     wget  http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz

RUN     tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz

RUN     mv phpMyAdmin-5.0.2-all-languages/* /var/www/phpmyadmin

COPY    /srcs/config.inc.php /var/www/phpmyadmin

RUN     rm -rf /var/www/phpmyadmin/config.sample.inc.php

RUN mkdir -p /etc/telegraf

RUN cp /etc/telegraf.conf /etc/telegraf/

COPY    /srcs/build.sh    .

CMD     sh build.sh

EXPOSE  5000
