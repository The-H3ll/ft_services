FROM 	alpine

RUN 	apk update

RUN		apk add vsftpd

RUN  	apk add openssl

COPY 	vsftpd.conf 	.

COPY 	vsftpduserlist.conf  /etc/vsftpduserlist.conf

COPY	vsftpd.pem		.

RUN 	mkdir /etc/certs

RUN 	cp vsftpd.pem /etc/certs

RUN  	cp vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN  	{ echo "labhairi"; echo "labhairi";} | adduser molabhai

RUN 	mkdir /home/molabhai/ftp

RUN 	chown nobody:nogroup /home/molabhai/ftp/

RUN 	chmod a-w /home/molabhai/ftp/

RUN 	mkdir /home/molabhai/ftp/files

RUN 	chown molabhai:molabhai /home/molabhai/ftp/files

COPY 	build.sh	/usr/sbin

RUN 	chmod +x /usr/sbin/build.sh

CMD 	sh /usr/sbin/build.sh

EXPOSE 	21  20 31110 31111