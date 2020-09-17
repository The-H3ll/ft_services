FROM    alpine

LABEL   maintainer="molabhai@student.1337.ma"

RUN     apk update

RUN     apk add influxdb

RUN     apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

COPY    /srcs/build.sh    .

RUN     mkdir -p /etc/telegraf/

COPY    /srcs/telegraf.conf /etc/telegraf/

CMD     sh build.sh

EXPOSE  8086    8088