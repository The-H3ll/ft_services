FROM    alpine

RUN     apk update

RUN     apk add mariadb mariadb-common mariadb-client openrc

RUN     apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN     mkdir -p /etc/telegraf

COPY    /srcs/telegraf.conf /etc/telegraf/

COPY    /srcs/build.sh    .

COPY    /srcs/my.cnf     /etc/mysql/my.cnf

RUN     chmod +x build.sh

CMD     sh build.sh