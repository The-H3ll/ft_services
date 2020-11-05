# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: molabhai <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/16 11:19:37 by molabhai          #+#    #+#              #
#    Updated: 2020/10/16 11:19:38 by molabhai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    alpine

RUN     apk update

RUN     apk add mariadb mariadb-common mariadb-client openrc

RUN     apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN     apk add supervisor

RUN     mkdir -p /etc/telegraf

COPY    /srcs/telegraf.conf /etc/telegraf/

COPY    /srcs/run.sh    .

COPY    /srcs/build.sh    .

COPY    /srcs/supervisord.conf  /etc/supervisord.conf

COPY    /srcs/my.cnf     /etc/mysql/my.cnf

COPY    /srcs/mysql-service.sql     .

RUN     chmod +x build.sh

CMD     sh build.sh