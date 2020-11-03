# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: molabhai <molabhai@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/16 11:17:20 by molabhai          #+#    #+#              #
#    Updated: 2020/10/19 10:47:05 by molabhai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM 	    alpine

LABEL maintainer="molabhai@student.1337.ma"

RUN  	    apk update

RUN 	    apk add nginx

RUN	        apk add openssl

RUN	        apk add openssh

RUN	        apk add openrc

RUN         apk add supervisor

RUN	    mkdir	-p /run/nginx

RUN     mkdir -p /etc/telegraf

COPY    /srcs/build.sh      .

COPY     /srcs/telegraf.conf /etc/telegraf/

COPY	 /srcs/nginx.key	/etc/ssl/private/nginx.key

COPY    /srcs/nginx.crt	/etc/ssl/certs/nginx.crt

COPY 	/srcs/nginx.conf	/etc/nginx/nginx.conf

COPY    /srcs/supervisord.conf  /etc/supervisord.conf

COPY    /srcs/sshd_config   /etc/ssh/sshd_config

COPY    /srcs/run.sh        .

EXPOSE      80

EXPOSE      443

RUN         chmod +x build.sh

CMD         sh build.sh