FROM    alpine

RUN     apk update

RUN     apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session

RUN     apk add wget

COPY    build.sh    .

RUN     chmod +x build.sh

CMD   sh build.sh