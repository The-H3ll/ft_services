FROM alpine

RUN     apk update

RUN     apk add wget

RUN     apk add libc6-compat

RUN     wget https://dl.grafana.com/oss/release/grafana-7.1.5.linux-amd64.tar.gz

RUN     tar -zxvf grafana-7.1.5.linux-amd64.tar.gz

COPY    build.sh    .

CMD     sh build.sh

EXPOSE  3000