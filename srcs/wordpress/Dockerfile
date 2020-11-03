# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: molabhai <molabhai@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/16 11:18:00 by molabhai          #+#    #+#              #
#    Updated: 2020/10/19 19:40:53 by molabhai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    alpine

LABEL   maintainer="molabhai@student.1337.ma"

RUN     apk update

RUN     apk add nginx

RUN     apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session

#RUN     apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN     apk add wget

RUN     apk add supervisor

RUN     mkdir -p /etc/telegraf

COPY    /srcs/telegraf.conf /etc/telegraf/

COPY    /srcs/supervisord.conf /etc/supervisord.conf

COPY    /srcs/nginx.conf    /etc/nginx/nginx.conf

COPY    /srcs/wp-config.php  .

COPY    /srcs/build.sh    .

RUN     mkdir /run/nginx

CMD      sh build.sh