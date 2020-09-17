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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'molabhai' );

/** MySQL database password */
define( 'DB_PASSWORD', 'molabhai' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql-service' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Hesi+kt(eoE[>d=pgI(9.l-]I+Fyk7v~YP7yKwM4+Zb7+LrRm);_(Ezc{Gc9T?lH' );
define( 'SECURE_AUTH_KEY',  'c8>!To27+:2WpD;^XEAd?xgxbG.=zlHY)V*E3~K#Ubnnp!U*Ej4[0*h[Tgo+]_Fq' );
define( 'LOGGED_IN_KEY',    'uU=A|wTxGW^}a>-1 0DD^]NMVvC};)*C#D{-6KmzjT$vxq#Sq(}f!BVtUb;8NhFF' );
define( 'NONCE_KEY',        '!e|{)%eYNV`S~=,,tLHrGY3OLIZp`Yjh63fAA;gU&!8P+o*F>K-6S`{P*(oU=V`w' );
define( 'AUTH_SALT',        'QO%FiR&:N<|PYnDQ&`4r X 6vgH,sgaXdoGLTG]MsJIP[#EwAmX.5a8HRyXXgFgz' );
define( 'SECURE_AUTH_SALT', ' j`U -l![]805;,g^>#4/GM%U*=o~^Nr.z,Bnkl D]mi!yw4m)H2W^Wth=7H=^7p' );
define( 'LOGGED_IN_SALT',   'x&;HSgZ*)&rB(WQMo!E aH1Yr/*#;%;+4YS?HEt2wXm)Qm53>hDC~]QB]lq[}aT+' );
define( 'NONCE_SALT',       ',cmqMIFnK.1XXbigFiP-,& AITr]$jMoS|85RH~k&Zj{cK4%tej+yP[]l%V~+$A;' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';