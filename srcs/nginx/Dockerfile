FROM 	    alpine

RUN  	    apk update

RUN 	    apk add nginx

RUN	        apk add openssl

RUN	        apk add openrc

RUN	adduser -D -g 'nginx' user

RUN	chown -R user:user /var/lib/nginx

RUN	mkdir	-p /run/nginx

COPY	nginx.key 	.

COPY	nginx.crt 	.

COPY	nginx.conf 	.

RUN	cp nginx.key	/etc/ssl/private/nginx.key

RUN	cp nginx.crt	/etc/ssl/certs/nginx.crt

RUN	cp nginx.conf	/etc/nginx/nginx.conf

EXPOSE      80

EXPOSE      443

CMD      ["nginx", "-g", "daemon off;"]
