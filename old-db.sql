-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2020 at 03:05 PM
-- Server version: 10.3.23-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpressnexloc_wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(8, 'action_scheduler/migration_hook', 'complete', '2020-06-04 12:26:28', '2020-06-04 12:26:28', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591273588;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591273588;}', 1, 1, '2020-06-04 12:26:35', '2020-06-04 12:26:35', 0, NULL),
(9, 'action_scheduler/migration_hook', 'complete', '2020-06-04 12:45:05', '2020-06-04 12:45:05', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591274705;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591274705;}', 1, 1, '2020-06-04 12:45:05', '2020-06-04 12:45:05', 0, NULL),
(10, 'action_scheduler/migration_hook', 'complete', '2020-06-09 08:54:49', '2020-06-09 08:54:49', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591692889;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591692889;}', 1, 1, '2020-06-09 08:55:34', '2020-06-09 08:55:34', 0, NULL),
(11, 'action_scheduler/migration_hook', 'complete', '2020-06-09 08:56:34', '2020-06-09 08:56:34', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591692994;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591692994;}', 1, 1, '2020-06-09 08:56:57', '2020-06-09 08:56:57', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 8, 'acțiune creată', '2020-06-04 12:25:28', '2020-06-04 12:25:28'),
(2, 8, 'acțiune începută prin Async Request', '2020-06-04 12:26:35', '2020-06-04 12:26:35'),
(3, 8, 'acțiune finalizată prin Async Request', '2020-06-04 12:26:35', '2020-06-04 12:26:35'),
(4, 9, 'acțiune creată', '2020-06-04 12:44:05', '2020-06-04 12:44:05'),
(5, 9, 'acțiune începută prin Async Request', '2020-06-04 12:45:05', '2020-06-04 12:45:05'),
(6, 9, 'acțiune finalizată prin Async Request', '2020-06-04 12:45:05', '2020-06-04 12:45:05'),
(7, 10, 'acțiune creată', '2020-06-09 08:53:49', '2020-06-09 08:53:49'),
(8, 10, 'acțiune începută prin WP Cron', '2020-06-09 08:55:34', '2020-06-09 08:55:34'),
(9, 10, 'acțiune finalizată prin WP Cron', '2020-06-09 08:55:34', '2020-06-09 08:55:34'),
(10, 11, 'acțiune creată', '2020-06-09 08:55:34', '2020-06-09 08:55:34'),
(11, 11, 'acțiune începută prin WP Cron', '2020-06-09 08:56:57', '2020-06-09 08:56:57'),
(12, 11, 'acțiune finalizată prin WP Cron', '2020-06-09 08:56:57', '2020-06-09 08:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-06-04 12:14:53', '2020-06-04 12:14:53', 'Bună, acesta este un comentariu.\nPentru a începe moderarea, editarea și ștergerea comentariilor, te rog vizitează ecranul Comentarii din panoul de control.\nAvatarele comentatorului provin din <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_db7_forms`
--

CREATE TABLE `wp_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_distributed_storage`
--

CREATE TABLE `wp_itsec_distributed_storage` (
  `storage_id` bigint(20) UNSIGNED NOT NULL,
  `storage_group` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `storage_chunk` int(11) NOT NULL DEFAULT 0,
  `storage_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_fingerprints`
--

CREATE TABLE `wp_itsec_fingerprints` (
  `fingerprint_id` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_user` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_hash` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fingerprint_created_at` datetime NOT NULL,
  `fingerprint_approved_at` datetime NOT NULL,
  `fingerprint_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fingerprint_snapshot` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fingerprint_last_seen` datetime NOT NULL,
  `fingerprint_uses` int(11) NOT NULL DEFAULT 0,
  `fingerprint_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fingerprint_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_geolocation_cache`
--

CREATE TABLE `wp_itsec_geolocation_cache` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_host` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_lat` decimal(10,8) NOT NULL,
  `location_long` decimal(11,8) NOT NULL,
  `location_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_credit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_lockouts`
--

CREATE TABLE `wp_itsec_lockouts` (
  `lockout_id` bigint(20) UNSIGNED NOT NULL,
  `lockout_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockout_start` datetime NOT NULL,
  `lockout_start_gmt` datetime NOT NULL,
  `lockout_expire` datetime NOT NULL,
  `lockout_expire_gmt` datetime NOT NULL,
  `lockout_host` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockout_user` bigint(20) UNSIGNED DEFAULT NULL,
  `lockout_username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockout_active` int(1) NOT NULL DEFAULT 1,
  `lockout_context` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_logs`
--

CREATE TABLE `wp_itsec_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notice',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `init_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `memory_current` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `memory_peak` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `remote_ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_itsec_logs`
--

INSERT INTO `wp_itsec_logs` (`id`, `parent_id`, `module`, `code`, `data`, `type`, `timestamp`, `init_timestamp`, `memory_current`, `memory_peak`, `url`, `blog_id`, `user_id`, `remote_ip`) VALUES
(1, 0, 'notification_center', 'send::hide-backend', 'a:2:{s:10:\"recipients\";a:1:{i:0;s:21:\"georgebejan@thecon.ro\";}s:7:\"subject\";s:54:\"[wordpress.nexloc.com] WordPress Login Address Changed\";}', 'debug', '2020-06-09 08:49:22', '2020-06-09 08:49:21', 25177096, 25522752, 'https://wordpress.nexloc.com/wp-admin/admin-ajax.php', 1, 1, '192.168.1.1'),
(2, 0, 'notification_center', 'send_failed::hide-backend', 'a:1:{s:5:\"error\";O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:14:\"wp_mail_failed\";a:1:{i:0;s:36:\"Could not instantiate mail function.\";}}s:10:\"error_data\";a:1:{s:14:\"wp_mail_failed\";a:6:{s:2:\"to\";a:1:{i:0;s:21:\"georgebejan@thecon.ro\";}s:7:\"subject\";s:54:\"[wordpress.nexloc.com] WordPress Login Address Changed\";s:7:\"message\";s:45020:\"\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"ro-RO\">\n\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n	<title>New Login URL</title>\n	<meta name=\"viewport\" content=\"width=device-width\">\n\n	<style type=\"text/css\">\n		/* From: https://litmus.com/community/learning/13-foundations-email-coding-101 */\n\n		/* GENERAL STYLE RESETS */\n		body,#body-table,#body-cell{height:100%!important;width:100%!important;margin:0;padding:0;}\n		img,aimg{border:0;outline:none;text-decoration:none;}\n		.imageFix{display:block;}\n		table,td{border-collapse:collapse;border-spacing:0;}\n\n		/* CLIENT-SPECIFIC RESETS */\n		.ReadMsgBody{width:100%;}\n		.ExternalClass{width:100%;}\n		.ExternalClass,.ExternalClass p,.ExternalClass span,.ExternalClass font,.ExternalClass td,.ExternalClass div{line-height:100%;}\n		table,td{mso-table-lspace:0pt;mso-table-rspace:0pt;}\n		img{-ms-interpolation-mode:bicubic;}\n		body,table,td,p,a,li,blockquote{-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;}\n\n\n		h1,h2,h3,h4,h5,h6{color:#202020;font-family:Helvetica;font-size:20px;font-weight:bold;line-height:150%;margin:0;padding:0;text-align:center;}\n		p{font-family:Helvetica;font-size:16px;line-height:150%;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;padding:0;text-align:center;}\n		a{color:#0084CB;font-family:Helvetica;font-size:16px;line-height:150%;text-align:center;text-decoration:none;}\n		img{height:auto;}\n\n		body,#body-table{background-color:#FFFFFF;}\n		#body-cell{padding-bottom:20px;}\n		.section-padding{padding-top:20px;padding-right:20px;padding-left:20px;}\n		.section-padding-bottom{padding-bottom:20px;}\n		.container-cell{color:#808080;font-family:Helvetica;font-size:16px;line-height:150%;text-align:center;padding-bottom:20px;}\n		#top-banner{background-color:#FFCE08;}\n		#top-banner .container-cell{color:#413F39;font-size:13px;}\n		#top-logo .container-cell{padding-top:20px;}\n		#title-container h1{font-size:34px;}\n		.info-box{padding-top:20px;padding-bottom:20px;}\n		.info-box .container{border:1px solid #CDCECE;background-color:#F2F2F2;}\n		.info-box .section-padding{padding-top:40px;padding-right:40px;padding-left:40px;}\n		.info-box .container-cell{padding-bottom:40px;}\n		.info-box .info-icon{width:33px;height:23px;vertical-align:middle;}\n		.section-heading .container-cell{padding-bottom:0;}\n		.section-heading h4{color:#0084CB;font-size:16px;}\n		.section-heading h4 img{padding-top:2px;padding-right:5px;vertical-align:top;}\n		.lockouts-summary .container.left-column{margin-right:60px;}\n		.lockouts-summary h4{color:#ACAAAA;font-size:16px;font-weight:normal;}\n		.lockouts-summary p{color:#505050;font-size:30px;font-weight:bold;}\n		.table{border:1px solid #cdcece;color: #808080;font-family:Helvetica;font-size:14px;}\n		.table th,.table td{border:1px solid #cdcece;padding:10px;}\n		.table th{text-align:left;font-weight:bold;padding:5px 10px;}\n		.table .row-label{font-style:italic;}\n		.table a,.table b{font-size:14px;}\n		.large-text h4{color:#505050;margin-bottom:10px;}\n		.details-box-container{padding-top:20px;padding-bottom:20px;}\n		.details-box{background-color:#E4EEF7;border:1px solid #CDCECE;}\n		.details-box .container-cell{color:#6A6A6A;}\n		.divider .divider-border{border-top-width:1px;border-top-style:solid;border-top-color:#E8E8E8;}\n		.divider .container-cell{line-height:1px;padding-bottom:20px;width:450px;}\n		.module-button .border-radius{-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;}\n		.module-button a{background-color:#FFCD08;border:1px solid #FFCD08;color:#2E280E;display:inline-block;font-size:18px;font-weight:bold;line-height:100%;padding-top:20px;padding-right:30px;padding-bottom:20px;padding-left:30px;}\n		.pro-callout{padding-top:20px;}\n		.pro-callout-background{background-color:#0B1A23;}\n		.pro-callout .section-padding{padding-top:40px;}\n		.pro-callout .two-factor{color:#FFFFFF;margin-top:20px;margin-bottom:20px;}\n		.pro-callout .module-button a{font-size:30px;}\n		.pro-callout .why-pro{color:#999999;font-style:italic;margin-top:20px;margin-bottom:20px;}\n		.footer-heading h2{color:#002030;font-size:26px;}\n		.pro-flag{background-color:#FFCC00;color:#000000;font-size:10px;display:inline-block;padding:3px;line-height:1;position:relative;bottom:10px;text-transform:uppercase;}\n		#security-guide-container{border:1px solid #CDCECE;background-color:#D3E8E9;}\n		#security-guide .container-cell{color:#6C6C6C;text-align:left;}\n		#security-guide h4{color:#6C6C6C;font-size:18px;padding-bottom:10px;text-align:left;}\n		#security-guide a{font-weight:bold;}\n		#footer-source-details .container-cell{line-height:200%;padding-top:60px;padding-bottom:0;}\n		#footer-source-details a{font-size:11px;font-weight:bold;line-height:200%;}\n		.template-container {max-width: 600px !important;}\n\n		@media only screen and (max-width:600px){\n			body{width:100% !important;min-width:100% !important;}\n			#body-cell{padding:10px !important;}\n			#main-container, .container{width:100% !important;}\n			.preserve-ratio{height:auto !important;width:100% !important;}\n			.container-cell-bottom{padding-top:20px !important;}\n			.lockouts-summary .container{width:auto !important;}\n		}\n\n		@media only screen and (max-width:450px){\n			.divider .container-cell{width:auto !important;}\n		}\n	</style>\n</head>\n\n<body style=\"margin: 0;padding: 0;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;height: 100%!important;width: 100%!important;\">\n	<center>\n		<table id=\"body-table\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;background-color: #FFFFFF;height: 100%!important;width: 100%!important;\">\n			<tr>\n				<td id=\"body-cell\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;padding-bottom: 20px;height: 100%!important;width: 100%!important;\">\n					<table id=\"main-container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td id=\"top-banner\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFCE08;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #413F39;font-family: Helvetica;font-size: 13px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n																	New Login URL\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td id=\"top-logo\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;padding-top: 20px;\">\n																	<img class=\"preserve-ratio\" src=\"https://wordpress.nexloc.com/wp-content/plugins/better-wp-security/core/img/mail/logo.png\" style=\"max-width: 300px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" alt=\"\" align=\"center\">\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td id=\"title-container\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n																	<h1 style=\"color: #202020;font-family: Helvetica;font-size: 34px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">New Login URL</h1>\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n																	<p>The login address for Wordpress has changed. The new login address is <code>https://wordpress.nexloc.com/admin-login</code>. You will be unable to use the old login address.</p>\n\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n<tr>\n	<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding section-padding-bottom\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;padding-bottom: 20px;\">\n								<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"module-button\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"border-radius\" align=\"center\" bgcolor=\"#FFCD08\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">\n														<a class=\"border-radius\" href=\"https://wordpress.nexloc.com/admin-login\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #2E280E;font-family: Helvetica;font-size: 18px;line-height: 100%;text-align: center;text-decoration: none;background-color: #FFCD08;border: 1px solid #FFCD08;display: inline-block;font-weight: bold;padding-top: 20px;padding-right: 30px;padding-bottom: 20px;padding-left: 30px;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">Login Now</a>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n						<tr>\n							<td class=\"pro-callout\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;\">\n								<table class=\"pro-callout-background\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #0B1A23;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" class=\"container\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td align=\"center\" valign=\"top\" width=\"600\" class=\"section-padding\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 40px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td valign=\"top\" class=\"container-cell\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n																	<img class=\"preserve-ratio\" src=\"https://wordpress.nexloc.com/wp-content/plugins/better-wp-security/core/img/mail/pro_logo_no_text.png\" style=\"max-width: 100px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"100\" alt=\"\" align=\"center\">\n																	<p class=\"two-factor\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 20px;margin-right: 0;margin-bottom: 20px;margin-left: 0;padding: 0;text-align: center;color: #FFFFFF;\">Want two-factor authentication, scheduled malware scanning, ticketed support and more?</p>\n																	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n																		<tr>\n																			<td style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n																				<table class=\"module-button\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n																					<tr>\n																						<td class=\"border-radius\" align=\"center\" bgcolor=\"#FFCD08\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">\n																							<a href=\"https://ithemes.com/security/#plugin-pricing\" target=\"_blank\" class=\"border-radius\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #2E280E;font-family: Helvetica;font-size: 30px;line-height: 100%;text-align: center;text-decoration: none;background-color: #FFCD08;border: 1px solid #FFCD08;display: inline-block;font-weight: bold;padding-top: 20px;padding-right: 30px;padding-bottom: 20px;padding-left: 30px;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">Get iThemes Security Pro</a>\n																						</td>\n																					</tr>\n																				</table>\n																			</td>\n																		</tr>\n																	</table>\n																	<p class=\"why-pro\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 20px;margin-right: 0;margin-bottom: 20px;margin-left: 0;padding: 0;text-align: center;color: #999999;font-style: italic;\">Why go Pro? <a href=\"https://ithemes.com/security/why-go-pro/\">Check out the Free/Pro comparison chart.</a></p>\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n<tr>\n	<td class=\"footer-heading\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<h2 style=\"color: #002030;font-family: Helvetica;font-size: 26px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">Security Resources</h2>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table class=\"container\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"https://wordpress.nexloc.com/wp-content/plugins/better-wp-security/core/img/mail/article_icon.png\" style=\"max-width: 61px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"61\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"https://ithemes.com/category/wordpress-security/\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">Articles</a>\n											</h4>\n											<br>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Read the latest in WordPress Security news, tips, and updates on <a href=\"https://ithemes.com/category/wordpress-security/\">iThemes Blog</a>.</p>\n										</td>\n									</tr>\n								</table>\n								<table class=\"container\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell container-cell-bottom\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"https://wordpress.nexloc.com/wp-content/plugins/better-wp-security/core/img/mail/video_icon.png\" style=\"max-width: 61px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"61\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"https://ithemes.com/tutorial/category/ithemes-security/\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">Tutorials</a>\n											</h4>\n											<br>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Make the most of iThemes Security features with our <a href=\"https://ithemes.com/tutorial/category/ithemes-security/\">free iThemes Security tutorials</a>.</p>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td class=\"divider\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"450\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"450\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table class=\"divider-border\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;border-top-width: 1px;border-top-style: solid;border-top-color: #E8E8E8;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 1px;text-align: center;padding-bottom: 20px;width: 450px;\">\n											&nbsp;\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td class=\"footer-heading\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<h2 style=\"color: #002030;font-family: Helvetica;font-size: 26px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">Help &amp; Support</h2>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table class=\"container\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"https://wordpress.nexloc.com/wp-content/plugins/better-wp-security/core/img/mail/documentation_icon.png\" style=\"max-width: 62px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"62\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"http://ithemes.com/codex/page/IThemes_Security\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">Documentation</a>\n											</h4>\n											<br>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Read iThemes Security documentation and Frequently Asked Questions on <a href=\"http://ithemes.com/codex/page/IThemes_Security\">the Codex</a>.</p>\n										</td>\n									</tr>\n								</table>\n								<table class=\"container\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell container-cell-bottom\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"https://wordpress.nexloc.com/wp-content/plugins/better-wp-security/core/img/mail/support_icon.png\" style=\"max-width: 62px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"62\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"https://members.ithemes.com/panel/helpdesk.php\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">Support</a>\n												<span class=\"pro-flag\" style=\"background-color: #FFCC00;color: #000000;font-size: 10px;display: inline-block;padding: 3px;line-height: 1;position: relative;bottom: 10px;text-transform: uppercase;\">Pro</span>\n											</h4>\n											<br>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Pro customers can contact <a href=\"https://members.ithemes.com/panel/helpdesk.php\">iThemes Helpdesk</a> for help. Our support team answers questions Monday – Friday, 8am – 5pm (CST).</p>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td id=\"security-guide\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table id=\"security-guide-container\" class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;border: 1px solid #CDCECE;background-color: #D3E8E9;\">\n						<tr>\n							<td class=\"section-padding\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table class=\"container\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"104\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"section-padding-bottom\" align=\"left\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"https://wordpress.nexloc.com/wp-content/plugins/better-wp-security/core/img/mail/wp_security_book.png\" style=\"max-width: 84px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"84\" alt=\"\" align=\"center\">\n										</td>\n									</tr>\n								</table>\n								<table class=\"container\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"454\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #6C6C6C;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;padding-bottom: 20px;\">\n											<h4 style=\"color: #6C6C6C;font-family: Helvetica;font-size: 18px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: left;padding-bottom: 10px;\">Free WordPress Security Guide</h4>\n											Learn simple WordPress security tips — including 3 kinds of security your site needs and 4 best security practices for keeping your WordPress site safe with our <a href=\"https://ithemes.com/publishing/wordpress-security/\">free guide</a>.\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td id=\"footer-source-details\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 200%;text-align: center;padding-bottom: 0;padding-top: 60px;\">\n											<img class=\"preserve-ratio\" src=\"https://wordpress.nexloc.com/wp-content/plugins/better-wp-security/core/img/mail/footer_logo.png\" style=\"max-width: 50px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"50\" alt=\"\" align=\"center\"><br>\n											<br>\n											<span style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #666f72;font-family: Helvetica;font-size: 11px;line-height: 200%;text-align: center;text-decoration: none;font-weight: bold;\">\n												This email was generated by the iThemes Security plugin.<br>To unsubscribe from these updates, visit the <a href=\"https://wordpress.nexloc.com/wp-admin/admin.php?page=itsec\" style=\"color: #0084CB\">Settings page</a> in the iThemes Security plugin menu.\n											</span>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>					</table>\n				</td>\n			</tr>\n		</table>\n	</center>\n</body>\n\n</html>\n\";s:7:\"headers\";a:0:{}s:11:\"attachments\";a:0:{}s:24:\"phpmailer_exception_code\";i:2;}}}}', 'error', '2020-06-09 08:49:22', '2020-06-09 08:49:21', 25455032, 26464552, 'https://wordpress.nexloc.com/wp-admin/admin-ajax.php', 1, 1, '192.168.1.1');
INSERT INTO `wp_itsec_logs` (`id`, `parent_id`, `module`, `code`, `data`, `type`, `timestamp`, `init_timestamp`, `memory_current`, `memory_peak`, `url`, `blog_id`, `user_id`, `remote_ip`) VALUES
(3, 0, 'brute_force', 'invalid-login::user-1', 'a:5:{s:7:\"details\";a:2:{s:6:\"source\";s:12:\"wp-login.php\";s:20:\"authentication_types\";a:1:{i:0;s:21:\"username_and_password\";}}s:4:\"user\";O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:18:\"incorrect_password\";a:1:{i:0;s:244:\"<strong>Eroare</strong>: parola pe care ai introdus-o pentru numele utilizator <strong>Admin</strong> este incorectă. <a href=\"https://wordpress.nexloc.com/wp-login.php?action=lostpassword&itsec-hb-token=admin-login\">Ai uitat parola?</a>\";}}s:10:\"error_data\";a:0:{}}s:8:\"username\";s:11:\"Admin\";s:7:\"user_id\";i:1;s:6:\"SERVER\";a:23:{s:11:\"HTTP_ACCEPT\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:20:\"HTTP_ACCEPT_ENCODING\";s:17:\"gzip, deflate, br\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"en-US,en;q=0.9\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:14:\"CONTENT_LENGTH\";s:3:\"159\";s:9:\"HTTP_HOST\";s:20:\"wordpress.nexloc.com\";s:12:\"HTTP_REFERER\";s:68:\"https://wordpress.nexloc.com/wp-login.php?itsec-hb-token=admin-login\";s:15:\"HTTP_USER_AGENT\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:11:\"HTTP_ORIGIN\";s:28:\"https://wordpress.nexloc.com\";s:19:\"HTTP_SEC_FETCH_SITE\";s:11:\"same-origin\";s:19:\"HTTP_SEC_FETCH_MODE\";s:8:\"navigate\";s:19:\"HTTP_SEC_FETCH_USER\";s:2:\"?1\";s:19:\"HTTP_SEC_FETCH_DEST\";s:8:\"document\";s:12:\"HTTP_X_HTTPS\";s:1:\"1\";s:5:\"HTTPS\";s:2:\"on\";s:14:\"REQUEST_SCHEME\";s:5:\"https\";s:15:\"SCRIPT_FILENAME\";s:46:\"/home/wordpressnexloc/public_html/wp-login.php\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/2.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:18:\"REQUEST_TIME_FLOAT\";d:1591772135.1298000812530517578125;s:12:\"REQUEST_TIME\";i:1591772135;}}', 'notice', '2020-06-10 06:55:35', '2020-06-10 06:55:35', 21259448, 21472248, 'https://wordpress.nexloc.com/wp-login.php?itsec-hb-token=admin-login', 1, 1, '192.168.1.1'),
(4, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-06-10 09:18:51', '2020-06-10 09:18:50', 20474336, 20702000, 'wp-cron', 1, 0, '192.168.1.1'),
(5, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-06-11 11:29:52', '2020-06-11 11:29:52', 20953608, 21512048, 'wp-cron', 1, 0, '192.168.1.1'),
(6, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-06-13 00:08:22', '2020-06-13 00:08:21', 20957560, 21516000, 'wp-cron', 1, 0, '192.168.1.1'),
(7, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-06-18 12:00:22', '2020-06-18 12:00:21', 21634184, 21933120, 'wp-cron', 1, 0, '192.168.1.1'),
(8, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-06-18 12:00:22', '2020-06-18 12:00:16', 42930944, 42982264, 'http://wordpress.nexloc.com/favicon.ico', 1, 1, '192.168.1.1'),
(9, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2020-06-18 12:00:22', '2020-06-18 12:00:22', 21139208, 21190528, 'http://wordpress.nexloc.com/robots.txt', 1, 1, '192.168.1.1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_mutexes`
--

CREATE TABLE `wp_itsec_mutexes` (
  `mutex_id` bigint(20) UNSIGNED NOT NULL,
  `mutex_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mutex_expires` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_opaque_tokens`
--

CREATE TABLE `wp_itsec_opaque_tokens` (
  `token_id` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_hashed` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_temp`
--

CREATE TABLE `wp_itsec_temp` (
  `temp_id` bigint(20) UNSIGNED NOT NULL,
  `temp_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_itsec_temp`
--

INSERT INTO `wp_itsec_temp` (`temp_id`, `temp_type`, `temp_date`, `temp_date_gmt`, `temp_host`, `temp_user`, `temp_username`) VALUES
(1, 'brute_force', '2020-06-10 06:55:35', '2020-06-10 06:55:35', '192.168.1.1', NULL, NULL),
(2, 'brute_force', '2020-06-10 06:55:35', '2020-06-10 06:55:35', NULL, 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_user_groups`
--

CREATE TABLE `wp_itsec_user_groups` (
  `group_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_roles` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_canonical` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_users` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_min_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_itsec_user_groups`
--

INSERT INTO `wp_itsec_user_groups` (`group_id`, `group_label`, `group_roles`, `group_canonical`, `group_users`, `group_min_role`, `group_created_at`) VALUES
('0ffa5c1f-c4fe-4ee8-acd4-f69a7584d947', 'Contributor Users', '', 'contributor', '', '', '2020-06-09 08:43:30'),
('1660434d-14d0-48f4-8039-d932ef11596d', 'Administrator Users', '', 'administrator', '', '', '2020-06-09 08:43:30'),
('168a4a60-5233-45a9-bcd3-a4cefcefc637', 'Administrator Users', '', 'administrator', '', '', '2020-06-09 08:43:29'),
('1cf60508-a46e-495e-96e5-4d376f7a46f6', 'Editor Users', '', 'editor', '', '', '2020-06-09 08:43:30'),
('213da3ab-a40e-4547-996e-941bd9fa84b5', 'Subscriber Users', '', 'subscriber', '', '', '2020-06-09 08:43:29'),
('2a3b218d-fd95-4bbd-a9ab-66fa94650e3c', 'Contributor Users', '', 'contributor', '', '', '2020-06-09 08:43:29'),
('39f8dfed-acf6-49e1-8a40-78271394e60c', 'Author Users', '', 'author', '', '', '2020-06-09 08:43:30'),
('6398ff06-63d4-4594-8b57-b165d80c206a', 'Author Users', '', 'author', '', '', '2020-06-09 08:43:29'),
('8a1d6365-40c8-415f-b1ef-6913f961b5a7', 'Editor Users', '', 'editor', '', '', '2020-06-09 08:43:29'),
('d6f9ab4f-b539-4cd5-b708-f5c3ee5343a7', 'Subscriber Users', '', 'subscriber', '', '', '2020-06-09 08:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wordpress.nexloc.com', 'yes'),
(2, 'home', 'http://wordpress.nexloc.com', 'yes'),
(3, 'blogname', 'Wordpress', 'yes'),
(4, 'blogdescription', 'Un simplu sit WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'georgebejan@thecon.ro', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:41:\"better-wp-security/better-wp-security.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:4;s:35:\"cookie-law-info/cookie-law-info.php\";i:5;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:6;s:33:\"duplicate-post/duplicate-post.php\";i:7;s:22:\"font-awesome/index.php\";i:8;s:35:\"litespeed-cache/litespeed-cache.php\";i:9;s:27:\"woocommerce/woocommerce.php\";i:10;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:16:\"Despre acest sit\";s:4:\"text\";s:112:\"Acesta ar putea fi un loc bun în care să te prezinți și să-ți prezinți situl sau să incluzi ceva merite.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:12:\"Găsește-ne\";s:4:\"text\";s:164:\"<strong>Adresă</strong>\n123 Strada principală\nBucurești, B 7000\n\n<strong>Program</strong>\nLuni - Vineri: 9:00 - 17:00\nSâmbătă și Duminică: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:35:\"cookie-law-info/cookie-law-info.php\";s:25:\"uninstall_cookie_law_info\";s:41:\"better-wp-security/better-wp-security.php\";a:2:{i:0;s:10:\"ITSEC_Core\";i:1;s:16:\"handle_uninstall\";}s:35:\"litespeed-cache/litespeed-cache.php\";s:47:\"LiteSpeed\\Activation::uninstall_litespeed_cache\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1606824892', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:117:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpseo_manage_options\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(96, 'fresh_site', '1', 'yes'),
(97, 'WPLANG', 'ro_RO', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:21:{i:1592057091;a:1:{s:28:\"wp_1_wc_privacy_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:37:\"wp_1_wc_privacy_cleanup_cron_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1592057123;a:3:{s:27:\"litespeed_task_imgoptm_pull\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}s:19:\"litespeed_task_ccss\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}s:19:\"litespeed_task_lqip\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1592057127;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1592057693;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1592058327;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1592058333;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1592060689;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1592061925;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592072725;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1592074941;a:1:{s:15:\"itsec_cron_test\";a:1:{s:32:\"d085a7371a00cf88d32d74f8ec7f7889\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:1592074941;}}}}i:1592092800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592093693;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1592136893;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592137079;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592137528;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592137535;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592138506;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592484098;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1592568893;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1592569585;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(148, 'recently_activated', 'a:2:{s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";i:1591692829;s:29:\"acf-extended/acf-extended.php\";i:1591274645;}', 'yes'),
(156, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.9\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1591273111;s:7:\"version\";s:5:\"5.1.9\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(159, 'cfdb7_view_install_date', '2020-06-04 12:20:58', 'yes'),
(164, 'action_scheduler_hybrid_store_demarkation', '7', 'yes'),
(165, 'schema-ActionScheduler_StoreSchema', '3.0.1591273522', 'yes'),
(166, 'schema-ActionScheduler_LoggerSchema', '2.0.1591273522', 'yes'),
(170, 'woocommerce_store_address', '', 'yes'),
(171, 'woocommerce_store_address_2', '', 'yes'),
(172, 'woocommerce_store_city', '', 'yes'),
(173, 'woocommerce_default_country', 'GB', 'yes'),
(174, 'woocommerce_store_postcode', '', 'yes'),
(175, 'woocommerce_allowed_countries', 'all', 'yes'),
(176, 'woocommerce_all_except_countries', '', 'yes'),
(177, 'woocommerce_specific_allowed_countries', '', 'yes'),
(178, 'woocommerce_ship_to_countries', '', 'yes'),
(179, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(180, 'woocommerce_default_customer_address', 'base', 'yes'),
(181, 'woocommerce_calc_taxes', 'no', 'yes'),
(182, 'woocommerce_enable_coupons', 'yes', 'yes'),
(183, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(184, 'woocommerce_currency', 'GBP', 'yes'),
(185, 'woocommerce_currency_pos', 'left', 'yes'),
(186, 'woocommerce_price_thousand_sep', ',', 'yes'),
(187, 'woocommerce_price_decimal_sep', '.', 'yes'),
(188, 'woocommerce_price_num_decimals', '2', 'yes'),
(189, 'woocommerce_shop_page_id', '', 'yes'),
(190, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(191, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(192, 'woocommerce_placeholder_image', '7', 'yes'),
(193, 'woocommerce_weight_unit', 'kg', 'yes'),
(194, 'woocommerce_dimension_unit', 'cm', 'yes'),
(195, 'woocommerce_enable_reviews', 'yes', 'yes'),
(196, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(197, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(198, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(199, 'woocommerce_review_rating_required', 'yes', 'no'),
(200, 'woocommerce_manage_stock', 'yes', 'yes'),
(201, 'woocommerce_hold_stock_minutes', '60', 'no'),
(202, 'woocommerce_notify_low_stock', 'yes', 'no'),
(203, 'woocommerce_notify_no_stock', 'yes', 'no'),
(204, 'woocommerce_stock_email_recipient', 'georgebejan@thecon.ro', 'no'),
(205, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(206, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(207, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(208, 'woocommerce_stock_format', '', 'yes'),
(209, 'woocommerce_file_download_method', 'force', 'no'),
(210, 'woocommerce_downloads_require_login', 'no', 'no'),
(211, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(212, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(213, 'woocommerce_prices_include_tax', 'no', 'yes'),
(214, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(215, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(216, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(217, 'woocommerce_tax_classes', '', 'yes'),
(218, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(219, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(220, 'woocommerce_price_display_suffix', '', 'yes'),
(221, 'woocommerce_tax_total_display', 'itemized', 'no'),
(222, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(223, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(224, 'woocommerce_ship_to_destination', 'billing', 'no'),
(225, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(226, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(227, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(228, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(229, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(230, 'woocommerce_registration_generate_username', 'yes', 'no'),
(231, 'woocommerce_registration_generate_password', 'yes', 'no'),
(232, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(233, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(234, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(235, 'woocommerce_registration_privacy_policy_text', 'Datele personale vor fi folosite pentru a-ți susține experiența pe acest sit web, pentru a administra accesul la contul tău și pentru alte scopuri descrise în [privacy_policy].', 'yes'),
(236, 'woocommerce_checkout_privacy_policy_text', 'Datele personale vor fi folosite pentru a procesa comanda, pentru a-ți susține experiența pe acest sit web și pentru alte scopuri descrise în [privacy_policy].', 'yes'),
(237, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(238, 'woocommerce_trash_pending_orders', '', 'no'),
(239, 'woocommerce_trash_failed_orders', '', 'no'),
(240, 'woocommerce_trash_cancelled_orders', '', 'no'),
(241, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(242, 'woocommerce_email_from_name', 'Wordpress', 'no'),
(243, 'woocommerce_email_from_address', 'georgebejan@thecon.ro', 'no'),
(244, 'woocommerce_email_header_image', '', 'no'),
(245, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(246, 'woocommerce_email_base_color', '#96588a', 'no'),
(247, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(248, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(249, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(250, 'woocommerce_cart_page_id', '', 'no'),
(251, 'woocommerce_checkout_page_id', '', 'no'),
(252, 'woocommerce_myaccount_page_id', '', 'no'),
(253, 'woocommerce_terms_page_id', '', 'no'),
(254, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(255, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(256, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(257, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(258, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(259, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(260, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(261, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(262, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(263, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(264, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(265, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(266, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(267, 'woocommerce_api_enabled', 'no', 'yes'),
(268, 'woocommerce_allow_tracking', 'no', 'no'),
(269, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(270, 'woocommerce_single_image_width', '600', 'yes'),
(271, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(272, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(273, 'woocommerce_demo_store', 'no', 'no'),
(274, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"/produs\";s:13:\"category_base\";s:16:\"categorie-produs\";s:8:\"tag_base\";s:15:\"eticheta-produs\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(275, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(276, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(277, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(278, 'product_cat_children', 'a:0:{}', 'yes'),
(279, 'default_product_cat', '15', 'yes'),
(280, 'woocommerce_admin_notices', 'a:1:{i:0;s:7:\"install\";}', 'yes'),
(283, 'woocommerce_version', '4.2.0', 'yes'),
(284, 'woocommerce_db_version', '4.2.0', 'yes'),
(288, 'action_scheduler_lock_async-request-runner', '1592057152', 'yes'),
(289, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"2MeJjNamyJUMopTKuY6REaZ3mSj1L0jp\";}', 'yes'),
(290, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(291, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(298, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'woocommerce_admin_version', '1.2.3', 'yes'),
(306, 'woocommerce_admin_install_timestamp', '1591273528', 'yes'),
(310, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(311, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(313, '_transient_timeout_wc_low_stock_count', '1593865534', 'no'),
(314, '_transient_wc_low_stock_count', '0', 'no'),
(315, '_transient_timeout_wc_outofstock_count', '1593865534', 'no'),
(316, '_transient_wc_outofstock_count', '0', 'no'),
(350, '_transient_woocommerce_reports-transient-version', '1591274123', 'yes'),
(388, 'CookieLawInfo-0.9', 'a:78:{s:18:\"animate_speed_hide\";s:3:\"500\";s:18:\"animate_speed_show\";s:3:\"500\";s:10:\"background\";s:4:\"#FFF\";s:14:\"background_url\";s:0:\"\";s:6:\"border\";s:9:\"#b1a6a6c2\";s:9:\"border_on\";b:1;s:9:\"bar_style\";s:0:\"\";s:13:\"button_1_text\";s:6:\"ACCEPT\";s:12:\"button_1_url\";s:1:\"#\";s:15:\"button_1_action\";s:27:\"#cookie_action_close_header\";s:20:\"button_1_link_colour\";s:4:\"#fff\";s:16:\"button_1_new_win\";b:0;s:18:\"button_1_as_button\";b:1;s:22:\"button_1_button_colour\";s:4:\"#000\";s:20:\"button_1_button_size\";s:6:\"medium\";s:14:\"button_1_style\";s:0:\"\";s:13:\"button_2_text\";s:9:\"Read More\";s:12:\"button_2_url\";s:28:\"https://wordpress.nexloc.com\";s:15:\"button_2_action\";s:17:\"CONSTANT_OPEN_URL\";s:20:\"button_2_link_colour\";s:4:\"#444\";s:16:\"button_2_new_win\";b:1;s:18:\"button_2_as_button\";b:0;s:22:\"button_2_button_colour\";s:4:\"#333\";s:20:\"button_2_button_size\";s:6:\"medium\";s:17:\"button_2_url_type\";s:3:\"url\";s:13:\"button_2_page\";s:1:\"3\";s:16:\"button_2_hidebar\";b:0;s:14:\"button_2_style\";s:0:\"\";s:13:\"button_3_text\";s:6:\"Reject\";s:12:\"button_3_url\";s:1:\"#\";s:15:\"button_3_action\";s:34:\"#cookie_action_close_header_reject\";s:20:\"button_3_link_colour\";s:4:\"#fff\";s:16:\"button_3_new_win\";b:0;s:18:\"button_3_as_button\";b:1;s:22:\"button_3_button_colour\";s:4:\"#000\";s:20:\"button_3_button_size\";s:6:\"medium\";s:14:\"button_3_style\";s:0:\"\";s:13:\"button_4_text\";s:15:\"Cookie settings\";s:12:\"button_4_url\";s:1:\"#\";s:15:\"button_4_action\";s:23:\"#cookie_action_settings\";s:20:\"button_4_link_colour\";s:7:\"#62a329\";s:16:\"button_4_new_win\";b:0;s:18:\"button_4_as_button\";b:0;s:22:\"button_4_button_colour\";s:4:\"#000\";s:20:\"button_4_button_size\";s:6:\"medium\";s:14:\"button_4_style\";s:0:\"\";s:11:\"font_family\";s:7:\"inherit\";s:10:\"header_fix\";b:0;s:5:\"is_on\";b:1;s:8:\"is_eu_on\";b:0;s:10:\"logging_on\";b:0;s:19:\"notify_animate_hide\";b:1;s:19:\"notify_animate_show\";b:0;s:13:\"notify_div_id\";s:20:\"#cookie-law-info-bar\";s:26:\"notify_position_horizontal\";s:5:\"right\";s:24:\"notify_position_vertical\";s:6:\"bottom\";s:14:\"notify_message\";s:199:\"This website uses cookies to improve your experience. We\\\'ll assume you\\\'re ok with this, but you can opt-out if you wish. [cookie_settings margin=\\\"5px 20px 5px 20px\\\"][cookie_button margin=\\\"5px\\\"]\";s:12:\"scroll_close\";b:0;s:19:\"scroll_close_reload\";b:0;s:19:\"accept_close_reload\";b:0;s:19:\"reject_close_reload\";b:0;s:20:\"showagain_background\";s:4:\"#fff\";s:16:\"showagain_border\";s:4:\"#000\";s:14:\"showagain_text\";s:24:\"Privacy & Cookies Policy\";s:16:\"showagain_div_id\";s:22:\"#cookie-law-info-again\";s:13:\"showagain_tab\";b:1;s:20:\"showagain_x_position\";s:5:\"100px\";s:4:\"text\";s:4:\"#000\";s:17:\"use_colour_picker\";b:1;s:12:\"show_once_yn\";b:0;s:9:\"show_once\";s:5:\"10000\";s:9:\"is_GMT_on\";b:1;s:8:\"as_popup\";b:0;s:13:\"popup_overlay\";b:1;s:16:\"bar_heading_text\";s:0:\"\";s:13:\"cookie_bar_as\";s:6:\"banner\";s:24:\"popup_showagain_position\";s:12:\"bottom-right\";s:15:\"widget_position\";s:4:\"left\";}', 'yes'),
(389, 'cookielawinfo_privacy_overview_content_settings', 'a:2:{s:24:\"privacy_overview_content\";s:571:\"This website uses cookies to improve your experience while you navigate through the website. Out of these cookies, the cookies that are categorized as necessary are stored on your browser as they are essential for the working of basic functionalities of the website. We also use third-party cookies that help us analyze and understand how you use this website. These cookies will be stored in your browser only with your consent. You also have the option to opt-out of these cookies. But opting out of some of these cookies may have an effect on your browsing experience.\";s:22:\"privacy_overview_title\";s:16:\"Privacy Overview\";}', 'yes'),
(390, 'cookielawinfo_necessary_settings', 'a:1:{s:21:\"necessary_description\";s:242:\"Necessary cookies are absolutely essential for the website to function properly. This category only includes cookies that ensures basic functionalities and security features of the website. These cookies do not store any personal information.\";}', 'yes'),
(391, 'cookielawinfo_thirdparty_settings', 'a:5:{s:19:\"thirdparty_on_field\";b:1;s:25:\"third_party_default_state\";b:1;s:22:\"thirdparty_description\";s:302:\"Any cookies that may not be particularly necessary for the website to function and is used specifically to collect user personal data via analytics, ads, other embedded contents are termed as non-necessary cookies. It is mandatory to procure user consent prior to running these cookies on your website.\";s:23:\"thirdparty_head_section\";s:0:\"\";s:23:\"thirdparty_body_section\";s:0:\"\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(412, '_site_transient_font-awesome-releases', 'a:2:{s:12:\"refreshed_at\";i:1591274473;s:4:\"data\";a:2:{s:6:\"latest\";s:6:\"5.13.0\";s:8:\"releases\";a:36:{s:5:\"5.0.1\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:12:{s:11:\"css/all.css\";s:71:\"sha384-VVoO3UHXsmXwXvf1kJx2jV3b1LbOfTqKL46DdeLG8z4pImkQ4GAP9GMy+MxHMDYG\";s:14:\"css/brands.css\";s:71:\"sha384-JT52EiskN0hkvVxJA8d2wg8W/tLxrC02M4u5+YAezNnBlY/N2yy3X51pKC1QaPkw\";s:19:\"css/fontawesome.css\";s:71:\"sha384-7mC9VNNEUg5vt0kVQGblkna/29L8CpTJ5fkpo0nlmTbfCoDXyuK/gPO3wx8bglOz\";s:15:\"css/regular.css\";s:71:\"sha384-JZ2w5NHrKZS6hqVAVlhUO3eHPVzjDZqOpWBZZ6opcmMwVjN7uoagKSSftrq8F0pn\";s:13:\"css/solid.css\";s:71:\"sha384-TQW9cJIp+U8M7mByg5ZKUQoIxj0ac36aOpNzqQ04HpwyrJivS38EQsKHO2rR5eit\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-X1ZQAmDHBeo7eaAJwWMyyA3mva9mMK10CpRFvX8PejR0XIUjwvGDqr2TwJqwbH9S\";s:9:\"js/all.js\";s:71:\"sha384-2CD5KZ3lSO1FK9XJ2hsLsEPy5/TBISgKIk2NSEcS03GbEnWEfhzd0x6DBIkqgPN1\";s:12:\"js/brands.js\";s:71:\"sha384-i3UPn8g8uJGiS6R/++68nHyfYAnr/lE/biTuWYbya2dONccicnZZPlAH6P8EWf28\";s:17:\"js/fontawesome.js\";s:71:\"sha384-tqpP2rDLsdWkeBrG3Jachyp0yzl/pmhnsdV88ySUFZATuziAnHWsHRSS97l5D9jn\";s:13:\"js/regular.js\";s:71:\"sha384-hXqI+wajk6jJu2DXwf2oqBg6q5+HqXM5yz9smX94pDjiLzH81gAuVtjter66i1Ct\";s:11:\"js/solid.js\";s:71:\"sha384-kbPfTyGdGugnvSKEBJCd6+vYipOQ6a+2np5O4Ty3sW7tgI0MpwPyAh+QwUpMujV9\";s:14:\"js/v4-shims.js\";s:71:\"sha384-BRge2B8T+0rmvB/KszFfdQ0PDvPnhV2J80JMKrnq21Fq6tHeKFhSIrdoroXvk7eB\";}s:3:\"pro\";a:0:{}}}s:5:\"5.0.2\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:12:{s:11:\"css/all.css\";s:71:\"sha384-bJB2Wn8ZuuMwYA12t6nmPqVTqT64ruKTAWqdxs/Oal3vexA7RPAo3FtVU5hIil2E\";s:14:\"css/brands.css\";s:71:\"sha384-F8vNf2eNIHep58ofQztLhhWsZXaTzzfZRqFfWmh7Cup7LqrF0HCtB6UCAIIkZZYZ\";s:19:\"css/fontawesome.css\";s:71:\"sha384-CTTGZltCsihOiEwOCbT7p1lhij8kYk6lapCladmNzxj4yXj/AKp6q3+CRoNN3UCG\";s:15:\"css/regular.css\";s:71:\"sha384-GtLUznQ3nMgus15JP1pAE2UH9HAQi8gjQTNfIT+Gq6zFPeeq3y+Xtxt5HUBFF0YO\";s:13:\"css/solid.css\";s:71:\"sha384-WEKepgUDOaHRK2/r+qA7W/Srd+36IIOmBm/+wm9aSz6acYC0LkyM9UJElLVNy95T\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-sV6Qj6KRPF7HrXfo5NK0evVt+YbNxUuGZU2udYKDAxwxPVTuEE6lofcZJhRMK4WT\";s:9:\"js/all.js\";s:71:\"sha384-xiGKJ+4CP2p2WkTifyjHDeZVAg1zBrnJV8LU33N7J+5BWp1biPcSpEJJY7hFiRLn\";s:12:\"js/brands.js\";s:71:\"sha384-V+scQ15NnQuKVajRBsSery7bV87d0xDAoCs4pB8ZcwW74+zzW5CkgRmIFOYw8kKX\";s:17:\"js/fontawesome.js\";s:71:\"sha384-CxMnuVDquTXcsJnW1rAfSm4uzGr12HENF1oe+JRZm4jcQDerJ6VeA1XLvAso396r\";s:13:\"js/regular.js\";s:71:\"sha384-ihKlq3j4PocIYMPkNra+ieEVsLuFzj4rp1yjn3jq+La7r4G9kf9COpWfOI8SGapM\";s:11:\"js/solid.js\";s:71:\"sha384-KDEuZV2OBU0Q264kBX2Idu9gYr5z/fQrtvUsKfuKGEDkDxV0GBVN/qi3QoLZPmbJ\";s:14:\"js/v4-shims.js\";s:71:\"sha384-0nloDHslShcnKvH94Zv8nb0zPlzTFCzfZGx9YxR2ngUWs9HXXHVx1PUQw0u9/7LE\";}s:3:\"pro\";a:0:{}}}s:5:\"5.0.3\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:12:{s:11:\"css/all.css\";s:71:\"sha384-KFTzeUQSHjcfuC8qqdFm+laWVqpkucx/3uXo41hhKQzUEtbNnNSk8KEEBZ+2lEQy\";s:14:\"css/brands.css\";s:71:\"sha384-J6h7hpR0mfr79Ck/ZfDrhN14FnkbkLbd+mm0yTw5spSpK08yOK/AB9IRR/Dcg8EJ\";s:19:\"css/fontawesome.css\";s:71:\"sha384-l2oTZy4pLseT/J6oW0mwsjKPhjpTctOfU191uVonzezZiqw9PPcz4AMKsIAeyR4P\";s:15:\"css/regular.css\";s:71:\"sha384-cDXlx+8npD3wa2ahyeSZvsi9VlRrMmJVIB1rpK7Ftyq4cppWM9d2mBhrlOqYBljt\";s:13:\"css/solid.css\";s:71:\"sha384-ioYc/tyAAvPTKdlEWH/BDO/Fn0RGAWisNzyfZNt74mHfA6UPN2tzjD6Nm4ieQfBR\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-bnoXyQHIAXdkrtQTtvuajtPgmWqHQ8657dQ4vzySapygDMqzijBpEq96AwgX2u4N\";s:9:\"js/all.js\";s:71:\"sha384-4OPaVeLgwRHdGJplmRGxGcoGYwxBAdR8Qr9z/Av7blRYPlRIPtjTygdtpQlD1HHv\";s:12:\"js/brands.js\";s:71:\"sha384-68dqWCRgViK/UsBTW5vGfntS6GdBDT5D4KWUBXTf6IkF2NFFD+X/0QNs0FZaIELt\";s:17:\"js/fontawesome.js\";s:71:\"sha384-sBtO3o3oG61AtAKrg74kfk50JP0YHcRTwOXgTeUobbJJBgYiCcmtkh784fmHww23\";s:13:\"js/regular.js\";s:71:\"sha384-J0ggktpCvzBHSxd/a8EBQgQDIWBtASK5rhHMvGWuR/UyjuPgX0iCAcb3OlfhvlQz\";s:11:\"js/solid.js\";s:71:\"sha384-DX1/9hggbc1yKVl40n2dNF9OzLf9ZPwZm87WzIW+FinkgjSq18PXpUxOL4I0iS1+\";s:14:\"js/v4-shims.js\";s:71:\"sha384-kysXtDCmCTYxM55rHL+9xPu6+Inoi3ZzZHvcxkXs+iPj5nymJKlauQdXyzubyD0b\";}s:3:\"pro\";a:0:{}}}s:5:\"5.0.4\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:12:{s:11:\"css/all.css\";s:71:\"sha384-DmABxgPhJN5jlTwituIyzIUk6oqyzf3+XuP7q3VfcWA2unxgim7OSSZKKf0KSsnh\";s:14:\"css/brands.css\";s:71:\"sha384-1beec9tTZuu+KrTudmvRnGpK81r78DKCAXdphCvdG+PR+n/WCczsYPqTBTvYsM7z\";s:19:\"css/fontawesome.css\";s:71:\"sha384-xdTUmhbcetyLRVL4PAriRajOve+/5pjOiy5sJABnhXMcRMVc9HI9s2KmOCjjDK/P\";s:15:\"css/regular.css\";s:71:\"sha384-nM5tBytXTc1HDZ/A3My2gNT2TxLk/M/5yFi0QrOxaZjBi7QpKUfA2QqT+fcSxSlg\";s:13:\"css/solid.css\";s:71:\"sha384-g2aKxiZcFezoVOq4MsjaxuBbSxSlXD/NRQ5GaPLfvCtcTLgP3fYZKKAGxCM/wMfe\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-MCR8qGTbdyK+hklwz1eKgGiAjT57F5HEJMs/uHRAwZ6GI5602TyGI89FyrbUwiIc\";s:9:\"js/all.js\";s:71:\"sha384-nVi8MaibAtVMFZb4R1zHUW/DsTJpG/YwPknbGABVOgk5s6Vhopl6XQD/pTCG/DKB\";s:12:\"js/brands.js\";s:71:\"sha384-dl3ONr32uA3YqpqKWzhXLs5k1YbKOn3dwiMbEP1S/XQMa3LPRwvJrhW7+lomL/uc\";s:17:\"js/fontawesome.js\";s:71:\"sha384-l7FyBM+wFIWpfmy8RYkWgEu/Me6Hrz98ijLu4nP3PkGbTtTCvtHB5ktI8hLEgEG3\";s:13:\"js/regular.js\";s:71:\"sha384-lwwoO5Gg19TptbILrLBjV28EVJ9RW3tD3cGyjCRn3OY9IuLua/YRlE47btZIXfMv\";s:11:\"js/solid.js\";s:71:\"sha384-4KkAk2UXMS9Xl3FoAAN43VJxRZ/emjElCz60xUTegPOZlbPLZGylvor2v7wQ0JNb\";s:14:\"js/v4-shims.js\";s:71:\"sha384-yfrMPoFcXUzdvECrvYRYE7wlxouXxjRSge5x6BlPPOb38tW4n0e8EW79RGU7VY0R\";}s:3:\"pro\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-1RxicL8bcQJWgpr/clvtGVG7DVFJvDX/DVsJsbjKhXtdo8r5WVZQqB9AHTNPr08A\";s:14:\"css/brands.css\";s:71:\"sha384-sFwP5Zsnp6I4zQxUMPHvv8Bk16eEzU0YhaNbMCftDHPKDD+BR8WdXAHKL4xpipII\";s:19:\"css/fontawesome.css\";s:71:\"sha384-VFi8UvBDvM8muKO8ogMXi2j8vdJiu8hq1uxpX/NS8BsftBiJpheM5AuhFH1dvURx\";s:13:\"css/light.css\";s:71:\"sha384-4FGoKudkcpRXgx5UNFa5TxzaHUhnvCGFDeZKncEn9KJx/l07kcid3VbpwajrvrFW\";s:15:\"css/regular.css\";s:71:\"sha384-eyjlqgvgpHiWM0GoL4/hsTh22piTKmMTM+sfJYacddG2n9AEubqQB/w4CPJK1/1b\";s:13:\"css/solid.css\";s:71:\"sha384-TlWtvBj4TXNlpJC5Qq4aHel0R/dywVcP/6eOFC0qptQ71WWSxJCvuTajjGb1duS9\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-rHay3RzsgCtbjvDmBLThu6ESXlU4Al5STjlHSpNygnbeyt04OP1uKZVXB2Zy16+T\";s:9:\"js/all.js\";s:71:\"sha384-vV0064GQjt+TcoZxVPm/f6vyAivSNofFvOHKLWxcDl784Dzm9W4BBpoTvUG4vi5a\";s:12:\"js/brands.js\";s:71:\"sha384-/877azmwW/YhoBsPeM9dh61dNr5XGbuk24lyjPbFWyrPaZPyU2oxgOY6PE1OH4z4\";s:17:\"js/fontawesome.js\";s:71:\"sha384-7L9/YJQEf9kLPc6sdtoVIsuBNxCVi4OmHPcszcY685IJIcB52hgYoL1OiwTawJS/\";s:11:\"js/light.js\";s:71:\"sha384-iXxa9ExuZ0Fi2N2VO/buuWuAgYIUXNtOaJiKLa40Bjt43KJpzJdhg2TBHyBVqCPh\";s:13:\"js/regular.js\";s:71:\"sha384-YzSStfq1m16y1v5M97ViNRpiQUCVpagVVOkqlmww8otyjFkY6EXT4dShlKNuxRDu\";s:11:\"js/solid.js\";s:71:\"sha384-WJDZ/GI6pz1VoELs6i44T3f00fguksrLXIx3LXHdlaAzmOvX/mTK5j+qzHJdKejC\";s:14:\"js/v4-shims.js\";s:71:\"sha384-8XZ16R7aSGin4NRuv6gn5xfbsvad5H8LR41g48iduwkfZEqDgXlvUjkJKgxqZUiW\";}}}s:5:\"5.0.6\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:12:{s:11:\"css/all.css\";s:71:\"sha384-VY3F8aCQDLImi4L+tPX4XjtiJwXDwwyXNbkH7SHts0Jlo85t1R15MlXVBKLNx+dj\";s:14:\"css/brands.css\";s:71:\"sha384-rK0EPNdv8UCeRNPzX+96ARRlf9hZM+OukGceDTdbPH30DYcSI1x5QyBU7d2I2kHX\";s:19:\"css/fontawesome.css\";s:71:\"sha384-dbkYY2NmVwxaFrr4gq04oVh6w39ovmevsgD80Il1Od3hwpgREqyPb3XqbpaSwN4x\";s:15:\"css/regular.css\";s:71:\"sha384-HGbVnizaFNw8zW+vIol9xMwBFWdV7/k61278Zo1bnMy9dLmjv48D7rtpgYRTe5Pd\";s:13:\"css/solid.css\";s:71:\"sha384-GfC9nfESTZkjCPFbevBVig3FTd6wkjRRYMtj+qFgK8mMBvGIje2rrALgiBy6pwRL\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-U2b24h7gWqOYespg+vI5yiIn4ZYlTevT0N96xkGrw7ktP1gg9XwqEslsdTLJdlGg\";s:9:\"js/all.js\";s:71:\"sha384-0AJY8UERsBUKdWcyF3o2kisLKeIo6G4Tbd8Y6fbyw6qYmn4WBuqcvxokp8m2UzSD\";s:12:\"js/brands.js\";s:71:\"sha384-4iSpDug9fizYiQRPpPafdAh5NaF8yzNMjOvu3veWgaFm0iIo8y4vUi7f3Yyz5WP1\";s:17:\"js/fontawesome.js\";s:71:\"sha384-rttr/ldR2uHigckjTCjMDe47ySeFVaL3Q7xUkJZir56u8Z8h/XnHJXHocgyfb25F\";s:13:\"js/regular.js\";s:71:\"sha384-G375DXNEVfALvsggywPWDYrRxNOvXaCYt/kiq/GXmbaDW8/B0XtbC8iuLpXXm1jF\";s:11:\"js/solid.js\";s:71:\"sha384-U0ZJ7q5xbT8hEoRqj61HzpvsqNOQ8bsHY2VqSRPqGOzjHXmmV70Aw+DBC/PT00p4\";s:14:\"js/v4-shims.js\";s:71:\"sha384-L8zntmMOcCbOxXiL5Rjn6ubB7KunZiQ8U3bb9x6FFTGDEvVEESW9n+x49jm34K3W\";}s:3:\"pro\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-ldFHeX3xCFvM4uf7m0mCMIoCPVwM71jopwqLZRldf+ojynoGVSxDiphfScLukkwO\";s:14:\"css/brands.css\";s:71:\"sha384-Ks7IvHjmJ4FIFxhK4iNrtW0rAVo1DlCYpe/nDsK8CnU+yactd38YiNE1GT018WPg\";s:19:\"css/fontawesome.css\";s:71:\"sha384-sATKZbJwxaEIU3unIoL1VMbIyrNNh7PlgnaiWlicWXeRA7qdnzfFzMP9AaN2wfTU\";s:13:\"css/light.css\";s:71:\"sha384-YWWfxaKIDrbFXuVQnpxASJDHmFl2K5f2vDgrcROb+rYycoqcQVdMlfu3U38boTg/\";s:15:\"css/regular.css\";s:71:\"sha384-CydLcYoDSbudHX/6hygyQD4jBMPsv91d/RwdtH1qxI79KG8kII/OzxKDwsswywA4\";s:13:\"css/solid.css\";s:71:\"sha384-uBARwTxpZ7FB08kQlCOS/dUaN3TrGGcHthrXYIhZBpdq7YtUdVDM1sAUH9NIozMl\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-BptPo+4C0N+fnMTnfw7ddW/zYUJhuNEe7edve8UrMbs+fCpfDJvJcC/lpa5Nvaky\";s:9:\"js/all.js\";s:71:\"sha384-FrB6Se1Wkxlx66xA4rPuOoOolLyQt5B1uptDmtLJSIVRJDbNkmE3QOLipnMuAbUW\";s:12:\"js/brands.js\";s:71:\"sha384-G12tjfNd/W8L4IrE5+f13LUbpzVowwhNDv+WNecvxjbaGN9bbSY7epBOqUlRqXnq\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ln5PcCmuH8v+AF9nt+HkM2GfXjsn1CtVc0n+ciM8+oe3nwGyPCceDVva7bUjNfo0\";s:11:\"js/light.js\";s:71:\"sha384-jzS22FYPy68IBBet2IRM5aQDOXjg9X1g+drXIVonDtyqGFCtUA0YIdgHdvCCX/fD\";s:13:\"js/regular.js\";s:71:\"sha384-M8TFIPAJNl8UIC8OP6GFcIE0SHkGN4zjwwjz+BBTz60XhNegOrZmjNtTQNKifmXX\";s:11:\"js/solid.js\";s:71:\"sha384-R/e3QvpS9m8HcN9b9l6nNo678ekTXL31kFY/XtRHSjrihDX8A2DF8HaXhdlAtzMx\";s:14:\"js/v4-shims.js\";s:71:\"sha384-X9eLyweB0LOTEGCwMARo9+zibrXQYmBMSrhFk4ncpT/WYnPIcpTg0IgBFDgzuPwL\";}}}s:5:\"5.0.8\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:12:{s:11:\"css/all.css\";s:71:\"sha384-3AB7yXWz4OeoZcPbieVW64vVXEwADiYyAEhwilzWsLw+9FgqpyjjStpPnpBO8o8S\";s:14:\"css/brands.css\";s:71:\"sha384-IiIL1/ODJBRTrDTFk/pW8j0DUI5/z9m1KYsTm/RjZTNV8RHLGZXkUDwgRRbbQ+Jh\";s:19:\"css/fontawesome.css\";s:71:\"sha384-q3jl8XQu1OpdLgGFvNRnPdj5VIlCvgsDQTQB6owSOHWlAurxul7f+JpUOVdAiJ5P\";s:15:\"css/regular.css\";s:71:\"sha384-A/oR8MwZKeyJS+Y0tLZ16QIyje/AmPduwrvjeH6NLiLsp4cdE4uRJl8zobWXBm4u\";s:13:\"css/solid.css\";s:71:\"sha384-v2Tw72dyUXeU3y4aM2Y0tBJQkGfplr39mxZqlTBDUZAb9BGoC40+rdFCG0m10lXk\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-TGBI4yK0MJz2ga16RLBBt4xT4aoPMPmRYhfu1Kl5IJ0gsLyOBIKHEb49BtoO+lPS\";s:9:\"js/all.js\";s:71:\"sha384-SlE991lGASHoBfWbelyBPLsUlwY1GwNDJo3jSJO04KZ33K2bwfV9YBauFfnzvynJ\";s:12:\"js/brands.js\";s:71:\"sha384-sCI3dTBIJuqT6AwL++zH7qL8ZdKaHpxU43dDt9SyOzimtQ9eyRhkG3B7KMl6AO19\";s:17:\"js/fontawesome.js\";s:71:\"sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c\";s:13:\"js/regular.js\";s:71:\"sha384-t7yHmUlwFrLxHXNLstawVRBMeSLcXTbQ5hsd0ifzwGtN7ZF7RZ8ppM7Ldinuoiif\";s:11:\"js/solid.js\";s:71:\"sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l\";s:14:\"js/v4-shims.js\";s:71:\"sha384-4CnzNxEP5RK316IYY2+W4hc05uJdfd+p9iNVeNG9Ws3Qxf5tKolysO9wu/8rloj2\";}s:3:\"pro\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-OGsxOZf8qnUumoWWSmTqXMPSNI9URpNYN35fXDb5Cv5jT6OR673ah1e5q+9xKTq6\";s:14:\"css/brands.css\";s:71:\"sha384-VRONz34zTLl4P+DLYyJ8kP8C3tB1PGtqL5p8nBAvHuoc1u32bR3RHixrjffD8Fly\";s:19:\"css/fontawesome.css\";s:71:\"sha384-+5VkSw5C1wIu2iUZEfX77QSYRb5fhjmEsRn8u4r9Ma8mvu/GvTag4LDSEAw7RjXl\";s:13:\"css/light.css\";s:71:\"sha384-shmfBA2CRxp88gq8NcvWbEN8KExYU4uvQUBEG36BStGZ5k91nGKE4wDvvWvuimbu\";s:15:\"css/regular.css\";s:71:\"sha384-0w6MzzKHIB9cUlfWSmSp1Pj6XqGGDseWSMz1Yppk3UOc1dhYhpFx1AuCkMBECEvC\";s:13:\"css/solid.css\";s:71:\"sha384-+iHwwKZGTdlVFbv4fsKmLkogfdKlp47zQGkSMDN3ANc8kXjyKudKvQwinI5VH+2C\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-b2wDmqWyAwmI2rS5ut5UweBS1V32L/k1+2Oo7eCaHdXOS/1bFwC8AKevTI6N28LN\";s:9:\"js/all.js\";s:71:\"sha384-816IUmmhAwCMonQiPZBO/PTgzgsjHtpb78rpsLzldhb4HZjFzBl06Z3eu4ZuwHTz\";s:12:\"js/brands.js\";s:71:\"sha384-gJijC/2qM/p3zm2wHECHX1OMLdzlu61sNp7YfmFQxo+OyT9hO1orX7MmnHhaoXQ4\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ht3fAeBiX/rVmKVyMwONAIIt0aRoPzZgq1FzdRgR9zFo+Kcd8YDwUbFlTItfaYW4\";s:11:\"js/light.js\";s:71:\"sha384-mfSnp84URDGC1t+cg63LgVKwEs63ulRUpjNneyDZMGMAE9ZKUNZ85rMBMHucGLYP\";s:13:\"js/regular.js\";s:71:\"sha384-SIp/+zr0hyfSVIQPkAwB/L1h4fph6T3CmU4mE7IFtGJlgwoCko0Bye/1J0sjyh4v\";s:11:\"js/solid.js\";s:71:\"sha384-jTxqWCb7UqRDQDd2Nkuh5BkHe9k+ElbFLa3NaJfid5kBK/+cVktzVRXrw0isFWxf\";s:14:\"js/v4-shims.js\";s:71:\"sha384-w/sFNq23wbOXJOUpFyISABLXk9tA4Z8r9hl80er2mobEwgS7VXXYDANaWyrCWe3/\";}}}s:5:\"5.0.9\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:12:{s:11:\"css/all.css\";s:71:\"sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1\";s:14:\"css/brands.css\";s:71:\"sha384-ATC/oZittI09GYIoscTZKDdBr/kI3lCwzw3oBMnOYCPVNJ4i7elNlCxSgLfdfFbl\";s:19:\"css/fontawesome.css\";s:71:\"sha384-Lyz+8VfV0lv38W729WFAmn77iH5OSroyONnUva4+gYaQTic3iI2fnUKtDSpbVf0J\";s:15:\"css/regular.css\";s:71:\"sha384-seionXF7gEANg+LFxIOw3+igh1ZAWgHpNR8SvE64G/Zgmjd918dTL55e8hOy7P4T\";s:13:\"css/solid.css\";s:71:\"sha384-29Ax2Ao1SMo9Pz5CxU1KMYy+aRLHmOu6hJKgWiViCYpz3f9egAJNwjnKGgr+BXDN\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-Hl6tZnMfNiJHYyFxpmnRV8+pziARxY3X/4XWfFXldG7sdkkLv+Od2Gpc57P7C1g6\";s:9:\"js/all.js\";s:71:\"sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl\";s:12:\"js/brands.js\";s:71:\"sha384-qJKAzpOXfvmSjzbmsEtlYziSrpVjh5ROPNqb8UZ60myWy7rjTObnarseSKotmJIx\";s:17:\"js/fontawesome.js\";s:71:\"sha384-2IUdwouOFWauLdwTuAyHeMMRFfeyy4vqYNjodih+28v2ReC+8j+sLF9cK339k5hY\";s:13:\"js/regular.js\";s:71:\"sha384-BazKgf1FxrIbS1eyw7mhcLSSSD1IOsynTzzleWArWaBKoA8jItTB5QR+40+4tJT1\";s:11:\"js/solid.js\";s:71:\"sha384-P4tSluxIpPk9wNy8WSD8wJDvA8YZIkC6AQ+BfAFLXcUZIPQGu4Ifv4Kqq+i2XzrM\";s:14:\"js/v4-shims.js\";s:71:\"sha384-9f5gaI9TkuYhi5O/inzfdOXx2nkIhDsLtXqBNmtY6/c5PoqXfd0U2DAjqQVSCXQh\";}s:3:\"pro\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-L+XK540vkePe55E7PAfByfvW0XpsyYpsifTpgh/w8WvH6asVg/c2zqp0EfZfZTbF\";s:14:\"css/brands.css\";s:71:\"sha384-+LMmZxgyldhNCY6nei3oAWJjHbpbROtVb+f5Ux/nahA+Xjm3wcNdu7zyB39Yj38S\";s:19:\"css/fontawesome.css\";s:71:\"sha384-31qpW3hduWGiGey9tdI9rBBxiog5pxZbPiAlD6YKIgy0P2V1meprKhvpk+xJDkMw\";s:13:\"css/light.css\";s:71:\"sha384-wD8IB6DSQidXyIWfwBrsFwTaHTQDsgzyeqzhd1jNdBZHvGSa7KRGb6Q5sMlroCyk\";s:15:\"css/regular.css\";s:71:\"sha384-hJbmKHxbgrH79UtKxubo1UTe96bOL4Xfhjaqr0csD1UMPEPbeV+446QAC+IGxY+b\";s:13:\"css/solid.css\";s:71:\"sha384-k8v16DuQ4ZFtRfpTeqTW4tcHIj5tkvUNQm1QiLs90XiToLzyFeV+yxujHjSZ2wim\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-yVUvm1bVSmayKKt0YHPKotNQzlBvgNhEBbQ6U1d38bjpapXMVmE+SLXrpQ9td4Ij\";s:9:\"js/all.js\";s:71:\"sha384-DtPgXIYsUR6lLmJK14ZNUi11aAoezQtw4ut26Zwy9/6QXHH8W3+gjrRDT+lHiiW4\";s:12:\"js/brands.js\";s:71:\"sha384-yIJb2TJeTM04vupX+3lv0Qp9j0Pnk8Qm9UPYlXr3H0ROCHNNLoacpS++HWDabbzi\";s:17:\"js/fontawesome.js\";s:71:\"sha384-8QYlVHotqQzcAVhJny7MO9ZR0hASr6cRCpURV+EobTTAv5wftkn4i+U6UrMqoCis\";s:11:\"js/light.js\";s:71:\"sha384-06sraYAcw8BzUjsPn5z8Qi/QAA2/ZJl5GN3LGtRp7k+tZpu7kw+sRNXDDTU4RkOt\";s:13:\"js/regular.js\";s:71:\"sha384-C6h/8oKUfY6cVuGfFSu9uGIlFkaD1u1j+ByYGFTdFbOpHOHpw39lKxqEpRgLQg6A\";s:11:\"js/solid.js\";s:71:\"sha384-nISI3wKDp2gWn9L91zXOKXZ6JPt2mteGTnaJAMfeNgAoeLKl2AQsWLH69HMmBXHa\";s:14:\"js/v4-shims.js\";s:71:\"sha384-vuyo8HdrwozCl2DhHOJ40ytjEx9FGy0cqu8i5GHeIoSUm6MPgqCXAVoUIsudKfuE\";}}}s:6:\"5.0.10\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:12:{s:11:\"css/all.css\";s:71:\"sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg\";s:14:\"css/brands.css\";s:71:\"sha384-KtmfosZaF4BaDBojD9RXBSrq5pNEO79xGiggBxf8tsX+w2dBRpVW5o0BPto2Rb2F\";s:19:\"css/fontawesome.css\";s:71:\"sha384-8WwquHbb2jqa7gKWSoAwbJBV2Q+/rQRss9UXL5wlvXOZfSodONmVnifo/+5xJIWX\";s:15:\"css/regular.css\";s:71:\"sha384-R7FIq3bpFaYzR4ogOiz75MKHyuVK0iHja8gmH1DHlZSq4tT/78gKAa7nl4PJD7GP\";s:13:\"css/solid.css\";s:71:\"sha384-HTDlLIcgXajNzMJv5hiW5s2fwegQng6Hi+fN6t5VAcwO/9qbg2YEANIyKBlqLsiT\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-ucawWSvpdgQ67m4VQzI6qBOHIsGRoY2soJtCkkp15b6IaNCLgauWkbKR8SAuiDQ7\";s:9:\"js/all.js\";s:71:\"sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+\";s:12:\"js/brands.js\";s:71:\"sha384-6jhVhr5a+Z1nLr9h+fd7ocMEo847wnGFelCHddaOOACUeZNoQwFXTxh4ysXVam8u\";s:17:\"js/fontawesome.js\";s:71:\"sha384-M2FSA4xMm1G9m4CNXM49UcDHeWcDZNucAlz1WVHxohug0Uw1K+IpUhp/Wjg0y6qG\";s:13:\"js/regular.js\";s:71:\"sha384-JWLWlnwX0pRcCBsI3ZzOEyVDoUmngnFnbXR9VedCc3ko4R3xDG+KTMYmVciWbf4N\";s:11:\"js/solid.js\";s:71:\"sha384-Q7KAHqDd5trmfsv85beYZBsUmw0lsreFBQZfsEhzUtUn5HhpjVzwY0Aq4z8DY9sA\";s:14:\"js/v4-shims.js\";s:71:\"sha384-RLvgmog5EsZMMDnT3uJo6ScffPHTtMbhtV8pcT8kP5UJzlVRU1SP9Hccelk3zYZc\";}s:3:\"pro\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-KwxQKNj2D0XKEW5O/Y6haRH39PE/xry8SAoLbpbCMraqlX7kUP6KHOnrlrtvuJLR\";s:14:\"css/brands.css\";s:71:\"sha384-cyAsyPMdnj21FGg6BEGfZdZ99a/opKBeFa8z5VoHPsPj+tLRYSxkRlPWnGkCJGyA\";s:19:\"css/fontawesome.css\";s:71:\"sha384-HE+OCjOJOPZavEcVffA6E24sIfY2RwV4JRieXa/3N5iCY8vgnTwZemElENQ8ak/K\";s:13:\"css/light.css\";s:71:\"sha384-k/d3hya1Xwx/V3yLAr7/6ibFaFIaN+xeY1eIv42A1Bn2HgfB+/YjLscji1sHLOkb\";s:15:\"css/regular.css\";s:71:\"sha384-D4yOV+i5oKU6w8CiadBDVtSim/UXmlmQfrIdRsuKT3nYhiF/Tb6YLQtyF9l0vqQF\";s:13:\"css/solid.css\";s:71:\"sha384-WjYgBJXUWNFTzFd4wNJuzUZx28GSgjzXrPO4LJrng96HFrI/nLrG1R5NET65v1yR\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-S/uB02cfkgX8kd+j6f3gmw/PPTg8xSiE/w6d8dE852PzHXkGBYLrqpWFse9hInR2\";s:9:\"js/all.js\";s:71:\"sha384-+1nLPoB0gaUktsZJP+ycZectl3GX7wP8Xf2PE/JHrb7X1u7Emm+v7wJMbAcPr8Ge\";s:12:\"js/brands.js\";s:71:\"sha384-OwdVp9K/baqiXthTvRnYzMcsTaqwG19SfDkTRc/GBIhK9eYlWVVBEvLlueA0STAP\";s:17:\"js/fontawesome.js\";s:71:\"sha384-TxXqLyCP6HYGVtr9V1M1rQE7IMbBEZoDdOX+MFeYNbWNwopWKVQM8NyqtU2x+5t2\";s:11:\"js/light.js\";s:71:\"sha384-rv/n2A+UxOzR1qs4wrcOtJ7Ai5Hcn3QQ8tvEkOo5lCvqCD3xwpeO3KZP18JpSXr3\";s:13:\"js/regular.js\";s:71:\"sha384-QNGmoJVI8f07j7N4+DSn4Cdob1PTBJOR6jRGwUwqSPyL2HmvWaBPXuSXOcStGo9D\";s:11:\"js/solid.js\";s:71:\"sha384-m3J/Wb6KcNkFJIpCugSSJITG80sKhEA+16UCFdq1LnpMTOCXwwpeyrE1FmyqoArv\";s:14:\"js/v4-shims.js\";s:71:\"sha384-H+U1wWQdWbEtuQPJ4ZpMl8yWydI6xc/306L/NZkpGY8BGpeSpu39V20x03S3xcMw\";}}}s:6:\"5.0.12\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:12:{s:11:\"css/all.css\";s:71:\"sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9\";s:14:\"css/brands.css\";s:71:\"sha384-Pln/erVatVEIIVh7sfyudOXs5oajCSHg7l5e2Me02e3TklmDuKEhQ8resTIwyI+w\";s:19:\"css/fontawesome.css\";s:71:\"sha384-rnr8fdrJ6oj4zli02To2U/e6t1qG8dvJ8yNZZPsKHcU7wFK3MGilejY5R/cUc5kf\";s:15:\"css/regular.css\";s:71:\"sha384-RGDxJbFQcd3/Rei8rYb+3xO3YREd0abxm8WfLkYj7j4HHo5ZVuNUGVx8H8GbpFTQ\";s:13:\"css/solid.css\";s:71:\"sha384-VxweGom9fDoUf7YfLTHgO0r70LVNHP5+Oi8dcR4hbEjS8UnpRtrwTx7LpHq/MWLI\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-N44Xrku5FaDiZLZ8lncIZLh+x9xiqk1r0NTlUJQ5xanSpdORyQHP4Zp2WQJ9GlpJ\";s:9:\"js/all.js\";s:71:\"sha384-Voup2lBiiyZYkRto2XWqbzxHXwzcm4A5RfdfG6466bu5LqjwwrjXCMBQBLMWh7qR\";s:12:\"js/brands.js\";s:71:\"sha384-BPIhZF7kZGuZzBS4SP/oIqzpxWuOUtsPLUTVGpGw+EtB1wKt1hv63jb2OCroS3EX\";s:17:\"js/fontawesome.js\";s:71:\"sha384-6AOxTjzzZLvbTJayrLOYweuPckqh0rrB4Sj+Js8Vzgr85/qm2e0DRqi+rBzyK52J\";s:13:\"js/regular.js\";s:71:\"sha384-6XNKyHeL6pEPXURVNSKQ0lUP80a5FHqN0oFqSSS8Qviyy2u0KmCMJlQ5iLiAAPBg\";s:11:\"js/solid.js\";s:71:\"sha384-652/z7yNdGONCCBu0u5h5uF9voJhBdgruAuIDVheEaQ7O/ZC9wyyV+yZsYb32Wy7\";s:14:\"js/v4-shims.js\";s:71:\"sha384-STc8Gazx86A+NmeBWQTqa5Ob1wGSRQZevexYiUkKdiqZhi5LSZ28XYAvgptHK5HH\";}s:3:\"pro\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-HX5QvHXoIsrUAY0tE/wG8+Wt1MwvaY28d9Zciqcj6Ob7Tw99tFPo4YUXcZw9l930\";s:14:\"css/brands.css\";s:71:\"sha384-M4owBK0KiG0Vz+G5z/8v8tBb1+w9ts66Z6xKkZEPgBwzISkrcNra4GxZcvJPyaGB\";s:19:\"css/fontawesome.css\";s:71:\"sha384-ZDxYpspDwfEsC0ZJDb74i/Rqjb1CnX3a69Dz9vXv4PvvlTEkgMI02TATTRNJoZ06\";s:13:\"css/light.css\";s:71:\"sha384-PWGGmWk9+xVydf1Gzso0ouaikBBKLu4nCY52q+tBUMq5iXmRhpgTuDkjbtxZ1rXT\";s:15:\"css/regular.css\";s:71:\"sha384-tYZB+BP2inzRg01pQhSlW4Tloc0ULXYGiBaf5kSB5Tb3+l84bJy+PKerqziKz3iv\";s:13:\"css/solid.css\";s:71:\"sha384-KY40QRrgoQAM9BPN+gm7JoK30M/P6QqKRCbXUS3uWbPfycyiVeEsPkGNMhcNL3DU\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-ubRAMbpAKC+ULwg5mkUQLFReIXq1yeiKIcfV7cYp+rEaeINfEglYX6JOte80PCDk\";s:9:\"js/all.js\";s:71:\"sha384-quzri7saio48xMf3ED3HiI5YaItt68Q+0J3qc9EIfk1jk3QqCJhS24l6CZpUGfEe\";s:12:\"js/brands.js\";s:71:\"sha384-QlvHmHtevrYI4s/vdiK6chTDouw2pRA5av6ZLVtENubkoCgSZz4ZaXVvplQ1FRPs\";s:17:\"js/fontawesome.js\";s:71:\"sha384-CUrLKzrygRugRUPtEJ1u4nV4Ec6GnuDMRDGaxfoFXLI+sraWS6rqGg2Sjfs6BTet\";s:11:\"js/light.js\";s:71:\"sha384-z7YlG414oqy0TO7qY/nGfC8zd1LL8JAX3iNQ3iLybUIziHzaMYqBwUvhizEwV0Fd\";s:13:\"js/regular.js\";s:71:\"sha384-p/qo0lifpToZ0ubNiv1WFzlmYJU+BOenvU+evARCvCqALvbpZuqmZQ207vmYD6QL\";s:11:\"js/solid.js\";s:71:\"sha384-y//1Knkpeyl2S568g2ECqUA4n3MKf+kpj1/sfjUQbR1WtBPONceBHrQVMiAqfjLH\";s:14:\"js/v4-shims.js\";s:71:\"sha384-6+8zJP76v3EziONR2vMd32iSU3qbdicAE8KNp+NWniM6mBmvN80NlY+sbvCO+w7M\";}}}s:6:\"5.0.13\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:12:{s:11:\"css/all.css\";s:71:\"sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp\";s:14:\"css/brands.css\";s:71:\"sha384-VGCZwiSnlHXYDojsRqeMn3IVvdzTx5JEuHgqZ3bYLCLUBV8rvihHApoA1Aso2TZA\";s:19:\"css/fontawesome.css\";s:71:\"sha384-GVa9GOgVQgOk+TNYXu7S/InPTfSDTtBalSgkgqQ7sCik56N9ztlkoTr2f/T44oKV\";s:15:\"css/regular.css\";s:71:\"sha384-EWu6DiBz01XlR6XGsVuabDMbDN6RT8cwNoY+3tIH+6pUCfaNldJYJQfQlbEIWLyA\";s:13:\"css/solid.css\";s:71:\"sha384-Rw5qeepMFvJVEZdSo1nDQD5B6wX0m7c5Z/pLNvjkB14W6Yki1hKbSEQaX9ffUbWe\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-LAtyQAMHxrIJzktG06ww5mJ0KQ+uCqQIJFjwj+ceCjUlZ2jkLwJZt1nBGw4KaFEZ\";s:9:\"js/all.js\";s:71:\"sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe\";s:12:\"js/brands.js\";s:71:\"sha384-G/XjSSGjG98ANkPn82CYar6ZFqo7iCeZwVZIbNWhAmvCF2l+9b5S21K4udM7TGNu\";s:17:\"js/fontawesome.js\";s:71:\"sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY\";s:13:\"js/regular.js\";s:71:\"sha384-IJ3h7bJ6KqiB70L7/+fc44fl+nKF5eOFkgM9l/zZii9xs7W2aJrwIlyHZiowN+Du\";s:11:\"js/solid.js\";s:71:\"sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ\";s:14:\"js/v4-shims.js\";s:71:\"sha384-qqI1UsWtMEdkxgOhFCatSq+JwGYOQW+RSazfcjlyZFNGjfwT/T1iJ26+mp70qvXx\";}s:3:\"pro\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-oi8o31xSQq8S0RpBcb4FaLB8LJi9AT8oIdmS1QldR8Ui7KUQjNAnDlJjp55Ba8FG\";s:14:\"css/brands.css\";s:71:\"sha384-t3MQUMU0g3tY/0O/50ja6YVaEFYwPpOiPbrHk9p5DmYtkHJU2U1/ujNhYruOJwcj\";s:19:\"css/fontawesome.css\";s:71:\"sha384-LDuQaX4rOgqi4rbWCyWj3XVBlgDzuxGy/E6vWN6U7c25/eSJIwyKhy9WgZCHQWXz\";s:13:\"css/light.css\";s:71:\"sha384-d8NbeymhHpk+ydwT2rk4GxrRuC9pDL/3A6EIedSEYb+LE+KQ5QKgIWTjYwHj/NBs\";s:15:\"css/regular.css\";s:71:\"sha384-HLkkol/uuRVQDnHaAwidOxb1uCbd78FoGV/teF8vONYKRP9oPQcBZKFdi3LYDy/C\";s:13:\"css/solid.css\";s:71:\"sha384-drdlAcijFWubhOfj9OS/gy2Gs34hVhVT90FgJLzrldrLI+7E7lwBxmanEEhKTRTS\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-8YpCivPy+AkMdZ0uAvEP04Gs77AN/6mS5AmZqkCwniP51zSG8rCMaH06OYuC4iXd\";s:9:\"js/all.js\";s:71:\"sha384-d84LGg2pm9KhR4mCAs3N29GQ4OYNy+K+FBHX8WhimHpPm86c839++MDABegrZ3gn\";s:12:\"js/brands.js\";s:71:\"sha384-44Hl7UlQr9JXHFcZOp9qWHk2H1lrsAN/cG3GNgB2JqbciecuJ2/B9sjelOMttzBM\";s:17:\"js/fontawesome.js\";s:71:\"sha384-BUkEHIKZJ0ussRY3zYfFL7R0LpqWmucr9K38zMTJWdGQywTjmzbejVSNIHuNEhug\";s:11:\"js/light.js\";s:71:\"sha384-+iGqamqASU/OvBgGwlIHH6HSEgiluzJvTqcjJy8IN9QG9aUfd0z0pKpTlH7TpU7X\";s:13:\"js/regular.js\";s:71:\"sha384-1bAvs6o5Yb7MMzvTI3oq2qkreCQFDXb6KISLBhrHR+3sJ/mm7ZWfnQVRwScbPEmd\";s:11:\"js/solid.js\";s:71:\"sha384-CucLC75yxFXtBjA/DCHWMS14abAUhf5HmFRdHyKURqqLqi3OrLsyhCyqp83qjiOR\";s:14:\"js/v4-shims.js\";s:71:\"sha384-LDfu/SrM7ecLU6uUcXDDIg59Va/6VIXvEDzOZEiBJCh148mMGba7k3BUFp1fo79X\";}}}s:5:\"5.1.0\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt\";s:14:\"css/brands.css\";s:71:\"sha384-7xAnn7Zm3QC1jFjVc1A6v/toepoG3JXboQYzbM0jrPzou9OFXm/fY6Z/XiIebl/k\";s:19:\"css/fontawesome.css\";s:71:\"sha384-ozJwkrqb90Oa3ZNb+yKFW2lToAWYdTiF1vt8JiH5ptTGHTGcN7qdoR1F95e0kYyG\";s:15:\"css/regular.css\";s:71:\"sha384-avJt9MoJH2rB4PKRsJRHZv7yiFZn8LrnXuzvmZoD3fh1aL6aM6s0BBcnCvBe6XSD\";s:13:\"css/solid.css\";s:71:\"sha384-TbilV5Lbhlwdyc4RuIV/JhD8NR+BfMrvz4BL5QFa2we1hQu6wvREr3v6XSRfCTRp\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-5aLiCANDiVeIiNfzcW+kXWzWdC6riDYfxLS6ifvejaqYOiEufCh0zVLMkW4nr8iC\";s:16:\"css/v4-shims.css\";s:71:\"sha384-epK5t6ciulYxBQbRDZyYJFVuWey/zPlkBIbv6UujFdGiIwQCeWOyv5PVp2UQXbr2\";s:9:\"js/all.js\";s:71:\"sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9\";s:12:\"js/brands.js\";s:71:\"sha384-ZqDZAkGUHrXxm3bvcTCmQWz4lt7QGLxzlqauKOyLwg8U0wYcYPDIIVTbZZXjbfsM\";s:17:\"js/fontawesome.js\";s:71:\"sha384-juNb2Ils/YfoXkciRFz//Bi34FN+KKL2AN4R/COdBOMD9/sV/UsxI6++NqifNitM\";s:13:\"js/regular.js\";s:71:\"sha384-Y+AVd32cSTAMpwehrH10RiRmA28kvu879VbHTG58mUFhd+Uxl/bkAXsgcIesWn3a\";s:11:\"js/solid.js\";s:71:\"sha384-Z7p3uC4xXkxbK7/4keZjny0hTCWPXWfXl/mJ36+pW7ffAGnXzO7P+iCZ0mZv5Zt0\";s:14:\"js/v4-shims.js\";s:71:\"sha384-3qT9zZfeo1gcy2NmVv5dAhtOYkj91cMLXRkasOiRB/v+EU3G+LZUyk5uqZQdIPsV\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-87DrmpqHRiY8hPLIr7ByqhPIywuSsjuQAfMXAE0sMUpY3BM7nXjf+mLIUSvhDArs\";s:14:\"css/brands.css\";s:71:\"sha384-C1HxUFJBptCeaMsYCbPUw8fdL2Cblu3mJZilxrfujE+7QLr8BfuzBl5rPLNM61F6\";s:19:\"css/fontawesome.css\";s:71:\"sha384-PnWzJku7hTqk2JREATthkLpYeVVGcBbXG5yEzk7hD2HIr/VxffIDfNSR7p7u4HUy\";s:13:\"css/light.css\";s:71:\"sha384-ANTAgj8tbw0vj4HgQ4HsB886G2pH15LXbruHPCBcUcaPAtn66UMxh8HQcb1cH141\";s:15:\"css/regular.css\";s:71:\"sha384-6kuJOVhnZHzJdVIZJcWiMZVi/JwinbqLbVxIbR73nNqXnYJDQ5TGtf+3XyASO4Am\";s:13:\"css/solid.css\";s:71:\"sha384-rvfDcG9KDoxdTesRF/nZ/sj8CdQU+hy6JbNMwxUTqpoI2LaPK8ASQk6E4bgabrox\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-/h6SKuA/ysT91EgYEGm9B6Z6zlaxuvKeW/JB7FWdGwCFalafxmGzJE2a63hS1BLm\";s:16:\"css/v4-shims.css\";s:71:\"sha384-2RBBYH6GaI11IJzJ6V1eL7kXXON+epoQIt+HqpzQdBrtyT7gNwKPDxo2roxUbtW9\";s:9:\"js/all.js\";s:71:\"sha384-E5SpgaZcbSJx0Iabb3Jr2AfTRiFnrdOw1mhO19DzzrT9L+wCpDyHUG2q07aQdO6E\";s:12:\"js/brands.js\";s:71:\"sha384-QPbiRUBnwCr8JYNjjm7CB0QP9h4MLvWUZhsChFX6dLzRkY22/nAxVYqa5nUTd6PL\";s:17:\"js/fontawesome.js\";s:71:\"sha384-ckjcH5WkBMAwWPjTJiy7K2LaLp37yyCVKAs3DKjhPdo0lRCDIScolBzRsuaSu+bQ\";s:11:\"js/light.js\";s:71:\"sha384-77i21WTcIcnSPKxwR794RLUQitpNqm6K3Fxsjx8hgoc3ZZbPJu5orgvU/7xS3EFq\";s:13:\"js/regular.js\";s:71:\"sha384-S21AhcbZ5SXPXH+MH7JuToqmKYXviahLaD1s9yApRbu1JDiMjPBGQIw/3PCHKUio\";s:11:\"js/solid.js\";s:71:\"sha384-q6QALO/4RSDjqnloeDcGnkB0JdK3MykIi6dUW5YD66JHE3JFf8rwtV5AQdYHdE0X\";s:14:\"js/v4-shims.js\";s:71:\"sha384-9gfBAY6DS3wT0yuvYN1aaA1Q9R0fYQHliQWLChuYDWJJ0wQJpoNZrzlcqd4+qqny\";}}}s:5:\"5.1.1\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ\";s:14:\"css/brands.css\";s:71:\"sha384-SYNjKRRe+vDW0KSn/LrkhG++hqCLJg9ev1jIh8CHKuEA132pgAz+WofmKAhPpTR7\";s:19:\"css/fontawesome.css\";s:71:\"sha384-0b7ERybvrT5RZyD80ojw6KNKz6nIAlgOKXIcJ0CV7A6Iia8yt2y1bBfLBOwoc9fQ\";s:15:\"css/regular.css\";s:71:\"sha384-QNorH84/Id/CMkUkiFb5yTU3E/qqapnCVt6k5xh1PFIJ9hJ8VfovwwH/eMLQTjGS\";s:13:\"css/solid.css\";s:71:\"sha384-S2gVFTIn1tJ/Plf+40+RRAxBCiBU5oAMFUJxTXT3vOlxtXm7MGjVj62mDpbujs4C\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-EH3TEAKYd7R0QbCS4OFuYoEpaXITVg5c/gdZ/beEaAbRjMGVuVLLFjiIKOneCzGZ\";s:16:\"css/v4-shims.css\";s:71:\"sha384-LCsPWAjCFLDeFHB5Y0SBIOqgC5othK8pIZiJAdbJDiN10B2HXEm1mFNHtED8cViz\";s:9:\"js/all.js\";s:71:\"sha384-BtvRZcyfv4r0x/phJt9Y9HhnN5ur1Z+kZbKVgzVBAlQZX4jvAuImlIz+bG7TS00a\";s:12:\"js/brands.js\";s:71:\"sha384-0inRy4HkP0hJ038ZyfQ4vLl+F4POKbqnaUB6ewmU4dWP0ki8Q27A0VFiVRIpscvL\";s:17:\"js/fontawesome.js\";s:71:\"sha384-NY6PHjYLP2f+gL3uaVfqUZImmw71ArL9+Roi9o+I4+RBqArA2CfW1sJ1wkABFfPe\";s:13:\"js/regular.js\";s:71:\"sha384-sAzYCvbTTKFOxT4VHu+ZjHRMXjvfjT6TAqOng28g4jba88Peg5+hkoVIqQKGjmj1\";s:11:\"js/solid.js\";s:71:\"sha384-GXi56ipjsBwAe6v5X4xSrVNXGOmpdJYZEEh/0/GqJ3JTHsfDsF8v0YQvZCJYAiGu\";s:14:\"js/v4-shims.js\";s:71:\"sha384-T69Lzd4bE7W8/vVrxvfsx45/AAKf6QmKEg5zSl0v9aZwo/pTKseq81mxdpARTQpx\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-xyMU7RufUdPGVOZRrc2z2nRWVWBONzqa0NFctWglHmt5q5ukL22+lvHAqhqsIm3h\";s:14:\"css/brands.css\";s:71:\"sha384-E5dVkWQIVhVPtBz/KK2TS7EM9l1+5XiWFPX7l3+5ayHPwDguGsHqof3GQbk55AS3\";s:19:\"css/fontawesome.css\";s:71:\"sha384-bHoj6f1b1CQ6zapOREeYBO/JnDjeV1fLuKn3KHnbqAAnkLva11KY3m8YyKPVXYLF\";s:13:\"css/light.css\";s:71:\"sha384-EGKQAl6ZrGi/zGxZ4ykVhc/A3tFVeBiLnneETILtcxQnZpo7ejmb4BkNa3zSgo4K\";s:15:\"css/regular.css\";s:71:\"sha384-AKIrAHbICIQF+NEqtykrcdzMjExDiKLa9hOyUVsr4PlHtktH7xaD10vO98UnPjuE\";s:13:\"css/solid.css\";s:71:\"sha384-Ux3tEr1RmnxCht2XbPkWWBuotwMVXKOe0PkWN/nmiD5CSV6Tyjl+Kr0J0iX1yd0q\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-++BmJ9x4V05AhCNnLr/RjPTY4BAFuhZsESUqH5hiwZspBvy7F+DRGvSH8tGHw9P/\";s:16:\"css/v4-shims.css\";s:71:\"sha384-TUicmScQcYANFcc4OQKEX6V1Zek9o9t+dwW/2tZoXmSigBk9JqfHxZZFlSo+0oRl\";s:9:\"js/all.js\";s:71:\"sha384-cHcg4nvWPIGArJhEgL2F5e09Cn1GyPQpNYKbPatFCpDefCbezZjPA3PhLozKTZnv\";s:12:\"js/brands.js\";s:71:\"sha384-KCMfKsP/3VgeibBQRMu4bT+9041Hi2v9PIz9FLOPJBEvxCBklc4o7tRwwQu4FWsT\";s:17:\"js/fontawesome.js\";s:71:\"sha384-EWJRWU7LQt+ri8YtDjTr8adATyP7y8DwlpE8zruoUC4nHNjtWZMU+iPYK+tFaV3U\";s:11:\"js/light.js\";s:71:\"sha384-0rp6k6cJIuLV1ORowDSSKr4VbEqb664PQUWdBvhJyt6IfkshVb0r6UlOkX6yVdaI\";s:13:\"js/regular.js\";s:71:\"sha384-Mw6yr+W+X+ckaAUbsPUb2BcU3Af9aSjmPMIlMr2iplN0VQIpscDWy/VwY5w0sz9w\";s:11:\"js/solid.js\";s:71:\"sha384-PyvJtlnGBA/R+hfVbHbnzfeT8G/iTORqPhR5WKGTQXlfmLe5bV+d64NECHG4sIMa\";s:14:\"js/v4-shims.js\";s:71:\"sha384-rJQjFeDWQReL3KmIeV81jB594CgKx/MmXyAgiuu88Jo253P+PSMgWzivZQtR6N6J\";}}}s:5:\"5.2.0\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\";s:14:\"css/brands.css\";s:71:\"sha384-nT8r1Kzllf71iZl81CdFzObMsaLOhqBU1JD2+XoAALbdtWaXDOlWOZTR4v1ktjPE\";s:19:\"css/fontawesome.css\";s:71:\"sha384-HbmWTHay9psM8qyzEKPc8odH4DsOuzdejtnr+OFtDmOcIVnhgReQ4GZBH7uwcjf6\";s:15:\"css/regular.css\";s:71:\"sha384-zkhEzh7td0PG30vxQk1D9liRKeizzot4eqkJ8gB3/I+mZ1rjgQk+BSt2F6rT2c+I\";s:13:\"css/solid.css\";s:71:\"sha384-wnAC7ln+XN0UKdcPvJvtqIH3jOjs9pnKnq9qX68ImXvOGz2JuFoEiCjT8jyZQX2z\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-jKeGgxY7zPT61fNXg6OMRDu8vsxOPRLMlgAIUHo1KVag4lyu5B03KsDLYOTMM4ld\";s:16:\"css/v4-shims.css\";s:71:\"sha384-W14o25dsDf2S/y9FS68rJKUyCoBGkLwr8owWTSTTHj4LOoHdrgSxw1cmNQMULiRb\";s:9:\"js/all.js\";s:71:\"sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy\";s:12:\"js/brands.js\";s:71:\"sha384-4BRtleJgTYsMKIVuV1Z7lNE29r4MxwKR7u88TWG2GaXsmSljIykt/YDbmKndKGID\";s:17:\"js/fontawesome.js\";s:71:\"sha384-QcnrgQuRmocjIBY6ByWMmDvUg3HO4MSdVjY7ynJwZfvTDhVPPQOUI9TRzc6/7ZO1\";s:13:\"js/regular.js\";s:71:\"sha384-YdSTwqfKxyP06Jj3UzTeumv8M+Pme60+KND4oF+5r5VeUCvdkw7NhSzFYWbe00ba\";s:11:\"js/solid.js\";s:71:\"sha384-YmNA3b9AQuWW8KZguYfqJa/YhKNTwGVD5pQc1cN0ZAVRudFFtR17HR7rooNcVXe4\";s:14:\"js/v4-shims.js\";s:71:\"sha384-rn4uxZDX7xwNq5bkqSbpSQ3s4tK9evZrXAO1Gv9WTZK4p1+NFsJvOQmkos19ebn2\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-TXfwrfuHVznxCssTxWoPZjhcss/hp38gEOH8UPZG/JcXonvBQ6SlsIF49wUzsGno\";s:14:\"css/brands.css\";s:71:\"sha384-Ei2oxwH0wpwmp7KPdhYnajC5fWDdMENOjDw9OfzWvcFcOGn0Egy+L5AAculaqBbD\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4eP+1rYQmuI3hxrmyE+GT/EIiNbF4R85ciN3jMpmIh+bU5Hz2IU7AdcVe+JS+AJz\";s:13:\"css/light.css\";s:71:\"sha384-pcDR01P1wNxsYZiEYdROCAYhU2u8VHOctLrYRonRFtkf/TGEQFWt0rqFbPGWlyn4\";s:15:\"css/regular.css\";s:71:\"sha384-g3XsWx0Sqi7JIjLKVnwUxEvqrxTMQPIf3PN+vTdWY2AhduP/rnj0rw89v0nbD4Ro\";s:13:\"css/solid.css\";s:71:\"sha384-B/E/KxBX31kY/5sew+X4c8e6ErosbqOOsA3t4k6VVmx8Hrz//v0tEUtXmUVx9X6Q\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-O6mvz45yC1vfdu/EgUxAoSGrP+sFtepMtj7eOQIW1G3WT9Sj5djActZC0hd/F42D\";s:16:\"css/v4-shims.css\";s:71:\"sha384-2QRS8Mv2zxkE2FAZ5/vfIJ7i0j+oF15LolHAhqFp9Tm4fQ2FEOzgPj4w/mWOTdnC\";s:9:\"js/all.js\";s:71:\"sha384-yBZ34R8uZDBb7pIwm+whKmsCiRDZXCW1vPPn/3Gz0xm4E95frfRNrOmAUfGbSGqN\";s:12:\"js/brands.js\";s:71:\"sha384-eg9wHuvEPj6+GlGomBRaMHLF0QfCnjdASWDKd84DMeM9phhyDaPFou/nHJBt0bz+\";s:17:\"js/fontawesome.js\";s:71:\"sha384-FQUuiJxt9F0hPc9IP3M5ndmqK53iBCGcy4ZSx8QirhYOIs8l7x+e1/zdswyZEigi\";s:11:\"js/light.js\";s:71:\"sha384-glAz6mCeiwAe/kHHHG/OvhrjA4+AH55ZfH8fwYp48YCY61POwUmOrH/oYOaF2Ujy\";s:13:\"js/regular.js\";s:71:\"sha384-8hKZY21U4J3r9N0GFl+24YnDkbRhs8y/nXT6BaZ+sOJDNmz+1DhFawE9UYL37XzB\";s:11:\"js/solid.js\";s:71:\"sha384-1j3ph9Rf+Aaz6rrizz6cdFxU9ZbUyvkbiwQ5+T/BY4I5mk37vUpTA8S9ZZOlfdWu\";s:14:\"js/v4-shims.js\";s:71:\"sha384-aoMjEUBUPf5GpXx1WJUeTZ/gBmGqQB1u8uUc2J5LW2xnQtJKkGulESZ+rkoj182s\";}}}s:5:\"5.3.1\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU\";s:14:\"css/brands.css\";s:71:\"sha384-rf1bqOAj3+pw6NqYrtaE1/4Se2NBwkIfeYbsFdtiR6TQz0acWiwJbv1IM/Nt/ite\";s:19:\"css/fontawesome.css\";s:71:\"sha384-1rquJLNOM3ijoueaaeS5m+McXPJCGdr5HcA03/VHXxcp2kX2sUrQDmFc3jR5i/C7\";s:15:\"css/regular.css\";s:71:\"sha384-ZlNfXjxAqKFWCwMwQFGhmMh3i89dWDnaFU2/VZg9CvsMGA7hXHQsPIqS+JIAmgEq\";s:13:\"css/solid.css\";s:71:\"sha384-VGP9aw4WtGH/uPAOseYxZ+Vz/vaTb1ehm1bwx92Fm8dTrE+3boLfF1SpAtB1z7HW\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-4K9ulTwOtsXr+7hczR7fImKfUZY5THwqvfxwPx1VUCEOt4qssi2Vm+kHY7NJQPoy\";s:16:\"css/v4-shims.css\";s:71:\"sha384-lmquXrF9qn7mMo6iRQ662vN44vTTVUBpcdtDFWPxD9uFPqC/aMn6pcQrTTupiv1A\";s:9:\"js/all.js\";s:71:\"sha384-kW+oWsYx3YpxvjtZjFXqazFpA7UP/MbiY4jvs+RWZo2+N94PFZ36T6TFkc9O3qoB\";s:12:\"js/brands.js\";s:71:\"sha384-2vdvXGQdnt+ze3ylY5ESeZ9TOxwxlOsldUzQBwtjvRpen1FwDT767SqyVbYrltjb\";s:17:\"js/fontawesome.js\";s:71:\"sha384-2OfHGv4zQZxcNK+oL8TR9pA+ADXtUODqGpIRy1zOgioC4X3+2vbOAp5Qv7uHM4Z8\";s:13:\"js/regular.js\";s:71:\"sha384-sqmLTIuB+bQgkyOcdJ/hAvXl51Z7qqdK/lcH/rt6sdvDKFincQWI+fVgcDZM6NMz\";s:11:\"js/solid.js\";s:71:\"sha384-GJiigN/ef2B3HMj0haY+eMmG4EIIrhWgGJ2Rv0IaWnNdWdbWPr1sRLkGz7xfjOFw\";s:14:\"js/v4-shims.js\";s:71:\"sha384-DtdEw3/pBQuSag11V3is/UZMjGkGMLDRBgk1UVAOvH6cYoqKjBmCEhePm13skjRV\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-9ralMzdK1QYsk4yBY680hmsb4/hJ98xK3w0TIaJ3ll4POWpWUYaA2bRjGGujGT8w\";s:14:\"css/brands.css\";s:71:\"sha384-AOiME8p6xSUbTO/93cbYmpOihKrqxrLjvkT2lOpIov+udKmjXXXFLfpKeqwTjNTC\";s:19:\"css/fontawesome.css\";s:71:\"sha384-Yz2UJoJEWBkb0TBzOd2kozX5/G4+z5WzWMMZz1Np2vwnFjF5FypnmBUBPH2gUa1F\";s:13:\"css/light.css\";s:71:\"sha384-9QuzjQIM/Un6pY9bKVJGLW8PauASO8Mf9y3QcsHhfZSXNyXGoXt/POh3VLeiv4mw\";s:15:\"css/regular.css\";s:71:\"sha384-pofSFWh/aTwxUvfNhg+LRpOXIFViguTD++4CNlmwgXOrQZj1EOJewBT+DmUVeyJN\";s:13:\"css/solid.css\";s:71:\"sha384-wJu5pIbEyJzi+kRgVKVQkPNKI104yNC+IAyK7XXEVGgPGe+LTEERIkpSZbc/wrOx\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-Hmg9TonawJaGH8ayFFnEBwvkx61BYLPAOV7b/YDGQEVIs1jh9pWQigAavMuD+Vc/\";s:16:\"css/v4-shims.css\";s:71:\"sha384-1YFoQoO5Em1oxLErpWpJuswiqPFVHl8HLDUaLjJGJH8+Nra/Y1D6uOZkEgfH5OZf\";s:9:\"js/all.js\";s:71:\"sha384-eAVkiER0fL/ySiqS7dXu8TLpoR8d9KRzIYtG0Tz7pi24qgQIIupp0fn2XA1H90fP\";s:12:\"js/brands.js\";s:71:\"sha384-am5AyalpQCEfbKe6FYiGZc2vX080nrcueZmrbkljxLdQDJ5q5Vu9QDROD/QefEp1\";s:17:\"js/fontawesome.js\";s:71:\"sha384-u3o36ga3mMU6/lK/zdiER4h7pPtAK7wBuN0DrZPH22v01RZL8bKZkULIjxcx2/X/\";s:11:\"js/light.js\";s:71:\"sha384-2R0W5LA7dXp3ze/WhvjXlUcDaHRhtGlKYxN9QMhGDdjmj2EI1bub5ysSwofJwGfI\";s:13:\"js/regular.js\";s:71:\"sha384-EbI+OvKb7noKOfu8MSi/vCbi0KWlM61MjHDmRk4/vwJkPsMIRcJggYLDGWv7VeYY\";s:11:\"js/solid.js\";s:71:\"sha384-U4vTrZsQ4ooEtzL162EZfTtCiJNTXOwGDBzV91//DI5L/h48ibzHBiHJmPLpx2hO\";s:14:\"js/v4-shims.js\";s:71:\"sha384-8e1r0+5VTqCqkg/9vG+cnipytzBkEh9fpESgVwBZAizMkWRfiaTkdhgdnhLGwuPd\";}}}s:5:\"5.4.1\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz\";s:14:\"css/brands.css\";s:71:\"sha384-Px1uYmw7+bCkOsNAiAV5nxGKJ0Ixn5nChyW8lCK1Li1ic9nbO5pC/iXaq27X5ENt\";s:19:\"css/fontawesome.css\";s:71:\"sha384-BzCy2fixOYd0HObpx3GMefNqdbA7Qjcc91RgYeDjrHTIEXqiF00jKvgQG0+zY/7I\";s:15:\"css/regular.css\";s:71:\"sha384-4e3mPOi7K1/4SAx8aMeZqaZ1Pm4l73ZnRRquHFWzPh2Pa4PMAgZm8/WNh6ydcygU\";s:13:\"css/solid.css\";s:71:\"sha384-osqezT+30O6N/vsMqwW8Ch6wKlMofqueuia2H7fePy42uC05rm1G+BUPSd2iBSJL\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-2MWWLQq91kFwloAny7gkgoeV33bD/cE3A9ZbB2rCN/YAAR/VEHVoDq6vRJJYTaxM\";s:16:\"css/v4-shims.css\";s:71:\"sha384-YIDcSvDDaIskj/WDlWwjrNdK194YAGWc1CScdo2tXl3IQVS1zS07xQaoAFlXCf1P\";s:9:\"js/all.js\";s:71:\"sha384-L469/ELG4Bg9sDQbl0hvjMq8pOcqFgkSpwhwnslzvVVGpDjYJ6wJJyYjvG3u8XW7\";s:12:\"js/brands.js\";s:71:\"sha384-lc/yFuYW3B0EW9B2QSpod2KeBxq6/ZizGwAW6mRLUe3kKUVlSBfDIVZKwKIz/DBg\";s:17:\"js/fontawesome.js\";s:71:\"sha384-ISRc+776vRkDOTSbmnyoZFmwHy7hw2UR3KJpb4YtcfOyqUqhLGou8j5YmYnvQQJ4\";s:13:\"js/regular.js\";s:71:\"sha384-SQqzt64aAzh3UJ9XghcA//GE8+NxAIRcuCrrekyDokXP6Bbt/FYAFlV6VSPrZKwH\";s:11:\"js/solid.js\";s:71:\"sha384-agDKwSYPuGlC0wD14lKXXwb94jlUkbkoSugquwmKRKWv/nDXe1kApDS/gqUlRQmZ\";s:14:\"js/v4-shims.js\";s:71:\"sha384-/s2EnwEz7C3ziRundAGzeOAoGYffu84oY4SOHjhI/2Wqk3Z0usUm9bjdduzhZ9+z\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-POYwD7xcktv3gUeZO5s/9nUbRJG/WOmV6jfEGikMJu77LGYO8Rfs2X7URG822aum\";s:14:\"css/brands.css\";s:71:\"sha384-rmUpvtaCngUop5CYz7WL1LnqkMweXskxP+1AXmkuMSbImsUuy82bUYS4A8Syd3Pf\";s:19:\"css/fontawesome.css\";s:71:\"sha384-PPeKwWhk5XZBVVq089DuhGmjaEVB1r+jdmx6jZrqzlef8ojhZXG+E/D6SP7uO1dk\";s:13:\"css/light.css\";s:71:\"sha384-DZAoxBcs4G15aUXLX4vKbO53ye8L8AB/zg07HOVhIMVclhx8rdWye0AJSQl51ehV\";s:15:\"css/regular.css\";s:71:\"sha384-xKPOvJDwdb/n5w2kh6cxds98Ae2d5N63xkIydEdoYeA2bxIKUmmyU9lZ9j58mLYS\";s:13:\"css/solid.css\";s:71:\"sha384-oT4lQmwnKx98HRnFgaGvgCdjtKOjep9CjfMdAOPtJU8Vy6NY3X34GfqL0H43ydJn\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-j2EtHJUHBAZF9vkmX0TSA/QqYMf0Npp9P2leJGZFDbLHbcI62HH8w7FRcUMNf8Q2\";s:16:\"css/v4-shims.css\";s:71:\"sha384-aaXKvb/d7l2hTm3ZDWCy5v4ct5zXIslt+70K4xalZPLu3ifrkYcG61m4u+DIQGEk\";s:9:\"js/all.js\";s:71:\"sha384-0+tugznPwCEvPiypW+OwmFjAQvRKlgI0ZZZW3nofNlLMmbYXbmNvfX/9up9XQSRs\";s:12:\"js/brands.js\";s:71:\"sha384-ShBqjf9lFG58e2NmhnbVlhAOPCWdzkPbBmAEcQ37Liu3TwOYxIizS7J1P3rRLJHm\";s:17:\"js/fontawesome.js\";s:71:\"sha384-8vKKeD0uIV/HXM5ym3RGB4O7rZ43fCdpiXqP047w7sEE3igcK0Y1U9ApEArcRBDJ\";s:11:\"js/light.js\";s:71:\"sha384-jlaccvPpizUbHU/8pYAsDEwhhBae8MUcYqHHsKkjFcFsEp3Y6LrVXh0GA84aAkTg\";s:13:\"js/regular.js\";s:71:\"sha384-MB7Bz/7e8sBWnZgblSLUfFOOi+V1PIkRG/Ex1NMeu0CovaXCzHyCMwAwOF+FAo1s\";s:11:\"js/solid.js\";s:71:\"sha384-KlTWIsOnBg7LJobQmLsv5fQ1qbx73K+o8/xhoUDoIba13SxF4bT5W2WgV3d8mZIw\";s:14:\"js/v4-shims.js\";s:71:\"sha384-e+EZ4XUeGXVd0FDmP/mFu7FFe+qVX738ayOS2AErNIPSLz5oZ3OgVa9zEyCds3HP\";}}}s:5:\"5.4.2\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns\";s:14:\"css/brands.css\";s:71:\"sha384-BCEeiNUiLzxxoeYaIu7jJqq0aVVz2O2Ig4WbWEmRQ2Dx/AAxNV1wMDBXyyrxw1Zd\";s:19:\"css/fontawesome.css\";s:71:\"sha384-HU5rcgG/yUrsDGWsVACclYdzdCcn5yU8V/3V84zSrPDHwZEdjykadlgI6RHrxGrJ\";s:15:\"css/regular.css\";s:71:\"sha384-OEIzojYBMrmz48aIjVQj7VG38613/sxpP58OW9h5zBYC7biGFlv9tyu5kWmaAYlF\";s:13:\"css/solid.css\";s:71:\"sha384-uKQOWcYZKOuKmpYpvT0xCFAs/wE157X5Ua3H5onoRAOCNkJAMX/6QF0iXGGQV9cP\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-+moUZLBX5mmeUnjaImkzlTo5cXyQWAvzbqQapNFd7+dGIaap0koo0rtfe8lHD38R\";s:16:\"css/v4-shims.css\";s:71:\"sha384-SlbnWxwEHTVYxDLrpIRrG2BpsTpWALbJ6Tx5Fq+XNHRBL7xI6xwhVpuUGrrbLBXe\";s:9:\"js/all.js\";s:71:\"sha384-wp96dIgDl5BLlOXb4VMinXPNiB32VYBSoXOoiARzSTXY+tsK8yDTYfvdTyqzdGGN\";s:12:\"js/brands.js\";s:71:\"sha384-i1RNpxOOEnRm63Ii3TuV0aM8bJ+6Pv6XHpRSJbN7QlIzZIsl7m36R0GhOTTGN3F9\";s:17:\"js/fontawesome.js\";s:71:\"sha384-n1qPouQQJ9VNZnZeNZWSDiclpIOJwZBS2bkD6rEX+DTmMXTKXBVCZw2cGbU/I17z\";s:13:\"js/regular.js\";s:71:\"sha384-Uj7q9rRb3eJNp0j1kXwOBgEWDGbAiJ7Dcuz4hLRQdtza6pawbo/Bmwgr58THzHyR\";s:11:\"js/solid.js\";s:71:\"sha384-OQNCj138epg9A13jaL9L/d5vMlK2jyPL4aOgi37KYt07aZARbv/eFGp/wnrCxkW5\";s:14:\"js/v4-shims.js\";s:71:\"sha384-fzYnAZZYxpOQTjc3Y1eP04DGdMLAy+PeiZ8+ICh4FDLkJR/NJiAgKgK2vEpGx3au\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-zhaLg9HKxTxDljOPXpWHGn91XMDH+sYAWRSgvzHes290/ISyrNicGrd6BInTnx3L\";s:14:\"css/brands.css\";s:71:\"sha384-RjTk1OTKX8K8S4QfwhFOfbNSbQxLFgN6jqDw05QuBDDEbc/x6xlPtkPSO4vA1TtI\";s:19:\"css/fontawesome.css\";s:71:\"sha384-XkH+Vmez3OoFo52K+SkBE61xZ7vKh9tF35gL9Yf8rD3RtKUqIQGoTJTsLdR5u8rt\";s:13:\"css/light.css\";s:71:\"sha384-n0uyPlhqrQyWPPzm6+B9xDeZKCD81RgGRsTO7PQt3McgMXSR9zjhGaD5cXHwk+D8\";s:15:\"css/regular.css\";s:71:\"sha384-+OdrK32QtByk1ipA7b4+uLddrcWs2bx3nn37Dl5h98PW1AYKIrRZKveBl6AcpgcD\";s:13:\"css/solid.css\";s:71:\"sha384-SYCdBxlsgGngJi9eiKt5Tk6UtOJs1Jq5eU3yZDZ+hOe0GKk/obXhHy50IYVVdJro\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3f24zIRoR/ma/cnROK52rTVZpgCXKQ92/89RDq7GO7/9IxIl3VQV/tF6ecGgvUs8\";s:16:\"css/v4-shims.css\";s:71:\"sha384-ah4vMGE5UgKcCIB90FZl8BOcusXAVTm070n1UuOrNQA9QwkgnhqASrop/Oblr6wY\";s:9:\"js/all.js\";s:71:\"sha384-+lZy0zDh4RS9ZG6+Od6x6irKqoBH4NSy0m7IW8UGbzGZ/rupt9Cd9NdEb5S7+V9w\";s:12:\"js/brands.js\";s:71:\"sha384-LVdS6BqWBV1V0OyGzWK0HrGN4uDZbpO6hja1oVh86MhthieoER2crgKS/KsaiN8E\";s:17:\"js/fontawesome.js\";s:71:\"sha384-zMrS036pMtJ0Ukzo5x2YiTrYDGDaoeO8Yd0IHhI/PaEnfrY/nMHqvKME8C7dHhUE\";s:11:\"js/light.js\";s:71:\"sha384-hOiC7FL4572/E3aEEeWM6dF3ch/qFz59R91pAJqjYEKHBXN5u7e2oAYAgeSGF1VB\";s:13:\"js/regular.js\";s:71:\"sha384-f1yYCENdJ+9NE5J2T8weglyMCtTqRJOeGP9qaLwO43aYY0PVeuAfmsGgTegByFW6\";s:11:\"js/solid.js\";s:71:\"sha384-XlRgTEYU6HJ02+ZCuXW2/CgjnpV2+8FuQPTJSJ/+ZCQS5ZXRfIS5FHDRhMvOL++d\";s:14:\"js/v4-shims.js\";s:71:\"sha384-6TX+vqRZyQq+vB25wCb101/vY510EN37QZgs5f1dfG1+QYuIoQGdFFV8sx8W36AL\";}}}s:5:\"5.5.0\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU\";s:14:\"css/brands.css\";s:71:\"sha384-QT2Z8ljl3UupqMtQNmPyhSPO/d5qbrzWmFxJqmY7tqoTuT2YrQLEqzvVOP2cT5XW\";s:19:\"css/fontawesome.css\";s:71:\"sha384-u5J7JghGz0qUrmEsWzBQkfvc8nK3fUT7DCaQzNQ+q4oEXhGSx+P2OqjWsfIRB8QT\";s:15:\"css/regular.css\";s:71:\"sha384-z3ccjLyn+akM2DtvRQCXJwvT5bGZsspS4uptQKNXNg778nyzvdMqiGcqHVGiAUyY\";s:13:\"css/solid.css\";s:71:\"sha384-rdyFrfAIC05c5ph7BKz3l5NG5yEottvO/DQ0dCrwD8gzeQDjYBHNr1ucUpQuljos\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-NKdowA6EzI4CWz/dLjoC7dhVj+KczesQbwkbt6y3aRTi1JPZBy2uOocsmHmYvkux\";s:16:\"css/v4-shims.css\";s:71:\"sha384-TTjEZR8VsD+LjNa98drkrTRYhdUEaS3gAGE7PGnx2qkePR3fZtnVNoAfxPNyf+IQ\";s:9:\"js/all.js\";s:71:\"sha384-GqVMZRt5Gn7tB9D9q7ONtcp4gtHIUEW/yG7h98J7IpE3kpi+srfFyyB/04OV6pG0\";s:12:\"js/brands.js\";s:71:\"sha384-S2C955KPLo8/zc2J7kJTG38hvFV+SnzXM6hwfEUhGHw5wPo6uXbnbjSJgw3clO4G\";s:17:\"js/fontawesome.js\";s:71:\"sha384-bNOdVeWbABef8Lh4uZ8c3lJXVlHdf8W5hh1OpJ4dGyqIEhMmcnJrosjQ36Kniaqm\";s:13:\"js/regular.js\";s:71:\"sha384-XrvTJeiQ46fxxPrZP6fay5yejA2FV4G1XsS8E4Piz6Fz+7FaEFTw7A7GR972irVV\";s:11:\"js/solid.js\";s:71:\"sha384-Xgf/DMe1667bioB9X1UM5QX+EG6FolMT4K7G+6rqNZBSONbmPh/qZ62nBPfTx+xG\";s:14:\"js/v4-shims.js\";s:71:\"sha384-vBDTb50BKnwbvJZ5ZC5dsGJNQydTI7ZoAjCeJkdta6nSewwGXCnppKI5lrIQX4Qu\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-j8y0ITrvFafF4EkV1mPW0BKm6dp3c+J9Fky22Man50Ofxo2wNe5pT1oZejDH9/Dt\";s:14:\"css/brands.css\";s:71:\"sha384-t0iPfoyIjBoVR2Kw/65HArpRWQy0/xKBUmdEVTs5VYBb/yiPZxMY6egc9MROr/Og\";s:19:\"css/fontawesome.css\";s:71:\"sha384-srL3Qh9R/n855m4o5fegS//B2q0R1md7z6ndDYaPj8iEp0j0IuKdFVWMY0JosKPF\";s:13:\"css/light.css\";s:71:\"sha384-33RmjeesW9BZ4wR2Gm3n4iBXOvGTto4znqL2kZleiRanWDxM59IHIq5RsbRioqxb\";s:15:\"css/regular.css\";s:71:\"sha384-UPs+YiUhgn0/I0swkJmk3PSj3SWmzDrM+S0S09xLI/UUmHBU7ivRHryI3uVL6H+m\";s:13:\"css/solid.css\";s:71:\"sha384-YIyAArzQv8q6Av1kr9cwxHhFcfNBUaolJindR2XO8E3OLp6z3d8My3oWLd33ET7M\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-a2sfkqnB9p/zq6OT4QhuD80qQZ70fGDmo4JUNqP5E7NIICvgRNPjIBkQE/Qcl3SN\";s:16:\"css/v4-shims.css\";s:71:\"sha384-SNyDPad7e8WM4Nu7W/f1x3qsDrLxMCvXurQfwNdp418WWmkkTQuPBGYDZA6rSg0X\";s:9:\"js/all.js\";s:71:\"sha384-3yBLeJ4waqGSAf4A8pjZ13UF7GuhgbdKnBQvIp/TkWoXtQbtwjlIPNjkDRJ46UCn\";s:12:\"js/brands.js\";s:71:\"sha384-oMyy7aPCmlH4ZGEaKHW+zAoaKDWIFh6iqJ53lusMpn+Kp8SN5nJ2kzkP1qd0+icb\";s:17:\"js/fontawesome.js\";s:71:\"sha384-oPma1F1txBbqTG+1O7BEx0A/qFtD+R661ULJLmI9RDQ0PfbRP1tQU3vBIBbJIAxL\";s:11:\"js/light.js\";s:71:\"sha384-SVEn5VmGP1fxV9V5TOZOTwL9dCg50Yb0Xn4fbV9Ic/kp8we6kv4zPVcs9seU0675\";s:13:\"js/regular.js\";s:71:\"sha384-gbY/GPDSEaMQ9cjqWLbLcaxUCtCeExO9oUEZLrOQHfFLoV5ouwIrqF6mGnjyIOc2\";s:11:\"js/solid.js\";s:71:\"sha384-VxezC2Q+YoC+yUILib+HlmOsFiqNzYtQIXsHYY6ST7QZVfgBNs2giKE97ijGMgUH\";s:14:\"js/v4-shims.js\";s:71:\"sha384-8sPM0eSaqmdF9ruedfsxEZfxVcIp0cwhosrBhWl/Q4t1eQSMXl6tYenNe87MraQ6\";}}}s:5:\"5.6.0\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-aOkxzJ5uQz7WBObEZcHvV5JvRW3TUc2rNPA7pe3AwnsUohiw1Vj2Rgx2KSOkF5+h\";s:14:\"css/brands.css\";s:71:\"sha384-oT8S/zsbHtHRVSs2Weo00ensyC4I8kyMsMhqTD4XrWxyi8NHHxnS0Hy+QEtgeKUE\";s:19:\"css/fontawesome.css\";s:71:\"sha384-J4287OME5B0yzlP80TtfccOBwJJt6xiO2KS14V7z0mVCRwpz+71z7lwP4yoFbTnD\";s:15:\"css/regular.css\";s:71:\"sha384-yWI8JeRmJFie/rrEn4skBd/XXXfUWuc7wAhaj9q71PzjdYD3JslHSEU7BXCCcVyP\";s:13:\"css/solid.css\";s:71:\"sha384-COsgLGwf6vbsibKzWojSqhIjQND/Sa0RWQ5BHFrKOz5JrUObnh5GEBUH2oZwITuM\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-nHELFCUV8tffuhz6PkFYcEl6VCneIQgaHNbLkOHukzJs12+rUiKwsVmVhbqhEAq7\";s:16:\"css/v4-shims.css\";s:71:\"sha384-HiCW4rrGA9WlUM512GMhD+YfcMidwWluZzyu+X55gfVYgAPrlIkG5BnHyAl/VHJO\";s:9:\"js/all.js\";s:71:\"sha384-z9ZOvGHHo21RqN5De4rfJMoAxYpaVoiYhuJXPyVmSs8yn20IE3PmBM534CffwSJI\";s:12:\"js/brands.js\";s:71:\"sha384-GEA3+tbEaglIUriKygE2OQX9k7YrAMJ5oZF0mb8Xx7hUmTTWDuQDtPY4l13jl99w\";s:17:\"js/fontawesome.js\";s:71:\"sha384-tHFnt8QELQGC1IJzcTUX5zFEnn/FLVa0ADTmxRyeSmWukJ4umWnJbwiMTkw/bKEK\";s:13:\"js/regular.js\";s:71:\"sha384-gy4pB6yY1j4DPCG6rZcE6NX1Lnqz8ZJEfotVUvCN2EGwlUS3WUHxcn8rrEOYiyiS\";s:11:\"js/solid.js\";s:71:\"sha384-akyniW0Jfrt1Z7kvRmaF2fkq9vuVQAPEGN4qq7s17l9PG3zz7FThoWnfVxpvnUn9\";s:14:\"js/v4-shims.js\";s:71:\"sha384-08SAgv7bDUyzB5O71dehOCZ42IpryGqW/G+GdxeFmBfaB71QIZWe5ZXBFKYFTEu4\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-rTQdcTFdT69CgbBErourkScWQ6j5WQ4aAoCF0UyPhog3PNysM/xz/kqshWKP4NLA\";s:14:\"css/brands.css\";s:71:\"sha384-84OQfm1oTwjnXmujNUnQC09L4G7mglZspQwfSNPvf5V3zAA1sdvqbIigA9AWY5DB\";s:19:\"css/fontawesome.css\";s:71:\"sha384-NFsDS9VURN70zaqw67F1OtJ6MtdeCrHeGMD1KzqIv5ft0JiHgVtV7u+v09yR+iEZ\";s:13:\"css/light.css\";s:71:\"sha384-aofICWgqJQbZZCaWEU7H0ULLqXTBu/DAALblEYqLfQSjb2ASOw0tADOdJ5rmVDWL\";s:15:\"css/regular.css\";s:71:\"sha384-voao2F8iKUwwSMRhLJ982edrRSHOmc5v5rvQ/5aH5pvSAx1aoL6usygGSRz3jfHF\";s:13:\"css/solid.css\";s:71:\"sha384-RYuivM1ikcxEL+96Q/7B/CcvyswPRuOatldvqvk+Bm3hwVKZUjay1ohuPUyD9ZYk\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-NYMicmsVmKaI5/JVN8JamOLMuIrbzeu4Gc+cike3jcoDpaLfMtvWPJeNhnx8K8x0\";s:16:\"css/v4-shims.css\";s:71:\"sha384-L7wiz9NeFS+vFpG/jl0zBsE7EqrVfeNoaHhnvxlsfwihUr9FIbDnfQqv5r8o02wQ\";s:9:\"js/all.js\";s:71:\"sha384-rDdEqfkiaN9iEfS6XrBzTxL5wVFzBoMsyHmoAIl/T7VdxJvGYuM5bDlDOkmE6r3C\";s:12:\"js/brands.js\";s:71:\"sha384-TN18fDSDUbMxI3DK3z2G8Pl68N7jvVjWPBx8z0m7YhoWKnmGdKRJ6S90IcyeUXUy\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Oa9P+sg4Q/5Yo0a/UoRAG8zLSexWLxLgbPb12tgvs/swrfePVf6IdrwoW2RGV2pU\";s:11:\"js/light.js\";s:71:\"sha384-6DMqAgIR8HN9OqBF3zfhQ4Tmh+KO9Sf0QAwxGkiaKO51dFGBBxBTmdOSneYESZZ0\";s:13:\"js/regular.js\";s:71:\"sha384-LvwwgOzFfwTikawPye02NmwONhyBLBbmu04J+IuLBS6HdNHX3JnRqY80mscKVLTH\";s:11:\"js/solid.js\";s:71:\"sha384-71d190zi1266uo3WuvCJ77V1YdXxDfm5GPMySGFKTMHsoHaxKhPe5XkKaH9iPLWC\";s:14:\"js/v4-shims.js\";s:71:\"sha384-Rr25noDuBAtBUFs9feRsF3EK8Pw5bWuhYxD7ztcDUJqR/eiCpNPGIeyO5Ago6pYW\";}}}s:5:\"5.6.1\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP\";s:14:\"css/brands.css\";s:71:\"sha384-whKHCkwP9f4MyD1vda26+XRyEg2zkyZezur14Kxc784RxUU1E7HvWVYj9EoJnUV7\";s:19:\"css/fontawesome.css\";s:71:\"sha384-WK8BzK0mpgOdhCxq86nInFqSWLzR5UAsNg0MGX9aDaIIrFWQ38dGdhwnNCAoXFxL\";s:15:\"css/regular.css\";s:71:\"sha384-l+NpTtA08hNNeMp0aMBg/cqPh507w3OvQSRoGnHcVoDCS9OtgxqgR7u8mLQv8poF\";s:13:\"css/solid.css\";s:71:\"sha384-aj0h5DVQ8jfwc8DA7JiM+Dysv7z+qYrFYZR+Qd/TwnmpDI6UaB3GJRRTdY8jYGS4\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-ir31wc9kqVZclsGL3U5IucynDpj1TeEzDCvxEWqw8QuxLFETRgirOiygjXdjId3z\";s:16:\"css/v4-shims.css\";s:71:\"sha384-s0z+GcIRRdtdjGfnyKRFh9Oaw3aasU/TFotdFmreqjf+a+Mks2Umj0CrlN0S9lqi\";s:9:\"js/all.js\";s:71:\"sha384-R5JkiUweZpJjELPWqttAYmYM1P3SNEJRM6ecTQF05pFFtxmCO+Y1CiUhvuDzgSVZ\";s:12:\"js/brands.js\";s:71:\"sha384-rsLJp1pKbmeEMVcdsNJfAWZ9FQP5CrQt6Vikj/usZcTgrD28FhqYqKJn5XIaoXjm\";s:17:\"js/fontawesome.js\";s:71:\"sha384-T6YzYwAGZAItTIkYlBzfwqa07o9R1AND3Lgt6Or6c5IdukY7tqShoryqwpKrpeIB\";s:13:\"js/regular.js\";s:71:\"sha384-+e+pqX41PD6VrFw9HZ3YKJHFT+SZoEMBmnMpLUpHrdd5BE46xHCrzap9c6kfTi9H\";s:11:\"js/solid.js\";s:71:\"sha384-8Lgyylu0vfTGCXDKe435hJgX8s96c19R+dvpH0NHKdX47GA7TmMj+BDiZZ76qqhT\";s:14:\"js/v4-shims.js\";s:71:\"sha384-LqOeBjW8oAuwB6xooSoyjAV+CcJLQGftH6m0Xoo+mhJ0TlEAVR9jBsAXXpeEJlyP\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-NJXGk7R+8gWGBdutmr+/d6XDokLwQhF1U3VA7FhvBDlOq7cNdI69z7NQdnXxcF7k\";s:14:\"css/brands.css\";s:71:\"sha384-2k7wpGHb3PA1OZUtSqAk+nIVo2wgBQdEoL1F/FnC+/HHi2bh3N9aSstY0Af72gka\";s:19:\"css/fontawesome.css\";s:71:\"sha384-GQK3B9PHv3SNzYUrdlEpL6CFKQlW/Co4va906SViL0F6U16Li47NXtvwWmFnetYk\";s:13:\"css/light.css\";s:71:\"sha384-QXb14MpvHKJr57ixwhGSXACaU/eGo/NwF/uWE97+C5QPdq8sLQhM1+WKDk6vando\";s:15:\"css/regular.css\";s:71:\"sha384-ThqFFlbk+2bnAn1zc61SL7r8sFUVUkFvtsT+jYr1Jy6xTlvdcqzcerrDGrHqWv6j\";s:13:\"css/solid.css\";s:71:\"sha384-pbj30780YbUh3WmbEAhOL8tHgoaU4xrdmAN+RewL6HsW9EOMIIE4+6rerMXTfJXq\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-fjim8BUuF/D2Y8Qyr4U5iLdeKqzyQe927qD4SIdbPDyX2iSN6xNGhoyd2jTiw+Sx\";s:16:\"css/v4-shims.css\";s:71:\"sha384-c2aTxrKw0nWEPlLqENAD5t3J3Ajs/o5LBudKFP44hexDYKKQTgRCAaECkBk+p3L9\";s:9:\"js/all.js\";s:71:\"sha384-ncMWtRMSOo+cLmfdaa6vmMGzBJKysBDF9tq5YK1MAnAjcyipdW2vgTS1jOntY4fs\";s:12:\"js/brands.js\";s:71:\"sha384-+4YdTIsot+hvYL7nKQ9cJs7OWaFvJ7ZTkVretfEoX8uDiTED9tumG/9RsRmlW3jX\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ya+lFT8MCnVaSXkMxO4FEUsv4BG1VrVAMY0PiCnmJ4Sq57zoarae8T2EgioHiaMA\";s:11:\"js/light.js\";s:71:\"sha384-hy7ipunNmCKP7KpzkasGow2eTRYx9IbxV0BvBqlWLWRu8mlWMNrj9y6qOLEnxIuF\";s:13:\"js/regular.js\";s:71:\"sha384-8VWoI12VOwcfxYszEUreYXR4Jh1+oxv+mfsVISgPJTsc2Ftw4RC+bO719C+PunjY\";s:11:\"js/solid.js\";s:71:\"sha384-Pl3KUQLNwa33i6dvnL77HMDxZPk93eoi1kB5xZ0eGKgTEt39iQkHdSM6/w53By9e\";s:14:\"js/v4-shims.js\";s:71:\"sha384-ts+GFi6rOAISeHC+EnLaj6AOSoosWr3TALIaYSeHCVsNHkGLlTtzdbMvolIe6tG7\";}}}s:5:\"5.6.3\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/\";s:14:\"css/brands.css\";s:71:\"sha384-1KLgFVb/gHrlDGLFPgMbeedi6tQBLcWvyNUN+YKXbD7ZFbjX6BLpMDf0PJ32XJfX\";s:19:\"css/fontawesome.css\";s:71:\"sha384-jLuaxTTBR42U2qJ/pm4JRouHkEDHkVqH0T1nyQXn1mZ7Snycpf6Rl25VBNthU4z0\";s:15:\"css/regular.css\";s:71:\"sha384-aubIA90W7NxJ+Ly4QHAqo1JBSwQ0jejV75iHhj59KRwVjLVHjuhS3LkDAoa/ltO4\";s:13:\"css/solid.css\";s:71:\"sha384-+0VIRx+yz1WBcCTXBkVQYIBVNEFH1eP6Zknm16roZCyeNg2maWEpk/l/KsyFKs7G\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-KHV7fADs212mr+U2tmuDnxozv2BzTX1qhxPoZ/lT2QcUFkjwat694MI3AzyiVJ+q\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:9:\"js/all.js\";s:71:\"sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1\";s:12:\"js/brands.js\";s:71:\"sha384-VLgz+MgaFCnsFLiBwE3ItNouuqbWV2ZnIqfsA6QRHksEAQfgbcoaQ4PP0ZeS0zS5\";s:17:\"js/fontawesome.js\";s:71:\"sha384-treYPdjUrP4rW5q82SnECO7TPVAz4bpas16yuE9F5o7CeBn2YYw1yr5oC8s8Mf8t\";s:13:\"js/regular.js\";s:71:\"sha384-V+AkgA1cZ+p3DRK63AHCaXvO68V7B5eHoxl7QVN21zftbkFn/sGAIVR7vmQL3Zhp\";s:11:\"js/solid.js\";s:71:\"sha384-F4BRNf3onawQt7LDHDJm/hwm3wBtbLIfGk1VSB/3nn3E+7Rox1YpYcKJMsmHBJIl\";s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-LRlmVvLKVApDVGuspQFnRQJjkv0P7/YFrw84YYQtmYG4nK8c+M+NlmYDCv0rKWpG\";s:14:\"css/brands.css\";s:71:\"sha384-1KLgFVb/gHrlDGLFPgMbeedi6tQBLcWvyNUN+YKXbD7ZFbjX6BLpMDf0PJ32XJfX\";s:19:\"css/fontawesome.css\";s:71:\"sha384-toEUmnrGu+eq8XUD6ovsr/vFX+R3v9+FUGAnpef+uwGKMCeqZkcZfkXQ0Pls5WS7\";s:13:\"css/light.css\";s:71:\"sha384-ouQ4uivIto2ZdBS6+torZMbImJhWA6/m7/CAGY9z0FNDmoAF6uWAEnavvIsR1EBt\";s:15:\"css/regular.css\";s:71:\"sha384-IXqJGQI1K0IzdpdY2ASrRbDgPr1rUKzDAA90uL7iX1hPQf6Tkve9Z82TUVWm9aje\";s:13:\"css/solid.css\";s:71:\"sha384-5XPOduYq6F78ZOuHxFHpQJCD2l7aCHCf0+o8qKTD2VfqJTgPT3YkyuBGsDSrVsic\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-KHV7fADs212mr+U2tmuDnxozv2BzTX1qhxPoZ/lT2QcUFkjwat694MI3AzyiVJ+q\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:9:\"js/all.js\";s:71:\"sha384-4Gm0M5DjJ0zGaEtLu0ztNIoHWiuJ5rKiaVlpZKeNqXAW49eIIa2ymxb3C4c3uEXR\";s:12:\"js/brands.js\";s:71:\"sha384-VLgz+MgaFCnsFLiBwE3ItNouuqbWV2ZnIqfsA6QRHksEAQfgbcoaQ4PP0ZeS0zS5\";s:17:\"js/fontawesome.js\";s:71:\"sha384-treYPdjUrP4rW5q82SnECO7TPVAz4bpas16yuE9F5o7CeBn2YYw1yr5oC8s8Mf8t\";s:11:\"js/light.js\";s:71:\"sha384-E2rKHkorMllWJmt2GKXlwZ3+kPl6i3FrJ8ihFkf6F7F/AtGvuXY21bQC8mhz2Po+\";s:13:\"js/regular.js\";s:71:\"sha384-nX7teCj1FtQErhxXjr+JWXfe4EjU6KlgeVBHAzQ/L95eWzwx+W1+HuQGmxZT9VkS\";s:11:\"js/solid.js\";s:71:\"sha384-2ZaaAuh8tTVN1nHRrlXAX1tz8fGhZDgusJdBI5BBGycCq37AUonw8dHlPpx7iD6N\";s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";}}}s:5:\"5.7.0\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4aon80D8rXCGx9ayDt85LbyUHeMWd3UiBaWliBlJ53yzm9hqN21A+o1pqoyK04h+\";s:15:\"css/regular.css\";s:71:\"sha384-IG162Tfx2WTn//TRUi9ahZHsz47lNKzYOp0b6Vv8qltVlPkub2yj9TVwzNck6GEF\";s:13:\"css/solid.css\";s:71:\"sha384-r/k8YTFqmlOaqRkZuSiE9trsrDXkh07mRaoGBMoDcmA58OHILZPsk29i2BsFng1B\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:9:\"js/all.js\";s:71:\"sha384-qD/MNBVMm3hVYCbRTSOW130+CWeRIKbpot9/gR1BHkd7sIct4QKhT1hOPd+2hO8K\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:17:\"js/fontawesome.js\";s:71:\"sha384-av0fZBtv517ppGAYKqqaiTvWEK6WXW7W0N1ocPSPI/wi+h8qlgWck2Hikm5cxH0E\";s:13:\"js/regular.js\";s:71:\"sha384-Gxfqh68NuE4s0o2renzieYkDYVbdJynynsdrB7UG9yEvgpS9TVM+c4bknWfQXUBg\";s:11:\"js/solid.js\";s:71:\"sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL\";s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:19:\"css/fontawesome.css\";s:71:\"sha384-iD1qS/uJjE9q9kecNUe9R4FRvcinAvTcPClTz7NI8RI5gUsJ+eaeJeblG1Ex0ieh\";s:13:\"css/light.css\";s:71:\"sha384-puvvQVSC+mXL7INuI0i5Q7QkwwIyYIBJ7caGHiUXD7FndtoyNd78NxgvuBJAYI2m\";s:15:\"css/regular.css\";s:71:\"sha384-4Cp0kYV2i1JFDfp6MQAdlrauJM+WTabydjMk5iJ7A9D+TXIh5zQMd5KXydBCAUN4\";s:13:\"css/solid.css\";s:71:\"sha384-j+2fZ2qAg9GyYKkVpuwm+HLQVz6EYCaTqS3KKx8oectYXMgm4bRmohzCfEvi5j7J\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:9:\"js/all.js\";s:71:\"sha384-uyhTADGMAJuHgGNdH+rozTpOkfXUORTgjTmMBtxR8ISQjOs+IIWb8UBn9ixSd4xo\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:17:\"js/fontawesome.js\";s:71:\"sha384-av0fZBtv517ppGAYKqqaiTvWEK6WXW7W0N1ocPSPI/wi+h8qlgWck2Hikm5cxH0E\";s:11:\"js/light.js\";s:71:\"sha384-Vs12SjRkIvphC81scjUNowpLYnSOLOrSGxOwVe00oEvWto49wVgjd6BfdeCPcArI\";s:13:\"js/regular.js\";s:71:\"sha384-JZmzMsvgUATRcNmXpyJHLhiqsREsPN/GBj7O5ifVfRU1o4vBp2dsjawGzYzl0QVW\";s:11:\"js/solid.js\";s:71:\"sha384-OzCiQJ65BS/RiwFjTWyem+uRtZ4/LnrVVbwHTT8fR5Q9rYqAaavyOK51RDxkXQzm\";s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";}}}s:5:\"5.7.1\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4aon80D8rXCGx9ayDt85LbyUHeMWd3UiBaWliBlJ53yzm9hqN21A+o1pqoyK04h+\";s:15:\"css/regular.css\";s:71:\"sha384-IG162Tfx2WTn//TRUi9ahZHsz47lNKzYOp0b6Vv8qltVlPkub2yj9TVwzNck6GEF\";s:13:\"css/solid.css\";s:71:\"sha384-r/k8YTFqmlOaqRkZuSiE9trsrDXkh07mRaoGBMoDcmA58OHILZPsk29i2BsFng1B\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:9:\"js/all.js\";s:71:\"sha384-eVEQC9zshBn0rFj4+TU78eNA19HMNigMviK/PU/FFjLXqa/GKPgX58rvt5Z8PLs7\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Qmms7kHsbqYnKkSwiePYzreT+ufFVSNBhfLOEp0sEEfEVdORDs/aEnGaJy/l4eoy\";s:13:\"js/regular.js\";s:71:\"sha384-Gxfqh68NuE4s0o2renzieYkDYVbdJynynsdrB7UG9yEvgpS9TVM+c4bknWfQXUBg\";s:11:\"js/solid.js\";s:71:\"sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL\";s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:19:\"css/fontawesome.css\";s:71:\"sha384-iD1qS/uJjE9q9kecNUe9R4FRvcinAvTcPClTz7NI8RI5gUsJ+eaeJeblG1Ex0ieh\";s:13:\"css/light.css\";s:71:\"sha384-puvvQVSC+mXL7INuI0i5Q7QkwwIyYIBJ7caGHiUXD7FndtoyNd78NxgvuBJAYI2m\";s:15:\"css/regular.css\";s:71:\"sha384-4Cp0kYV2i1JFDfp6MQAdlrauJM+WTabydjMk5iJ7A9D+TXIh5zQMd5KXydBCAUN4\";s:13:\"css/solid.css\";s:71:\"sha384-j+2fZ2qAg9GyYKkVpuwm+HLQVz6EYCaTqS3KKx8oectYXMgm4bRmohzCfEvi5j7J\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:9:\"js/all.js\";s:71:\"sha384-5atZgfYD4MHp6kAnxjw4yM3binN4Yh5XXKAIO6m2kIB9CqdRUladdvTdffLnTK3N\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Qmms7kHsbqYnKkSwiePYzreT+ufFVSNBhfLOEp0sEEfEVdORDs/aEnGaJy/l4eoy\";s:11:\"js/light.js\";s:71:\"sha384-ua13CrU9gkzyOVxhPFl96iHgwnYTuTZ96YYiG08m1fYLvz8cVyHluzkzK9WcFLpT\";s:13:\"js/regular.js\";s:71:\"sha384-SdSeoV46BZSFmxvlUQwl3ImF6ton2ST4pPzYOmTTkFUm+UjdzORM0pTtF0sIHydx\";s:11:\"js/solid.js\";s:71:\"sha384-eLZVpmyzMTRsfwRGkcmyu0PXR5qqYDBCSh5PoYLdWFfDmMIibSuru0Blk+nq1Vfm\";s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";}}}s:5:\"5.7.2\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4aon80D8rXCGx9ayDt85LbyUHeMWd3UiBaWliBlJ53yzm9hqN21A+o1pqoyK04h+\";s:15:\"css/regular.css\";s:71:\"sha384-IG162Tfx2WTn//TRUi9ahZHsz47lNKzYOp0b6Vv8qltVlPkub2yj9TVwzNck6GEF\";s:13:\"css/solid.css\";s:71:\"sha384-r/k8YTFqmlOaqRkZuSiE9trsrDXkh07mRaoGBMoDcmA58OHILZPsk29i2BsFng1B\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:9:\"js/all.js\";s:71:\"sha384-0pzryjIRos8mFBWMzSSZApWtPl/5++eIfzYmTgBBmXYdhvxPc+XcFEk+zJwDgWbP\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:17:\"js/fontawesome.js\";s:71:\"sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq\";s:13:\"js/regular.js\";s:71:\"sha384-Gxfqh68NuE4s0o2renzieYkDYVbdJynynsdrB7UG9yEvgpS9TVM+c4bknWfQXUBg\";s:11:\"js/solid.js\";s:71:\"sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL\";s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:19:\"css/fontawesome.css\";s:71:\"sha384-iD1qS/uJjE9q9kecNUe9R4FRvcinAvTcPClTz7NI8RI5gUsJ+eaeJeblG1Ex0ieh\";s:13:\"css/light.css\";s:71:\"sha384-puvvQVSC+mXL7INuI0i5Q7QkwwIyYIBJ7caGHiUXD7FndtoyNd78NxgvuBJAYI2m\";s:15:\"css/regular.css\";s:71:\"sha384-4Cp0kYV2i1JFDfp6MQAdlrauJM+WTabydjMk5iJ7A9D+TXIh5zQMd5KXydBCAUN4\";s:13:\"css/solid.css\";s:71:\"sha384-j+2fZ2qAg9GyYKkVpuwm+HLQVz6EYCaTqS3KKx8oectYXMgm4bRmohzCfEvi5j7J\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:9:\"js/all.js\";s:71:\"sha384-I3Hhe9TkmlsxzooTtbRzdeLbmkFQE9DVzX/19uTZfHk1zn/uWUyk+a+GyrHyseSq\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:17:\"js/fontawesome.js\";s:71:\"sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq\";s:11:\"js/light.js\";s:71:\"sha384-ua13CrU9gkzyOVxhPFl96iHgwnYTuTZ96YYiG08m1fYLvz8cVyHluzkzK9WcFLpT\";s:13:\"js/regular.js\";s:71:\"sha384-SdSeoV46BZSFmxvlUQwl3ImF6ton2ST4pPzYOmTTkFUm+UjdzORM0pTtF0sIHydx\";s:11:\"js/solid.js\";s:71:\"sha384-eLZVpmyzMTRsfwRGkcmyu0PXR5qqYDBCSh5PoYLdWFfDmMIibSuru0Blk+nq1Vfm\";s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";}}}s:5:\"5.8.0\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y\";s:14:\"css/brands.css\";s:71:\"sha384-5G2m52y/zN053yjBCyNXXotYpL2r5k1wg9aakiM5OgK9kdcCB68EECUce5vZiz/8\";s:19:\"css/fontawesome.css\";s:71:\"sha384-Sbwc59I1SOoVoCGgBCwAe/M1j5a9cHixHv/7x9vOxORnT73jUaxyK0paobkk3JSt\";s:15:\"css/regular.css\";s:71:\"sha384-Vma7aWQBdmjVfr98uRd1HcA/r6wPYrlNrIvQBJhDCvZi3X9gVuHtqUKUYep/1KKk\";s:13:\"css/solid.css\";s:71:\"sha384-n4xPrkfCJ3FzmPwM/Nf1QQu7Qx6oDcsbMp+qPOxrJ5w0Tq19ZWd9ylcMWkzKEpwP\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-5ywFB7dcUP6RcAWMLvCE58MQE5YMXWSPjly1IqItdN0w0TqoJD+w68U7C3ShoZRk\";s:16:\"css/v4-shims.css\";s:71:\"sha384-IaQiZkMW7NRKIS04GeT98++WyQ6RNaEQlHoHoDrhU+hhCJE4EkfL7itJyj/vanQT\";s:9:\"js/all.js\";s:71:\"sha384-ukiibbYjFS/1dhODSWD+PrZ6+CGCgf8VbyUH7bQQNUulL+2r59uGYToovytTf4Xm\";s:12:\"js/brands.js\";s:71:\"sha384-Gt4maPu5ZO/PkTh32sKMYmmCLGuWtMkv5YBtFZpx4Tu+Of3kFZPYBw9iD/pi4L6s\";s:17:\"js/fontawesome.js\";s:71:\"sha384-TAztyRuTlqgZ97tz982rMo44MRC58wyCC0pqKZY3cKWJNkK00qMd3DhQ7R25jpCe\";s:13:\"js/regular.js\";s:71:\"sha384-IQnlolMpq26nEj6AOd6JOnY2jqCa69uFBqCGBCWSm4EFZYprebVtp3Z2xVLMElvs\";s:11:\"js/solid.js\";s:71:\"sha384-prcFDC6iTvvWsx2iSZtbDdeMVWWOtxcQXXagr9uPHwi42uae31Y3Q17eehHuC0JL\";s:14:\"js/v4-shims.js\";s:71:\"sha384-l9bFz0TmR1ecMQdb9mzBeiLLX3z0mqeK0Bsxhim3nnHB9PoA6o3FUumLH7K6W6/D\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-/pOR6TNYPdUaQQQRKQ4XHznZ4U2K/Lscb3u6jshUngC/31fLTuyX9FZb24gp4O3J\";s:14:\"css/brands.css\";s:71:\"sha384-OxPYtFc8yWHWBo2MFY4rHs5dKcTpNGuyft0hQ+K/vSUJA21jrxi+Py412o2wMvsL\";s:19:\"css/fontawesome.css\";s:71:\"sha384-/0C3VuTlEzBany89/Wf2OJLSGrduLCC28kuoGL/PCGJjGj01pVtiqOcgZZ9AtlET\";s:13:\"css/light.css\";s:71:\"sha384-YmipRqYc8Wly1koaxcpAPTnvJIqXBN4Ue5+l0drZn34sdM+UufP6v8D8/s9xxXOI\";s:15:\"css/regular.css\";s:71:\"sha384-iUhpWyroENmdb/oNEGUdCk4J+TfFOm/SNYi79nN/Hb1aQgjofylAAuRTUfpK2yP1\";s:13:\"css/solid.css\";s:71:\"sha384-maIT5Qg1FqlJhNYpN2IgLAb5XPLY8CqZ7tKBQyjHh+nx/7JXsI5bp+8JHnUgeuyw\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-BUeh/IoVXY+o863GdrQzogOOSo3ABFpxuc9xZhQVnsM2T2vKmrpHGZwaEqqX/SZs\";s:16:\"css/v4-shims.css\";s:71:\"sha384-lRITDKAHusCdCcsQiEA2IIoqExMRD36Tbn9CZj00L8klRpDyMeOoPSv6ubcNAHux\";s:9:\"js/all.js\";s:71:\"sha384-gUdv3ElxXd3gVdbCqjppYoQanRONrQDSdaZY3zn1KeASeS8YGy+T/JDaD2ohyarV\";s:12:\"js/brands.js\";s:71:\"sha384-XLy4uPbRNbMJUgEm6JLmHI784E68XjgSbheIn0fP/6GdZtCcsZmlXvceAGvhzKCh\";s:17:\"js/fontawesome.js\";s:71:\"sha384-aoV9M7ZLyivlmo8GKrkeWiOUQzBnYBpP6U8gW7WXfhssy+HtO87KzowcBokSiK3g\";s:11:\"js/light.js\";s:71:\"sha384-+itlrN2dvS1RqmWnkLQkDqzANbdKqtt6JyQfE/DXxFnhg/PXf0ufRBCSp0c6q81i\";s:13:\"js/regular.js\";s:71:\"sha384-GoKOHat5yLSUYiGMfLJkuCErUZrNlW+2FeFYuKOt7sUWbqvMQOqfB+mdpfCU/8Q4\";s:11:\"js/solid.js\";s:71:\"sha384-jOmpRjxTFmJAVhf7+H7o9joWtQWHRZLdr+B25WojM1yfhB9wFkDvQ3x0VDDn4aAI\";s:14:\"js/v4-shims.js\";s:71:\"sha384-gaNKDFtFZuAyZDkB8Wov1Vl24lMu5MD5MXLmUSu+4HzB8tTVwemJnhqN4Zuj27wd\";}}}s:5:\"5.8.1\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\";s:14:\"css/brands.css\";s:71:\"sha384-n9+6/aSqa9lBidZMRCQHTHKJscPq6NW4pCQBiMmHdUCvPN8ZOg2zJJTkC7WIezWv\";s:19:\"css/fontawesome.css\";s:71:\"sha384-vd1e11sR28tEK9YANUtpIOdjGW14pS87bUBuOIoBILVWLFnS+MCX9T6MMf0VdPGq\";s:15:\"css/regular.css\";s:71:\"sha384-FKw7x8fCxuvzBwOJmhTJJsKzBl8dnN9e2R4+pXRfYoHivikuHkzWyhKWDSMcGNK8\";s:13:\"css/solid.css\";s:71:\"sha384-QokYePQSOwpBDuhlHOsX0ymF6R/vLk/UQVz3WHa6wygxI5oGTmDTv8wahFOSspdm\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-acBDV8BDMPEP50gJeFdMIg9yE8eOPuFdBV9r+2F492NUbKhURdQvglFkG0Q+0rlE\";s:16:\"css/v4-shims.css\";s:71:\"sha384-knhdgIEP1JBPHETtXGyUk1FXV22kd1ZAN8yyExweAKAfztV5+kSBjUff4pHDG38c\";s:9:\"js/all.js\";s:71:\"sha384-g5uSoOSBd7KkhAMlnQILrecXvzst9TdC09/VM+pjDTCM+1il8RHz5fKANTFFb+gQ\";s:12:\"js/brands.js\";s:71:\"sha384-rUOIFHM3HXni/WG5pzDhA1e2Js5nn4bWudTYujHbbI9ztBIxK54CL4ZNZWwcBQeD\";s:17:\"js/fontawesome.js\";s:71:\"sha384-EMmnH+Njn8umuoSMZ3Ae3bC9hDknHKOWL2e9WJD/cN6XLeAN7tr5ZQ0Hx5HDHtkS\";s:13:\"js/regular.js\";s:71:\"sha384-Uc9toywOA44owltk1MWl0lQZ+L0mBzJkLQcdif6+JtG9izvok9DLJtCZX57Uq3k2\";s:11:\"js/solid.js\";s:71:\"sha384-IA6YnujJIO+z1m4NKyAGvZ9Wmxrd4Px8WFqhFcgRmwLaJaiwijYgApVpo1MV8p77\";s:14:\"js/v4-shims.js\";s:71:\"sha384-DWlD0qU0+4WTFKXrFbt8wXq/1NHvOGT8vwllYM0W2gIeqgaCC3bZ0U464mDtbR70\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-Bx4pytHkyTDy3aJKjGkGoHPt3tvv6zlwwjc3iqN7ktaiEMLDPqLSZYts2OjKcBx1\";s:14:\"css/brands.css\";s:71:\"sha384-9Wenwezdk1eEhfcpps+Heco4zWw6KuZ2VlevoPomUwWYYZd3nBX0kZ1hBV2zSIKF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4HqGlagEHMyfaDQVabl1wx7GCtGw6hDl3sKJEhqQjOCrXrvizhaA2j4hK8Piewtr\";s:13:\"css/light.css\";s:71:\"sha384-3SMOAKCN8LYSMjkWz1ChDg4pHSLtD+LuKXaZoHxE1oyDneLR6Ebjm3XHMHO9fWu3\";s:15:\"css/regular.css\";s:71:\"sha384-ELBQxbOyxSZRtZPNO1mVgYkEzMOXFNmQY6CLV1nw+4IZoiHWeuwYTnABxPxxsuBE\";s:13:\"css/solid.css\";s:71:\"sha384-MkkthiFx7890Rev6vwUJO4gRT4yuH5tqMm/Wl4/n9/qptaBpiGcMyjfgq2K4h394\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-LnvOeE4ntog9dzgq63i0OoI6jKPp3p0y693Fh4Fd4eOyx/UsAw0kHXbLKqML1p9R\";s:16:\"css/v4-shims.css\";s:71:\"sha384-68zdIccmue/irEHOgRiyNsWTZAGftSb6RkEtUhgaD+8213AXnbThq7m3WsO+B02H\";s:9:\"js/all.js\";s:71:\"sha384-GBwm0s/0wYcqnK/JmrCoRqWYIWzFiGEucsfFqkB76Ouii5+d4R31vWHPQtfhv55b\";s:12:\"js/brands.js\";s:71:\"sha384-b4zU5X+9uCyU5wpeWBsEIFph6tTD8ERLbUs93uYGQGNqzbcfPDeY6c4jMhTAfBri\";s:17:\"js/fontawesome.js\";s:71:\"sha384-w6QYwIdCVqcYkHtaFutVu3VlDeu+pBFvlp7e0/tygMFwnWTl13KuVYfsp0ediPpA\";s:11:\"js/light.js\";s:71:\"sha384-avwGKnev1pyXYEbWxXSg9S4rpTsws+5vQpoj76SfcccEzOL162Ei8+z4a6AlaMeE\";s:13:\"js/regular.js\";s:71:\"sha384-lv9QOXVC8fPRX14JTtgPGx1JjQPfjnqnp+bTlEnrW2FRawdJ4V8oe4Yq4kdfgJIp\";s:11:\"js/solid.js\";s:71:\"sha384-sJjbbGVKgAaulHq0KZK5MsUx9YmPj+4G3oY2vmW12iBNEFkkhObBezK0ZhSXchIs\";s:14:\"js/v4-shims.js\";s:71:\"sha384-J8Vif9iMSqb5RK45yq6+dnrM1lTP1oQcIHtKpoH0irzUJD/1gCK0pQgIr0hO+hta\";}}}s:5:\"5.8.2\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay\";s:14:\"css/brands.css\";s:71:\"sha384-i2PyM6FMpVnxjRPi0KW/xIS7hkeSznkllv+Hx/MtYDaHA5VcF0yL3KVlvzp8bWjQ\";s:19:\"css/fontawesome.css\";s:71:\"sha384-sri+NftO+0hcisDKgr287Y/1LVnInHJ1l+XC7+FOabmTTIK0HnE2ID+xxvJ21c5J\";s:15:\"css/regular.css\";s:71:\"sha384-hCIN6p9+1T+YkCd3wWjB5yufpReULIPQ21XA/ncf3oZ631q2HEhdC7JgKqbk//4+\";s:13:\"css/solid.css\";s:71:\"sha384-ioUrHig76ITq4aEJ67dHzTvqjsAP/7IzgwE7lgJcg2r7BRNGYSK0LwSmROzYtgzs\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-PLvJTjM1QH/74H66d1I1vU8KYsjkbjSJn87gUIUsIO6Xjf8fRO8Hxdevr46EkV7M\";s:16:\"css/v4-shims.css\";s:71:\"sha384-XyBa62YmP9n5OJlz31oJcSVUqdJJ1dgQZriaAHtKZn/8Bu8KJ+PMJ/jjVGvhwvQi\";s:9:\"js/all.js\";s:71:\"sha384-DJ25uNYET2XCl5ZF++U8eNxPWqcKohUUBUpKGlNLMchM7q4Wjg2CUpjHLaL8yYPH\";s:12:\"js/brands.js\";s:71:\"sha384-GtvEzzhN52RvAD7CnSR7TcPw555abR8NK28tAqa/GgIDk59o0TsaK6FHglLstzCf\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ia7KZbX22R7DDSbxNmxHqPQ15ceNzg2U4h5A8dy3K47G2fV1k658BTxXjp7rdhXa\";s:13:\"js/regular.js\";s:71:\"sha384-iFYyWQkY/Zvsdq3IIxRJI2FBoXPj6g73ok7rIH3sZGulA7E5PvFqB5BOELomUuyh\";s:11:\"js/solid.js\";s:71:\"sha384-+2/MEhV42Ne5nONkjLVCZFGh5IaEQmfXyvGlsibBiATelTFbVGoLB1sqhczi0hlf\";s:14:\"js/v4-shims.js\";s:71:\"sha384-5i8QG9UXrCZePXfj1ac87dq22tNtGoJ22fmjXaJI8iIy072+ZKv1NZHbsTMfYvnV\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-xVVam1KS4+Qt2OrFa+VdRUoXygyKIuNWUUUBZYv+n27STsJ7oDOHJgfF0bNKLMJF\";s:14:\"css/brands.css\";s:71:\"sha384-BeZiOfMYSXjscewXEIJ0PDoBy27u+zVSTP5ZuW3kjEZKCn7pOB7v+oQVtAtHfY0v\";s:19:\"css/fontawesome.css\";s:71:\"sha384-fqilzf6i0kkOYm+DT4UC9pWzYf4/eFdJKroY1jZyE7n8eYLujyYM9VCucGf/LdVD\";s:13:\"css/light.css\";s:71:\"sha384-0WqtEOayxoyo7wgxUc5l2RvIbaWTyny0LrJbwsKhrKXUyopxvaNFLIoob4dXRwLO\";s:15:\"css/regular.css\";s:71:\"sha384-jyNdSTwsauV6/i9u6sKFOZBrxlr4QREAY295HsNy8laz4LYryhnPdz0ewFVERKfV\";s:13:\"css/solid.css\";s:71:\"sha384-dUUyoHgD2BplZp1AnRbRu0HPC5jscpJEJaJjqnBh7Y5PT1gW7cM6BQEgrcOsSa7e\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-+BcpgpzTfqttc/C2LUPzGXIGunaa/aIuSC/BPO2BBqqMbHNRCF7d3DU54LxbCzTS\";s:16:\"css/v4-shims.css\";s:71:\"sha384-TpRSvWoRbPKMMxDvVZgEa9wxoOZyawahRkC2P+ksDRxjPSvZjhEf5nU7pqSWBCQF\";s:9:\"js/all.js\";s:71:\"sha384-RLPiEwcAdrH2NjFcwJipJtlFoIN1xvqPYeeDX5yYtSNu+HTIkQCDvPQ9thsUnPUS\";s:12:\"js/brands.js\";s:71:\"sha384-NBtHk407eZGNubj82MbaKt5CrNLfhnYmCbpjSyDk/nWemMXE/mfvm3c1MPjfnWmU\";s:17:\"js/fontawesome.js\";s:71:\"sha384-b7K10RWf2Q3m26zPrKzM95th5yJnxEw+vpCzNITZFKV8UgxPgHb61bS0xFkKdV2I\";s:11:\"js/light.js\";s:71:\"sha384-BMiulaMo0kY9ExzwDFFjsXkU373Br7qSwYa/hdDlWEWEkE3flk4mBFvMwlpye3Aw\";s:13:\"js/regular.js\";s:71:\"sha384-uMEQdPXvyCTabszTyCxRRMDh/xIcRlT/fpq2DKkcjR6+lOqq2111EL0C1OiRVu1E\";s:11:\"js/solid.js\";s:71:\"sha384-9fQzIUDeLlrPRI2CT9AqVv6Yr0JgEY0+rr7ngyaatQAQrEHhCv5CvG8F8UFdgk7u\";s:14:\"js/v4-shims.js\";s:71:\"sha384-Ts0FauTmSRKZNl+Uw+WC04UuoVYd2gXlJ+OcUvb1NDrV2XmDcgCr8PPv5MY/7KZR\";}}}s:5:\"5.9.0\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:13:{s:11:\"css/all.css\";s:71:\"sha384-i1LQnF23gykqWXg6jxC2ZbCbUMxyw5gLZY6UiUS98LYV5unm8GWmfkIS6jqJfb4E\";s:14:\"css/brands.css\";s:71:\"sha384-vfTtNoEyqnxivzqkzc+mvlVeCWPGwMlIIkeTkt0mcUQNmFLyyXxY5SgZIkKQIXRK\";s:19:\"css/fontawesome.css\";s:71:\"sha384-NnhYAEceBbm5rQuNvCv6o4iIoPZlkaWfvuXVh4XkRNvHWKgu/Mk2nEjFZpPQdwiz\";s:15:\"css/regular.css\";s:71:\"sha384-5E/NXotaQSDJW8gq/9pxwQHSPRrb21suHuLPqOIlgob8QC8ltM13i6HLujrhWmBL\";s:13:\"css/solid.css\";s:71:\"sha384-ypqxM+6jj5ropInEPawU1UEhbuOuBkkz59KyIbbsTu4Sw62PfV3KUnQadMbIoAzq\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-Bfk4oyOug+rBqsciYilQ+iwazXsMTURz/M6Gfx7fb02KNeW5VHwt7aHTXWNU9B2W\";s:16:\"css/v4-shims.css\";s:71:\"sha384-zpflLcSaYRmTsnK2LTOdvChgML+Tt/4aE2szcblLVBXd8Jq/HGz6rhZqZ+4TkK75\";s:9:\"js/all.js\";s:71:\"sha384-7Gk1S6elg570RSJJxILsRiq8o0CO99g1zjfOISrqjFUCjxHDn3TmaWoWOqt6eswF\";s:12:\"js/brands.js\";s:71:\"sha384-CZZj1HZWqgh/CGR22Lnl6+fZC6IDR10ga+wECjipCR3zId+7ZxZP1JNI+YgdzyO/\";s:17:\"js/fontawesome.js\";s:71:\"sha384-RXRrB6R44g3RRohoKLAOK5MjNq4PVvz7iZErCckeyobGIJLpTP2qq6xjJFuKnfZu\";s:13:\"js/regular.js\";s:71:\"sha384-xrLv+W4OudHJZ6QDKuv+el28Wyr4OMO0qSQuBiPqhBsnSGKdGct/ElQm+2/fx/eS\";s:11:\"js/solid.js\";s:71:\"sha384-kDWpGOpzLEy85/cK1Df/ba6PkpDHAKUGOX4YHEt0sFzHdrTY1rGmT/gYHN3zCcF0\";s:14:\"js/v4-shims.js\";s:71:\"sha384-npD7syUhXOZUTbAzJEyIPGq/8gGAhBmei7JkUwUki9hAtz9oPkFJwx5f3vGb7SOi\";}s:3:\"pro\";a:15:{s:11:\"css/all.css\";s:71:\"sha384-vlOMx0hKjUCl4WzuhIhSNZSm2yQCaf0mOU1hEDK/iztH3gU4v5NMmJln9273A6Jz\";s:14:\"css/brands.css\";s:71:\"sha384-wRa49NRotGDh34aLO1Hjbu65qHSTF/ZNSBm7uTpMUa2EQ1Csq7Zlswm+FR9hcWtn\";s:19:\"css/fontawesome.css\";s:71:\"sha384-QSCxeayZXa6bvOhHReoQRGN7utvnOnY3JoBHGxM61JQQ1EXA7AT3m7dnlHXLhnCj\";s:13:\"css/light.css\";s:71:\"sha384-/ggAGHSQWxssDRflcj0aeAlGN2rNgsnWOLv1ZU5FEvjQWxP53glq5pNPjtfldVVN\";s:15:\"css/regular.css\";s:71:\"sha384-FrLF2uGffV1P93pQZme192v/cHRu1XlgjMreWAScHPPjBz/p9pNTx/bTV83x8peQ\";s:13:\"css/solid.css\";s:71:\"sha384-KyLwW4NRDhAz4RVatBCvFATniD3ze5rJvP1usxUFectdGgG8n+7OTcZug8s4bj5H\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-dwNK02s77FqYOBDJpF4ttbI23g2UUTrI9euJ+OQGonHAy4W1kCpAyV7ozLK24GWz\";s:16:\"css/v4-shims.css\";s:71:\"sha384-tlZ/hMWxtcO6JxnBPYGsa5Oiu1gmAqp/bY7s7G6m5OOCJvcNQ6Fo39YHu4Elr+Hf\";s:9:\"js/all.js\";s:71:\"sha384-nKdXFHC25mX+ztWymakpQ8nRykznAcZ+yHi9XETJ8CuVvvSGeg/0QCPhvDb41hUb\";s:12:\"js/brands.js\";s:71:\"sha384-4Md2NBtJT8CgVnGaoonPkhRdMvGcFRH/nATvRJ0+2VsJ5bjySPpBil+KbSC+9yFv\";s:17:\"js/fontawesome.js\";s:71:\"sha384-nFIVFc2+uHHcH70YEBnMC6UmUjVxcQ0rZJe7u58lz5aUDQRz0l3xFmVSdao7Ag/K\";s:11:\"js/light.js\";s:71:\"sha384-C6XejYBP1H4YOZVReSXSBion6LKXOt7htNgjRlcKQSsMnL+/Ok1vyvI5EQs1/H1e\";s:13:\"js/regular.js\";s:71:\"sha384-GlXg5Pw5UjuoWpx2tbE3LsctnmBsngO5u5c+nK1slAwSuwN86zPzez+sFxncM+Tc\";s:11:\"js/solid.js\";s:71:\"sha384-pAEZwWHMzeWUPLx+edoghTzc+LBoBSIWMNFPeZGDiFDP6WL4g+EHr7DhQMUpjSLZ\";s:14:\"js/v4-shims.js\";s:71:\"sha384-A2MQ6ZItVBjKp0Efdmi8Xze6uRApxGoHzuGImgZGk6JfuaQ9Vkcev6HtJSQzftWE\";}}}s:6:\"5.10.0\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-0c38nfCMzF8w8DBI+9nTWzApOpr1z0WuyswL4y6x/2ZTtmj/Ki5TedKeUcFusC/k\";s:14:\"css/brands.css\";s:71:\"sha384-19EzMRnOAF4Gg36FukRf0Bee26rnZC49Ld5mFG+8XiQ8ddeKQYj7Rnl12YxIoHe6\";s:19:\"css/fontawesome.css\";s:71:\"sha384-YYaKmJMZQbIhKGKC1QGjVKSQ3s9OlZitN6xQQEPksarSkM0WNkq5Kke0yehyNwyT\";s:15:\"css/regular.css\";s:71:\"sha384-OVGJJ0J6OIuVjxoE5rUQPFweGgzO0xT+HKN5IChh3LTrsWQKjHocfKq+nk/8DogN\";s:13:\"css/solid.css\";s:71:\"sha384-dHM1276IWlmmltsiRRg04ASaTBbgAqnnjneOemUaqff0rqTtVHw5qqKE5i0k4Qll\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-oBn2TNb41FLJEvg05fPEoAhWHErn7PR1FiyT6NjQkoPzDDg1n/e/GrwRgh34gDmQ\";s:16:\"css/v4-shims.css\";s:71:\"sha384-R4Ah6+FGj2TWi1SbbJo01aRwLwdNunBoW4ALQ4SdcDpyQpKoP0pTL3Ce0Hf0oMOh\";s:9:\"js/all.js\";s:71:\"sha384-BfzGEucsDAHnSR99xBvG8cNHx7h6sEbKJejtvqlMrN8nMi3gP2ds+sMAjWfWnZyn\";s:12:\"js/brands.js\";s:71:\"sha384-SgCx6DCTHwPNfTrT8PeDNKVR+bLsTKTVnBbtZYSLgfp4dd+KGa6j4/Jy96HTd0nw\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-yhpUSfH+AXwjqsle/7pS92NQZivmuHw41bqBfGxkaV4ftpRTE9Z6MNd2oh9x/BBm\";s:17:\"js/fontawesome.js\";s:71:\"sha384-LMbxIMq/Ra43sLL8MF9d0C8NDym6Cp7d2rtvvZUd5n4EuGE3GSYBmf6JV41EB7+y\";s:13:\"js/regular.js\";s:71:\"sha384-eX5P9jt8OdQQ4ME1Y4Q90r5k0qCw55F9jie73NYjcSEHIYYV+x3MW3XgqK7HDuOG\";s:11:\"js/solid.js\";s:71:\"sha384-WvtEEwvz7coGHFMqz/gUsacHkjubSgzLIieTORXey1KIpl+/r1Sk5owMdBxnGFHy\";s:14:\"js/v4-shims.js\";s:71:\"sha384-RT+uACaLSP2jOOLdRXKvxcgxA/WNa36UYkM14r9ODCgz51g7frfTdR+Jv3q46NW3\";}s:3:\"pro\";a:18:{s:11:\"css/all.css\";s:71:\"sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p\";s:14:\"css/brands.css\";s:71:\"sha384-/BwiSb9M4ZqztN8bEG+VrC9ohWSBX3qEV95+/+gBJoE4+zG3KqcLj8ShUhBIALSm\";s:15:\"css/duotone.css\";s:71:\"sha384-R3QzTxyukP03CMqKFe0ssp5wUvBPEyy9ZspCB+Y01fEjhMwcXixTyeot+S40+AjZ\";s:19:\"css/fontawesome.css\";s:71:\"sha384-eHoocPgXsiuZh+Yy6+7DsKAerLXyJmu2Hadh4QYyt+8v86geixVYwFqUvMU8X90l\";s:13:\"css/light.css\";s:71:\"sha384-2CRj/5C4pwyS5v+q0KXxQ39b3qsKQNE6T+9FFaAOlps/XjJcK+M20aMUxuQtRLaZ\";s:15:\"css/regular.css\";s:71:\"sha384-pWItZRjB6NLzlrnwcL+2alve4CtHiaLj9W5ZwGPgy6dtMzCPsGv/qEcRvrbVkW5i\";s:13:\"css/solid.css\";s:71:\"sha384-Zbnz7QaugaSWTYmuSFTHGzMLxXAu2vzmqJhA/DS3bnaZGJaatH8apOWXfFaP6PMh\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-85qDq8Thytv8iDkEBcdksps8EZiX4DEo3vh6Ijk38Xi4RVm37Ttn+HU9rsXho2fN\";s:16:\"css/v4-shims.css\";s:71:\"sha384-y51MGgwaeLjbh5fbY1GJ6PypnEoMkGu8MoR1HRE/p/hHfiEE1G9bK/79bstJpyYk\";s:9:\"js/all.js\";s:71:\"sha384-G/ZR3ntz68JZrH4pfPJyRbjW+c0+ojii5f+GYiYwldYU69A+Ejat6yIfLSxljXxD\";s:12:\"js/brands.js\";s:71:\"sha384-8TDwqaS9Kr9a/3cVS6+XkvWUM1tz6XdS8s2urD5rXY1Cz22kPF77ZuG1gIWaz6kZ\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-JB1N15Wp6AIOL3sQ9Tm4a0kATlQy9/+/nLmU9B2wv4K4gGNAUFZEU7qDcxIPJLXy\";s:13:\"js/duotone.js\";s:71:\"sha384-PcDzzpTJzDDda2YUM4EY5ZqnZQ3DTIFtoaAn7t07N0UIY1HVyaxIHRzROmFBd48z\";s:17:\"js/fontawesome.js\";s:71:\"sha384-8YSeMunSTZdDZy7rZxfG3NqC3KnYaCKxTJMm9yoILgIoMpXeTKDrV8TeV9C5ItEc\";s:11:\"js/light.js\";s:71:\"sha384-sEc8iKGnMxm+Dm4AQabXbw0DKZU9FtFrWMppMOsxaUZsLL5pcpQs4aL/OfefTw7g\";s:13:\"js/regular.js\";s:71:\"sha384-wNQjNuGVt9TzLWqaxsZvH5uIDIxEkpSCeSPg6nF2ud6AK9jXY9yMFA6CbcZrr+cZ\";s:11:\"js/solid.js\";s:71:\"sha384-Vh+IVHoo4c4JXOfJBoUxIiEJf6bB443zoyGtwY8WbBmCU+7fAq9QX9JLtFcNSPZl\";s:14:\"js/v4-shims.js\";s:71:\"sha384-vzU1ar4oP9lOG/JJdj1q/+3aatI/ZbpyHIMelvsAi2Ee8gCiTIb/YhqRymLLZkje\";}}}s:6:\"5.10.1\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-wxqG4glGB3nlqX0bi23nmgwCSjWIW13BdLUEYC4VIMehfbcro/ATkyDsF/AbIOVe\";s:14:\"css/brands.css\";s:71:\"sha384-+B+cmd37r9agFUqHw5ABups/+o97SqA/Y6S5b3ly2q0ABacloQs0HZOQAX1NpJhF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-jUGOH+gYMCfz2jbO6DW8vojES/a323h7dcoT6qI7Bvod9mew/wwTZryjccmaMOkf\";s:15:\"css/regular.css\";s:71:\"sha384-gr19od0wAxe2+mYHEXvS7Y1ppn+ESoAQzTYGPauVJYyAYYl0NBQaKveeQnzez2Rm\";s:13:\"css/solid.css\";s:71:\"sha384-VUnOJnDrNS0aVOhF6puq5SPJOP5oOvIO6n54m14E2/OHv6DU1gklJ4EImoD382c5\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-94OQehjHMl3lApC2tWmjwtxlB0oEtSE2zrTdf8uuWEaDEkkCxXK/w0vFs5J5WPU1\";s:16:\"css/v4-shims.css\";s:71:\"sha384-i1lF6V7EeiD7KOgGLtAvJiK1GAQx4ogzG6B9gpEaDuHSLZuM3sFtPZrI6H2Gzqs6\";s:9:\"js/all.js\";s:71:\"sha384-aC/bNmpJEYrEVX5KNHN+m0CmvycQX9wDnYv8X2gdXQjrbtDP5OcU5DRiXwL6bPwr\";s:12:\"js/brands.js\";s:71:\"sha384-BZIBcmKlroIkWe3e13MZbUHZdmagAU/8cnXo9mIW5p5wzf+/U5ULLQ8TVioSuCnC\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-A6TzAYakDQ9XwDY1hOPxAxI/3t6kol61Ed9hvHegEwcENzAE0vLojG6wItQDmclf\";s:17:\"js/fontawesome.js\";s:71:\"sha384-NXKh+ixIINN/JHIorH6fcTNwaAekBk2v7azch6cKmQm7wtb0yBt8ctqn1FAspAW5\";s:13:\"js/regular.js\";s:71:\"sha384-7Sk1mIxPYoZb2I3YK86sPsPMftKqv0aWP+dgX//x1mF1mSOYydXmX7DbtHN99bea\";s:11:\"js/solid.js\";s:71:\"sha384-dc4FEGpFyXnyL9DbieF6I8Xzipdt7GRHX6k8RM/ow6+IDISjPeeTwTiAkNzjv2OI\";s:14:\"js/v4-shims.js\";s:71:\"sha384-BtUWeH6hQDQGUZewQDmWRMisAxvs1LtqoVQgmbFptFnH1GpBw2b2vZenxfFmRtOS\";}s:3:\"pro\";a:18:{s:11:\"css/all.css\";s:71:\"sha384-y++enYq9sdV7msNmXr08kJdkX4zEI1gMjjkw0l9ttOepH7fMdhb7CePwuRQCfwCr\";s:14:\"css/brands.css\";s:71:\"sha384-9J78p9RP9gty/jk0TJPvYSzmYYCH4cRRkDMnZGxZNh1wdaXLvXzIk90EWrxjjqr9\";s:15:\"css/duotone.css\";s:71:\"sha384-Na50X0DRTNz+Sc+4XbFXONmaknKHBHw6gvRZ4coLQCl7ZLXziulq+4wvTZxkaM+U\";s:19:\"css/fontawesome.css\";s:71:\"sha384-OvQaO09Stu8nVnOdc+6B3WjpKg9dfBxoakdLxJKAYgsz62+DzBUCvWRxPl9LRVSq\";s:13:\"css/light.css\";s:71:\"sha384-CL557/BMzDSg/4ctPpKDphHJgLqpdJ5rvOklcaHzLHpX+qsgd4V/xao6Rya4xKMQ\";s:15:\"css/regular.css\";s:71:\"sha384-yLDdP4XFV3JqISKN0JaZ0kdyks9S+U2o9uBmNbmZh85yjdF/kpu+oY3/eXQcGHhT\";s:13:\"css/solid.css\";s:71:\"sha384-BrYpEWmuPyxLgVmvUGa111AoxZ3kKwiG4TVjjewWZV9vww+dTLWpmEffDSEg9Gf5\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-V8iByeksgr2la9ceLV1jNv7uWdzI3pYZLNzgYqWmQuQZa7khs4d6QC84YnMWoKxx\";s:16:\"css/v4-shims.css\";s:71:\"sha384-rql5zubvrhoXpo5buqgoiKryiT02OHCEtveKZrj4NX/C2Kuy7W2P7vl+RVzBUl9m\";s:9:\"js/all.js\";s:71:\"sha384-FW78RPcSpi13vjx77nPWQIrQbNSLkPBopb0qGzLCxD2x4Kr6FA8V05C/6cpgkKPL\";s:12:\"js/brands.js\";s:71:\"sha384-DGr5D3fYhGn4bylN+nFRaxvPt6s4FjV7B5EhOOFUKW0JKU2vco3q3xtgSZeeEYpw\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-++EkH6KNUkbsGzUhPmRa5yboy873FnCrHLPNWnvcfYOzCCShCQHtdQ3RQTt3WDsW\";s:13:\"js/duotone.js\";s:71:\"sha384-QwVJpiaupNLHQYsfQUftqzWXMT+SsU4AKnlvxDGzNjTq5xPXRbG/ohsvyIEyK2uf\";s:17:\"js/fontawesome.js\";s:71:\"sha384-v97MeHGTkmNphZhn+D7412xlPlc61o4jy6CouRwKfNltfXH68HcYhmQBr2j/J/Vp\";s:11:\"js/light.js\";s:71:\"sha384-TZInz5PvbxRzxSlGI1WYKmrrBBk/XTTZymO6w+smmSVD6RFpfZd+JtSye/viSFxA\";s:13:\"js/regular.js\";s:71:\"sha384-ZlV+aQMpcvCEqNPe9qTu/S6+eBL+DfRjOxr9wtsoZyGnJ/vwQk/U2SZhZ8tJqH5F\";s:11:\"js/solid.js\";s:71:\"sha384-WtnuXyp6MLUsHy3FAqJyL7aL0a/mdUjPwIs/Ub7FXJZufo/0qH9aFsTDY5Q6Bx3m\";s:14:\"js/v4-shims.js\";s:71:\"sha384-P9HMMmM/ObyzYMvKfF0Xf40MYwNdkI08AwhSyCsAVlmXZkJ9GaI0Z23pozRg8HAe\";}}}s:6:\"5.10.2\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-rtJEYb85SiYWgfpCr0jn174XgJTn4rptSOQsMroFBPQSGLdOC5IbubP6lJ35qoM9\";s:14:\"css/brands.css\";s:71:\"sha384-qVnmyLTtnGPGEN3HDG2MCEOXWH1Yk/i70lKRuV+gMCDQg+jblQlFGPf1mejWUyYG\";s:19:\"css/fontawesome.css\";s:71:\"sha384-hM7EQerc09E4O3zhtvF2iqcB4ZkEu9xkLQndhXdGGCEJ/sB4JK54SuKGmIC35UTf\";s:15:\"css/regular.css\";s:71:\"sha384-zuVEAfuEXYtKnHpmwmkhzwMdR2uek5gePU1XveESmScyRJHbncv8rLEAt+ofv7ze\";s:13:\"css/solid.css\";s:71:\"sha384-qPldrzmea0i8jhonuql0da/kQWeaXdQl+krGXcTQUdRUGHcXBfSrBbZLbyMcCWcF\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-G0mvrlfkz9DnjBCRmY8Wf7nC8wTxDsHE3pGAc7/4rDLh5+v9Z00qi/uyjjcDf1nf\";s:16:\"css/v4-shims.css\";s:71:\"sha384-updXts+unDswrMsYxLc5R+HfSmF8CuEIOe48Rj3DoVoPUIImOT1fs26H/tr/H9gC\";s:9:\"js/all.js\";s:71:\"sha384-QMu+Y+eu45Nfr9fmFOlw8EqjiUreChmoQ7k7C1pFNO8hEbGv9yzsszTmz+RzwyCh\";s:12:\"js/brands.js\";s:71:\"sha384-0kDL5YEgNJjL/kNToZYEds3evLmosarb6OU2eKqRYu6O28jcJc121tjUC40sG9VB\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-Hg1lNcVEsyCqBb1J4/U9X9IW2DEhAKIBfBIE0J0eiWGEX9LEpEULwcsqoAb6HDgG\";s:17:\"js/fontawesome.js\";s:71:\"sha384-5WtMZ7frOu4PgR22YgRSlercgEU28i5Zn39Svk6+2cg1MOigLDSsvXccsmJO2Wxp\";s:13:\"js/regular.js\";s:71:\"sha384-CYi/gunDGMYA12KV546MNRqsjbbWSyKgPjA9BwVMBQmIMhzVrjyUJwkV9uujzHLJ\";s:11:\"js/solid.js\";s:71:\"sha384-RbVpZhfPW/1SmcShwIOauawY5vJWxTCeEnmiUCiY2SbkrbKuSGTqJ9NnBUmcP95A\";s:14:\"js/v4-shims.js\";s:71:\"sha384-gDM1aRghQ5DRg+fSCROSYawrJhbAHqa6Teb2Br0qRJtb+vRJlyU4U4xnmN5cwJ9j\";}s:3:\"pro\";a:18:{s:11:\"css/all.css\";s:71:\"sha384-XxNLWSzCxOe/CFcHcAiJAZ7LarLmw3f4975gOO6QkxvULbGGNDoSOTzItGUG++Q+\";s:14:\"css/brands.css\";s:71:\"sha384-hIpb1kefRKjC/r6WxN0S6Nai7+AuherqCoHKD0HNdXkbzJkZcS4o62bJ7ODiBWAu\";s:15:\"css/duotone.css\";s:71:\"sha384-B6+5TXCEkY2Io8b+v2Ki0aEWnpCFgBYkOzXAHY3oQ4tr90JpQC1RErwFbvJ9CRt8\";s:19:\"css/fontawesome.css\";s:71:\"sha384-1sdMwbsd8X7Y+nVcEr/4D35smQEaEd6Qz+R00Y+NPUkG8MyRa97RrX5I4nqDt6X7\";s:13:\"css/light.css\";s:71:\"sha384-dlxpRYGi8Pjg49IqtrDIVZmCOQZ//oDKDkoqbn/IXrwwQDP4Uf0ys6+eH1z9sfhV\";s:15:\"css/regular.css\";s:71:\"sha384-hKM7KqUOh6F2PI59uEhofbDs/5qHHdJEULlmNWJEQcu3D/5/vl5zpwBrveC4GAbI\";s:13:\"css/solid.css\";s:71:\"sha384-FCdq+BRoY+lV7Zy7HKKQ4zoywYLRyasGk6IrmrXfmYs0xIgL0QrPeEPTu3T4Uqcc\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-+OTv1mrGtdzHGeAuFSVKpPvaMXNpUu+W+Xs4xYz2RgUlrBctmMyE3noRImN5j+ot\";s:16:\"css/v4-shims.css\";s:71:\"sha384-88Tda+TyAtJK9/cRRXAWdJjyE56Tg4ai2x7RoSEqSVodcInAoV0HNQ2ofaGCidyr\";s:9:\"js/all.js\";s:71:\"sha384-lowSFbzpSYKDOsvnpi2JVneSnkrbVjOTwcHOWpC+tj/YT1mxTDIB3ZqbtllmfUSC\";s:12:\"js/brands.js\";s:71:\"sha384-nyTyvpFz3BvQZucRUSSEDlyivN7GAC2Xhgl9M92o/rt/KfEZ7LkqusFXlCjM4DvC\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-eYjh/PZbsWw6lqYWtDM+NlcRs3pUkOk8r4mxv/x0xDjmYPXTxPKQ8ZNXxOnd0UCL\";s:13:\"js/duotone.js\";s:71:\"sha384-2j1n2yG+7lkO9CjnN1DSQOGJoDEaJPEr+TPmTer3pK/yD3bQ/Kk8bqJyS3LfCK26\";s:17:\"js/fontawesome.js\";s:71:\"sha384-sy0tjZ+ivgcg2wUVVEmLMO5wfntWOSyQaD7AQec0iXINci5JAP92T8sM4YldYQIA\";s:11:\"js/light.js\";s:71:\"sha384-vh/BsPXkl02OgBjk1HJkukipMWFU6vHADY4W3u9BXIrKjcRFw5Y5XikVLoLElHee\";s:13:\"js/regular.js\";s:71:\"sha384-p89srWlrnSOel/vi/SpBD/wyTTJhu+27jcfOazOCUnLTpcxG+NVuYs/okkO2JBox\";s:11:\"js/solid.js\";s:71:\"sha384-JzK2muq5DGAdfmBP1xyuFUAYGceTmP/Y84tZvRxkdtsjwuIcd8Hpf1D+5izeBUQP\";s:14:\"js/v4-shims.js\";s:71:\"sha384-z089sTZgTLfns4lyNCTpVbdQA6JAhOs6JXwRH4ig0M6EHPg+Lzp/hdcx2OHQn/v8\";}}}s:6:\"5.11.0\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-XLYVh3ZsmvjnjODXg/qvDYjcINmPLORACP+Tk6qA3jNLbStl84PzAeEz2Su02511\";s:14:\"css/brands.css\";s:71:\"sha384-ngkCSSyhFgmeG9/8GICGMwnX44Q70/NN2XuNgrpMHOAjXVjYwTvtQML/2+2EH5mm\";s:19:\"css/fontawesome.css\";s:71:\"sha384-saSWCOAroWA1DTfG19axC5l7ej+/lsLpGrQjthhULGGw0FKZqZmxdjRhWqjypqgH\";s:15:\"css/regular.css\";s:71:\"sha384-NJ6bXu66piTFdxVfLXmQuxcjGye4blIA4H2DybHqY1WFdYSxbKQo6W0G53caD7MY\";s:13:\"css/solid.css\";s:71:\"sha384-1Ln0i7HCe1LMHO25AgX/9s/3XzTLIMev2SYgQz8xSyXSa3775gIb15NIpJoDRYDg\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-utbeJwkEmotPPgnsjR2cFDH5mR1JrU1EX02CRdVYlT6MuuLA6/jK0M1UcDXBVNa1\";s:16:\"css/v4-shims.css\";s:71:\"sha384-QZ/09hWMymER1waFUW4M2iM55h3bf5FVf516rOAYf9G2mHSpAj+oo/6jrxhxiVq4\";s:9:\"js/all.js\";s:71:\"sha384-Zgm+jt84FBq52ezxzG1WPrUHXPTLraCVSuBDiGgz/mX0FZxgdkTZNephFvciYglv\";s:12:\"js/brands.js\";s:71:\"sha384-FYnxcuBilMBfd4M0z3ZhTEWrorBL6P6mqaDWsYN46z3iJszwg7yqVAft8mxPhWQf\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-nDF1UhY85TnH6TtkBtlcaTXQh2EGA+oy54oi//hchZ6BIO8n0yZOdEDcqy3Lj6SH\";s:17:\"js/fontawesome.js\";s:71:\"sha384-+4PGPfaOiBMXBdbxBpjj3c78flBTf1SoDBBbEHY2P8SuIKsjNJ59vjhjpMClcRVk\";s:13:\"js/regular.js\";s:71:\"sha384-sPFXZNRvY5NMeQlqaEJyF/3Lrrcqi+EowkFdHnHe2B5/GSLq+RN8eAfpDiFzWveB\";s:11:\"js/solid.js\";s:71:\"sha384-abaNJNBN26YUz3JKjkP/eHqZP+7EaMLIkyR/I4JNQXin7CWBKc81Tmgh2//K2gfd\";s:14:\"js/v4-shims.js\";s:71:\"sha384-uQinggJhGToi55IHZla+hhoeR3xafp4JLhuIZzag3QFHKDyLLolL8IuCRM2aLdxy\";}s:3:\"pro\";a:18:{s:11:\"css/all.css\";s:71:\"sha384-eRd7BE4pd4YyGL79iaO+/+GQtuNU464XOqRShZHNdRwR66wJIzi0UirzOFzuoMOo\";s:14:\"css/brands.css\";s:71:\"sha384-/DL+sGDGYNVXNSXzx8omqgYJuKJWhPfJC0j3sM06CPE7CKypUtyAtAburBBMbhWn\";s:15:\"css/duotone.css\";s:71:\"sha384-JrGJDz5LRxQ3s3dW4Av8oo0oPABX1FQPzGwpVizHFqVT7RXKd2suPslh8/k6EFvo\";s:19:\"css/fontawesome.css\";s:71:\"sha384-ASwVckljSlVqrp7J4fCNW1Zfqp4GBw13f/oq/bwtr1KNG1j5lzKrfTpvoivwJZpS\";s:13:\"css/light.css\";s:71:\"sha384-SE3odAKV/Li06jtOem3j03b4qHD5AfOLS3ip3Ie7HS0QtdLJuRozlFcEiBnKhIjj\";s:15:\"css/regular.css\";s:71:\"sha384-v0Phnxb9e1tIN8ABEpuqr9+U98eA2hbSnnxnIFWqTyvwFd4QjVV9NOCl19hLotTv\";s:13:\"css/solid.css\";s:71:\"sha384-23irw3gzc0cirSOm9k0vC4Cb8339DDxFatLW9p83F4RsFK/1HuRvePKAltYrdlBX\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-c8uzxHbCxkqcTDgRCHmj0nVIK7Z72qzR5ciNuZIQQKWVMb0Trzdh3g9EmdybHyb/\";s:16:\"css/v4-shims.css\";s:71:\"sha384-+/X59I6aJtu7U5st0yw42TmOgz2GTi80ici4b4Zr3fVKaib7AhAhXm17vhXVqNN6\";s:9:\"js/all.js\";s:71:\"sha384-jaxx6ehyna+t5i9JERhQruWpH3C/xGZQJz6/+xqO5C/eWWJ7ysIZIe9BAULfRy+f\";s:12:\"js/brands.js\";s:71:\"sha384-om6tKqxNyejPYGBkAEpF5czG8EOB93m9G17YUGoJgRtei7kJnA4P4+w73UfDPtLl\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-I8WM/bXtfWQr8u2t0OIaUfJNpTd6LnCbNnrQpaKQN4/Pdek5IOtrXdpcXpLwzCoc\";s:13:\"js/duotone.js\";s:71:\"sha384-tit+/K18O6+uMPCuvEcobuzvT7aFly7Raxqnszuar7OzNloVr2oIugu9S/T3MNgn\";s:17:\"js/fontawesome.js\";s:71:\"sha384-kAYceFs9TzH4f4HsWzAZvbE7yJRTcOUe2UeJVCdVV8AYbspSlxAIwUg7yGHrtSKe\";s:11:\"js/light.js\";s:71:\"sha384-zam67iVIo4OJbdPFYrgsf4Te4l96q61wYKpT72nLO78ICkwXk27OlsN4SQYHOlI6\";s:13:\"js/regular.js\";s:71:\"sha384-8QzBYxpPIH9HEZ96HhicnkJ8XYzELjI6YQabAc2ANT0wExEgzeKwnNdQM3B0YPzX\";s:11:\"js/solid.js\";s:71:\"sha384-vTIqr5UHlJnlDEDAZB19P3NuSQy0Ynbzj7w5ofBkLPpN1bb7N2uZ/z0GNZGCIFxW\";s:14:\"js/v4-shims.js\";s:71:\"sha384-56L2fWZDluSTJKVxfc7PF+HoFsBrcdkn/Wj79nB2pzTgaYmqLT5T2pn6PLbMvHHq\";}}}s:6:\"5.11.1\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-IT8OQ5/IfeLGe8ZMxjj3QQNqT0zhBJSiFCL3uolrGgKRuenIU+mMS94kck/AHZWu\";s:14:\"css/brands.css\";s:71:\"sha384-UMAQJEtrY4iFRXQIYIXWfTd0GPzHrhSPK1SJ3fEeGGgtkC3m5qhKESA0yOXahpmJ\";s:19:\"css/fontawesome.css\";s:71:\"sha384-8dpIy0am6bmWHK+abUbC1sgkCSD6WstSMjjNB7JVa+rprKurA6xisqNHg6DESJWW\";s:15:\"css/regular.css\";s:71:\"sha384-5JoPxivOfpG9KRKbjXkqhwpMZ7vvAATGi77NPd6sC2ruJrWa/hKqoLBIWC1n1N/U\";s:13:\"css/solid.css\";s:71:\"sha384-20Qlvv++Kgw8B9SXDkUX4JrITPco1UXcaB1mkymQFgx8cM9azG2Ig9Sy3khBpWip\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-jv39B+1DxC6iSROYUwIeI9RUDrl9ckXFPOOlys2dTXchRTodXzqX0lm6GUwN4iLA\";s:16:\"css/v4-shims.css\";s:71:\"sha384-iJU+Et4BsM2cUxdymLmM7B8IF6IkyAYIcJRKroT/XuA5+2bWL9u+KJ1ZItC4bcdo\";s:9:\"js/all.js\";s:71:\"sha384-4Uei2cJ8mOycRxb1dxppaomro+V4vHdGuT3NfYGpENdgukEOcOrNB43OdzBiHdpZ\";s:12:\"js/brands.js\";s:71:\"sha384-q5JjSRgEoLV9cBFXvjGX8xxIxWN+LcGaDFBxSid/9XwjhecfXMQK9Ak7bcPSFT0M\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-LqGhhRx8iThhBm6ytksB4x9veweiV+qNa2soZmn8V37E4Nohq1ccRoaSr4o8YAGQ\";s:17:\"js/fontawesome.js\";s:71:\"sha384-jwx8I0tSvPLf7ZV1KwBdmXpCHgduVujQNEzmHuLEiCYql63uV/C9TCtdBU7E5TL/\";s:13:\"js/regular.js\";s:71:\"sha384-W1XmDNwB/NY1P/H0BiR107pc9NC7aTrPvwXbrZewndT3nyrmFm/7IIc0AxxcHQ/N\";s:11:\"js/solid.js\";s:71:\"sha384-kDwQ866HvlesMeZEZYvoa7AceBir+K+jB/0PVVSs/1bX0JtTvAm3aFEgOCOCt3c3\";s:14:\"js/v4-shims.js\";s:71:\"sha384-gtnOUe72T7BrqVgxbkcbbwZGJLyyHFFtefPxPZ5t/rmQ7vMNXbxml7JJkSNfHmkV\";}s:3:\"pro\";a:18:{s:11:\"css/all.css\";s:71:\"sha384-sr3GDThhNP8BxHFoTK4zKFgOjcrT8vzaiLwnwU+yB31BCaNj3QMX6YVXcv8AeBAy\";s:14:\"css/brands.css\";s:71:\"sha384-4sG0FgVejJMQM47pqYyG+7afeARX2P0HYkQ8JCKf3ZqTcpJ3/SWefUFX8kdm8eYV\";s:15:\"css/duotone.css\";s:71:\"sha384-q4v2/qv2HhGIAcd04NDH2XuGq8Bzu+xNYUI3gcKFfWt09m/dgZlvUC0rQJ3KtGg/\";s:19:\"css/fontawesome.css\";s:71:\"sha384-O68Og25nY+MZZRUiP6gm7XPDuHsNC5DgKWEoxn6+3CFcGLRXuFihbGO/8c5Ned0i\";s:13:\"css/light.css\";s:71:\"sha384-Rg8mXhpzJH99uBsgdsCp9zXjkcsw/pm+s4Kgu/56eRQSd8SAszYc6hssH5MLusHl\";s:15:\"css/regular.css\";s:71:\"sha384-RjVm0cyaQYehIEaR5Tt+JDfgnUUtY7GP/N4rEglG6DxLUhzozRl6HTH5NfPQ0X1/\";s:13:\"css/solid.css\";s:71:\"sha384-/SNkE+jEmgiOubdXCmBU+e2fWH200um/crHWjo/Rni9rhQuxT4demqM/PAyc+tXU\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-9q0WPwNHncxttx1Sf3c/G9lszy6f82L4rYAYW+JF0PRBNvJ1mVyYivrsep7J+Fud\";s:16:\"css/v4-shims.css\";s:71:\"sha384-1oMR0RRrEohmWSZo0t/tezQF1gyGc/b73Bba+qyZLEGdTAPORCf4p+pQm/iycsgj\";s:9:\"js/all.js\";s:71:\"sha384-7DVhSuOn0R5KmazSuDzmwQHOIPfU4+n8x8AifcGCoSOGATBJh55ZY41LSL37PB6m\";s:12:\"js/brands.js\";s:71:\"sha384-QRf6gn0gPrg4U0aYZ5s/Sx7xXy9gplYMzh82CI51530v89R9s9xGG8ljaSqYflQU\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-jKcJk7TgESeW6RZgq9/e8kTr0jRQ/JvaM//YDKwhF9wyvXk8lQs27OQ6cgv3FXTt\";s:13:\"js/duotone.js\";s:71:\"sha384-CeUA4+L5GZZwc5CGnvQVaT/Yrv5HuRydWW/QDCiXZnuORKxut4zKDa2WUaCS7fvo\";s:17:\"js/fontawesome.js\";s:71:\"sha384-hvER25BD06AWxsJLW7cQmGKjQp9PSZttpMIo36kIq2TTPEhP4lIT3VMFul89Ym6d\";s:11:\"js/light.js\";s:71:\"sha384-qvh52W5+cWrTxhfM559wBnsSqplMQIEjQkHnAE8c6MViBcH1OKvI1u4IGR+26hZK\";s:13:\"js/regular.js\";s:71:\"sha384-owKa0I4sfD0ooTioBE3KJEbjcmAZi2LeCbkqHr7/vkUeG/U5OyCGxYlcz8axgnSe\";s:11:\"js/solid.js\";s:71:\"sha384-hNm7JVaYkbmX1gZWRwOXVFKJ3onp68grA2bFGmFSMCQueJbgNvKR+iItAjM/PiuT\";s:14:\"js/v4-shims.js\";s:71:\"sha384-1MuEmp8vgjvrraTYbqRjvuZbLs+vFg2oeN+87QTVYX2EAXM90T4bzBm7HIFFzAp7\";}}}s:6:\"5.11.2\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-KA6wR/X5RY4zFAHpv/CnoG2UW1uogYfdnP67Uv7eULvTveboZJg0qUpmJZb5VqzN\";s:14:\"css/brands.css\";s:71:\"sha384-tft2+pObMD7rYFMZlLUziw/8QrQeKHU4GYYvA5jVaggC74ZrYdTASheA2vckPcX5\";s:19:\"css/fontawesome.css\";s:71:\"sha384-+pqJl+lfXqeZZHwVRNTbv2+eicpo+1TR/AEzHYYDKfAits/WRK21xLOwzOxZzJEZ\";s:15:\"css/regular.css\";s:71:\"sha384-zgXo5aJZxI4cJSgWSRtbv7q4JB6PzrmOTAWiZt2CqN25ifeKsCuQZ/pUNoPgjcTb\";s:13:\"css/solid.css\";s:71:\"sha384-doPVn+s3XZuxfJLS7K1E+sUl25XMZtTVb3O46RyV3JDU2ehfc0Aks4z0ufFpA2WC\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-PCpLTPQTGcSAXFltutjYRSDJAXJItRY88oa9XgNyYJuwrgJGx+uNVmtGSDS2PPvL\";s:16:\"css/v4-shims.css\";s:71:\"sha384-/EdpJd7d6gGFiQ/vhh7iOjiZdf4+6K4al/XrX6FxxZwDSrAdWxAynr4p/EA/vyPQ\";s:9:\"js/all.js\";s:71:\"sha384-b3ua1l97aVGAPEIe48b4TC60WUQbQaGi2jqAWM90y0OZXZeyaTCWtBTKtjW2GXG1\";s:12:\"js/brands.js\";s:71:\"sha384-b2GpqFrJizV0BUEdbrITdOA5HnxnlrErt7MlEERWd6NSJ32rHeibEvyyCuA13OAS\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-b1XIrGvAvE1F4q9vHz2OmkU7bBKvxebE+Q/bW+d4lG90kACkPFm/ZQuS9tlTwVD+\";s:17:\"js/fontawesome.js\";s:71:\"sha384-EYYaHDhIRoBhd/Ir/1fPnxg9rZLk/55lKtlNT5KrIcONoCS2kjf7ZWzMoCLLACeo\";s:13:\"js/regular.js\";s:71:\"sha384-vIxiYcREJ+yKr8tRXG0gCdepcyuhCTkHwiTdG0qVTHSQvjO0pmllh1QAy93JYsE5\";s:11:\"js/solid.js\";s:71:\"sha384-Mf3ap7OwO+bjTkzM1RsrothLh38uKXvMWJ2TQPXGHqZcqfeI/cyCV+sfV0IDnBDq\";s:14:\"js/v4-shims.js\";s:71:\"sha384-G5fIV0dSzZ1nDQSh+B5u3TRX2UtPcd5UWyi2WS1fZIpJQ/JpJCdShAZ+wmILZ7Qd\";}s:3:\"pro\";a:18:{s:11:\"css/all.css\";s:71:\"sha384-zrnmn8R8KkWl12rAZFt4yKjxplaDaT7/EUkKm7AovijfrQItFWR7O/JJn4DAa/gx\";s:14:\"css/brands.css\";s:71:\"sha384-dd+UlUKIkNDLBFy2GZJRdMODxfdUjx/PanzxBbsXaRBkyjHzUeDX3mj6q53uL825\";s:15:\"css/duotone.css\";s:71:\"sha384-tHth4ugEmPOZTBSN4Hi2oYiHY6vpxIL8clasFZidKyR6Gm34+U6wx6A9eZHqTs2W\";s:19:\"css/fontawesome.css\";s:71:\"sha384-bQakmC+XBF+eCf93fSR/57kAeX91i0BDyXyj8My8/e/3Bcno5zhEGM02xNvpXV+2\";s:13:\"css/light.css\";s:71:\"sha384-yNf+8hATd/MoR/yfZG0nBBtjTfxZEM1rJos9BgjBaVuLcu711wcecTXBlfS91nfj\";s:15:\"css/regular.css\";s:71:\"sha384-H5RIR1XTDkiiLdUTNtbYvWKpNd2qsPBeGzpT5PD495znZL9JCA7119EMPNfCASw1\";s:13:\"css/solid.css\";s:71:\"sha384-LkNnzh6wVxsC0m3vcQ0T5L6csSYpgSYniG/AKJqWBsHT7PVpeO0QHkBw4dW1WfVu\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-Mh++Qzb28x/RVEo6SYO87IyopQpwhzveyGIVg/AfbCLCEHUINYcCy24fkArgPFNc\";s:16:\"css/v4-shims.css\";s:71:\"sha384-A1hDH1BUL9ZdoEFsPEJY4LRFhu70QJj+RaY50Zoqd568i+ONa9LHCI+uoWDT0Lut\";s:9:\"js/all.js\";s:71:\"sha384-S++1cFhwpxbtRScUliTyprAMK33gMHbukurY4rNyt9CxIniGm6PfioUsQPoAITQJ\";s:12:\"js/brands.js\";s:71:\"sha384-NuqRsJYX4n2gSY6iMRHPZJxtpR40C8Lc/CV66yyeP1Vu5W2QSuVyPxMRpRIGihE+\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-GLrjh9czojGY48hc8pYlf/3FRNEBu9OWvNAta7SMilmijx8+ciGGVZyD+VwV4FVP\";s:13:\"js/duotone.js\";s:71:\"sha384-uO8Ntsr5QW0kAl13UUiYRBDhu3foxlKI+jZjPBApRxFDX2tgO/GYiCXIYiGixOU5\";s:17:\"js/fontawesome.js\";s:71:\"sha384-FdPoPmNNPrerz9uF/cNSTyPmNCRf6b81QDEPk0JlXAaailLV3DT9yA8plMzyffNZ\";s:11:\"js/light.js\";s:71:\"sha384-zE0WHJZIhNaysmywEoQBm6THN0uK5wAyfKWoN6lJPGOlrMB8hf0Yt4/+bex9jZi2\";s:13:\"js/regular.js\";s:71:\"sha384-+3mzeMYwSyHPQfOsqYlwcE3OSC7aI/+DjyVLkBxqWP9O+JyoEtzidrSonbNKh1uy\";s:11:\"js/solid.js\";s:71:\"sha384-9I7yL3g1YvBlMZjZ0bWzPqP1m3Ic5t3EgFq/MqNm2r8FUxDVowt7dO4S1IFleLqZ\";s:14:\"js/v4-shims.js\";s:71:\"sha384-+Onl+wOd5BbZvaC8Q/mQUO3lZAqsUyD+xqhS57VlU7gIpqXBMcS9Tw94A9uMZRwX\";}}}s:6:\"5.12.0\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-REHJTs1r2ErKBuJB0fCK99gCYsVjwxHrSU0N7I1zl9vZbggVJXRMsv/sLlOAGb4M\";s:14:\"css/brands.css\";s:71:\"sha384-ouytoyjvzHVJu1m+KEtJ+2Ys+WFsXUlknprEuQAUs62XNn0shj9U2QeTwdJQmPR1\";s:19:\"css/fontawesome.css\";s:71:\"sha384-VoScp22LWX8GkkUAmdkkkj+rz+/r84lmCD6FALIryJxjwBSz6kE6oebSlamQx19e\";s:15:\"css/regular.css\";s:71:\"sha384-uUtN9GUP/RxDz5kko+qO6znqTP45OrABIxrrPhm8tax1s1huRxYCF7xDm+YunNDB\";s:13:\"css/solid.css\";s:71:\"sha384-9AfJF7pZ+RYk3wXpf8ge6fc3XhPaW3Xl57Qj/mSzPckn9Tu8zJ9qUipWq+/utX20\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-e3I5IwYfes9z/NL+oosxhrbsLa9R8TaEY+Krsm07Fcz7q/R+8nswvn20QsrR8tsb\";s:16:\"css/v4-shims.css\";s:71:\"sha384-AL44/7DEVqkvY9j8IjGLGZgFmHAjuHa+2RIWKxDliMNIfSs9g14/BRpYwHrWQgz6\";s:9:\"js/all.js\";s:71:\"sha384-S+e0w/GqyDFzOU88KBBRbedIB4IMF55OzWmROqS6nlDcXlEaV8PcFi4DHZYfDk4Y\";s:12:\"js/brands.js\";s:71:\"sha384-NLUhiMQCi+OH3uxQu0Ems+2GYt6KJ89f90f4kZlK0BoDB63kHZqAICPl7nQHppJy\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-PpGSW7GgJeChJyQc4XW1MIgUrRkMZudoPYOYAqGERZ+w8ammaWDBQvHM3Qp85XCV\";s:17:\"js/fontawesome.js\";s:71:\"sha384-aolToWrR1Hn3EFHDZtvTl0mtjuJJKLxSu/6b2tlr1g9dS+RLt6QVshweU+2e1v6V\";s:13:\"js/regular.js\";s:71:\"sha384-LCyqT0dvDekY5RP1UquYgUJARvp4tHVJocO5ICwoWSyVoSXrKpJrRrDYxj7+ukHO\";s:11:\"js/solid.js\";s:71:\"sha384-QsXs4eh2k/7mk3dvvNMhJJDjh8UQ++vWm4e7ULJ1UZTbOv3wQOzn+4ULg5iLW+Ph\";s:14:\"js/v4-shims.js\";s:71:\"sha384-NNQFVmb048Dmy0GH4ex0kGVcjxaPeY6JA1+ImM4Lsfr4HOD5CNMvCSoIfjeJJWX9\";}s:3:\"pro\";a:18:{s:11:\"css/all.css\";s:71:\"sha384-ekOryaXPbeCpWQNxMwSWVvQ0+1VrStoPJq54shlYhR8HzQgig1v5fas6YgOqLoKz\";s:14:\"css/brands.css\";s:71:\"sha384-z3CBOpMFSI4D+GXPvBsSW5vXhm4MEzWuC/CycHv+vsuzuztOzPpomZimFLeWNOgk\";s:15:\"css/duotone.css\";s:71:\"sha384-SnqCl1xqt09zXtBnCqJWrwMR2wbeWfxeAEB8e2QuoHdWNY1V5k0HrDi889EMHehh\";s:19:\"css/fontawesome.css\";s:71:\"sha384-CtsKDnRWWHDhjRZ5qgpCFCGpib2FU2SChFu0xRt81grgvXq1P+lbpROQoBLxlU4o\";s:13:\"css/light.css\";s:71:\"sha384-i+ivMdAc0+wLEnd+UdXLpYGNTbyn/0Rjz7EqmkqEOkfat5/2T+S63wn3WDk6h4Yh\";s:15:\"css/regular.css\";s:71:\"sha384-hCQzyeTkj8xmAEG5HT7Hx6t6DUkpTM34rr6FHL04J4AWtPtryU6EjsEDb+Gf17KD\";s:13:\"css/solid.css\";s:71:\"sha384-U9f9KTMQ1TBvUUFLpp6FgAy1M59lrF3q3rYTHPRVtT8OzY3xyyFUzKevJFYHEbhq\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-CpTDS+d/m1rbSfuYxoVJXNCmq6ovovJAD1qgFE+K1Vf5N/n5Nt5yEoZq1UovRsXR\";s:16:\"css/v4-shims.css\";s:71:\"sha384-w49b1IAwJTEsYuPUW2QuSzpWNnhksbL+b/1q2eGObJ2CVV/HO5ubRS4jyMLB4cGs\";s:9:\"js/all.js\";s:71:\"sha384-t1m5KR+UJYhp5D1IG6cS5MuYjxDyh/lIkrB1YUpSPfGxgR4r7pA2xW+KoAfcE5IZ\";s:12:\"js/brands.js\";s:71:\"sha384-L2A2TL70Fg2x6gHvF0zTdYDo163eb/op5YdWXAr/rWfprmIjt6Ib+mdHv60yzNh2\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-Tj7c3TfdpwGV2RqPFYgEbtUTrY+wJeAPDMsuUTvdrbMDWlP6gpUN6LNbXNf1C8BA\";s:13:\"js/duotone.js\";s:71:\"sha384-wAGnJyD+rhKARbazT5ohAk3YosShbJZGkuSG5lrKQOfQpG+7Q7o6ZmAvNqeJ7mFf\";s:17:\"js/fontawesome.js\";s:71:\"sha384-YdKgBdzRKP5F/uorpoOtlS1fRNfveZicpRkkQTn0pQdqGWQs6AMr7Jby3mA/G53+\";s:11:\"js/light.js\";s:71:\"sha384-VuS+lIluvKV9KjbEENEaZi4Ixed0QRYlUr6DI6+U1vj/rOfMP7wl84Z53+fMZXM5\";s:13:\"js/regular.js\";s:71:\"sha384-lS00sjHGt6pxefm2C7siOngllQ0WM3NoXEgwBb79KI3nh2iB5F/vkL7q09F/Z3tj\";s:11:\"js/solid.js\";s:71:\"sha384-ejND26kSb92qqj9cH70EMoR8jytCElYWiCB0v+JkXBz6+2ccBkNJkJZuMmrXY9L+\";s:14:\"js/v4-shims.js\";s:71:\"sha384-xCtgvUZSTFqAix3U6PrST0KLLMXPkzVPwXq3AbYkoKi81K4Ppryd5D8lUII1MeU+\";}}}s:6:\"5.12.1\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-v8BU367qNbs/aIZIxuivaU55N5GPF89WBerHoGA4QTcbUjYiLQtKdrfXnqAcXyTv\";s:14:\"css/brands.css\";s:71:\"sha384-+2AYGyI2bR10NExh4Lu/3NQmpNxck8EcRE7aATrMi9QQ9OAKQAQw1bcrlWkp0tdM\";s:19:\"css/fontawesome.css\";s:71:\"sha384-C1VkjHy10mh0wo7rz2xEDdqrfn5C+AJpaCpUyScFHzKb0mnAU3I//2RrdAE+LfQ6\";s:15:\"css/regular.css\";s:71:\"sha384-ZYhRqsbjqPY5BrYAS/7RLN0cbKU9T2MfB24Lb42Gyv2BHvW5sujo7gc5gXEReTq9\";s:13:\"css/solid.css\";s:71:\"sha384-yiUBjfJC2dVbhAEtVzEfH+R8ZQJ91V1C+Vtr1ZDTX+gUBZWrNyVrs/Nvc1fzi8GP\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-XBFwYq8dzGeC/rGkEgveavwuEU0D16mIKfWeCX6deYzhMUaa8GX4CgA5c/YHP2xo\";s:16:\"css/v4-shims.css\";s:71:\"sha384-C8a18+Gvny8XkjAdfto/vjAUdpGuPtl1Ix/K2BgKhFaVO6w4onVVHiEaN9h9XsvX\";s:9:\"js/all.js\";s:71:\"sha384-ZbbbT1gw3joYkKRqh0kWyRp32UAvdqkpbLedQJSlnI8iLQcFVxaGyrOgOJiDQTTR\";s:12:\"js/brands.js\";s:71:\"sha384-KASsDRWwlErb8dTf+e5TxRXMnbXrVlbPbn1hS5B/yS4vNsF7mHHO+Gw1bBDhcyOt\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-fHnSzPZE3xYvvXY0y51vln9J+Jd0eK4HughCkcA0NsBpmAGgU97n65RbDqUgnWf1\";s:17:\"js/fontawesome.js\";s:71:\"sha384-H4naMsxnUrIT8qihjWfwIKXi5biIYnqUsQ+vIJGZIKfA+7/O3FxgvMrdH77X+aID\";s:13:\"js/regular.js\";s:71:\"sha384-yUk5aOIIy62R2bRFbFq0+bo+ChWYs75cusETAJ1KYvEMRiEbQZmNU6u+PK60t536\";s:11:\"js/solid.js\";s:71:\"sha384-OSCcNUu98kEBVxq0vZaBr0wdmmd2ojuJwvWuSRKD0V10PWmvTetja8mxGfZm5PsV\";s:14:\"js/v4-shims.js\";s:71:\"sha384-/OZ1Lht4J1/FfstamqqFX1tF7PkDWDKbvat1bkWByC2KRJwGzm/H2bVuw8N4SD8y\";}s:3:\"pro\";a:18:{s:11:\"css/all.css\";s:71:\"sha384-TxKWSXbsweFt0o2WqfkfJRRNVaPdzXJ/YLqgStggBVRREXkwU7OKz+xXtqOU4u8+\";s:14:\"css/brands.css\";s:71:\"sha384-oRjDIXtfHT9YAjxHLAbf8PsJklTJN+dl7PmnAlOTYJhNAspi+/xgU4f12vi5xGzz\";s:15:\"css/duotone.css\";s:71:\"sha384-qrJ30c8jzW/3IOQRl4RddzzMsw3YIUWq5YhHW/8D8EJnS+5J13GpCGVEVI3ELc/W\";s:19:\"css/fontawesome.css\";s:71:\"sha384-k8n1hWo+b1vuRb6E3KATGC++lfNDnJTtJ6pS2BFF3tp/OshnO7uhzoOj/zJbGfwg\";s:13:\"css/light.css\";s:71:\"sha384-iUpVK/Fzq7teRSWAUmJsnlccV1OgC2fMpgreA8gxAm68UxbZPiMu3GP4IbKdKIUh\";s:15:\"css/regular.css\";s:71:\"sha384-QprxpKrx/cRYKXmWVkM97ert3857dCN6bbf6cRMELoa1+IYdsHoqweHwJksEfb0j\";s:13:\"css/solid.css\";s:71:\"sha384-uef1Ib3WhVuFbw7CZtyE+4IDCiKe1/bGU0vJ2naf8VQHKAeA67yU344LBk/H6nhx\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-GucW5chDMZnyGPL1yaIe1GOHu/X7ixbmNjinYEIVr8a4Q4ewZjgipeXJhVi1lsrd\";s:16:\"css/v4-shims.css\";s:71:\"sha384-58YCAaXf5eAJ+1vna1eEUPuU+Ez6EhIPG77PXmK7QciGJsDNAHt2D8ke3vDio+Hz\";s:9:\"js/all.js\";s:71:\"sha384-RiuSF/PBDHssKXqYfH16Hw3famw7Xg29hNO7Lg636dZXUg42q2UtNLPsGfihOxT9\";s:12:\"js/brands.js\";s:71:\"sha384-yrJPiY+1PdmFAwIfz5kqOJt6qBz7DmhXnjLZWLQ9FopoqnhHIBdOQk6hafYoSquV\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-bIg1sG9EStRr/9ohrrZJs0/uTEvUEEOO+NWuOAsIj3a1ZCHqvWUW6w975b4BSbqI\";s:13:\"js/duotone.js\";s:71:\"sha384-1EFXmt5rBEAK6aeEt/mZiYu0QhdFqz7oRm0Kc4xKyZ2IkrQYBc5F77PWXv3Jl4jY\";s:17:\"js/fontawesome.js\";s:71:\"sha384-P6BxA/EZmb6ypE1RKWOU6G8Ww/wI6w4R6uP6u9mkq3uaBehDQxHOLax3fLvDqkvt\";s:11:\"js/light.js\";s:71:\"sha384-08D3jBd9Co2q3IJB/9qnaukQ4ZhFWVLATRpNirJUQ+yQ/oUORDPfJ7Z2OWySf7/A\";s:13:\"js/regular.js\";s:71:\"sha384-zw99I3pdjnsTnY9W+2pz18pxMpOw12uAiVqYL4dZJOf0Lm8dio2v03Y0L2wzECI7\";s:11:\"js/solid.js\";s:71:\"sha384-Jr2b2cxzFQ84TxM+s7yh1jUu1f4FLCHQQDT3ZeBYZNQo+xvCw52PmB7GbC9yqSqA\";s:14:\"js/v4-shims.js\";s:71:\"sha384-sLzGuPzMXKEht2hBPBvC5ere217qvxFZ1AogesHLWdB5ojWBInm4wE4J+HV7PB6z\";}}}s:6:\"5.13.0\";a:1:{s:3:\"sri\";a:2:{s:4:\"free\";a:14:{s:11:\"css/all.css\";s:71:\"sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V\";s:14:\"css/brands.css\";s:71:\"sha384-yZSrIKdp94pouX5Mo4J2MnZUIAuHlZhe3H2c4FRXeUcHvI2k0zNtPrBu8p3bjun5\";s:19:\"css/fontawesome.css\";s:71:\"sha384-syoT0d9IcMjfxtHzbJUlNIuL19vD9XQAdOzftC+llPALVSZdxUpVXE0niLOiw/mn\";s:15:\"css/regular.css\";s:71:\"sha384-rbtXN6sVGIr49U/9DEVUaY55JgfUhjDiDo3EC0wYxfjknaJamv0+cF3XvyaovFbC\";s:13:\"css/solid.css\";s:71:\"sha384-fZFUEa75TqnWs6kJuLABg1hDDArGv1sOKyoqc7RubztZ1lvSU7BS+rc5mwf1Is5a\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-zMDYkJEHc2iapAk7o9HXGGD5N2+GGhOFQPDdNTYvlcc0gBA5r7r5f0aSYeCvm0qn\";s:16:\"css/v4-shims.css\";s:71:\"sha384-/7iOrVBege33/9vHFYEtviVcxjUsNCqyeMnlW/Ms+PH8uRdFkKFmqf9CbVAN0Qef\";s:9:\"js/all.js\";s:71:\"sha384-ujbKXb9V3HdK7jcWL6kHL1c+2Lj4MR4Gkjl7UtwpSHg/ClpViddK9TI7yU53frPN\";s:12:\"js/brands.js\";s:71:\"sha384-c4QRk2vaIFBj+66H3IMCeLBpgmeNbFV8HqOs55qMib1v/dM3JXdodyctPNa9hTyl\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-sDmAMseQ6ZkNcFsP2c8NLyUmSqzUpn9PdoWqr/IP+mXZANSiuN9/09SKaEaMJ39l\";s:17:\"js/fontawesome.js\";s:71:\"sha384-/uNTArWag0fq+MOMnITxuc/uQTqh5NVc+1x0LO4xG//FFwUa8Xff8zrZXIpETdf9\";s:13:\"js/regular.js\";s:71:\"sha384-5FWE8IhPJgMtacw/tJgCapT/ag4ftBYmykFO3KUsozTQ9JKaQhH2oX7RZdCDyWxg\";s:11:\"js/solid.js\";s:71:\"sha384-dCJKkv4KgC8c4IlevkK2DC4yY+rQidnMOt91EmILDbdn8M6cdsjaUbf6awWnsCaZ\";s:14:\"js/v4-shims.js\";s:71:\"sha384-XrjUu+3vbvZoLzAa5lC50XIslajkadQ9kvvTTq0odZ+LCoNEGqomuCdORdHv6wZ6\";}s:3:\"pro\";a:18:{s:11:\"css/all.css\";s:71:\"sha384-IIED/eyOkM6ihtOiQsX2zizxFBphgnv1zbe1bKA+njdFzkr6cDNy16jfIKWu4FNH\";s:14:\"css/brands.css\";s:71:\"sha384-YJugi/aYht+lwnwrJEOZp+tAEQ+DxNy2WByHkJcz+0oxlJu8YMSeEwsvZubB8F/E\";s:15:\"css/duotone.css\";s:71:\"sha384-oRY9z8lvkaf2a1RyLPsz9ba5IbYiz1X/udoO3kZH3WM+gidZ+eELnojAqaBwvAmB\";s:19:\"css/fontawesome.css\";s:71:\"sha384-tSxOKkJ+YPQOZg1RZd01upxL2FeeFVkHtkL0+04oWgcm9jnvH+EQNLxhpaNYblG2\";s:13:\"css/light.css\";s:71:\"sha384-HLeT9I9TL5c2ujLOZhv6z58D+FdF5R//KTyhCOiYBp1ZX9ZEdaVKPxZmzPx/tMWY\";s:15:\"css/regular.css\";s:71:\"sha384-BPtrG4jSUTPogkW6mA5hAGjvJapJnnMa8tKHQOR9MnrINanXN/IGDInK/SngoAFb\";s:13:\"css/solid.css\";s:71:\"sha384-9mSry5MRUHIfL5zghm8hV6FRKJIMfpofq3NWCyo+Kko5c16y0um8WfF5lB2EGIHJ\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-9WuNcdGCglpaefA1oUecTWMQL/+LmrCJiJJM+pDHX+82lfkj1CKUYLc6DZJQ+1/s\";s:16:\"css/v4-shims.css\";s:71:\"sha384-/WH+7sthk7TduL5PHd16Jew3Hd7eKInsAclAq/MoZWeyR4bMgUj12MSN79PtHEjc\";s:9:\"js/all.js\";s:71:\"sha384-Z0e6PSokCQP510gixgZGPs+obVv8eogS/eS2+/7lLSMOfmLnWBgPQppPispQXGUM\";s:12:\"js/brands.js\";s:71:\"sha384-T90KA1rFqB4OFs7EjJ9EGjXJkOXPhELY4hLaFVnB0LaTNUFGn3QyzNJZh307KVVc\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-8g5Au/J6e7pPZjkCDisd8Jd9psYpdlosRUbac9lOdXAADXrNgc20T1Xc24eIy3I7\";s:13:\"js/duotone.js\";s:71:\"sha384-dkbWEvgccxMcr38iB9BWNiExUnolXcLY54hGUJkFUqThvx5XsvcEervgRgRWz5fl\";s:17:\"js/fontawesome.js\";s:71:\"sha384-bU46hq+Od2wfS4XGCT7Ab5XmYYYY8LURSiGsr4YLIrUWBPeImW/B+OkFEcHhOzuF\";s:11:\"js/light.js\";s:71:\"sha384-ipYj2yPBG2ozjlrUCd6AheWkvEpqcCQNY7yxX8wDoIJc5Lr1zVXAE4sKB3hVfjfT\";s:13:\"js/regular.js\";s:71:\"sha384-5CC2/v59nxbyM1595fgM84ERvZXK5WbpCnB9/dd1gTJc2LyitbiKhULkaiXZNj6V\";s:11:\"js/solid.js\";s:71:\"sha384-Imz7xdjp2/vTu6azMFMusPHfSLwcYmj5ZWzOXv3esrLD8IDP9AMA28bwpJZwaR1g\";s:14:\"js/v4-shims.js\";s:71:\"sha384-ZbnNry/TJ2Ald71QRyefS1elxArPz0oOfiNFxpfSO0Yb5lnnftVJMFbENL3j0hCf\";}}}}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(413, 'font-awesome', 'a:7:{s:6:\"usePro\";b:0;s:8:\"v4Compat\";b:1;s:10:\"technology\";s:7:\"webfont\";s:14:\"pseudoElements\";b:1;s:8:\"kitToken\";N;s:8:\"apiToken\";b:0;s:7:\"version\";s:6:\"5.13.0\";}', 'yes'),
(414, 'font-awesome-conflict-detection', 'a:2:{s:20:\"detectConflictsUntil\";i:0;s:19:\"unregisteredClients\";a:0:{}}', 'yes'),
(423, 'wpseo', 'a:26:{s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:25:\"ignore_indexation_warning\";b:0;s:29:\"indexation_warning_hide_until\";b:0;s:18:\"indexation_started\";b:0;s:7:\"version\";s:4:\"14.3\";s:16:\"previous_version\";s:4:\"14.2\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1591274498;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(424, 'wpseo_titles', 'a:95:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:40:\"%%name%%, autor la %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"Ai căutat după %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:39:\"Pagină negăsită %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:58:\"Articolul %%POSTLINK%% apare prima dată în %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:30:\"Eroare 404: pagină negăsită\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:13:\"Arhive pentru\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:13:\"Prima pagină\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"Ai căutat după\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:13:\"title-product\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:16:\"showdate-product\";b:0;s:26:\"display-metabox-pt-product\";b:1;s:26:\"post_types-product-maintax\";i:0;s:23:\"title-ptarchive-product\";s:51:\"Arhivă %%pt_plural%% %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-product\";s:0:\"\";s:25:\"bctitle-ptarchive-product\";s:0:\"\";s:25:\"noindex-ptarchive-product\";b:0;s:18:\"title-tax-category\";s:51:\"Arhive %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:51:\"Arhive %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:51:\"Arhive %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:21:\"title-tax-product_cat\";s:51:\"Arhive %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_cat\";s:0:\"\";s:31:\"display-metabox-tax-product_cat\";b:1;s:23:\"noindex-tax-product_cat\";b:0;s:29:\"taxonomy-product_cat-ptparent\";i:0;s:21:\"title-tax-product_tag\";s:51:\"Arhive %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:31:\"display-metabox-tax-product_tag\";b:1;s:23:\"noindex-tax-product_tag\";b:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:32:\"title-tax-product_shipping_class\";s:51:\"Arhive %%term_title%% %%page%% %%sep%% %%sitename%%\";s:35:\"metadesc-tax-product_shipping_class\";s:0:\"\";s:42:\"display-metabox-tax-product_shipping_class\";b:1;s:34:\"noindex-tax-product_shipping_class\";b:0;s:40:\"taxonomy-product_shipping_class-ptparent\";i:0;}', 'yes'),
(425, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(426, 'wpseo_flush_rewrite', '1', 'yes'),
(427, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"14.3\";}', 'yes'),
(428, '_transient_timeout_wpseo_link_table_inaccessible', '1622810506', 'no'),
(429, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(430, '_transient_timeout_wpseo_meta_table_inaccessible', '1622810506', 'no'),
(431, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(435, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:0;s:10:\"last_fetch\";i:1591879454;}', 'yes'),
(452, 'acf_version', '5.8.12', 'yes'),
(473, 'duplicate_post_copytitle', '1', 'yes'),
(474, 'duplicate_post_copydate', '0', 'yes'),
(475, 'duplicate_post_copystatus', '0', 'yes'),
(476, 'duplicate_post_copyslug', '0', 'yes'),
(477, 'duplicate_post_copyexcerpt', '1', 'yes'),
(478, 'duplicate_post_copycontent', '1', 'yes'),
(479, 'duplicate_post_copythumbnail', '1', 'yes'),
(480, 'duplicate_post_copytemplate', '1', 'yes'),
(481, 'duplicate_post_copyformat', '1', 'yes'),
(482, 'duplicate_post_copyauthor', '0', 'yes'),
(483, 'duplicate_post_copypassword', '0', 'yes'),
(484, 'duplicate_post_copyattachments', '0', 'yes'),
(485, 'duplicate_post_copychildren', '0', 'yes'),
(486, 'duplicate_post_copycomments', '0', 'yes'),
(487, 'duplicate_post_copymenuorder', '1', 'yes'),
(488, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(489, 'duplicate_post_blacklist', '', 'yes'),
(490, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(491, 'duplicate_post_show_row', '1', 'yes'),
(492, 'duplicate_post_show_adminbar', '1', 'yes'),
(493, 'duplicate_post_show_submitbox', '1', 'yes'),
(494, 'duplicate_post_show_bulkactions', '1', 'yes'),
(495, 'duplicate_post_show_original_column', '0', 'yes'),
(496, 'duplicate_post_show_original_in_post_states', '0', 'yes'),
(497, 'duplicate_post_show_original_meta_box', '0', 'yes'),
(498, 'duplicate_post_version', '3.2.4', 'yes'),
(499, 'duplicate_post_show_notice', '0', 'no'),
(603, '_transient_health-check-site-status-result', '{\"good\":9,\"recommended\":7,\"critical\":1}', 'yes'),
(615, '_site_transient_timeout_browser_7178962ad06c4f9758986cbf76506171', '1592295737', 'no'),
(616, '_site_transient_browser_7178962ad06c4f9758986cbf76506171', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"83.0.4103.97\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(639, 'rsssl_activation_timestamp', '1591690986', 'yes'),
(668, 'rewrite_rules', 'a:178:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"categorie-produs/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"categorie-produs/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"categorie-produs/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"categorie-produs/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"categorie-produs/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:56:\"eticheta-produs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:51:\"eticheta-produs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:32:\"eticheta-produs/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:44:\"eticheta-produs/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:26:\"eticheta-produs/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:34:\"produs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"produs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"produs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"produs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"produs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"produs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"produs/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:27:\"produs/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:47:\"produs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:42:\"produs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:35:\"produs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:42:\"produs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:32:\"produs/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:38:\"produs/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:49:\"produs/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:31:\"produs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:23:\"produs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"produs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"produs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"produs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"produs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"produs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"cookielawinfo/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"cookielawinfo/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"cookielawinfo/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"cookielawinfo/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"cookielawinfo/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"cookielawinfo/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"cookielawinfo/([^/]+)/embed/?$\";s:46:\"index.php?cookielawinfo=$matches[1]&embed=true\";s:34:\"cookielawinfo/([^/]+)/trackback/?$\";s:40:\"index.php?cookielawinfo=$matches[1]&tb=1\";s:42:\"cookielawinfo/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?cookielawinfo=$matches[1]&paged=$matches[2]\";s:49:\"cookielawinfo/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?cookielawinfo=$matches[1]&cpage=$matches[2]\";s:39:\"cookielawinfo/([^/]+)/wc-api(/(.*))?/?$\";s:54:\"index.php?cookielawinfo=$matches[1]&wc-api=$matches[3]\";s:45:\"cookielawinfo/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:56:\"cookielawinfo/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:38:\"cookielawinfo/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?cookielawinfo=$matches[1]&page=$matches[2]\";s:30:\"cookielawinfo/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"cookielawinfo/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"cookielawinfo/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cookielawinfo/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cookielawinfo/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"cookielawinfo/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(699, 'itsec-storage', 'a:8:{s:6:\"global\";a:34:{s:15:\"lockout_message\";s:5:\"error\";s:20:\"user_lockout_message\";s:64:\"You have been locked out due to too many invalid login attempts.\";s:25:\"community_lockout_message\";s:77:\"Your IP address has been flagged as a threat by the iThemes Security network.\";s:9:\"blacklist\";b:1;s:15:\"blacklist_count\";i:3;s:16:\"blacklist_period\";i:7;s:14:\"lockout_period\";i:15;s:18:\"lockout_white_list\";a:0:{}s:12:\"log_rotation\";i:60;s:17:\"file_log_rotation\";i:180;s:8:\"log_type\";s:8:\"database\";s:12:\"log_location\";s:74:\"/home/wordpressnexloc/public_html/wp-content/uploads/ithemes-security/logs\";s:8:\"log_info\";s:0:\"\";s:14:\"allow_tracking\";b:0;s:11:\"write_files\";b:1;s:10:\"nginx_file\";s:44:\"/home/wordpressnexloc/public_html/nginx.conf\";s:24:\"infinitewp_compatibility\";b:0;s:11:\"did_upgrade\";b:0;s:9:\"lock_file\";b:0;s:5:\"proxy\";s:14:\"security-check\";s:12:\"proxy_header\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"hide_admin_bar\";b:0;s:16:\"show_error_codes\";b:0;s:19:\"show_security_check\";b:0;s:5:\"build\";i:4118;s:13:\"initial_build\";i:4118;s:20:\"activation_timestamp\";i:1591692208;s:11:\"cron_status\";i:0;s:8:\"use_cron\";b:0;s:14:\"cron_test_time\";i:1592074941;s:19:\"enable_grade_report\";b:0;s:10:\"server_ips\";a:2:{i:0;s:11:\"192.168.1.1\";i:1;s:13:\"86.123.138.21\";}s:13:\"feature_flags\";a:0:{}s:12:\"manage_group\";a:0:{}}s:11:\"user-groups\";a:1:{s:14:\"default_groups\";a:5:{s:13:\"administrator\";s:36:\"168a4a60-5233-45a9-bcd3-a4cefcefc637\";s:6:\"editor\";s:36:\"8a1d6365-40c8-415f-b1ef-6913f961b5a7\";s:6:\"author\";s:36:\"6398ff06-63d4-4594-8b57-b165d80c206a\";s:11:\"contributor\";s:36:\"2a3b218d-fd95-4bbd-a9ab-66fa94650e3c\";s:10:\"subscriber\";s:36:\"213da3ab-a40e-4547-996e-941bd9fa84b5\";}}s:18:\"security-check-pro\";a:6:{s:19:\"last_scan_timestamp\";i:1592057091;s:15:\"remote_ip_index\";s:11:\"REMOTE_ADDR\";s:13:\"ssl_supported\";b:1;s:20:\"remote_ips_timestamp\";i:1592057091;s:10:\"remote_ips\";a:2:{i:0;s:12:\"69.16.197.31\";i:1;s:14:\"69.167.144.232\";}s:8:\"key_salt\";s:60:\"xi6>E=I*& Ygyqs66,btMufp*&Ee<,(|^mT`~=eAuKy4xyJR6YxAm[*=R#_j\";}s:21:\"password-requirements\";a:2:{s:20:\"enabled_requirements\";a:1:{s:8:\"strength\";b:1;}s:20:\"requirement_settings\";a:1:{s:8:\"strength\";a:1:{s:5:\"group\";a:6:{i:0;s:36:\"168a4a60-5233-45a9-bcd3-a4cefcefc637\";i:1;s:36:\"8a1d6365-40c8-415f-b1ef-6913f961b5a7\";i:2;s:36:\"6398ff06-63d4-4594-8b57-b165d80c206a\";i:3;s:36:\"2a3b218d-fd95-4bbd-a9ab-66fa94650e3c\";i:4;s:36:\"213da3ab-a40e-4547-996e-941bd9fa84b5\";i:5;s:14:\"everybody-else\";}}}}s:16:\"wordpress-tweaks\";a:13:{s:18:\"wlwmanifest_header\";b:0;s:14:\"edituri_header\";b:0;s:12:\"comment_spam\";b:0;s:11:\"file_editor\";b:1;s:14:\"disable_xmlrpc\";i:0;s:22:\"allow_xmlrpc_multiauth\";b:0;s:8:\"rest_api\";s:15:\"restrict-access\";s:12:\"login_errors\";b:0;s:21:\"force_unique_nicename\";b:0;s:27:\"disable_unused_author_pages\";b:0;s:16:\"block_tabnapping\";b:0;s:21:\"valid_user_login_type\";s:4:\"both\";s:26:\"patch_thumb_file_traversal\";b:1;}s:19:\"network-brute-force\";a:5:{s:7:\"api_key\";s:32:\"W8ss45iAQQgO7r7666cdBN65n2m1BHPq\";s:10:\"api_secret\";s:128:\"Ze1h23oeco5hc7Rmgybwy13S03su8X7UL9iM7Ah9bYT697sa2eMOv75fe3we5s38tP40L3a4ys22kQm9L5YqxycVN7IA8IX6eiI0U30YOh4hnsmoJdEfaqE3UARy9k0j\";s:10:\"enable_ban\";b:1;s:13:\"updates_optin\";b:0;s:7:\"api_nag\";b:0;}s:12:\"hide-backend\";a:6:{s:7:\"enabled\";b:1;s:4:\"slug\";s:11:\"admin-login\";s:12:\"theme_compat\";b:1;s:17:\"theme_compat_slug\";s:9:\"not_found\";s:16:\"post_logout_slug\";s:0:\"\";s:8:\"register\";s:13:\"wp-signup.php\";}s:19:\"notification-center\";a:8:{s:9:\"last_sent\";a:1:{s:6:\"digest\";i:1592481622;}s:9:\"resend_at\";a:0:{}s:4:\"data\";a:1:{s:6:\"digest\";a:0:{}}s:15:\"last_mail_error\";s:36:\"Could not instantiate mail function.\";s:13:\"notifications\";a:4:{s:6:\"digest\";a:5:{s:8:\"schedule\";s:5:\"daily\";s:7:\"enabled\";b:1;s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:14:\"recipient_type\";s:7:\"default\";s:7:\"subject\";N;}s:7:\"lockout\";a:4:{s:7:\"enabled\";b:1;s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:14:\"recipient_type\";s:7:\"default\";s:7:\"subject\";N;}s:6:\"backup\";a:2:{s:10:\"email_list\";a:1:{i:0;s:21:\"georgebejan@thecon.ro\";}s:7:\"subject\";N;}s:12:\"hide-backend\";a:4:{s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:14:\"recipient_type\";s:7:\"default\";s:7:\"subject\";N;s:7:\"message\";s:0:\"\";}}s:12:\"admin_emails\";a:0:{}s:10:\"from_email\";s:0:\"\";s:18:\"default_recipients\";a:1:{s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}}}}', 'yes'),
(700, 'itsec_temp_whitelist_ip', 'a:1:{s:11:\"192.168.1.1\";i:1592568016;}', 'no'),
(702, 'itsec_active_modules', 'a:7:{s:9:\"ban-users\";b:1;s:6:\"backup\";b:1;s:11:\"brute-force\";b:1;s:19:\"network-brute-force\";b:1;s:16:\"wordpress-tweaks\";b:1;s:18:\"security-check-pro\";b:1;s:3:\"ssl\";b:1;}', 'yes'),
(721, 'action_scheduler_migration_status', 'complete', 'yes'),
(792, '_site_transient_timeout_browser_1880f050ca30a08eb08fe4883e373856', '1592377694', 'no'),
(793, '_site_transient_browser_1880f050ca30a08eb08fe4883e373856', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"83.0.4103.97\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(875, 'litespeed.cloud._summary', 'a:2:{s:19:\"curr_request.wp/ver\";i:0;s:19:\"last_request.wp/ver\";i:1591875160;}', 'yes'),
(876, 'litespeed.conf._version', '3.2.1', 'yes'),
(877, 'litespeed.conf.hash', 'bvT7zUJuYuWzFvBVsB1GEwHdANjcQbRC', 'yes'),
(878, 'litespeed.conf.auto_upgrade', '', 'yes'),
(879, 'litespeed.conf.api_key', '', 'yes'),
(880, 'litespeed.conf.server_ip', '', 'yes'),
(881, 'litespeed.conf.news', '', 'yes'),
(882, 'litespeed.conf.cache', '1', 'yes'),
(883, 'litespeed.conf.cache-priv', '1', 'yes'),
(884, 'litespeed.conf.cache-commenter', '1', 'yes'),
(885, 'litespeed.conf.cache-rest', '1', 'yes'),
(886, 'litespeed.conf.cache-page_login', '1', 'yes'),
(887, 'litespeed.conf.cache-favicon', '1', 'yes'),
(888, 'litespeed.conf.cache-resources', '1', 'yes'),
(889, 'litespeed.conf.cache-mobile', '', 'yes'),
(890, 'litespeed.conf.cache-mobile_rules', 'a:7:{i:0;s:6:\"Mobile\";i:1;s:7:\"Android\";i:2;s:5:\"Silk/\";i:3;s:6:\"Kindle\";i:4;s:10:\"BlackBerry\";i:5;s:10:\"Opera Mini\";i:6;s:10:\"Opera Mobi\";}', 'yes'),
(891, 'litespeed.conf.cache-browser', '', 'yes'),
(892, 'litespeed.conf.cache-exc_useragents', 'a:0:{}', 'yes'),
(893, 'litespeed.conf.cache-exc_cookies', 'a:0:{}', 'yes'),
(894, 'litespeed.conf.cache-exc_qs', 'a:0:{}', 'yes'),
(895, 'litespeed.conf.cache-exc_cat', 'a:0:{}', 'yes'),
(896, 'litespeed.conf.cache-exc_tag', 'a:0:{}', 'yes'),
(897, 'litespeed.conf.cache-force_uri', 'a:0:{}', 'yes'),
(898, 'litespeed.conf.cache-force_pub_uri', 'a:0:{}', 'yes'),
(899, 'litespeed.conf.cache-priv_uri', 'a:0:{}', 'yes'),
(900, 'litespeed.conf.cache-exc', 'a:0:{}', 'yes'),
(901, 'litespeed.conf.cache-exc_roles', 'a:0:{}', 'yes'),
(902, 'litespeed.conf.cache-drop_qs', 'a:4:{i:0;s:6:\"fbclid\";i:1;s:5:\"gclid\";i:2;s:4:\"utm*\";i:3;s:3:\"_ga\";}', 'yes'),
(903, 'litespeed.conf.cache-ttl_pub', '604800', 'yes'),
(904, 'litespeed.conf.cache-ttl_priv', '1800', 'yes'),
(905, 'litespeed.conf.cache-ttl_frontpage', '604800', 'yes'),
(906, 'litespeed.conf.cache-ttl_feed', '604800', 'yes'),
(907, 'litespeed.conf.cache-ttl_rest', '604800', 'yes'),
(908, 'litespeed.conf.cache-ttl_browser', '31557600', 'yes'),
(909, 'litespeed.conf.cache-ttl_status', 'a:3:{i:0;s:8:\"403 3600\";i:1;s:8:\"404 3600\";i:2;s:8:\"500 3600\";}', 'yes'),
(910, 'litespeed.conf.cache-login_cookie', '', 'yes'),
(911, 'litespeed.conf.cache-vary_group', 'a:0:{}', 'yes'),
(912, 'litespeed.conf.purge-upgrade', '1', 'yes'),
(913, 'litespeed.conf.purge-stale', '1', 'yes'),
(914, 'litespeed.conf.purge-post_all', '', 'yes'),
(915, 'litespeed.conf.purge-post_f', '1', 'yes'),
(916, 'litespeed.conf.purge-post_h', '1', 'yes'),
(917, 'litespeed.conf.purge-post_p', '1', 'yes'),
(918, 'litespeed.conf.purge-post_pwrp', '1', 'yes'),
(919, 'litespeed.conf.purge-post_a', '1', 'yes'),
(920, 'litespeed.conf.purge-post_y', '', 'yes'),
(921, 'litespeed.conf.purge-post_m', '1', 'yes'),
(922, 'litespeed.conf.purge-post_d', '', 'yes'),
(923, 'litespeed.conf.purge-post_t', '1', 'yes'),
(924, 'litespeed.conf.purge-post_pt', '1', 'yes'),
(925, 'litespeed.conf.purge-timed_urls', 'a:0:{}', 'yes'),
(926, 'litespeed.conf.purge-timed_urls_time', '', 'yes'),
(927, 'litespeed.conf.purge-hook_all', 'a:10:{i:0;s:12:\"switch_theme\";i:1;s:18:\"wp_create_nav_menu\";i:2;s:18:\"wp_update_nav_menu\";i:3;s:18:\"wp_delete_nav_menu\";i:4;s:11:\"create_term\";i:5;s:10:\"edit_terms\";i:6;s:11:\"delete_term\";i:7;s:8:\"add_link\";i:8;s:9:\"edit_link\";i:9;s:11:\"delete_link\";}', 'yes'),
(928, 'litespeed.conf.esi', '', 'yes'),
(929, 'litespeed.conf.esi-cache_admbar', '1', 'yes'),
(930, 'litespeed.conf.esi-cache_commform', '1', 'yes'),
(931, 'litespeed.conf.esi-nonce', 'a:2:{i:0;s:11:\"stats_nonce\";i:1;s:15:\"subscribe_nonce\";}', 'yes'),
(932, 'litespeed.conf.util-instant_click', '', 'yes'),
(933, 'litespeed.conf.util-no_https_vary', '', 'yes'),
(934, 'litespeed.conf.debug-disable_all', '', 'yes'),
(935, 'litespeed.conf.debug', '', 'yes'),
(936, 'litespeed.conf.debug-ips', 'a:1:{i:0;s:9:\"127.0.0.1\";}', 'yes'),
(937, 'litespeed.conf.debug-level', '', 'yes'),
(938, 'litespeed.conf.debug-filesize', '3', 'yes'),
(939, 'litespeed.conf.debug-cookie', '', 'yes'),
(940, 'litespeed.conf.debug-collaps_qs', '', 'yes'),
(941, 'litespeed.conf.debug-inc', 'a:0:{}', 'yes'),
(942, 'litespeed.conf.debug-exc', 'a:0:{}', 'yes'),
(943, 'litespeed.conf.db_optm-revisions_max', '0', 'yes'),
(944, 'litespeed.conf.db_optm-revisions_age', '0', 'yes'),
(945, 'litespeed.conf.optm-css_min', '', 'yes'),
(946, 'litespeed.conf.optm-css_inline_min', '', 'yes'),
(947, 'litespeed.conf.optm-css_comb', '', 'yes'),
(948, 'litespeed.conf.optm-css_comb_priority', '', 'yes'),
(949, 'litespeed.conf.optm-css_http2', '', 'yes'),
(950, 'litespeed.conf.optm-css_exc', 'a:0:{}', 'yes'),
(951, 'litespeed.conf.optm-js_min', '', 'yes'),
(952, 'litespeed.conf.optm-js_inline_min', '', 'yes'),
(953, 'litespeed.conf.optm-js_comb', '', 'yes'),
(954, 'litespeed.conf.optm-js_comb_priority', '', 'yes'),
(955, 'litespeed.conf.optm-js_http2', '', 'yes'),
(956, 'litespeed.conf.optm-js_exc', 'a:0:{}', 'yes'),
(957, 'litespeed.conf.optm-ttl', '604800', 'yes'),
(958, 'litespeed.conf.optm-html_min', '', 'yes'),
(959, 'litespeed.conf.optm-qs_rm', '', 'yes'),
(960, 'litespeed.conf.optm-ggfonts_rm', '', 'yes'),
(961, 'litespeed.conf.optm-css_async', '', 'yes'),
(962, 'litespeed.conf.optm-ccss_gen', '1', 'yes'),
(963, 'litespeed.conf.optm-ccss_async', '1', 'yes'),
(964, 'litespeed.conf.optm-css_async_inline', '1', 'yes'),
(965, 'litespeed.conf.optm-css_font_display', '', 'yes'),
(966, 'litespeed.conf.optm-js_defer', '', 'yes'),
(967, 'litespeed.conf.optm-js_inline_defer', '', 'yes'),
(968, 'litespeed.conf.optm-emoji_rm', '', 'yes'),
(969, 'litespeed.conf.optm-exc_jq', '1', 'yes'),
(970, 'litespeed.conf.optm-ggfonts_async', '', 'yes'),
(971, 'litespeed.conf.optm-max_size', '2', 'yes'),
(972, 'litespeed.conf.optm-rm_comment', '', 'yes'),
(973, 'litespeed.conf.optm-exc_roles', 'a:0:{}', 'yes'),
(974, 'litespeed.conf.optm-ccss_con', '', 'yes'),
(975, 'litespeed.conf.optm-js_defer_exc', 'a:0:{}', 'yes'),
(976, 'litespeed.conf.optm-dns_prefetch', 'a:0:{}', 'yes'),
(977, 'litespeed.conf.optm-dns_prefetch_ctrl', '', 'yes'),
(978, 'litespeed.conf.optm-exc', 'a:0:{}', 'yes'),
(979, 'litespeed.conf.optm-ccss_sep_posttype', 'a:0:{}', 'yes'),
(980, 'litespeed.conf.optm-ccss_sep_uri', 'a:0:{}', 'yes'),
(981, 'litespeed.conf.object', '', 'yes'),
(982, 'litespeed.conf.object-kind', '', 'yes'),
(983, 'litespeed.conf.object-host', 'localhost', 'yes'),
(984, 'litespeed.conf.object-port', '11211', 'yes'),
(985, 'litespeed.conf.object-life', '360', 'yes'),
(986, 'litespeed.conf.object-persistent', '1', 'yes'),
(987, 'litespeed.conf.object-admin', '1', 'yes'),
(988, 'litespeed.conf.object-transients', '1', 'yes'),
(989, 'litespeed.conf.object-db_id', '0', 'yes'),
(990, 'litespeed.conf.object-user', '', 'yes'),
(991, 'litespeed.conf.object-pswd', '', 'yes'),
(992, 'litespeed.conf.object-global_groups', 'a:12:{i:0;s:5:\"users\";i:1;s:10:\"userlogins\";i:2;s:8:\"usermeta\";i:3;s:9:\"user_meta\";i:4;s:14:\"site-transient\";i:5;s:12:\"site-options\";i:6;s:11:\"site-lookup\";i:7;s:11:\"blog-lookup\";i:8;s:12:\"blog-details\";i:9;s:3:\"rss\";i:10;s:12:\"global-posts\";i:11;s:13:\"blog-id-cache\";}', 'yes'),
(993, 'litespeed.conf.object-non_persistent_groups', 'a:4:{i:0;s:7:\"comment\";i:1;s:6:\"counts\";i:2;s:7:\"plugins\";i:3;s:13:\"wc_session_id\";}', 'yes'),
(994, 'litespeed.conf.discuss-avatar_cache', '', 'yes'),
(995, 'litespeed.conf.discuss-avatar_cron', '', 'yes'),
(996, 'litespeed.conf.discuss-avatar_cache_ttl', '604800', 'yes'),
(997, 'litespeed.conf.media-lazy', '', 'yes'),
(998, 'litespeed.conf.media-lazy_placeholder', '', 'yes'),
(999, 'litespeed.conf.media-placeholder_resp', '', 'yes'),
(1000, 'litespeed.conf.media-placeholder_resp_color', '#cfd4db', 'yes'),
(1001, 'litespeed.conf.media-placeholder_resp_svg', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"{width}\" height=\"{height}\" viewBox=\"0 0 {width} {height}\"><rect width=\"100%\" height=\"100%\" fill=\"{color}\"/></svg>', 'yes'),
(1002, 'litespeed.conf.media-lqip', '', 'yes'),
(1003, 'litespeed.conf.media-lqip_qual', '4', 'yes'),
(1004, 'litespeed.conf.media-lqip_min_w', '150', 'yes'),
(1005, 'litespeed.conf.media-lqip_min_h', '150', 'yes'),
(1006, 'litespeed.conf.media-placeholder_resp_async', '1', 'yes'),
(1007, 'litespeed.conf.media-iframe_lazy', '', 'yes'),
(1008, 'litespeed.conf.media-lazyjs_inline', '', 'yes'),
(1009, 'litespeed.conf.media-lazy_exc', 'a:0:{}', 'yes'),
(1010, 'litespeed.conf.media-lazy_cls_exc', 'a:1:{i:0;s:15:\"wmu-preview-img\";}', 'yes'),
(1011, 'litespeed.conf.media-lazy_parent_cls_exc', 'a:0:{}', 'yes'),
(1012, 'litespeed.conf.media-iframe_lazy_cls_exc', 'a:0:{}', 'yes'),
(1013, 'litespeed.conf.media-iframe_lazy_parent_cls_exc', 'a:0:{}', 'yes'),
(1014, 'litespeed.conf.media-lazy_uri_exc', 'a:0:{}', 'yes'),
(1015, 'litespeed.conf.img_optm-auto', '', 'yes'),
(1016, 'litespeed.conf.img_optm-cron', '1', 'yes'),
(1017, 'litespeed.conf.img_optm-ori', '1', 'yes'),
(1018, 'litespeed.conf.img_optm-rm_bkup', '', 'yes'),
(1019, 'litespeed.conf.img_optm-webp', '', 'yes'),
(1020, 'litespeed.conf.img_optm-lossless', '', 'yes'),
(1021, 'litespeed.conf.img_optm-exif', '', 'yes'),
(1022, 'litespeed.conf.img_optm-webp_replace', '', 'yes'),
(1023, 'litespeed.conf.img_optm-webp_attr', 'a:7:{i:0;s:7:\"img.src\";i:1;s:14:\"div.data-thumb\";i:2;s:12:\"img.data-src\";i:3;s:20:\"div.data-large_image\";i:4;s:19:\"img.retina_logo_url\";i:5;s:23:\"div.data-parallax-image\";i:6;s:12:\"video.poster\";}', 'yes'),
(1024, 'litespeed.conf.img_optm-webp_replace_srcset', '', 'yes'),
(1025, 'litespeed.conf.img_optm-jpg_quality', '82', 'yes'),
(1026, 'litespeed.conf.crawler', '', 'yes'),
(1027, 'litespeed.conf.crawler-inc_posts', '1', 'yes'),
(1028, 'litespeed.conf.crawler-inc_pages', '1', 'yes'),
(1029, 'litespeed.conf.crawler-inc_cats', '1', 'yes'),
(1030, 'litespeed.conf.crawler-inc_tags', '1', 'yes'),
(1031, 'litespeed.conf.crawler-exc_cpt', 'a:0:{}', 'yes'),
(1032, 'litespeed.conf.crawler-order_links', '', 'yes'),
(1033, 'litespeed.conf.crawler-usleep', '500', 'yes'),
(1034, 'litespeed.conf.crawler-run_duration', '400', 'yes'),
(1035, 'litespeed.conf.crawler-run_interval', '600', 'yes'),
(1036, 'litespeed.conf.crawler-crawl_interval', '302400', 'yes'),
(1037, 'litespeed.conf.crawler-threads', '3', 'yes'),
(1038, 'litespeed.conf.crawler-timeout', '30', 'yes'),
(1039, 'litespeed.conf.crawler-load_limit', '1', 'yes'),
(1040, 'litespeed.conf.crawler-sitemap', '', 'yes'),
(1041, 'litespeed.conf.crawler-drop_domain', '1', 'yes'),
(1042, 'litespeed.conf.crawler-map_timeout', '120', 'yes'),
(1043, 'litespeed.conf.crawler-roles', 'a:0:{}', 'yes'),
(1044, 'litespeed.conf.crawler-cookies', 'a:0:{}', 'yes'),
(1045, 'litespeed.conf.misc-htaccess_front', '', 'yes'),
(1046, 'litespeed.conf.misc-htaccess_back', '', 'yes'),
(1047, 'litespeed.conf.misc-heartbeat_front', '', 'yes'),
(1048, 'litespeed.conf.misc-heartbeat_front_ttl', '60', 'yes'),
(1049, 'litespeed.conf.misc-heartbeat_back', '', 'yes'),
(1050, 'litespeed.conf.misc-heartbeat_back_ttl', '60', 'yes'),
(1051, 'litespeed.conf.misc-heartbeat_editor', '', 'yes'),
(1052, 'litespeed.conf.misc-heartbeat_editor_ttl', '15', 'yes'),
(1053, 'litespeed.conf.cdn', '', 'yes'),
(1054, 'litespeed.conf.cdn-ori', 'a:0:{}', 'yes'),
(1055, 'litespeed.conf.cdn-ori_dir', 'a:2:{i:0;s:10:\"wp-content\";i:1;s:11:\"wp-includes\";}', 'yes'),
(1056, 'litespeed.conf.cdn-exc', 'a:0:{}', 'yes'),
(1057, 'litespeed.conf.cdn-remote_jq', '', 'yes'),
(1058, 'litespeed.conf.cdn-quic', '', 'yes'),
(1059, 'litespeed.conf.cdn-cloudflare', '', 'yes'),
(1060, 'litespeed.conf.cdn-cloudflare_email', '', 'yes'),
(1061, 'litespeed.conf.cdn-cloudflare_key', '', 'yes'),
(1062, 'litespeed.conf.cdn-cloudflare_name', '', 'yes'),
(1063, 'litespeed.conf.cdn-cloudflare_zone', '', 'yes'),
(1064, 'litespeed.conf.cdn-mapping', 'a:1:{i:0;a:5:{s:3:\"url\";b:0;s:7:\"inc_img\";s:1:\"1\";s:7:\"inc_css\";s:1:\"1\";s:6:\"inc_js\";s:1:\"1\";s:8:\"filetype\";a:17:{i:0;s:4:\".aac\";i:1;s:4:\".css\";i:2;s:4:\".eot\";i:3;s:4:\".gif\";i:4;s:5:\".jpeg\";i:5;s:3:\".js\";i:6;s:4:\".jpg\";i:7;s:5:\".less\";i:8;s:4:\".mp3\";i:9;s:4:\".mp4\";i:10;s:4:\".ogg\";i:11;s:4:\".otf\";i:12;s:4:\".pdf\";i:13;s:4:\".png\";i:14;s:4:\".svg\";i:15;s:4:\".ttf\";i:16;s:5:\".woff\";}}}', 'yes'),
(1065, 'litespeed.conf.cdn-attr', 'a:5:{i:0;s:4:\".src\";i:1;s:9:\".data-src\";i:2;s:5:\".href\";i:3;s:7:\".poster\";i:4;s:13:\"source.srcset\";}', 'yes'),
(1066, 'litespeed.gui._summary', 'a:2:{s:11:\"new_version\";i:1591867884;s:5:\"score\";i:1592213484;}', 'yes'),
(1172, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ro_RO/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"ro_RO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ro_RO/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1592057086;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1175, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"georgebejan@thecon.ro\";s:7:\"version\";s:5:\"5.4.2\";s:9:\"timestamp\";i:1591875001;}', 'no'),
(1178, 'litespeed.admin_display._summary', 'a:4:{s:11:\"new_version\";i:1591867884;s:5:\"score\";i:1592213484;s:22:\"new_version.last_check\";i:1591875160;s:13:\"new_version.v\";s:5:\"3.2.2\";}', 'yes'),
(1238, '_site_transient_timeout_php_check_97f83d63b8a66f6e8c057d89a83d8845', '1592611710', 'no'),
(1239, '_site_transient_php_check_97f83d63b8a66f6e8c057d89a83d8845', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(1245, '_transient_timeout__woocommerce_helper_subscriptions', '1592057986', 'no'),
(1246, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1247, '_site_transient_timeout_theme_roots', '1592058886', 'no'),
(1248, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1249, '_transient_timeout__woocommerce_helper_updates', '1592100286', 'no'),
(1250, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1592057086;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1251, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1592057088;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1252, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1592057089;s:7:\"checked\";a:20:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.8.12\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.9\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.4.8\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.1\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.4\";s:33:\"essential-grid/essential-grid.php\";s:5:\"2.3.1\";s:22:\"font-awesome/index.php\";s:10:\"4.0.0-rc20\";s:35:\"cookie-law-info/cookie-law-info.php\";s:5:\"1.8.8\";s:41:\"better-wp-security/better-wp-security.php\";s:5:\"7.7.1\";s:35:\"litespeed-cache/litespeed-cache.php\";s:5:\"3.2.1\";s:23:\"loco-translate/loco.php\";s:5:\"2.4.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.2.0\";s:45:\"woocommerce-multilingual/wpml-woocommerce.php\";s:5:\"4.9.0\";s:23:\"wordfence/wordfence.php\";s:5:\"7.4.7\";s:33:\"wpml-media-translation/plugin.php\";s:5:\"2.5.5\";s:40:\"sitepress-multilingual-cms/sitepress.php\";s:6:\"4.3.11\";s:34:\"wpml-string-translation/plugin.php\";s:5:\"3.0.8\";s:38:\"wpml-translation-management/plugin.php\";s:5:\"2.9.5\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"14.3\";}s:8:\"response\";a:1:{s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:5:\"3.2.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/litespeed-cache.3.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=1574145\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=1574145\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2031698\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2031698\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:14:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=2279696\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.4.8\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"font-awesome/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/font-awesome\";s:4:\"slug\";s:12:\"font-awesome\";s:6:\"plugin\";s:22:\"font-awesome/index.php\";s:11:\"new_version\";s:10:\"4.0.0-rc20\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/font-awesome/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/font-awesome.4.0.0-rc20.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/font-awesome/assets/icon-256x256.png?rev=1991998\";s:2:\"1x\";s:65:\"https://ps.w.org/font-awesome/assets/icon-128x128.png?rev=1991998\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/font-awesome/assets/banner-1544x500.png?rev=1991998\";s:2:\"1x\";s:67:\"https://ps.w.org/font-awesome/assets/banner-772x250.png?rev=1991993\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"cookie-law-info/cookie-law-info.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/cookie-law-info\";s:4:\"slug\";s:15:\"cookie-law-info\";s:6:\"plugin\";s:35:\"cookie-law-info/cookie-law-info.php\";s:11:\"new_version\";s:5:\"1.8.8\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/cookie-law-info/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/cookie-law-info.1.8.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/cookie-law-info/assets/icon-256x256.png?rev=1879809\";s:2:\"1x\";s:68:\"https://ps.w.org/cookie-law-info/assets/icon-256x256.png?rev=1879809\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/cookie-law-info/assets/banner-1544x500.jpg?rev=2289277\";s:2:\"1x\";s:70:\"https://ps.w.org/cookie-law-info/assets/banner-772x250.jpg?rev=2289277\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"better-wp-security/better-wp-security.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/better-wp-security\";s:4:\"slug\";s:18:\"better-wp-security\";s:6:\"plugin\";s:41:\"better-wp-security/better-wp-security.php\";s:11:\"new_version\";s:5:\"7.7.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/better-wp-security/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/better-wp-security.7.7.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:70:\"https://ps.w.org/better-wp-security/assets/icon-256x256.jpg?rev=969999\";s:2:\"1x\";s:62:\"https://ps.w.org/better-wp-security/assets/icon.svg?rev=970042\";s:3:\"svg\";s:62:\"https://ps.w.org/better-wp-security/assets/icon.svg?rev=970042\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/better-wp-security/assets/banner-772x250.png?rev=881897\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/loco-translate.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.2.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-multilingual/wpml-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/woocommerce-multilingual\";s:4:\"slug\";s:24:\"woocommerce-multilingual\";s:6:\"plugin\";s:45:\"woocommerce-multilingual/wpml-woocommerce.php\";s:11:\"new_version\";s:5:\"4.9.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/woocommerce-multilingual/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/woocommerce-multilingual.4.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/woocommerce-multilingual/assets/icon-256x256.png?rev=2026021\";s:2:\"1x\";s:77:\"https://ps.w.org/woocommerce-multilingual/assets/icon-128x128.png?rev=2026021\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-multilingual/assets/banner-772x250.png?rev=2026021\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:5:\"7.4.7\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wordfence.7.4.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/wordfence/assets/icon-256x256.png?rev=2070855\";s:2:\"1x\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";s:3:\"svg\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.jpg?rev=2124102\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.jpg?rev=2124102\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"14.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.14.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no'),
(1256, '_site_transient_timeout_itsec_wp_upload_dir', '1592568019', 'no'),
(1258, '_site_transient_itsec_wp_upload_dir', 'a:6:{s:4:\"path\";s:60:\"/home/wordpressnexloc/public_html/wp-content/uploads/2020/06\";s:3:\"url\";s:54:\"http://wordpress.nexloc.com/wp-content/uploads/2020/06\";s:6:\"subdir\";s:8:\"/2020/06\";s:7:\"basedir\";s:52:\"/home/wordpressnexloc/public_html/wp-content/uploads\";s:7:\"baseurl\";s:46:\"http://wordpress.nexloc.com/wp-content/uploads\";s:5:\"error\";b:0;}', 'no'),
(1260, '_transient_doing_cron', '1592481621.6038970947265625000000', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<label> Numele tău (obligatoriu)\n    [text* your-name] </label>\n\n<label> Emailul tău (obligatoriu)\n    [email* your-email] </label>\n\n<label> Subiect\n    [text your-subject] </label>\n\n<label> Mesajul tău\n    [textarea your-message] </label>\n\n[submit \"Trimite\"]'),
(4, 5, '_mail', 'a:8:{s:7:\"subject\";s:26:\"Wordpress \"[your-subject]\"\";s:6:\"sender\";s:42:\"Wordpress <wordpress@wordpress.nexloc.com>\";s:4:\"body\";s:190:\"De la: [your-name] <[your-email]>\nSubiect: [your-subject]\n\nCorp mesaj:\n[your-message]\n\n-- \nAcest email a fost trimis printr-un formular de contact pe Wordpress (https://wordpress.nexloc.com)\";s:9:\"recipient\";s:21:\"georgebejan@thecon.ro\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Wordpress \"[your-subject]\"\";s:6:\"sender\";s:42:\"Wordpress <wordpress@wordpress.nexloc.com>\";s:4:\"body\";s:131:\"Corp mesaj:\n[your-message]\n\n-- \nAcest email a fost trimis printr-un formular de contact pe Wordpress (https://wordpress.nexloc.com)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:31:\"Reply-To: georgebejan@thecon.ro\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Îți mulțumesc pentru mesaj. A fost trimis.\";s:12:\"mail_sent_ng\";s:96:\"A apărut o eroare la încercarea de a trimite mesajul. Te rog să încerci din nou mai târziu.\";s:16:\"validation_error\";s:86:\"Unul sau mai multe câmpuri au o eroare. Te rog să verifici și să încerci din nou.\";s:4:\"spam\";s:96:\"A apărut o eroare la încercarea de a trimite mesajul. Te rog să încerci din nou mai târziu.\";s:12:\"accept_terms\";s:76:\"Trebuie să accepți termenii și condițiile înainte de a trimite mesajul.\";s:16:\"invalid_required\";s:25:\"Câmpul este obligatoriu.\";s:16:\"invalid_too_long\";s:23:\"Câmpul este prea lung.\";s:17:\"invalid_too_short\";s:24:\"Câmpul este prea scurt.\";}'),
(7, 5, '_additional_settings', NULL),
(8, 5, '_locale', 'ro_RO'),
(9, 6, '_form', '<label> Numele tău (obligatoriu)\n    [text* your-name] </label>\n\n<label> Emailul tău (obligatoriu)\n    [email* your-email] </label>\n\n<label> Subiect\n    [text your-subject] </label>\n\n<label> Mesajul tău\n    [textarea your-message] </label>\n\n[submit \"Trimite\"]'),
(10, 6, '_mail', 'a:8:{s:7:\"subject\";s:26:\"Wordpress \"[your-subject]\"\";s:6:\"sender\";s:42:\"Wordpress <wordpress@wordpress.nexloc.com>\";s:4:\"body\";s:190:\"De la: [your-name] <[your-email]>\nSubiect: [your-subject]\n\nCorp mesaj:\n[your-message]\n\n-- \nAcest email a fost trimis printr-un formular de contact pe Wordpress (https://wordpress.nexloc.com)\";s:9:\"recipient\";s:21:\"georgebejan@thecon.ro\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(11, 6, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Wordpress \"[your-subject]\"\";s:6:\"sender\";s:42:\"Wordpress <wordpress@wordpress.nexloc.com>\";s:4:\"body\";s:131:\"Corp mesaj:\n[your-message]\n\n-- \nAcest email a fost trimis printr-un formular de contact pe Wordpress (https://wordpress.nexloc.com)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:31:\"Reply-To: georgebejan@thecon.ro\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(12, 6, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Îți mulțumesc pentru mesaj. A fost trimis.\";s:12:\"mail_sent_ng\";s:96:\"A apărut o eroare la încercarea de a trimite mesajul. Te rog să încerci din nou mai târziu.\";s:16:\"validation_error\";s:86:\"Unul sau mai multe câmpuri au o eroare. Te rog să verifici și să încerci din nou.\";s:4:\"spam\";s:96:\"A apărut o eroare la încercarea de a trimite mesajul. Te rog să încerci din nou mai târziu.\";s:12:\"accept_terms\";s:76:\"Trebuie să accepți termenii și condițiile înainte de a trimite mesajul.\";s:16:\"invalid_required\";s:25:\"Câmpul este obligatoriu.\";s:16:\"invalid_too_long\";s:23:\"Câmpul este prea lung.\";s:17:\"invalid_too_short\";s:24:\"Câmpul este prea scurt.\";s:12:\"invalid_date\";s:29:\"Formatul datei este incorect.\";s:14:\"date_too_early\";s:45:\"Data este înainte de cea mai veche permisă.\";s:13:\"date_too_late\";s:42:\"Data este după cea mai recentă permisă.\";s:13:\"upload_failed\";s:60:\"A apărut o eroare necunoscută la încărcarea fișierului.\";s:24:\"upload_file_type_invalid\";s:54:\"Nu-ți este permis să încarci fișiere de acest tip.\";s:21:\"upload_file_too_large\";s:25:\"Fișierul este prea mare.\";s:23:\"upload_failed_php_error\";s:47:\"A apărut o eroare la încărcarea fișierului.\";s:14:\"invalid_number\";s:33:\"Formatul numărului este invalid.\";s:16:\"number_too_small\";s:55:\"Numărul este mai mic decât valoarea minimă permisă.\";s:16:\"number_too_large\";s:56:\"Numărul este mai mare decât valoarea maximă permisă.\";s:23:\"quiz_answer_not_correct\";s:39:\"Răspunsul la chestionar este incorect.\";s:17:\"captcha_not_match\";s:42:\"Codul pe care l-ai introdus este incorect.\";s:13:\"invalid_email\";s:42:\"Adresa de email introdusă este invalidă.\";s:11:\"invalid_url\";s:20:\"URL-ul este invalid.\";s:11:\"invalid_tel\";s:33:\"Numărul de telefon este invalid.\";}'),
(13, 6, '_additional_settings', NULL),
(14, 6, '_locale', 'ro_RO'),
(15, 7, '_wp_attached_file', 'woocommerce-placeholder.png'),
(16, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 1, '_edit_lock', '1591791071:1'),
(30, 14, '_wp_attached_file', '2020/06/2020-landscape-1.png'),
(31, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2020/06/2020-landscape-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 14, '_starter_content_theme', 'twentytwenty'),
(33, 14, '_customize_draft_post_name', 'noua-expozitie-umoma-isi-deschide-portile'),
(34, 15, '_thumbnail_id', '14'),
(35, 15, '_customize_draft_post_name', 'noua-expozitie-umoma-isi-deschide-portile'),
(36, 15, '_customize_changeset_uuid', '5d16fb78-fab3-4fc2-a14f-df52150f4109'),
(37, 16, '_customize_draft_post_name', 'despre'),
(38, 16, '_customize_changeset_uuid', '5d16fb78-fab3-4fc2-a14f-df52150f4109'),
(39, 17, '_customize_draft_post_name', 'contact'),
(40, 17, '_customize_changeset_uuid', '5d16fb78-fab3-4fc2-a14f-df52150f4109'),
(41, 18, '_customize_draft_post_name', 'blog'),
(42, 18, '_customize_changeset_uuid', '5d16fb78-fab3-4fc2-a14f-df52150f4109');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-06-04 12:14:53', '2020-06-04 12:14:53', '<!-- wp:paragraph -->\n<p>Bine ai venit la WordPress. Acesta e primul tău articol. Editează-l sau șterge-l ș-apoi începe să scrii!</p>\n<!-- /wp:paragraph -->', 'Salut lume!', '', 'publish', 'open', 'open', '', 'salut-lume', '', '', '2020-06-04 12:14:53', '2020-06-04 12:14:53', '', 0, 'https://wordpress.nexloc.com/?p=1', 0, 'post', '', 1),
(2, 1, '2020-06-04 12:14:53', '2020-06-04 12:14:53', '<!-- wp:paragraph -->\n<p>Aceasta este o pagină exemplu. Este diferită de un articol de blog deoarece ea va rămâne într-un singur loc și va apărea în navigarea pe situl tău (în majoritatea temelor). Foarte multe persoane încep cu o pagină Despre în care se prezintă potențialilor vizitatori ai sitului. Ar putea spune ceva de genul acesta:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Salut! În timpul zilei sunt un curier pe bicicletă iar noaptea un actor în devenire și-acesta este situl meu. Locuiesc în București, am un câine grozav pe care-l cheamă Max și-mi place berea. (Și să mă prindă ploaia pe-afară).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... sau ceva de genul:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Compania XYZ Măruțișuri SRL a fost înființată în 1990 și de atunci oferă publicului mărunțișuri de calitate. Aflată în orașul Caracal, XYZ angajează peste 2000 de oameni și face și o sumă de lucruri deosebite pentru comunitatea din Caracal.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Ca utilizator WordPress nou, ar trebui să mergi la <a href=\"https://wordpress.nexloc.com/wp-admin/\">Panoul tău de control</a> ca să ștergi această pagină și să creezi pagini noi pentru conținutul tău. Distracție plăcută!</p>\n<!-- /wp:paragraph -->', 'Pagină exemplu', '', 'publish', 'closed', 'open', '', 'pagină-exemplu', '', '', '2020-06-04 12:14:53', '2020-06-04 12:14:53', '', 0, 'https://wordpress.nexloc.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-06-04 12:14:53', '2020-06-04 12:14:53', '<!-- wp:heading --><h2>Cine ești (suntem)</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Adresa sitului web este: https://wordpress.nexloc.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ce date personale colectăm și de ce le colectăm</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarii</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Când vizitatorii lasă comentarii pe sit, colectăm datele arătate în formularele de comentarii, dar și adresa IP a vizitatorului și șirul agenților utilizator din navigator pentru a ne ajuta la detectarea spamului.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Un șir făcut anonim (numit și un hash), creat din adresele tale de email, poate fi furnizat serviciului Gravatar pentru a vedea dacă îl folosești. Politica de confidențialitate a serviciului Gravatar este disponibilă aici: https://automattic.com/privacy/. După aprobarea comentariului, fotografia ta de profil este vizibilă pentru public lângă comentariul tău.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Dacă încarci imagini pe situl web, ar trebui să eviți încărcarea imaginilor care au incluse date de locație înglobate (EXIF GPS). Vizitatorii sitului web pot descărca și extrage toate datele despre locație din imaginile de pe sit.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulare de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookie-uri</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Dacă lași un comentariu pe situl nostru, poți opta pentru salvarea în cookie-uri a numelui, adresei de email și sitului tău web. Acestea sunt pentru confortul tău, astfel nu mai trebuie să le completezi din nou când lași un alt comentariu. Aceste cookie-uri vor fi valabile un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Dacă mergi la pagina noastră de autentificare, vom seta un cookie temporar pentru a determina dacă navigatorul tău acceptă cookie-uri. Acest cookie nu conține date personale și este eliminat când închizi navigatorul.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Când te autentifici, vom seta și câteva cookie-uri pentru a-ți salva informațiile de autentificare și opțiunile de afișare pe ecran. Cookie-urile de autentificare sunt păstrate două zile, iar cele pentru opțiuni de afișare pe ecran sunt păstrate un an. Dacă selectezi „Ține-mă minte”, cookie-urile tale de autentificare vor fi păstrate două săptămâni. Dacă te dezautentifici din cont, cookie-urile de autentificare vor fi eliminate.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Dacă editezi sau publici un articol, un cookie suplimentar va fi salvat în navigatorul tău. Acest cookie nu include date personale și indică pur și simplu ID-ul articolului pe care tocmai l-ai editat. El expiră după 1 zi.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Conținut înglobat de pe alte situri web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articolele din acest sit pot include conținut înglobat (de exemplu, videouri, imagini, articole etc.). Conținutul înglobat de pe alte situri web se comporta exact la fel ca și cum vizitatorii au vizualizat un alt sit web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Aceste situri web pot să colecteze date despre tine, să folosească cookie-uri, să înglobeze urmărirea suplimentară de la părți terțe și să-ți monitorizeze interacțiunea cu conținutul înglobat, inclusiv să-ți urmărească interacțiunea cu conținutul înglobat dacă ai un cont și ești autentificat în acel sit web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analitice</h3><!-- /wp:heading --><!-- wp:heading --><h2>Cu cine partajăm datele tale</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cât timp îți păstrăm datele</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Dacă lași un comentariu, comentariul și metadatele lui sunt păstrate pe o perioadă nedeterminată. Așa putem recunoaște și aproba automat toate comentariile următoare în loc să le ținem într-o coadă pentru moderare.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pentru utilizatorii (dacă există) care se înregistrează pe situl nostru web, stocăm și informațiile personale pe care le furnizează în profilul lor de utilizator. Toți utilizatorii își pot vedea, edita sau șterge informațiile personale oricând (dar nu își pot schimba numele de utilizator). De asemenea, administratorii sitului web pot vedea și edita aceste informații.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ce drepturi ai asupra datelor tale</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Dacă ai un cont sau ai lăsat comentarii pe acest sit web, poți cere să primești un fișier de export cu datele personale pe care le deținem despre tine, inclusiv toate datele pe care ni le-ai furnizat. De asemenea, ne poți cere să ștergem toate datele personale pe care le deținem despre tine. Acestea nu includ toate datele pe care suntem obligați să le păstrăm în scopuri administrative, juridice sau de securitate.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Unde îți trimitem datele</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentariile vizitatorilor pot fi verificate printr-un serviciu automat de detectare a spamului.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informațiile tale de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informații suplimentare</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cum îți protejăm datele</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Ce proceduri avem la dispoziție pentru încălcarea securității datelor</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De la care părți terțe primim date</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Ce decizii luăm și/sau ce profiluri realizăm automat cu datele utilizatorilor</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cerințe pentru divulgarea unei afaceri controlată de guvern</h3><!-- /wp:heading -->', 'Politică de confidențialitate', '', 'draft', 'closed', 'open', '', 'politica-de-confidentialitate', '', '', '2020-06-04 12:14:53', '2020-06-04 12:14:53', '', 0, 'https://wordpress.nexloc.com/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-06-04 12:15:00', '0000-00-00 00:00:00', '', 'Ciornă automată', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-04 12:15:00', '0000-00-00 00:00:00', '', 0, 'https://wordpress.nexloc.com/?p=4', 0, 'post', '', 0),
(5, 1, '2020-06-04 12:18:31', '2020-06-04 12:18:31', '<label> Numele tău (obligatoriu)\n    [text* your-name] </label>\n\n<label> Emailul tău (obligatoriu)\n    [email* your-email] </label>\n\n<label> Subiect\n    [text your-subject] </label>\n\n<label> Mesajul tău\n    [textarea your-message] </label>\n\n[submit \"Trimite\"]\nWordpress \"[your-subject]\"\nWordpress <wordpress@wordpress.nexloc.com>\nDe la: [your-name] <[your-email]>\nSubiect: [your-subject]\n\nCorp mesaj:\n[your-message]\n\n-- \nAcest email a fost trimis printr-un formular de contact pe Wordpress (https://wordpress.nexloc.com)\ngeorgebejan@thecon.ro\nReply-To: [your-email]\n\n0\n0\n\nWordpress \"[your-subject]\"\nWordpress <wordpress@wordpress.nexloc.com>\nCorp mesaj:\n[your-message]\n\n-- \nAcest email a fost trimis printr-un formular de contact pe Wordpress (https://wordpress.nexloc.com)\n[your-email]\nReply-To: georgebejan@thecon.ro\n\n0\n0\nÎți mulțumesc pentru mesaj. A fost trimis.\nA apărut o eroare la încercarea de a trimite mesajul. Te rog să încerci din nou mai târziu.\nUnul sau mai multe câmpuri au o eroare. Te rog să verifici și să încerci din nou.\nA apărut o eroare la încercarea de a trimite mesajul. Te rog să încerci din nou mai târziu.\nTrebuie să accepți termenii și condițiile înainte de a trimite mesajul.\nCâmpul este obligatoriu.\nCâmpul este prea lung.\nCâmpul este prea scurt.', 'Formular de contact 1', '', 'publish', 'closed', 'closed', '', 'formular-de-contact-1', '', '', '2020-06-04 12:18:31', '2020-06-04 12:18:31', '', 0, 'https://wordpress.nexloc.com/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2020-06-04 12:19:07', '2020-06-04 12:19:07', '<label> Numele tău (obligatoriu)\n    [text* your-name] </label>\n\n<label> Emailul tău (obligatoriu)\n    [email* your-email] </label>\n\n<label> Subiect\n    [text your-subject] </label>\n\n<label> Mesajul tău\n    [textarea your-message] </label>\n\n[submit \"Trimite\"]\nWordpress \"[your-subject]\"\nWordpress <wordpress@wordpress.nexloc.com>\nDe la: [your-name] <[your-email]>\nSubiect: [your-subject]\n\nCorp mesaj:\n[your-message]\n\n-- \nAcest email a fost trimis printr-un formular de contact pe Wordpress (https://wordpress.nexloc.com)\ngeorgebejan@thecon.ro\nReply-To: [your-email]\n\n0\n0\n\nWordpress \"[your-subject]\"\nWordpress <wordpress@wordpress.nexloc.com>\nCorp mesaj:\n[your-message]\n\n-- \nAcest email a fost trimis printr-un formular de contact pe Wordpress (https://wordpress.nexloc.com)\n[your-email]\nReply-To: georgebejan@thecon.ro\n\n0\n0\nÎți mulțumesc pentru mesaj. A fost trimis.\nA apărut o eroare la încercarea de a trimite mesajul. Te rog să încerci din nou mai târziu.\nUnul sau mai multe câmpuri au o eroare. Te rog să verifici și să încerci din nou.\nA apărut o eroare la încercarea de a trimite mesajul. Te rog să încerci din nou mai târziu.\nTrebuie să accepți termenii și condițiile înainte de a trimite mesajul.\nCâmpul este obligatoriu.\nCâmpul este prea lung.\nCâmpul este prea scurt.\nFormatul datei este incorect.\nData este înainte de cea mai veche permisă.\nData este după cea mai recentă permisă.\nA apărut o eroare necunoscută la încărcarea fișierului.\nNu-ți este permis să încarci fișiere de acest tip.\nFișierul este prea mare.\nA apărut o eroare la încărcarea fișierului.\nFormatul numărului este invalid.\nNumărul este mai mic decât valoarea minimă permisă.\nNumărul este mai mare decât valoarea maximă permisă.\nRăspunsul la chestionar este incorect.\nCodul pe care l-ai introdus este incorect.\nAdresa de email introdusă este invalidă.\nURL-ul este invalid.\nNumărul de telefon este invalid.', 'Formular de contact 1_copy', '', 'publish', 'closed', 'closed', '', 'formular-de-contact-1_copy', '', '', '2020-06-04 12:19:07', '2020-06-04 12:19:07', '', 0, 'https://wordpress.nexloc.com/?post_type=wpcf7_contact_form&p=6', 0, 'wpcf7_contact_form', '', 0),
(7, 1, '2020-06-04 12:25:25', '2020-06-04 12:25:25', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-06-04 12:25:25', '2020-06-04 12:25:25', '', 0, 'https://wordpress.nexloc.com/wp-content/uploads/2020/06/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2020-06-11 11:30:19', '0000-00-00 00:00:00', '', 'Noua expoziție UMoMA își deschide porțile', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-06-11 11:30:18', '0000-00-00 00:00:00', '', 0, 'https://wordpress.nexloc.com/wp-content/uploads/2020/06/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2020-06-11 11:30:19', '0000-00-00 00:00:00', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Destinația principală pentru arta modernă din Suedia de Nord. Expoziția este deschisă în fiecare zi între orele 10:00 și 18:00 în timpul lunilor de vară.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"https://wordpress.nexloc.com/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Exponate și zile</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 August -- 1 Decembrie</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Citește mai mult</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"https://wordpress.nexloc.com/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Teatrul de operații</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 Octombrie -- 1 Decembrie</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Citește mai mult</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"https://wordpress.nexloc.com/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Viața pe care o merit</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 August -- 1 Decembrie</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Citește mai mult</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"https://wordpress.nexloc.com/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>De la Signac la Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>1 Octombrie -- 1 Decembrie</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Citește mai mult</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"https://wordpress.nexloc.com/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">&#8220;Cyborgii nu sunt relevanți, precum a stabilit filozoful Donna Haraway. Ei nu-și amintesc cosmosul.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">Cu șapte etaje de o arhitectură impresionantă, UM0MA prezintă expoziții de artă contemporană, uneori alături de retrospective istorice de artă. Subiectele existențiale, politice și filozofice sunt intrinseci programului nostru. Ca vizitator ești invitat la tururi cu ghid, discuții despre artă, lecturi, vizionări de filme și alte evenimente cu acces gratuit</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Expozițiile sunt produse de UMoMA în colaborare cu artiști și muzee din întreaga lume și atrag deseori atenția la nivel internațional. UMoMA a primit o Distincție Specială de la Muzeul European al Anului și a fost desemnat printre finaliști pentru Premiul de Muzeu Suedez al Anului precum și pentru Premiul pentru Muzee al Consiliului European.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Devino membru pentru a primi oferte  exclusive!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Membrii primesc acces la exponate și vânzări exclusive. Costul pentru a deveni membru este de 99,99 $ pe an.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Intră în Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://wordpress.nexloc.com/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"https://wordpress.nexloc.com/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://wordpress.nexloc.com/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"https://wordpress.nexloc.com/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"https://wordpress.nexloc.com/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'Noua expoziție UMoMA își deschide porțile', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-11 11:30:19', '0000-00-00 00:00:00', '', 0, 'http://wordpress.nexloc.com/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-06-11 11:30:19', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Poate că ești un artist ce ar dori să se prezinte și să-și prezinte lucrările aici sau poate ai o afacere căreia i-ai putea descrie aici scopul.</p>\n<!-- /wp:paragraph -->', 'Despre', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-11 11:30:19', '0000-00-00 00:00:00', '', 0, 'http://wordpress.nexloc.com/?page_id=16', 0, 'page', '', 0),
(17, 1, '2020-06-11 11:30:19', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Aceasta e o pagină cu câteva simple informații de contact, cum ar fi adresa sau numărul de telefon. Ai putea să încerci și un modul ca să adaugi un formular de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-11 11:30:19', '0000-00-00 00:00:00', '', 0, 'http://wordpress.nexloc.com/?page_id=17', 0, 'page', '', 0),
(18, 1, '2020-06-11 11:30:19', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-11 11:30:19', '0000-00-00 00:00:00', '', 0, 'http://wordpress.nexloc.com/?page_id=18', 0, 'page', '', 0),
(19, 1, '2020-06-11 11:30:19', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE2OiJEZXNwcmUgYWNlc3Qgc2l0IjtzOjQ6InRleHQiO3M6MTEyOiJBY2VzdGEgYXIgcHV0ZWEgZmkgdW4gbG9jIGJ1biDDrm4gY2FyZSBzxIMgdGUgcHJlemluyJtpIMiZaSBzxIMtyJtpIHByZXppbsibaSBzaXR1bCBzYXUgc8SDIGluY2x1emkgY2V2YSBtZXJpdGUuIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Despre acest sit\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3193d6a821555682b56716b3bdc83ce9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEyOiJHxINzZciZdGUtbmUiO3M6NDoidGV4dCI7czoxNjQ6IjxzdHJvbmc+QWRyZXPEgzwvc3Ryb25nPgoxMjMgU3RyYWRhIHByaW5jaXBhbMSDCkJ1Y3VyZciZdGksIEIgNzAwMAoKPHN0cm9uZz5Qcm9ncmFtPC9zdHJvbmc+Ckx1bmkgLSBWaW5lcmk6IDk6MDAgLSAxNzowMApTw6JtYsSDdMSDIMiZaSBEdW1pbmljxIM6IDExOjAwJm5kYXNoOzE1OjAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"G\\u0103se\\u0219te-ne\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"209bf6609e54190f9d8f56705a691610\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            14,\n            15,\n            16,\n            17,\n            18\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primar\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Prima pagin\\u0103\",\n            \"url\": \"http://wordpress.nexloc.com/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 16,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Despre\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 18,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 17,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primar\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Prima pagin\\u0103\",\n            \"url\": \"http://wordpress.nexloc.com/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 16,\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Despre\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 18,\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 17,\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Meniu leg\\u0103turi sociale\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 15,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 18,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-11 11:30:19\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '5d16fb78-fab3-4fc2-a14f-df52150f4109', '', '', '2020-06-11 11:30:19', '0000-00-00 00:00:00', '', 0, 'http://wordpress.nexloc.com/?p=19', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Fără categorie', 'fara-categorie', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Fără categorie', 'fara-categorie', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"6abfa60ed5350c446c247e2a24b99f1341c9d0a020bfe17758d31cd8934e1509\";a:4:{s:10:\"expiration\";i:1592900536;s:2:\"ip\";s:11:\"192.168.1.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36\";s:5:\"login\";i:1591690936;}s:64:\"3be9546527922aaaafa04c2f1602becb1bb912c70d50e43a6f08d0ca4ee22994\";a:4:{s:10:\"expiration\";i:1592902454;s:2:\"ip\";s:11:\"192.168.1.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36\";s:5:\"login\";i:1591692854;}s:64:\"73a0935f23ddcb3e1169ac3689725526fb9c7b531b0080735d25b0de9367ac6d\";a:4:{s:10:\"expiration\";i:1592981758;s:2:\"ip\";s:11:\"192.168.1.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36\";s:5:\"login\";i:1591772158;}s:64:\"19300d68bbdca405f173997ea581376fa71249b952fac5fd4488cbb9497ff1e7\";a:4:{s:10:\"expiration\";i:1591945694;s:2:\"ip\";s:11:\"192.168.1.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36\";s:5:\"login\";i:1591772894;}s:64:\"cf8d5832f26a68184cde28ffdca51ac4cdc13598cc4fc6d44e406514725f1a59\";a:4:{s:10:\"expiration\";i:1592047949;s:2:\"ip\";s:11:\"192.168.1.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36\";s:5:\"login\";i:1591875149;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"192.168.1.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:FPmoUSAeS4eyGP9jPs65Z2t3'),
(20, 1, 'wc_last_active', '1592438400'),
(21, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:473:\"Yoast SEO și WooCommerce pot funcționa mult mai bine împreună prin adăugarea unui modul ajutător. Te rog instalează Yoast WooCommerce SEO pentru a-ți face viața mai bună. <a href=\"https://yoa.st/1o0?php_version=7.1&platform=wordpress&platform_version=5.4.2&software=free&software_version=14.3&days_active=6-30&user_language=ro_RO\" aria-label=\"Mai multe informații despre Yoast WooCommerce SEO\" target=\"_blank\" rel=\"noopener noreferrer\">Mai multe informații</a>.\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:44:\"wpseo-suggested-plugin-yoast-woocommerce-seo\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:11:\"Admin\";s:9:\"user_pass\";s:34:\"$P$B2ICuMrPBKTqe8f2LwFtaxMljqvHdR1\";s:13:\"user_nicename\";s:11:\"theconadmin\";s:10:\"user_email\";s:21:\"georgebejan@thecon.ro\";s:8:\"user_url\";s:28:\"https://wordpress.nexloc.com\";s:15:\"user_registered\";s:19:\"2020-06-04 12:14:53\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:11:\"Admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:118:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpseo_manage_options\";b:1;s:10:\"copy_posts\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(22, 1, '_order_count', '0'),
(24, 1, 'itsec_user_activity_last_seen', '1592481622'),
(25, 1, 'itsec-settings-view', 'grid'),
(26, 1, 'itsec_logs_page_screen_options', 'a:6:{s:8:\"per_page\";i:20;s:12:\"default_view\";s:9:\"important\";s:5:\"color\";b:1;s:10:\"show_debug\";b:0;s:12:\"show_process\";b:0;s:9:\"last_seen\";i:0;}'),
(27, 1, 'itsec-password-strength', '4'),
(28, 1, '_itsec_password_requirements', 'a:1:{s:16:\"evaluation_times\";a:1:{s:8:\"strength\";i:1591692854;}}'),
(30, 1, '_itsec_has_logged_in', '1591692854');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$B2ICuMrPBKTqe8f2LwFtaxMljqvHdR1', 'theconadmin', 'georgebejan@thecon.ro', 'https://wordpress.nexloc.com', '2020-06-04 12:14:53', '', 0, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Sfaturi, actualizări produse și inspirație', 'Suntem aici pentru tine - primești sfaturi, actualizări pentru produse și idei direct prin email', 'mail', '{}', 'unactioned', 'woocommerce-admin', '2020-06-04 12:25:28', NULL, 0),
(2, 'wc-admin-marketing-intro', 'info', 'en_US', 'Conectează-te cu publicul', 'Îți mărești aria de clienți și crești vânzările cu instrumente de marketing create pentru WooCommerce.', 'speaker', '{}', 'unactioned', 'woocommerce-admin', '2020-06-04 12:25:28', NULL, 0),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Conectează la WooCommerce.com', 'Conectează pentru a primi notificări și actualizări importante pentru produse.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-06-04 12:25:28', NULL, 0),
(4, 'wc-admin-mobile-app', 'info', 'en_US', 'Instalează aplicația Woo pentru mobil', 'Instalează aplicația WooCommerce pentru mobil pentru a administra comenzile, a primi notificări despre vânzări și a vizualiza indicatorii de performanță - oriunde te-ai afla.', 'phone', '{}', 'unactioned', 'woocommerce-admin', '2020-06-09 08:21:11', NULL, 0),
(5, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Cu urmărirea utilizării, ajuți la îmbunătățirea WooCommerce', 'Colectarea datelor de utilizare ne permite să îmbunătățim WooCommerce. Datele de pe magazinul tău vor fi luate în considerare atunci când evaluăm noile funcționalități, ne pronunțăm asupra unei actualizări sau decidem dacă o îmbunătățire are sens. Poți oricând merge la <a href=\"https://wordpress.nexloc.com/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Setări</a> și să alegi oprirea partajării datelor. <a href=\"https://woocommerce.com/usage-tracking\" target=\"_blank\">Citește mai mult</a> despre ce date colectăm.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-06-11 12:44:13', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'yes-please', 'Da, te rog!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0),
(2, 2, 'open-marketing-hub', 'Deschide centrul de marketing', 'https://wordpress.nexloc.com/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0),
(3, 3, 'connect', 'Conectează-te', '?page=wc-addons&section=helper', 'unactioned', 0),
(4, 4, 'learn-more', 'Află mai multe', 'https://woocommerce.com/mobile/', 'actioned', 0),
(5, 5, 'tracking-dismiss', 'Refuză', '', 'actioned', 0),
(6, 5, 'tracking-opt-in', 'Activează urmărirea utilizării', '', 'actioned', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Tarif redus', 'tarif-redus'),
(2, 'Tarif zero', 'tarif-zero');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(15, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:709:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"georgebejan@thecon.ro\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1592654421);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) UNSIGNED DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `post_parent` int(11) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`) VALUES
(1, 'https://wordpress.nexloc.com/author/theconadmin/', '48:9873cdb05cc15c7d6db3f17ea855b835', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://secure.gravatar.com/avatar/be2948b5f1e7eace7f42c9ccbac5a18f?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/be2948b5f1e7eace7f42c9ccbac5a18f?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-11 08:30:27', 1, NULL, NULL, NULL, NULL),
(2, 'https://wordpress.nexloc.com/wp-content/uploads/woocommerce-placeholder.png', '75:65108a4dd5dfe2944ffc6b18bda8a6c3', 7, 'post', 'attachment', 1, 0, NULL, NULL, 'woocommerce-placeholder', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://wordpress.nexloc.com/wp-content/uploads/woocommerce-placeholder.png', NULL, '7', 'attachment-image', NULL, NULL, 'https://wordpress.nexloc.com/wp-content/uploads/woocommerce-placeholder.png', '7', 'attachment-image', '{\"width\":1200,\"height\":1200,\"url\":\"https:\\/\\/wordpress.nexloc.com\\/wp-content\\/uploads\\/woocommerce-placeholder.png\",\"path\":\"\\/home\\/wordpressnexloc\\/public_html\\/wp-content\\/uploads\\/woocommerce-placeholder.png\",\"size\":\"full\",\"id\":7,\"alt\":\"\",\"pixels\":1440000,\"type\":\"image\\/png\"}', NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-04 09:41:47', 1, NULL, NULL, NULL, NULL),
(3, 'https://wordpress.nexloc.com/?page_id=3', '39:297591728ba9e49408328b1df0803dca', 3, 'post', 'page', 1, 0, NULL, NULL, 'Politică de confidențialitate', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-04 09:41:47', 1, NULL, NULL, NULL, NULL),
(4, 'https://wordpress.nexloc.com/pagină-exemplu/', '45:eccb25cf98246ea6fe38e0f74b886ad7', 2, 'post', 'page', 1, 0, NULL, NULL, 'Pagină exemplu', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-04 09:41:47', 1, NULL, NULL, NULL, NULL),
(5, 'https://wordpress.nexloc.com/?p=4', '33:505a98b88a0442698de5a6c55eb66027', 4, 'post', 'post', 1, 0, NULL, NULL, 'Ciornă automată', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-04 09:41:47', 1, NULL, NULL, NULL, NULL),
(6, 'https://wordpress.nexloc.com/salut-lume/', '40:d85bbb12b7b75bd8ac05e2eacbbcb319', 1, 'post', 'post', 1, 0, NULL, NULL, 'Salut lume!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-04 09:41:47', 1, NULL, NULL, NULL, NULL),
(7, 'https://wordpress.nexloc.com/category/fara-categorie/', '53:50a077ad685bf7318bebbeedc389e9f1', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Fără categorie', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-04 09:41:47', 1, NULL, NULL, NULL, NULL),
(8, 'https://wordpress.nexloc.com/categorie-produs/fara-categorie/', '61:170c54516b7cfb31a9e763e393466080', 15, 'term', 'product_cat', NULL, NULL, NULL, NULL, 'Fără categorie', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-04 09:41:47', 1, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Pagină negăsită %%sep%% %%sitename%%', NULL, 'Eroare 404: pagină negăsită', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-12 07:09:26', 1, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Ai căutat după %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-11 08:32:29', 1, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-11 08:32:29', 1, NULL, NULL, NULL, NULL),
(12, 'http://wordpress.nexloc.com/', '28:6e345a9ae694350c200866c19bc4ef7b', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Un simplu sit WordPress', 'Prima pagină', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-09 05:53:49', 1, NULL, NULL, NULL, NULL),
(13, 'https://wordpress.nexloc.com/shop/', '34:8616db2ea7b000739d1a32abee5ff988', NULL, 'post-type-archive', 'product', NULL, NULL, 'Arhivă %%pt_plural%% %%page%% %%sep%% %%sitename%%', '', 'Produse', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-04 12:41:47', '2020-06-04 09:41:47', 1, NULL, NULL, NULL, NULL),
(20, 'http://wordpress.nexloc.com/?p=19', '33:c643f5288c58c08435871244833f5be4', 19, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-11 11:30:19', '2020-06-11 08:30:19', 1, NULL, NULL, NULL, NULL),
(21, 'https://wordpress.nexloc.com/', '29:af2acd450b21c710396f6cc372022b1c', 15, 'post', 'page', 1, 0, NULL, NULL, 'Noua expoziție UMoMA își deschide porțile', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://wordpress.nexloc.com/wp-content/uploads/2020/06/2020-landscape-1.png', NULL, '14', 'featured-image', NULL, NULL, 'https://wordpress.nexloc.com/wp-content/uploads/2020/06/2020-landscape-1.png', '14', 'featured-image', '{\"width\":1200,\"height\":769,\"url\":\"https:\\/\\/wordpress.nexloc.com\\/wp-content\\/uploads\\/2020\\/06\\/2020-landscape-1.png\",\"path\":\"\\/home\\/wordpressnexloc\\/public_html\\/wp-content\\/uploads\\/2020\\/06\\/2020-landscape-1.png\",\"size\":\"full\",\"id\":14,\"alt\":\"\",\"pixels\":922800,\"type\":\"image\\/png\"}', NULL, NULL, NULL, '2020-06-11 11:30:21', '2020-06-11 08:30:21', 1, NULL, NULL, NULL, NULL),
(22, 'https://wordpress.nexloc.com/wp-content/uploads/2020/06/2020-landscape-1.png', '76:d9b034e5f6cf86302ba4fb928076c633', 14, 'post', 'attachment', 1, 0, NULL, NULL, 'Noua expoziție UMoMA își deschide porțile', 'auto-draft', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://wordpress.nexloc.com/wp-content/uploads/2020/06/2020-landscape-1.png', NULL, '14', 'attachment-image', NULL, NULL, 'https://wordpress.nexloc.com/wp-content/uploads/2020/06/2020-landscape-1.png', '14', 'attachment-image', '{\"width\":1200,\"height\":769,\"url\":\"https:\\/\\/wordpress.nexloc.com\\/wp-content\\/uploads\\/2020\\/06\\/2020-landscape-1.png\",\"path\":\"\\/home\\/wordpressnexloc\\/public_html\\/wp-content\\/uploads\\/2020\\/06\\/2020-landscape-1.png\",\"size\":\"full\",\"id\":14,\"alt\":\"\",\"pixels\":922800,\"type\":\"image\\/png\"}', NULL, NULL, NULL, '2020-06-11 11:30:27', '2020-06-11 08:30:27', 1, NULL, NULL, NULL, NULL),
(23, 'http://wordpress.nexloc.com/?page_id=16', '39:f09384d455fac154b10af1374ebe0db8', 16, 'post', 'page', 1, 0, NULL, NULL, 'Despre', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-11 11:30:27', '2020-06-11 08:30:27', 1, NULL, NULL, NULL, NULL),
(24, 'http://wordpress.nexloc.com/?page_id=17', '39:88ab90e57456036cbdeec92d61c40945', 17, 'post', 'page', 1, 0, NULL, NULL, 'Contact', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-11 11:30:27', '2020-06-11 08:30:27', 1, NULL, NULL, NULL, NULL),
(25, 'http://wordpress.nexloc.com/?page_id=18', '39:6760c2e0811afa0c3d8f27c4d14c5b0c', 18, 'post', 'page', 1, 0, NULL, NULL, 'Blog', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-11 11:30:27', '2020-06-11 08:30:27', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `term_id` int(11) UNSIGNED NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_itsec_distributed_storage`
--
ALTER TABLE `wp_itsec_distributed_storage`
  ADD PRIMARY KEY (`storage_id`),
  ADD UNIQUE KEY `storage_group__key__chunk` (`storage_group`,`storage_key`,`storage_chunk`);

--
-- Indexes for table `wp_itsec_fingerprints`
--
ALTER TABLE `wp_itsec_fingerprints`
  ADD PRIMARY KEY (`fingerprint_id`),
  ADD UNIQUE KEY `fingerprint_user__hash` (`fingerprint_user`,`fingerprint_hash`),
  ADD UNIQUE KEY `fingerprint_uuid` (`fingerprint_uuid`);

--
-- Indexes for table `wp_itsec_geolocation_cache`
--
ALTER TABLE `wp_itsec_geolocation_cache`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_host` (`location_host`),
  ADD KEY `location_time` (`location_time`);

--
-- Indexes for table `wp_itsec_lockouts`
--
ALTER TABLE `wp_itsec_lockouts`
  ADD PRIMARY KEY (`lockout_id`),
  ADD KEY `lockout_expire_gmt` (`lockout_expire_gmt`),
  ADD KEY `lockout_host` (`lockout_host`),
  ADD KEY `lockout_user` (`lockout_user`),
  ADD KEY `lockout_username` (`lockout_username`),
  ADD KEY `lockout_active` (`lockout_active`);

--
-- Indexes for table `wp_itsec_logs`
--
ALTER TABLE `wp_itsec_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`),
  ADD KEY `code` (`code`),
  ADD KEY `type` (`type`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `init_timestamp` (`init_timestamp`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `wp_itsec_mutexes`
--
ALTER TABLE `wp_itsec_mutexes`
  ADD PRIMARY KEY (`mutex_id`),
  ADD UNIQUE KEY `mutex_name` (`mutex_name`);

--
-- Indexes for table `wp_itsec_opaque_tokens`
--
ALTER TABLE `wp_itsec_opaque_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD UNIQUE KEY `token_hashed` (`token_hashed`);

--
-- Indexes for table `wp_itsec_temp`
--
ALTER TABLE `wp_itsec_temp`
  ADD PRIMARY KEY (`temp_id`),
  ADD KEY `temp_date_gmt` (`temp_date_gmt`),
  ADD KEY `temp_host` (`temp_host`),
  ADD KEY `temp_user` (`temp_user`),
  ADD KEY `temp_username` (`temp_username`);

--
-- Indexes for table `wp_itsec_user_groups`
--
ALTER TABLE `wp_itsec_user_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `permalink_hash` (`permalink_hash`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wp_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_itsec_distributed_storage`
--
ALTER TABLE `wp_itsec_distributed_storage`
  MODIFY `storage_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_itsec_fingerprints`
--
ALTER TABLE `wp_itsec_fingerprints`
  MODIFY `fingerprint_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_itsec_geolocation_cache`
--
ALTER TABLE `wp_itsec_geolocation_cache`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_itsec_lockouts`
--
ALTER TABLE `wp_itsec_lockouts`
  MODIFY `lockout_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_itsec_logs`
--
ALTER TABLE `wp_itsec_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_itsec_mutexes`
--
ALTER TABLE `wp_itsec_mutexes`
  MODIFY `mutex_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_itsec_temp`
--
ALTER TABLE `wp_itsec_temp`
  MODIFY `temp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1278;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
