FROM    debian:buster

RUN     apt-get update
RUN     apt-get install -y ngnix openssl

RUN     mkdir /etc/ngnix/ssl
RUN     openssl
#RUN    mkdir -p /run/ngnix

COPY ./conf/ngnix /etc/ngnix/conf.d

EXPOSE

ENTRYPOINT ["nginx", "-g", "daemon off;"]