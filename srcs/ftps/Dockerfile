FROM 	alpine

RUN 	apk update

RUN	apk add vsftpd

RUN	apk add lftp

COPY	vsftpd.conf	.

COPY  test.sh   /test.sh

RUN	cp vsftpd.conf	/etc/vsftpd/vsftpd.conf

EXPOSE	21


CMD	sh test.sh
