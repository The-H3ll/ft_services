FROM    alpine

RUN     apk update

RUN     apk add influxdb

RUN     apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN     mkdir -p /etc/telegraf/

RUN     cp /etc/telegraf.conf   /etc/telegraf/

EXPOSE  8086    8088