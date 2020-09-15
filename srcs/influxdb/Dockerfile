FROM    alpine

RUN     apk update

RUN     apk add wget

RUN     wget https://dl.influxdata.com/influxdb/releases/influxdb-1.8.2_linux_amd64.tar.gz

RUN    tar xvfz influxdb-1.8.2_linux_amd64.tar.gz

EXPOSE  8086    8088