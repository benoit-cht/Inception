# srcs/requirements/wordpress/Dockerfile
FROM debian:bullseye

# Installe les dépendances nécessaires
RUN apt-get update && apt-get install -y \
    php-fpm \
    php-mysql \
    php-curl \
    php-gd \
    php-mbstring \
    php-xml \
    php-zip \
    wget \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Crée le dossier /var/www/html
RUN mkdir -p /var/www/html

# Télécharge et installe WordPress
RUN wget https://wordpress.org/latest.tar.gz \
    && tar -xzf latest.tar.gz -C /var/www/html --strip-components=1 \
    && rm latest.tar.gz

# Copie le fichier de configuration WordPress
COPY conf/wp-config.php /var/www/html/

# Copie le script de configuration
COPY tools/setup-wp.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/setup-wp.sh

WORKDIR /var/www/html

# Donne les permissions nécessaires uniquement au dossier /var/www/html
RUN chown -R www-data:www-data /var/www/html

EXPOSE 9000

# Commande pour démarrer php-fpm
CMD ["php-fpm7.4", "-F"]

