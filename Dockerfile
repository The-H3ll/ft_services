FROM	alpine

RUN		apk update 

RUN		apk add nginx

RUN		apk add php7-cli php7-fpm  php7-json php7-opcache php7-mbstring php7-xml php7-gd php7-curl  

RUN		apk add wget 
