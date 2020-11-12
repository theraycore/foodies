<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'O1MlPeHdYymmSQnq1NaB5QwTNGVdsqxx/AkCzW2i5wdBpq0yzhR9p/pQQy794DBUAJ5xoCGQ2zJHzwwyzu/7UQ==');
define('SECURE_AUTH_KEY',  'W88a0x1PEPyUGNf+Hq6RX8eT3XvTf8AijaDYGPn9fTXVBoehWl8WU4OldynNWwlRfZ9N2vBB3nNVisds4WvXoQ==');
define('LOGGED_IN_KEY',    'VcSwajcd5Zik7kYz6DLeK9Ixxkw7DtiBZf/5fWILNODYvtuf965+QfKeflQLVSREucXQL0HqxBOYSXKHQSVNKA==');
define('NONCE_KEY',        'UlCBIbeq+qDby6TR2m7r7+4n0RDQdf6OrIuZuQZjV7MEcWJpGe6lWKRr+fKwhhwZo7Eg2iM8HOyE90tTBsZNkw==');
define('AUTH_SALT',        'P+XFHj7BifSvvYch6fk4lRyvjFxqfVLsNldwXPhWAQdmQGzyl+xqo3iI1YG90TqyAiuvkktl8ZB3QX/iTy4PuQ==');
define('SECURE_AUTH_SALT', 'Xe9/Z/DmzfwerKyo+1kHIzpGIMmBDHccb4yN1jW9iuxRuLUKU40WTKulLM/8wP6fCVTfh+O6ycmffzml1YIRsg==');
define('LOGGED_IN_SALT',   'V8V+fkjYs/nq+KRPYtK8ylbNKl3H5WdnkB4wKU93J83QtTpHH2k0vz/zg66vnKP3u2EibqxXHr9k3waoF0TXbg==');
define('NONCE_SALT',       'ecRQpnmyxdYrLIXiz/+9mDzE7/0lZpKfde4xLL8wc/RMkh32z8sggfkP8Md0BWUi0ilVvee76ikc4Evi+XW+qg==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
