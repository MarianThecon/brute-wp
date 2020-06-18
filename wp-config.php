<?php

// BEGIN iThemes Security - Do not modify or remove this line
// iThemes Security Config Details: 2
define( 'DISALLOW_FILE_EDIT', true ); // Disable File Editor - Security > Settings > WordPress Tweaks > File Editor
define( 'FORCE_SSL_ADMIN', true ); // Redirect All HTTP Page Requests to HTTPS - Security > Settings > Secure Socket Layers (SSL) > SSL for Dashboard
// END iThemes Security - Do not modify or remove this line

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
define( 'DB_NAME', 'wordpressnexloc_wp' );

/** MySQL database username */
define( 'DB_USER', 'wordpressnexloc_admin' );

/** MySQL database password */
define( 'DB_PASSWORD', '2~uBY4Sb+u&8' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

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
define( 'AUTH_KEY',         '44!%q-ym&ugb(:fKz?kt8V&o9k.*-|r.uIz{D`ghbt^MJaelVak(e~ywjK57WwJ(' );
define( 'SECURE_AUTH_KEY',  'X&PX>AH`:Fk21-./^M[Asz{vm^QLGllw[p#AN}rj)Pm{uD/r:!,T7lnPiy<Jv^PD' );
define( 'LOGGED_IN_KEY',    'I[>k{WF$}IYlBm-H9sr)1zm#,l}p9aKS{f`zJour7.Urk+)0$&[{7<i9#M-6r4] ' );
define( 'NONCE_KEY',        '*] *,W.ie$4Lt[gbG*9=XUG)SBM^gRio7K9J;-40NAL2k5=fUTxezh>pt.?}pDYA' );
define( 'AUTH_SALT',        '-q0[&pSvf@8:W:X&ga=,VO5*(~ffj,pRu]wMOr+ZyyU*r]9mpHP%(i>x|GYMxVO@' );
define( 'SECURE_AUTH_SALT', 'q/)`.s^q>|^G+%d4u!/D*t`]7kSjhV4o`j:k$#:K-herQt b1MZli/l2@m`QTd%N' );
define( 'LOGGED_IN_SALT',   'wKOB-ryAWZ;yc:Xj|(pzd)=R|=%Qx9mGNrf;D $81N8Uy[`%Id>Ko0*;i=p4 .mt' );
define( 'NONCE_SALT',       'nA{WR3a-DFKvL4.Zz3jcMr RH=iD]{r2Q.{t{hgQ;?[/ BCWj0?-!r/:(y#i4f0D' );

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
