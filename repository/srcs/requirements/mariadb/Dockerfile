# srcs/requirements/mariadb/Dockerfile
FROM debian:bullseye

# Installe MariaDB et les dépendances nécessaires
RUN apt-get update && apt-get install -y \
    mariadb-server \
    && rm -rf /var/lib/apt/lists/*

# Crée le dossier de données si nécessaire
RUN mkdir -p /var/lib/mysql

# Copie la configuration MariaDB
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

# Copie le script d'initialisation
COPY tools/setup-db.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/setup-db.sh

# Crée le dossier pour les scripts d'initialisation
RUN mkdir -p /docker-entrypoint-initdb.d

# Donne les permissions nécessaires uniquement au dossier de données
RUN chown -R mysql:mysql /var/lib/mysql

EXPOSE 3306

# Commande pour démarrer MariaDB
CMD ["bash", "/usr/local/bin/setup-db.sh"]

