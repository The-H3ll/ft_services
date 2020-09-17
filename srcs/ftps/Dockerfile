FROM 	alpine

LABEL   maintainer="molabhai@student.1337.ma"

RUN 	apk update

RUN		apk add vsftpd

RUN    apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN  	apk add openssl

COPY 	/srcs/vsftpd.conf 	.

COPY 	/srcs/vsftpduserlist.conf  /etc/vsftpduserlist.conf

COPY	/srcs/vsftpd.pem		.

RUN 	mkdir /etc/certs

RUN     mkdir -p /etc/telegraf

COPY    /srcs/telegraf.conf /etc/telegraf/

RUN 	cp vsftpd.pem /etc/certs

RUN  	cp vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN  	{ echo "labhairi"; echo "labhairi";} | adduser molabhai

RUN 	mkdir /home/molabhai/ftp

RUN 	chown nobody:nogroup /home/molabhai/ftp/

RUN 	chmod a-w /home/molabhai/ftp/

RUN 	mkdir /home/molabhai/ftp/files

RUN 	chown molabhai:molabhai /home/molabhai/ftp/files

COPY 	/srcs/build.sh	/usr/sbin

RUN 	chmod +x /usr/sbin/build.sh

CMD 	sh /usr/sbin/build.sh

EXPOSE 	21  20 31110 31111