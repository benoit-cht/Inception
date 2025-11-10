FROM debian:bullseye

RUN apt -y update && apt -y upgrade 
RUN apt-get install -y mariadb-server

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

#COPY ./tools/script.sh /

#RUN chmod -R +x /script.sh

#CMD ["/script.sh"]
