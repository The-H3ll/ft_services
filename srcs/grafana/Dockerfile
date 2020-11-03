# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: molabhai <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/16 11:18:54 by molabhai          #+#    #+#              #
#    Updated: 2020/10/16 11:19:18 by molabhai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

LABEL   maintainer="molabhai@student.1337.ma"

RUN     apk update

RUN     apk add wget

#RUN     apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN     apk add libc6-compat

RUN     apk add supervisor

RUN     wget https://dl.grafana.com/oss/release/grafana-7.1.5.linux-amd64.tar.gz

RUN     tar -zxvf grafana-7.1.5.linux-amd64.tar.gz

RUN     mkdir -p /etc/telegraf

COPY    /srcs/telegraf.conf /etc/telegraf/

COPY    /srcs/supervisord.conf  /etc/supervisord.conf

COPY    /srcs/run.sh        .

COPY    /srcs/build.sh    .

COPY    /srcs/grafana.db   /grafana-7.1.5/data/grafana.db

CMD     sh build.sh

EXPOSE  3000
