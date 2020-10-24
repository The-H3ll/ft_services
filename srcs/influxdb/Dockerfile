# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: molabhai <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/16 11:16:51 by molabhai          #+#    #+#              #
#    Updated: 2020/10/16 11:16:53 by molabhai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM    alpine

LABEL   maintainer="molabhai@student.1337.ma"

RUN     apk update

RUN     apk add influxdb

RUN     apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

COPY    /srcs/build.sh    .

RUN     mkdir -p /etc/telegraf

COPY    /srcs/influxdb.conf     /etc/influxdb.conf

COPY    /srcs/telegraf.conf /etc/telegraf/

RUN     chmod +x build.sh

CMD     sh build.sh

EXPOSE  8086    8088