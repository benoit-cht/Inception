#!/bin/bash

# Attend que MariaDB soit prêt
while ! mysqladmin ping -h"mariadb" --silent; do
  sleep 1
done

# Installe WordPress
wp core install --url="login.42.fr" \
  --title="Mon Site WordPress" \
  --admin_user="admin_wp" \
  --admin_password="admin_password" \
  --admin_email="admin@example.com" \
  --path=/var/www/html \
  --allow-root

# Crée un utilisateur
wp user create user1 user1@example.com --user_pass="user1_password" --role=author --path=/var/www/html --allow-root

# Installe et active un thème
wp theme install twentytwentyone --activate --path=/var/www/html --allow-root

# Installe WP-CLI si ce n'est pas déjà fait
if ! command -v wp &>/dev/null; then
  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  chmod +x wp-cli.phar
  mv wp-cli.phar /usr/local/bin/wp
fi

exec "$@"
