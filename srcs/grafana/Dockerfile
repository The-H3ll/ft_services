FROM alpine

LABEL   maintainer="molabhai@student.1337.ma"

RUN     apk update

RUN     apk add wget

RUN     apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN     apk add libc6-compat

RUN     wget https://dl.grafana.com/oss/release/grafana-7.1.5.linux-amd64.tar.gz

RUN     tar -zxvf grafana-7.1.5.linux-amd64.tar.gz

RUN     mkdir -p /etc/telegraf

COPY    /srcs/telegraf.conf /etc/telegraf/

COPY    /srcs/build.sh    .

CMD     sh build.sh

EXPOSE  3000