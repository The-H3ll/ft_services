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

RUN	        apk add openrc

RUN         apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN	    adduser -D -g 'user' user

RUN	    chown -R user:user /var/lib/nginx

RUN     chmod   -R 755 /var/lib/nginx

RUN	    mkdir	-p /run/nginx

RUN     mkdir -p /etc/telegraf


COPY     /srcs/telegraf.conf /etc/telegraf/

COPY	 /srcs/nginx.key	/etc/ssl/private/nginx.key

COPY    /srcs/nginx.crt	/etc/ssl/certs/nginx.crt

COPY 	/srcs/nginx.conf	/etc/nginx/nginx.conf

EXPOSE      80

EXPOSE      443

CMD      ["nginx", "-g", "daemon off;"]
