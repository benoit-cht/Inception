#!/bin/bash

# Démarre MariaDB en arrière-plan
/usr/bin/mysqld_safe --datadir='/var/lib/mysql' &

# Attend que MariaDB soit prêt
sleep 10

# Crée la base de données et les utilisateurs
mysql -u root -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
mysql -u root -e "CREATE USER IF NOT EXISTS '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -u root -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO '${SQL_USER}'@'%';"
mysql -u root -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('${SQL_ROOT_PASSWORD}');"
mysql -u root -e "FLUSH PRIVILEGES;"

# Arrête le service MariaDB démarré précédemment
mysqladmin -u root -p${SQL_ROOT_PASSWORD} shutdown

# Démarre MariaDB en mode normal
exec mysqld_safe
