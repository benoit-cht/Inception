<?php
define( 'DB_NAME', getenv('WORDPRESS_DB_NAME') );
define( 'DB_USER', getenv('WORDPRESS_DB_USER') );
define( 'DB_PASSWORD', getenv('WORDPRESS_DB_PASSWORD') );
define( 'DB_HOST', getenv('WORDPRESS_DB_HOST') );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

// Clés de sécurité (remplace-les par des valeurs générées aléatoirement)
define( 'AUTH_KEY',         'ta_cle_aleatoire_ici' );
define( 'SECURE_AUTH_KEY',  'ta_cle_aleatoire_ici' );
define( 'LOGGED_IN_KEY',    'ta_cle_aleatoire_ici' );
define( 'NONCE_KEY',        'ta_cle_aleatoire_ici' );
define( 'AUTH_SALT',        'ta_cle_aleatoire_ici' );
define( 'SECURE_AUTH_SALT', 'ta_cle_aleatoire_ici' );
define( 'LOGGED_IN_SALT',   'ta_cle_aleatoire_ici' );
define( 'NONCE_SALT',       'ta_cle_aleatoire_ici' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';

