FROM    mariadb:10.5

COPY    conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY    tools/script.sh /docker-entrypoint-initdb.d/ 
RUN     chmod +x  /docker-entrypoint-initdb.d/script.sh

EXPOSE  3306

#CMD     ["/script.sh"]
