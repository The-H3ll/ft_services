FROM    alpine

RUN     apk update

RUN     apk add mariadb mariadb-common mariadb-client openrc

COPY    localhost.sql   .

COPY    build.sh    .

COPY    my.cnf     /etc/mysql/my.cnf

RUN     chmod +x build.sh

CMD     sh build.sh