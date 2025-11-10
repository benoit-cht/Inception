# srcs/requirements/mariadb/Dockerfile
FROM mariadb:10.5

# Copie le script d'initialisation
COPY conf/init.sql /docker-entrypoint-initdb.d/

# Crée un utilisateur et une base de données pour WordPress
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=wp_user
ENV MYSQL_PASSWORD=wp_password

# Expose le port 3306
EXPOSE 3306

# Démarre MariaDB en mode safe (pour éviter les erreurs de socket)
CMD ["mysqld_safe"]

