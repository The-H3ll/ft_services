FROM    alpine

LABEL   maintainer="molabhai@student.1337.ma"

RUN     apk update

RUN     apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session

RUN         apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN     apk add wget

RUN mkdir -p /etc/telegraf

COPY    /srcs/telegraf.conf /etc/telegraf/

COPY    /srcs/wp-config.php  .

COPY    /srcs/build.sh    .

RUN     chmod +x build.sh

CMD   sh build.sh