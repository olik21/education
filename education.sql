-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 20 2018 г., 19:28
-- Версия сервера: 5.5.25
-- Версия PHP: 5.5.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `education`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-18 11:23:34', '2018-06-18 08:23:35', 'Привіт, це коментар.\nЩоби почати модерування, редагування, та видалення коментарів, будь ласка, відвідайте розділ коментарів у Майстерні.\nАватари коментаторів ідуть із <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=241 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://obd', 'yes'),
(2, 'home', 'http://obd', 'yes'),
(3, 'blogname', 'Комунальний заклад «Обдарованість»', 'yes'),
(4, 'blogdescription', 'Комунальний заклад', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kolga210921@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:22:"hyper-cache/plugin.php";i:1;s:23:"rustolat/rus-to-lat.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'education', 'yes'),
(41, 'stylesheet', 'education', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Kiev', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'uk', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'nonce_key', '{~G.,+7yy6oy^VMaxUIlZ%sRz%==LoYXMp8GI3GiYVL@31HIUJ(G3:b3/7[?<hEZ', 'no'),
(109, 'nonce_salt', 'L=Im=JjM|fc=]uc$M:I`RE`rHBU;o%e1cN>2cX Eh`4b2zzzf.xOlB,`#Y1^f}Xl', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'cron', 'a:6:{i:1529507961;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1529508218;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1529508577;a:1:{s:17:"hyper_cache_clean";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1529526218;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1529569455;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(114, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1529311008;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(125, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:62:"https://downloads.wordpress.org/release/uk/wordpress-4.9.6.zip";s:6:"locale";s:2:"uk";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/uk/wordpress-4.9.6.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.6";s:7:"version";s:5:"4.9.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1529490911;s:15:"version_checked";s:5:"4.9.6";s:12:"translations";a:0:{}}', 'no'),
(126, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1529490913;s:7:"checked";a:4:{s:9:"education";s:3:"1.0";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(128, 'auth_key', 's4},J.2Xy~DwR( ?S8V=}goTRS`iAo1?D#d w$gY_dd:1o4CKlp$|!@^zf]sh2]%', 'no'),
(129, 'auth_salt', 'j6[-=tlz) };e+/e?F7k3XRw_DZ[v|),yC`Fx,V3^Qv-b0oUZQ.Zpk7zR}RrvW7m', 'no'),
(130, 'logged_in_key', '8QG]h>(U`N4%]m.KVciXSm*WF=fXjCUup[z 1X&AEQqRFc/-~Fg!)#SV,y-n=3Z>', 'no'),
(131, 'logged_in_salt', 'x8v<$wVDOMeIFDD0 34nW)V}HKs&OE8KqI%f9|J60X~U`cJ @IPYihh?e007RcM5', 'no'),
(145, 'can_compress_scripts', '1', 'no'),
(146, 'current_theme', 'Education', 'yes'),
(147, 'theme_mods_education', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:5:{s:11:"header-menu";i:2;s:11:"footer-menu";i:0;s:4:"side";i:0;s:8:"sideleft";i:3;s:9:"left-menu";i:3;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1529489445;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}s:11:"custom_logo";i:6;}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(161, 'new_admin_email', 'kolga210921@gmail.com', 'yes'),
(177, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1529489620;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(180, '_transient_twentysixteen_categories', '1', 'yes'),
(189, '_transient_timeout_plugin_slugs', '1529577324', 'no'),
(190, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:22:"hyper-cache/plugin.php";i:3;s:23:"rustolat/rus-to-lat.php";}', 'no'),
(191, 'recently_activated', 'a:0:{}', 'yes'),
(195, 'hyper-cache', 'a:19:{s:7:"cdn_url";s:0:"";s:7:"max_age";s:2:"24";s:4:"gzip";s:1:"1";s:15:"gzip_on_the_fly";s:1:"1";s:16:"clean_last_posts";s:1:"0";s:6:"folder";s:0:"";s:13:"browser_cache";s:1:"1";s:19:"browser_cache_hours";s:2:"24";s:5:"https";s:1:"1";s:8:"readfile";s:1:"1";s:21:"serve_expired_to_bots";s:1:"1";s:17:"reject_uris_exact";a:0:{}s:11:"reject_uris";a:0:{}s:14:"reject_cookies";a:0:{}s:13:"reject_agents";a:0:{}s:16:"reject_old_posts";s:0:"";s:6:"mobile";s:1:"0";s:5:"theme";s:0:"";s:13:"mobile_agents";a:14:{i:0;s:7:"android";i:1;s:6:"iphone";i:2;s:8:"iemobile";i:3;s:10:"up.browser";i:4;s:7:"up.link";i:5;s:3:"mmp";i:6;s:7:"symbian";i:7;s:10:"smartphone";i:8;s:4:"midp";i:9;s:3:"wap";i:10;s:5:"phone";i:11;s:4:"ipod";i:12;s:4:"xoom";i:13;s:10:"blackberry";}}', 'yes'),
(197, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:1:{i:0;i:3;}}', 'yes'),
(205, '_site_transient_timeout_theme_roots', '1529491223', 'no'),
(206, '_site_transient_theme_roots', 'a:4:{s:9:"education";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(214, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1529490921;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"4.0.3";s:9:"hello.php";s:3:"1.7";s:22:"hyper-cache/plugin.php";s:5:"3.3.5";s:23:"rustolat/rus-to-lat.php";s:3:"0.3";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.6";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:22:"hyper-cache/plugin.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hyper-cache";s:4:"slug";s:11:"hyper-cache";s:6:"plugin";s:22:"hyper-cache/plugin.php";s:11:"new_version";s:5:"3.3.5";s:3:"url";s:42:"https://wordpress.org/plugins/hyper-cache/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hyper-cache.3.3.5.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hyper-cache/assets/icon-256x256.png?rev=1064221";s:2:"1x";s:64:"https://ps.w.org/hyper-cache/assets/icon-256x256.png?rev=1064221";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hyper-cache/assets/banner-772x250.png?rev=1064196";}s:11:"banners_rtl";a:0:{}}s:23:"rustolat/rus-to-lat.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/rustolat";s:4:"slug";s:8:"rustolat";s:6:"plugin";s:23:"rustolat/rus-to-lat.php";s:11:"new_version";s:3:"0.3";s:3:"url";s:39:"https://wordpress.org/plugins/rustolat/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/rustolat.0.3.zip";s:5:"icons";a:1:{s:7:"default";s:52:"https://s.w.org/plugins/geopattern-icon/rustolat.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(232, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=316 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1529315014:1'),
(4, 6, '_wp_attached_file', '2018/06/logo-main.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:436;s:6:"height";i:170;s:4:"file";s:21:"2018/06/logo-main.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"logo-main-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"logo-main-300x117.jpg";s:5:"width";i:300;s:6:"height";i:117;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 5, '_customize_restore_dismissed', '1'),
(7, 7, '_wp_trash_meta_status', 'publish'),
(8, 7, '_wp_trash_meta_time', '1529420873'),
(9, 8, '_edit_last', '1'),
(10, 8, '_edit_lock', '1529422589:1'),
(11, 10, '_edit_last', '1'),
(12, 10, '_edit_lock', '1529422685:1'),
(13, 12, '_edit_last', '1'),
(14, 12, '_edit_lock', '1529489380:1'),
(15, 14, '_edit_last', '1'),
(16, 14, '_edit_lock', '1529422804:1'),
(17, 16, '_edit_last', '1'),
(18, 16, '_edit_lock', '1529422851:1'),
(19, 18, '_edit_last', '1'),
(20, 18, '_edit_lock', '1529424812:1'),
(21, 20, '_edit_lock', '1529426161:1'),
(22, 21, '_menu_item_type', 'post_type'),
(23, 21, '_menu_item_menu_item_parent', '0'),
(24, 21, '_menu_item_object_id', '14'),
(25, 21, '_menu_item_object', 'page'),
(26, 21, '_menu_item_target', ''),
(27, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(28, 21, '_menu_item_xfn', ''),
(29, 21, '_menu_item_url', ''),
(38, 23, '_menu_item_type', 'post_type'),
(39, 23, '_menu_item_menu_item_parent', '0'),
(40, 23, '_menu_item_object_id', '12'),
(41, 23, '_menu_item_object', 'page'),
(42, 23, '_menu_item_target', ''),
(43, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 23, '_menu_item_xfn', ''),
(45, 23, '_menu_item_url', ''),
(46, 24, '_menu_item_type', 'post_type'),
(47, 24, '_menu_item_menu_item_parent', '0'),
(48, 24, '_menu_item_object_id', '18'),
(49, 24, '_menu_item_object', 'page'),
(50, 24, '_menu_item_target', ''),
(51, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 24, '_menu_item_xfn', ''),
(53, 24, '_menu_item_url', ''),
(54, 20, '_wp_trash_meta_status', 'publish'),
(55, 20, '_wp_trash_meta_time', '1529426169'),
(56, 25, '_wp_trash_meta_status', 'publish'),
(57, 25, '_wp_trash_meta_time', '1529426177'),
(58, 26, '_menu_item_type', 'post_type'),
(59, 26, '_menu_item_menu_item_parent', '0'),
(60, 26, '_menu_item_object_id', '18'),
(61, 26, '_menu_item_object', 'page'),
(62, 26, '_menu_item_target', ''),
(63, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 26, '_menu_item_xfn', ''),
(65, 26, '_menu_item_url', ''),
(66, 26, '_menu_item_orphaned', '1529426235'),
(67, 27, '_menu_item_type', 'post_type'),
(68, 27, '_menu_item_menu_item_parent', '0'),
(69, 27, '_menu_item_object_id', '16'),
(70, 27, '_menu_item_object', 'page'),
(71, 27, '_menu_item_target', ''),
(72, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 27, '_menu_item_xfn', ''),
(74, 27, '_menu_item_url', ''),
(76, 28, '_menu_item_type', 'post_type'),
(77, 28, '_menu_item_menu_item_parent', '0'),
(78, 28, '_menu_item_object_id', '14'),
(79, 28, '_menu_item_object', 'page'),
(80, 28, '_menu_item_target', ''),
(81, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 28, '_menu_item_xfn', ''),
(83, 28, '_menu_item_url', ''),
(84, 28, '_menu_item_orphaned', '1529426236'),
(85, 29, '_menu_item_type', 'post_type'),
(86, 29, '_menu_item_menu_item_parent', '0'),
(87, 29, '_menu_item_object_id', '12'),
(88, 29, '_menu_item_object', 'page'),
(89, 29, '_menu_item_target', ''),
(90, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 29, '_menu_item_xfn', ''),
(92, 29, '_menu_item_url', ''),
(93, 29, '_menu_item_orphaned', '1529426237'),
(94, 30, '_menu_item_type', 'post_type'),
(95, 30, '_menu_item_menu_item_parent', '0'),
(96, 30, '_menu_item_object_id', '10'),
(97, 30, '_menu_item_object', 'page'),
(98, 30, '_menu_item_target', ''),
(99, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(100, 30, '_menu_item_xfn', ''),
(101, 30, '_menu_item_url', ''),
(103, 31, '_menu_item_type', 'post_type'),
(104, 31, '_menu_item_menu_item_parent', '0'),
(105, 31, '_menu_item_object_id', '8'),
(106, 31, '_menu_item_object', 'page'),
(107, 31, '_menu_item_target', ''),
(108, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(109, 31, '_menu_item_xfn', ''),
(110, 31, '_menu_item_url', ''),
(112, 32, '_edit_last', '1'),
(113, 32, '_edit_lock', '1529506368:1'),
(118, 32, '_wp_old_slug', '%d0%b2%d0%b8%d1%85%d0%be%d0%b2%d0%bd%d0%b0-%d1%80%d0%be%d0%b1%d0%be%d1%82%d0%b01'),
(119, 34, '_edit_last', '1'),
(122, 34, '_edit_lock', '1529506355:1'),
(125, 34, '_wp_old_slug', '%d0%b2%d0%b8%d1%85%d0%be%d0%b2%d0%bd%d0%b0-%d1%80%d0%be%d0%b1%d0%be%d1%82%d0%b02'),
(126, 36, '_edit_last', '1'),
(129, 36, '_edit_lock', '1529506344:1'),
(132, 36, '_wp_old_slug', '%d0%b2%d0%b8%d1%85%d0%be%d0%b2%d0%bd%d0%b0-%d1%80%d0%be%d0%b1%d0%be%d1%82%d0%b03'),
(133, 38, '_menu_item_type', 'post_type'),
(134, 38, '_menu_item_menu_item_parent', '23'),
(135, 38, '_menu_item_object_id', '36'),
(136, 38, '_menu_item_object', 'post'),
(137, 38, '_menu_item_target', ''),
(138, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(139, 38, '_menu_item_xfn', ''),
(140, 38, '_menu_item_url', ''),
(142, 39, '_menu_item_type', 'post_type'),
(143, 39, '_menu_item_menu_item_parent', '23'),
(144, 39, '_menu_item_object_id', '34'),
(145, 39, '_menu_item_object', 'post'),
(146, 39, '_menu_item_target', ''),
(147, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(148, 39, '_menu_item_xfn', ''),
(149, 39, '_menu_item_url', ''),
(151, 40, '_menu_item_type', 'post_type'),
(152, 40, '_menu_item_menu_item_parent', '23'),
(153, 40, '_menu_item_object_id', '32'),
(154, 40, '_menu_item_object', 'post'),
(155, 40, '_menu_item_target', ''),
(156, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(157, 40, '_menu_item_xfn', ''),
(158, 40, '_menu_item_url', ''),
(159, 1, '_wp_trash_meta_status', 'publish'),
(160, 1, '_wp_trash_meta_time', '1529490071'),
(161, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82'),
(162, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(163, 42, '_edit_last', '1'),
(164, 42, '_edit_lock', '1529500342:1'),
(165, 42, 'image', 'about-school.jpg'),
(166, 42, 'image', 'about-banner.jpg'),
(167, 45, '_menu_item_type', 'post_type'),
(168, 45, '_menu_item_menu_item_parent', '0'),
(169, 45, '_menu_item_object_id', '42'),
(170, 45, '_menu_item_object', 'page'),
(171, 45, '_menu_item_target', ''),
(172, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(173, 45, '_menu_item_xfn', ''),
(174, 45, '_menu_item_url', ''),
(175, 44, '_wp_trash_meta_status', 'publish'),
(176, 44, '_wp_trash_meta_time', '1529500675'),
(177, 46, '_menu_item_type', 'post_type'),
(178, 46, '_menu_item_menu_item_parent', '0'),
(179, 46, '_menu_item_object_id', '12'),
(180, 46, '_menu_item_object', 'page'),
(181, 46, '_menu_item_target', ''),
(182, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(183, 46, '_menu_item_xfn', ''),
(184, 46, '_menu_item_url', ''),
(186, 47, '_menu_item_type', 'post_type'),
(187, 47, '_menu_item_menu_item_parent', '46'),
(188, 47, '_menu_item_object_id', '36'),
(189, 47, '_menu_item_object', 'post'),
(190, 47, '_menu_item_target', ''),
(191, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(192, 47, '_menu_item_xfn', ''),
(193, 47, '_menu_item_url', ''),
(195, 48, '_menu_item_type', 'post_type'),
(196, 48, '_menu_item_menu_item_parent', '46'),
(197, 48, '_menu_item_object_id', '34'),
(198, 48, '_menu_item_object', 'post'),
(199, 48, '_menu_item_target', ''),
(200, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(201, 48, '_menu_item_xfn', ''),
(202, 48, '_menu_item_url', ''),
(204, 49, '_menu_item_type', 'post_type'),
(205, 49, '_menu_item_menu_item_parent', '46'),
(206, 49, '_menu_item_object_id', '32'),
(207, 49, '_menu_item_object', 'post'),
(208, 49, '_menu_item_target', ''),
(209, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(210, 49, '_menu_item_xfn', ''),
(211, 49, '_menu_item_url', ''),
(213, 50, '_menu_item_type', 'post_type'),
(214, 50, '_menu_item_menu_item_parent', '0'),
(215, 50, '_menu_item_object_id', '10'),
(216, 50, '_menu_item_object', 'page'),
(217, 50, '_menu_item_target', ''),
(218, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(219, 50, '_menu_item_xfn', ''),
(220, 50, '_menu_item_url', ''),
(222, 51, '_edit_last', '1'),
(223, 51, '_edit_lock', '1529506329:1'),
(228, 53, '_edit_last', '1'),
(231, 53, '_edit_lock', '1529506172:1'),
(232, 55, '_menu_item_type', 'post_type'),
(233, 55, '_menu_item_menu_item_parent', '27'),
(234, 55, '_menu_item_object_id', '53'),
(235, 55, '_menu_item_object', 'post'),
(236, 55, '_menu_item_target', ''),
(237, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(238, 55, '_menu_item_xfn', ''),
(239, 55, '_menu_item_url', ''),
(241, 56, '_menu_item_type', 'post_type'),
(242, 56, '_menu_item_menu_item_parent', '27'),
(243, 56, '_menu_item_object_id', '51'),
(244, 56, '_menu_item_object', 'post'),
(245, 56, '_menu_item_target', ''),
(246, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(247, 56, '_menu_item_xfn', ''),
(248, 56, '_menu_item_url', ''),
(250, 57, '_edit_last', '1'),
(251, 57, '_edit_lock', '1529505237:1'),
(252, 58, '_menu_item_type', 'post_type'),
(253, 58, '_menu_item_menu_item_parent', '0'),
(254, 58, '_menu_item_object_id', '57'),
(255, 58, '_menu_item_object', 'page'),
(256, 58, '_menu_item_target', ''),
(257, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(258, 58, '_menu_item_xfn', ''),
(259, 58, '_menu_item_url', ''),
(260, 60, '_edit_last', '1'),
(261, 60, '_edit_lock', '1529505823:1'),
(262, 61, '_menu_item_type', 'post_type'),
(263, 61, '_menu_item_menu_item_parent', '0'),
(264, 61, '_menu_item_object_id', '60'),
(265, 61, '_menu_item_object', 'page'),
(266, 61, '_menu_item_target', ''),
(267, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(268, 61, '_menu_item_xfn', ''),
(269, 61, '_menu_item_url', ''),
(270, 63, '_edit_last', '1'),
(271, 63, '_edit_lock', '1529506246:1'),
(278, 67, '_edit_last', '1'),
(279, 67, '_edit_lock', '1529506262:1'),
(298, 69, '_menu_item_type', 'post_type'),
(299, 69, '_menu_item_menu_item_parent', '58'),
(300, 69, '_menu_item_object_id', '67'),
(301, 69, '_menu_item_object', 'post'),
(302, 69, '_menu_item_target', ''),
(303, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(304, 69, '_menu_item_xfn', ''),
(305, 69, '_menu_item_url', ''),
(307, 70, '_menu_item_type', 'post_type'),
(308, 70, '_menu_item_menu_item_parent', '58'),
(309, 70, '_menu_item_object_id', '63'),
(310, 70, '_menu_item_object', 'post'),
(311, 70, '_menu_item_target', ''),
(312, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(313, 70, '_menu_item_xfn', ''),
(314, 70, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=71 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-18 11:23:34', '2018-06-18 08:23:35', 'Ласкаво просимо до WordPress. Це ваш перший запис. Відредагуйте або видаліть його, потім пишіть!', 'Привіт, світ!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82__trashed', '', '', '2018-06-20 13:21:12', '2018-06-20 10:21:12', '', 0, 'http://obd/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-18 11:23:34', '2018-06-18 08:23:35', 'Це приклад сторінки. Вона відрізняється від записів блогу, бо залишається на одному місці і відображається в меню сайту (у більшості тем). Більшість людей починають зі сторінки, яка представляє їх потенційним відвідувачам сайту. На ній можна написати щось на кшталт цього:\n\n<blockquote>Привіт! Вдень я кур''єр, а ввечері - актор що подає надії. А це мій блог. Я живу у Львові, люблю свого чудового собаку Бровка та карпатський чай. (І ще потрапляти під дощ.)</blockquote>\n\n...або цього:\n\n<blockquote>Компанія "Штучки АБВ" була заснована в 1992 році, і з тих пір забезпечує людей відмінними штучками. Компанія знаходиться в Стрию, має штат з понад 2000 співробітників і приносить багато користі жителям Стрия.</blockquote>\n\nЯк новому користувачу WordPress, вам слід перейти до <a href="http://obd/wp-admin/">вашої майстерні</a>, щоб видалити цю сторінку і створити нові сторінки для вашого вмісту. Насолоджуйтесь!', 'Зразок сторінки', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-06-18 11:23:34', '2018-06-18 08:23:35', '', 0, 'http://obd/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-18 11:23:34', '2018-06-18 08:23:35', '<h2>Хто ми</h2><p>Наша адреса сайту: http://obd.</p><h2>Які особисті дані ми збираємо та чому ми їх збираємо</h2><h3>Коментарі</h3><p>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p><p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p><h3>Медіафайли</h3><p>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p><h3>Контактні форми</h3><h3>Cookies</h3><p>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p><p>Якщо у вас є обліковий запис і ви ввійшли на цей сайт, ми встановимо тимчасовий файл cookie, щоб визначити, чи браузер приймає файли cookie. Цей файл cookie не містить особистих даних і видаляється при закритті веб-переглядача.</p><p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам''ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p><p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p><h3>Вбудований вміст з інших веб-сайтів</h3><p>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p><p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудувати додаткові сторонні системи відстеження та стежити за вашою взаємодією з цим вбудованим вмістом, зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p><h3>Аналітика</h3><h2>З ким ми ділимося вашими даними</h2><h2>Як довго ми зберігаємо ваші дані</h2><p>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p><p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім''я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p><h2>Які права ви маєте відносно своїх даних</h2><p>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов''язані зберігати в адміністративних, правових та цілях безпеки.</p><h2>Куди ми відправляємо ваші данні</h2><p>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p><h2>Ваша контактна інформація</h2><h2>Додаткова інформація</h2><h3>Як ми захищаємо ваші данні</h3><h3>Які процедури проти втрати даних ми використовуємо</h3><h3>Від яких третіх сторін ми отримуємо дані</h3><h3>Яке автоматичне рішення приймається  і/або профілювання ми робимо з користувацькими даними</h3><h3>Вимоги до розкриття галузевих нормативних вимог</h3>', 'Політика конфіденційності', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-06-18 11:23:34', '2018-06-18 08:23:35', '', 0, 'http://obd/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-06-18 11:24:17', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-18 11:24:17', '0000-00-00 00:00:00', '', 0, 'http://obd/?p=4', 0, 'post', '', 0),
(5, 1, '2018-06-18 12:32:36', '0000-00-00 00:00:00', '{\n    "show_on_front": {\n        "value": "posts",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-18 09:32:36"\n    },\n    "page_on_front": {\n        "value": "2",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-18 09:32:36"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'd3a17338-02c4-43be-9dae-b9645be71cf0', '', '', '2018-06-18 12:32:36', '0000-00-00 00:00:00', '', 0, 'http://obd/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2018-06-19 16:36:55', '2018-06-19 13:36:55', '', 'logo-main', '', 'inherit', 'open', 'closed', '', 'logo-main', '', '', '2018-06-19 16:36:55', '2018-06-19 13:36:55', '', 0, 'http://obd/wp-content/uploads/2018/06/logo-main.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-06-19 18:07:52', '2018-06-19 15:07:52', '{\n    "education::custom_logo": {\n        "value": 6,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-19 15:07:52"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a63a5c4b-e97e-48cc-ac85-deb0af4ea91a', '', '', '2018-06-19 18:07:52', '2018-06-19 15:07:52', '', 0, 'http://obd/a63a5c4b-e97e-48cc-ac85-deb0af4ea91a/', 0, 'customize_changeset', '', 0),
(8, 1, '2018-06-19 18:21:15', '2018-06-19 15:21:15', '', 'Новини сайту', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-06-19 18:21:15', '2018-06-19 15:21:15', '', 0, 'http://obd/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-06-19 18:21:15', '2018-06-19 15:21:15', '', 'Новини сайту', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-06-19 18:21:15', '2018-06-19 15:21:15', '', 8, 'http://obd/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-06-19 18:40:05', '2018-06-19 15:40:05', '', 'Конкурси, турніри', '', 'publish', 'closed', 'closed', '', 'competition', '', '', '2018-06-19 18:40:05', '2018-06-19 15:40:05', '', 0, 'http://obd/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-06-19 18:40:05', '2018-06-19 15:40:05', '', 'Конкурси, турніри', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-06-19 18:40:05', '2018-06-19 15:40:05', '', 10, 'http://obd/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-06-19 18:40:47', '2018-06-19 15:40:47', '', 'Виховна робота', '', 'publish', 'closed', 'closed', '', 'educate', '', '', '2018-06-19 18:41:03', '2018-06-19 15:41:03', '', 0, 'http://obd/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-06-19 18:40:47', '2018-06-19 15:40:47', '', 'Виховна робота', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-06-19 18:40:47', '2018-06-19 15:40:47', '', 12, 'http://obd/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-06-19 18:42:16', '2018-06-19 15:42:16', '', 'Навчальний процес', '', 'publish', 'closed', 'closed', '', 'teacherprocess', '', '', '2018-06-19 18:42:16', '2018-06-19 15:42:16', '', 0, 'http://obd/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-06-19 18:42:16', '2018-06-19 15:42:16', '', 'Навчальний процес', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-06-19 18:42:16', '2018-06-19 15:42:16', '', 14, 'http://obd/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-06-19 18:43:06', '2018-06-19 15:43:06', '', 'Оголошення', '', 'publish', 'closed', 'closed', '', 'adverts', '', '', '2018-06-19 18:43:06', '2018-06-19 15:43:06', '', 0, 'http://obd/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-06-19 18:43:06', '2018-06-19 15:43:06', '', 'Оголошення', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-06-19 18:43:06', '2018-06-19 15:43:06', '', 16, 'http://obd/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-06-19 18:43:42', '2018-06-19 15:43:42', '', 'Дозвілля', '', 'publish', 'closed', 'closed', '', 'leisure', '', '', '2018-06-19 18:43:42', '2018-06-19 15:43:42', '', 0, 'http://obd/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-06-19 18:43:42', '2018-06-19 15:43:42', '', 'Дозвілля', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-06-19 18:43:42', '2018-06-19 15:43:42', '', 18, 'http://obd/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-06-19 19:36:06', '2018-06-19 16:36:06', '{\n    "education::nav_menu_locations[top]": {\n        "value": -255640519,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-19 16:36:01"\n    },\n    "nav_menu[-255640519]": {\n        "value": {\n            "name": "\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0454 \\u043c\\u0435\\u043d\\u044e",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-19 16:36:01"\n    },\n    "nav_menu_item[-1104963594]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-19 16:36:01"\n    },\n    "nav_menu_item[-1262510984]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-19 16:36:01"\n    },\n    "nav_menu_item[-1544189089]": {\n        "value": {\n            "object_id": 14,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "\\u041d\\u0430\\u0432\\u0447\\u0430\\u043b\\u044c\\u043d\\u0438\\u0439 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441",\n            "url": "http://obd/teacherprocess/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "\\u041d\\u0430\\u0432\\u0447\\u0430\\u043b\\u044c\\u043d\\u0438\\u0439 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441",\n            "nav_menu_term_id": -255640519,\n            "_invalid": false,\n            "type_label": "\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-19 16:36:01"\n    },\n    "nav_menu_item[-1011639962]": {\n        "value": {\n            "object_id": 16,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "\\u041e\\u0433\\u043e\\u043b\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f",\n            "url": "http://obd/adverts/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "\\u041e\\u0433\\u043e\\u043b\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f",\n            "nav_menu_term_id": -255640519,\n            "_invalid": false,\n            "type_label": "\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-19 16:36:01"\n    },\n    "nav_menu_item[-1055849279]": {\n        "value": {\n            "object_id": 12,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "post_type",\n            "title": "\\u0412\\u0438\\u0445\\u043e\\u0432\\u043d\\u0430 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0430",\n            "url": "http://obd/educate/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "\\u0412\\u0438\\u0445\\u043e\\u0432\\u043d\\u0430 \\u0440\\u043e\\u0431\\u043e\\u0442\\u0430",\n            "nav_menu_term_id": -255640519,\n            "_invalid": false,\n            "type_label": "\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-19 16:36:01"\n    },\n    "nav_menu_item[-896062881]": {\n        "value": {\n            "object_id": 18,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "post_type",\n            "title": "\\u0414\\u043e\\u0437\\u0432\\u0456\\u043b\\u043b\\u044f",\n            "url": "http://obd/leisure/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "\\u0414\\u043e\\u0437\\u0432\\u0456\\u043b\\u043b\\u044f",\n            "nav_menu_term_id": -255640519,\n            "_invalid": false,\n            "type_label": "\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-19 16:36:01"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '843c67e8-46a2-43ad-8119-7811415e2a46', '', '', '2018-06-19 19:36:06', '2018-06-19 16:36:06', '', 0, 'http://obd/?p=20', 0, 'customize_changeset', '', 0),
(21, 1, '2018-06-19 19:36:06', '2018-06-19 16:36:06', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-06-20 17:33:43', '2018-06-20 14:33:43', '', 0, 'http://obd/21/', 7, 'nav_menu_item', '', 0),
(23, 1, '2018-06-19 19:36:08', '2018-06-19 16:36:08', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-06-20 17:33:43', '2018-06-20 14:33:43', '', 0, 'http://obd/23/', 3, 'nav_menu_item', '', 0),
(24, 1, '2018-06-19 19:36:08', '2018-06-19 16:36:08', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-06-20 17:33:44', '2018-06-20 14:33:44', '', 0, 'http://obd/24/', 11, 'nav_menu_item', '', 0),
(25, 1, '2018-06-19 19:36:17', '2018-06-19 16:36:17', '{\n    "nav_menu_item[21]": {\n        "value": {\n            "object_id": 14,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "\\u041d\\u0430\\u0432\\u0447\\u0430\\u043b\\u044c\\u043d\\u0438\\u0439 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441",\n            "url": "http://obd/teacherprocess/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "\\u041d\\u0430\\u0432\\u0447\\u0430\\u043b\\u044c\\u043d\\u0438\\u0439 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441",\n            "nav_menu_term_id": 2,\n            "_invalid": false,\n            "type_label": "\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-19 16:36:17"\n    },\n    "nav_menu_item[22]": {\n        "value": {\n            "object_id": 16,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "\\u041e\\u0433\\u043e\\u043b\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f",\n            "url": "http://obd/adverts/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "\\u041e\\u0433\\u043e\\u043b\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f",\n            "nav_menu_term_id": 2,\n            "_invalid": false,\n            "type_label": "\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-19 16:36:17"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1fe89a61-6ad4-4393-b626-92490ccd2c86', '', '', '2018-06-19 19:36:17', '2018-06-19 16:36:17', '', 0, 'http://obd/1fe89a61-6ad4-4393-b626-92490ccd2c86/', 0, 'customize_changeset', '', 0),
(26, 1, '2018-06-19 19:37:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 19:37:15', '0000-00-00 00:00:00', '', 0, 'http://obd/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-06-19 20:25:10', '2018-06-19 17:25:10', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-06-20 17:33:43', '2018-06-20 14:33:43', '', 0, 'http://obd/?p=27', 8, 'nav_menu_item', '', 0),
(28, 1, '2018-06-19 19:37:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 19:37:16', '0000-00-00 00:00:00', '', 0, 'http://obd/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2018-06-19 19:37:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 19:37:16', '0000-00-00 00:00:00', '', 0, 'http://obd/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2018-06-19 20:25:09', '2018-06-19 17:25:09', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-06-20 17:33:42', '2018-06-20 14:33:42', '', 0, 'http://obd/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-06-19 20:25:10', '2018-06-19 17:25:10', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-06-20 17:33:43', '2018-06-20 14:33:43', '', 0, 'http://obd/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2018-06-19 21:10:08', '2018-06-19 18:10:08', '', 'Виховна робота1', '', 'publish', 'open', 'open', '', 'educat1', '', '', '2018-06-20 17:52:48', '2018-06-20 14:52:48', '', 0, 'http://obd/?p=32', 0, 'post', '', 0),
(33, 1, '2018-06-19 21:10:09', '2018-06-19 18:10:09', '', 'Виховна робота1', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-06-19 21:10:09', '2018-06-19 18:10:09', '', 32, 'http://obd/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-06-19 21:11:26', '2018-06-19 18:11:26', '', 'Виховна робота2', '', 'publish', 'open', 'open', '', 'educat2', '', '', '2018-06-20 17:52:34', '2018-06-20 14:52:34', '', 0, 'http://obd/?p=34', 0, 'post', '', 0),
(35, 1, '2018-06-19 21:11:26', '2018-06-19 18:11:26', '', 'Виховна робота2', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-06-19 21:11:26', '2018-06-19 18:11:26', '', 34, 'http://obd/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-06-19 21:12:08', '2018-06-19 18:12:08', '', 'Виховна робота3', '', 'publish', 'open', 'open', '', 'educat3', '', '', '2018-06-20 17:52:24', '2018-06-20 14:52:24', '', 0, 'http://obd/?p=36', 0, 'post', '', 0),
(37, 1, '2018-06-19 21:12:08', '2018-06-19 18:12:08', '', 'Виховна робота3', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-06-19 21:12:08', '2018-06-19 18:12:08', '', 36, 'http://obd/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-06-19 21:13:30', '2018-06-19 18:13:30', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2018-06-20 17:33:43', '2018-06-20 14:33:43', '', 0, 'http://obd/?p=38', 6, 'nav_menu_item', '', 0),
(39, 1, '2018-06-19 21:13:30', '2018-06-19 18:13:30', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2018-06-20 17:33:43', '2018-06-20 14:33:43', '', 0, 'http://obd/?p=39', 5, 'nav_menu_item', '', 0),
(40, 1, '2018-06-19 21:13:30', '2018-06-19 18:13:30', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2018-06-20 17:33:43', '2018-06-20 14:33:43', '', 0, 'http://obd/?p=40', 4, 'nav_menu_item', '', 0),
(41, 1, '2018-06-20 13:21:12', '2018-06-20 10:21:12', 'Ласкаво просимо до WordPress. Це ваш перший запис. Відредагуйте або видаліть його, потім пишіть!', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-06-20 13:21:12', '2018-06-20 10:21:12', '', 1, 'http://obd/1-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-06-20 13:43:10', '2018-06-20 10:43:10', '<p><span>Рік заснування:</span> 2009 рік (рішення XLІІ сесії V скликання Харківської обласної ради від 25.05.2009).</p>\r\n              <p><span>Контингент учнів:</span >У 2017/2018 навчальному році у школі-інтернаті навчаються 320 учнів. У школі навчаються учні з усіх районів і міст обласного підпорядкування Харківської області. Найбільше – з Балаклійського, Лозівського, Чугуївського, Печенізького, Куп’янського районів, м. Лозової, Ізюма, Люботина. У 2016/2017 навчальному році 67 учнів 11-х класів закінчили навчання у школі ІІІ ступеня, пройшли державну підсумкову атестацію й отримали атестати про повну загальну середню освіту. 20 учнів (30 % від загальної кількості) отримали медалі за досягнення в навчанні, з них: 16 – золоті, 4 – срібні. 69 учнів 9-х класів успішно пройшли державну підсумкову атестацію й отримали свідоцтва про базову загальну середню освіту, 11 з них – з відзнакою. </p>\r\n              <p><span>Профільне навчання: </span> Навчально-виховний процес здійснюється за природничо-математичним та технологічним напрямами:\r\n                <ul>\r\n                  <li> 8-мі та 9-ті класи – з поглибленим вивченням математики, біології та хімії;</li>\r\n                  <li> 10-ті та 11-ті класи фізико-математичного профілю , біолого-хімічного профілю, інформаційно - технологічного профілю.</li>\r\n                </ul>\r\n              </p>\r\n              <p><span>Педагогічний колектив:  </span> Колектив школи-інтернату нараховує 49 педагогів, які мають вищу педагогічну освіту. Серед них:\r\n\r\n                <ul>\r\n                  <li> вищу кваліфікаційну категорію мають 23 чол.;</li>\r\n                  <li> І кваліфікаційну категорію – 13 чол.;</li>\r\n                  <li> ІІ кваліфікаційну категорію – 8 чол.;</li>\r\n                  <li> категорію «Спеціаліст» – 5 чол.</li>\r\n                  <li> 10 педагогів мають педагогічні звання «учитель-методист», «вихователь-методист».</li>\r\n                </ul>\r\n              </p>\r\n              <p><span>Забезпечення  харчуванням: </span> Гарячим безкоштовним харчуванням на 100% забезпечені усі учні школи-інтернату.</p>\r\n              <p><span>Творчий потенціал:</span> Педагогічний колектив працює над проблемою «Створення ефективної моделі сучасного спеціалізованого навчально-виховного закладу – школи-інтернату з поглибленим вивченням дисциплін природничо-математичного циклу». Здійснюється дослідно-експериментальна робота Всеукраїнського рівня за темою «Проектування розвивального освітнього середовища навчального закладу». </p>\r\n              <p><span>Гурткова робота: </span> У школі працюють 11 гуртків і секцій: технічного моделювання, образотворчого мистецтва, прикладного мистецтва, пауерліфтингу, баскетболу, футболу, спортивного туризму, легкої атлетики, шахів, бальних танців, вокалу.  100%  учнів охоплено позашкільною роботою.а</p>\r\n              <p><span>Матеріально-технічне забезпечення: </span >До послуг учнів 15 навчальних кабінетів, з них 3 комп’ютерні класи, оснащених сучасними ПК (33 шт.) з підключенням до мережі Інтернет, сучасні спортивна та тренажерна зали, їдальня, кабінет обслуговуючої праці, слюсарна та механічна майстерні, бібліотека (10700 екземплярів художньої літератури, 9500 – підручників  і навчально-методичної літератури), мультимедійне обладнання (12 комплектів).</p>\r\n              <p><span>Досягнення учнів: </span> У 2016/2017 навчальному році команди учнів школи-інтернату стали переможцями фінальних етапів Всеукраїнських учнівських турнірів юних математиків, фізиків хіміків, біологів та інформатиків. 66 учнів стали переможцями ІІІ (обласного) етапу Всеукраїнських учнівських олімпіад з базових дисциплін, 5 - здобули перемоги ІV (фінального) етапу олімпіади. 39 учнів стали переможцями ІІ (обласного) етапу конкурсу-захисту науково-дослідницьких робіт МАН, 5 учнів – переможцями ІІІ (фінального) етапу конкурсу-захисту. Двоє учнів стали стипендіатами Президента України. </p>', 'Про нашу школу', '', 'publish', 'closed', 'closed', '', 'pro-nashu-shkolu', '', '', '2018-06-20 13:43:10', '2018-06-20 10:43:10', '', 0, 'http://obd/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-06-20 13:43:10', '2018-06-20 10:43:10', '<p><span>Рік заснування:</span> 2009 рік (рішення XLІІ сесії V скликання Харківської обласної ради від 25.05.2009).</p>\r\n              <p><span>Контингент учнів:</span >У 2017/2018 навчальному році у школі-інтернаті навчаються 320 учнів. У школі навчаються учні з усіх районів і міст обласного підпорядкування Харківської області. Найбільше – з Балаклійського, Лозівського, Чугуївського, Печенізького, Куп’янського районів, м. Лозової, Ізюма, Люботина. У 2016/2017 навчальному році 67 учнів 11-х класів закінчили навчання у школі ІІІ ступеня, пройшли державну підсумкову атестацію й отримали атестати про повну загальну середню освіту. 20 учнів (30 % від загальної кількості) отримали медалі за досягнення в навчанні, з них: 16 – золоті, 4 – срібні. 69 учнів 9-х класів успішно пройшли державну підсумкову атестацію й отримали свідоцтва про базову загальну середню освіту, 11 з них – з відзнакою. </p>\r\n              <p><span>Профільне навчання: </span> Навчально-виховний процес здійснюється за природничо-математичним та технологічним напрямами:\r\n                <ul>\r\n                  <li> 8-мі та 9-ті класи – з поглибленим вивченням математики, біології та хімії;</li>\r\n                  <li> 10-ті та 11-ті класи фізико-математичного профілю , біолого-хімічного профілю, інформаційно - технологічного профілю.</li>\r\n                </ul>\r\n              </p>\r\n              <p><span>Педагогічний колектив:  </span> Колектив школи-інтернату нараховує 49 педагогів, які мають вищу педагогічну освіту. Серед них:\r\n\r\n                <ul>\r\n                  <li> вищу кваліфікаційну категорію мають 23 чол.;</li>\r\n                  <li> І кваліфікаційну категорію – 13 чол.;</li>\r\n                  <li> ІІ кваліфікаційну категорію – 8 чол.;</li>\r\n                  <li> категорію «Спеціаліст» – 5 чол.</li>\r\n                  <li> 10 педагогів мають педагогічні звання «учитель-методист», «вихователь-методист».</li>\r\n                </ul>\r\n              </p>\r\n              <p><span>Забезпечення  харчуванням: </span> Гарячим безкоштовним харчуванням на 100% забезпечені усі учні школи-інтернату.</p>\r\n              <p><span>Творчий потенціал:</span> Педагогічний колектив працює над проблемою «Створення ефективної моделі сучасного спеціалізованого навчально-виховного закладу – школи-інтернату з поглибленим вивченням дисциплін природничо-математичного циклу». Здійснюється дослідно-експериментальна робота Всеукраїнського рівня за темою «Проектування розвивального освітнього середовища навчального закладу». </p>\r\n              <p><span>Гурткова робота: </span> У школі працюють 11 гуртків і секцій: технічного моделювання, образотворчого мистецтва, прикладного мистецтва, пауерліфтингу, баскетболу, футболу, спортивного туризму, легкої атлетики, шахів, бальних танців, вокалу.  100%  учнів охоплено позашкільною роботою.а</p>\r\n              <p><span>Матеріально-технічне забезпечення: </span >До послуг учнів 15 навчальних кабінетів, з них 3 комп’ютерні класи, оснащених сучасними ПК (33 шт.) з підключенням до мережі Інтернет, сучасні спортивна та тренажерна зали, їдальня, кабінет обслуговуючої праці, слюсарна та механічна майстерні, бібліотека (10700 екземплярів художньої літератури, 9500 – підручників  і навчально-методичної літератури), мультимедійне обладнання (12 комплектів).</p>\r\n              <p><span>Досягнення учнів: </span> У 2016/2017 навчальному році команди учнів школи-інтернату стали переможцями фінальних етапів Всеукраїнських учнівських турнірів юних математиків, фізиків хіміків, біологів та інформатиків. 66 учнів стали переможцями ІІІ (обласного) етапу Всеукраїнських учнівських олімпіад з базових дисциплін, 5 - здобули перемоги ІV (фінального) етапу олімпіади. 39 учнів стали переможцями ІІ (обласного) етапу конкурсу-захисту науково-дослідницьких робіт МАН, 5 учнів – переможцями ІІІ (фінального) етапу конкурсу-захисту. Двоє учнів стали стипендіатами Президента України. </p>', 'Про нашу школу', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-06-20 13:43:10', '2018-06-20 10:43:10', '', 42, 'http://obd/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-06-20 16:17:53', '2018-06-20 13:17:53', '{\n    "education::nav_menu_locations[sideleft]": {\n        "value": -580189087,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-20 13:17:53"\n    },\n    "nav_menu[-580189087]": {\n        "value": {\n            "name": "\\u041b\\u0456\\u0432\\u0435 \\u043c\\u0435\\u043d\\u044e",\n            "description": "",\n            "parent": 0,\n            "auto_add": true\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-20 13:17:53"\n    },\n    "nav_menu_item[-602663947]": {\n        "value": {\n            "object_id": 42,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "\\u041f\\u0440\\u043e \\u043d\\u0430\\u0448\\u0443 \\u0448\\u043a\\u043e\\u043b\\u0443",\n            "url": "http://obd/pro-nashu-shkolu/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "\\u041f\\u0440\\u043e \\u043d\\u0430\\u0448\\u0443 \\u0448\\u043a\\u043e\\u043b\\u0443",\n            "nav_menu_term_id": -580189087,\n            "_invalid": false,\n            "type_label": "\\u0421\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0430"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-20 13:17:53"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8588efbc-940d-4661-a44b-c369b6218e88', '', '', '2018-06-20 16:17:53', '2018-06-20 13:17:53', '', 0, 'http://obd/8588efbc-940d-4661-a44b-c369b6218e88/', 0, 'customize_changeset', '', 0),
(45, 1, '2018-06-20 16:17:54', '2018-06-20 13:17:54', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-06-20 17:54:24', '2018-06-20 14:54:24', '', 0, 'http://obd/45/', 1, 'nav_menu_item', '', 0),
(46, 1, '2018-06-20 16:30:23', '2018-06-20 13:30:23', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-06-20 17:54:24', '2018-06-20 14:54:24', '', 0, 'http://obd/?p=46', 2, 'nav_menu_item', '', 0),
(47, 1, '2018-06-20 16:30:24', '2018-06-20 13:30:24', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2018-06-20 17:54:24', '2018-06-20 14:54:24', '', 0, 'http://obd/?p=47', 5, 'nav_menu_item', '', 0),
(48, 1, '2018-06-20 16:30:23', '2018-06-20 13:30:23', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2018-06-20 17:54:24', '2018-06-20 14:54:24', '', 0, 'http://obd/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2018-06-20 16:30:23', '2018-06-20 13:30:23', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2018-06-20 17:54:24', '2018-06-20 14:54:24', '', 0, 'http://obd/?p=49', 3, 'nav_menu_item', '', 0),
(50, 1, '2018-06-20 16:41:32', '2018-06-20 13:41:32', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2018-06-20 17:54:24', '2018-06-20 14:54:24', '', 0, 'http://obd/?p=50', 6, 'nav_menu_item', '', 0),
(51, 1, '2018-06-20 16:58:32', '2018-06-20 13:58:32', '<p><span>Педагогічний колектив:  </span> Колектив школи-інтернату нараховує 49 педагогів, які мають вищу педагогічну освіту. Серед них:\r\n\r\n                <ul>\r\n                  <li> вищу кваліфікаційну категорію мають 23 чол.;</li>\r\n                  <li> І кваліфікаційну категорію – 13 чол.;</li>\r\n                  <li> ІІ кваліфікаційну категорію – 8 чол.;</li>\r\n                  <li> категорію «Спеціаліст» – 5 чол.</li>\r\n                  <li> 10 педагогів мають педагогічні звання «учитель-методист», «вихователь-методист».</li>\r\n                </ul>\r\n              </p>\r\n              <p><span>Забезпечення  харчуванням: </span> Гарячим безкоштовним харчуванням на 100% забезпечені усі учні школи-інтернату.</p>\r\n              <p><span>Творчий потенціал:</span> Педагогічний колектив працює над проблемою «Створення ефективної моделі сучасного спеціалізованого навчально-виховного закладу – школи-інтернату з поглибленим вивченням дисциплін природничо-математичного циклу». Здійснюється дослідно-експериментальна робота Всеукраїнського рівня за темою «Проектування розвивального освітнього середовища навчального закладу». </p>\r\n              <p><span>Гурткова робота: </span> У школі працюють 11 гуртків і секцій: технічного моделювання, образотворчого мистецтва, прикладного мистецтва, пауерліфтингу, баскетболу, футболу, спортивного туризму, легкої атлетики, шахів, бальних танців, вокалу.  100%  учнів охоплено позашкільною роботою.а</p>', 'Оголошення1', '', 'publish', 'open', 'open', '', 'ogoloshennya1', '', '', '2018-06-20 17:52:09', '2018-06-20 14:52:09', '', 0, 'http://obd/?p=51', 0, 'post', '', 0),
(52, 1, '2018-06-20 16:58:32', '2018-06-20 13:58:32', '<p><span>Педагогічний колектив:  </span> Колектив школи-інтернату нараховує 49 педагогів, які мають вищу педагогічну освіту. Серед них:\r\n\r\n                <ul>\r\n                  <li> вищу кваліфікаційну категорію мають 23 чол.;</li>\r\n                  <li> І кваліфікаційну категорію – 13 чол.;</li>\r\n                  <li> ІІ кваліфікаційну категорію – 8 чол.;</li>\r\n                  <li> категорію «Спеціаліст» – 5 чол.</li>\r\n                  <li> 10 педагогів мають педагогічні звання «учитель-методист», «вихователь-методист».</li>\r\n                </ul>\r\n              </p>\r\n              <p><span>Забезпечення  харчуванням: </span> Гарячим безкоштовним харчуванням на 100% забезпечені усі учні школи-інтернату.</p>\r\n              <p><span>Творчий потенціал:</span> Педагогічний колектив працює над проблемою «Створення ефективної моделі сучасного спеціалізованого навчально-виховного закладу – школи-інтернату з поглибленим вивченням дисциплін природничо-математичного циклу». Здійснюється дослідно-експериментальна робота Всеукраїнського рівня за темою «Проектування розвивального освітнього середовища навчального закладу». </p>\r\n              <p><span>Гурткова робота: </span> У школі працюють 11 гуртків і секцій: технічного моделювання, образотворчого мистецтва, прикладного мистецтва, пауерліфтингу, баскетболу, футболу, спортивного туризму, легкої атлетики, шахів, бальних танців, вокалу.  100%  учнів охоплено позашкільною роботою.а</p>', 'Оголошення1', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-06-20 16:58:32', '2018-06-20 13:58:32', '', 51, 'http://obd/51-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(53, 1, '2018-06-20 17:32:14', '2018-06-20 14:32:14', '<p><span>Педагогічний колектив:  </span> Колектив школи-інтернату нараховує 49 педагогів, які мають вищу педагогічну освіту. Серед них:\r\n\r\n                <ul>\r\n                  <li> вищу кваліфікаційну категорію мають 23 чол.;</li>\r\n                  <li> І кваліфікаційну категорію – 13 чол.;</li>\r\n                  <li> ІІ кваліфікаційну категорію – 8 чол.;</li>\r\n                  <li> категорію «Спеціаліст» – 5 чол.</li>\r\n                  <li> 10 педагогів мають педагогічні звання «учитель-методист», «вихователь-методист».</li>\r\n                </ul>\r\n              </p>\r\n              <p><span>Забезпечення  харчуванням: </span> Гарячим безкоштовним харчуванням на 100% забезпечені усі учні школи-інтернату.</p>\r\n              <p><span>Творчий потенціал:</span> Педагогічний колектив працює над проблемою «Створення ефективної моделі сучасного спеціалізованого навчально-виховного закладу – школи-інтернату з поглибленим вивченням дисциплін природничо-математичного циклу». Здійснюється дослідно-експериментальна робота Всеукраїнського рівня за темою «Проектування розвивального освітнього середовища навчального закладу». </p>\r\n              <p><span>Гурткова робота: </span> У школі працюють 11 гуртків і секцій: технічного моделювання, образотворчого мистецтва, прикладного мистецтва, пауерліфтингу, баскетболу, футболу, спортивного туризму, легкої атлетики, шахів, бальних танців, вокалу.  100%  учнів охоплено позашкільною роботою.а</p>', 'Оголошення 2', '', 'publish', 'open', 'open', '', 'ogoloshennya-2', '', '', '2018-06-20 17:51:39', '2018-06-20 14:51:39', '', 0, 'http://obd/?p=53', 0, 'post', '', 0),
(54, 1, '2018-06-20 17:32:14', '2018-06-20 14:32:14', '<p><span>Педагогічний колектив:  </span> Колектив школи-інтернату нараховує 49 педагогів, які мають вищу педагогічну освіту. Серед них:\r\n\r\n                <ul>\r\n                  <li> вищу кваліфікаційну категорію мають 23 чол.;</li>\r\n                  <li> І кваліфікаційну категорію – 13 чол.;</li>\r\n                  <li> ІІ кваліфікаційну категорію – 8 чол.;</li>\r\n                  <li> категорію «Спеціаліст» – 5 чол.</li>\r\n                  <li> 10 педагогів мають педагогічні звання «учитель-методист», «вихователь-методист».</li>\r\n                </ul>\r\n              </p>\r\n              <p><span>Забезпечення  харчуванням: </span> Гарячим безкоштовним харчуванням на 100% забезпечені усі учні школи-інтернату.</p>\r\n              <p><span>Творчий потенціал:</span> Педагогічний колектив працює над проблемою «Створення ефективної моделі сучасного спеціалізованого навчально-виховного закладу – школи-інтернату з поглибленим вивченням дисциплін природничо-математичного циклу». Здійснюється дослідно-експериментальна робота Всеукраїнського рівня за темою «Проектування розвивального освітнього середовища навчального закладу». </p>\r\n              <p><span>Гурткова робота: </span> У школі працюють 11 гуртків і секцій: технічного моделювання, образотворчого мистецтва, прикладного мистецтва, пауерліфтингу, баскетболу, футболу, спортивного туризму, легкої атлетики, шахів, бальних танців, вокалу.  100%  учнів охоплено позашкільною роботою.а</p>', 'Оголошення 2', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-06-20 17:32:14', '2018-06-20 14:32:14', '', 53, 'http://obd/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-06-20 17:33:44', '2018-06-20 14:33:44', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2018-06-20 17:33:44', '2018-06-20 14:33:44', '', 0, 'http://obd/?p=55', 10, 'nav_menu_item', '', 0),
(56, 1, '2018-06-20 17:33:44', '2018-06-20 14:33:44', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2018-06-20 17:33:44', '2018-06-20 14:33:44', '', 0, 'http://obd/?p=56', 9, 'nav_menu_item', '', 0),
(57, 1, '2018-06-20 17:36:13', '2018-06-20 14:36:13', '', 'Наші педагоги', '', 'publish', 'closed', 'closed', '', 'nashi-pedagogi', '', '', '2018-06-20 17:36:13', '2018-06-20 14:36:13', '', 0, 'http://obd/?page_id=57', 0, 'page', '', 0),
(58, 1, '2018-06-20 17:36:14', '2018-06-20 14:36:14', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2018-06-20 17:54:24', '2018-06-20 14:54:24', '', 0, 'http://obd/58/', 7, 'nav_menu_item', '', 0),
(59, 1, '2018-06-20 17:36:13', '2018-06-20 14:36:13', '', 'Наші педагоги', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-06-20 17:36:13', '2018-06-20 14:36:13', '', 57, 'http://obd/57-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-06-20 17:37:13', '2018-06-20 14:37:13', '', 'Навчально-виховний процес', '', 'publish', 'closed', 'closed', '', 'navchalno-vixovnij-proces', '', '', '2018-06-20 17:37:13', '2018-06-20 14:37:13', '', 0, 'http://obd/?page_id=60', 0, 'page', '', 0),
(61, 1, '2018-06-20 17:37:13', '2018-06-20 14:37:13', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2018-06-20 17:54:25', '2018-06-20 14:54:25', '', 0, 'http://obd/61/', 10, 'nav_menu_item', '', 0),
(62, 1, '2018-06-20 17:37:13', '2018-06-20 14:37:13', '', 'Навчально-виховний процес', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-06-20 17:37:13', '2018-06-20 14:37:13', '', 60, 'http://obd/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-06-20 17:47:08', '2018-06-20 14:47:08', '', 'Англиська мова', '', 'publish', 'open', 'open', '', 'angliska-mova', '', '', '2018-06-20 17:50:45', '2018-06-20 14:50:45', '', 0, 'http://obd/?p=63', 0, 'post', '', 0),
(64, 1, '2018-06-20 17:47:08', '2018-06-20 14:47:08', '', 'Англиська мова', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-06-20 17:47:08', '2018-06-20 14:47:08', '', 63, 'http://obd/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-06-20 17:47:25', '2018-06-20 14:47:25', '', 'Рідна мова', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-06-20 17:47:25', '2018-06-20 14:47:25', '', 63, 'http://obd/63-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-06-20 17:47:42', '2018-06-20 14:47:42', '', 'Англиська мова', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-06-20 17:47:42', '2018-06-20 14:47:42', '', 63, 'http://obd/63-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-06-20 17:48:27', '2018-06-20 14:48:27', '', 'Рідна мова', '', 'publish', 'open', 'open', '', 'ridna-mova', '', '', '2018-06-20 17:51:00', '2018-06-20 14:51:00', '', 0, 'http://obd/?p=67', 0, 'post', '', 0),
(68, 1, '2018-06-20 17:48:27', '2018-06-20 14:48:27', '', 'Рідна мова', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-06-20 17:48:27', '2018-06-20 14:48:27', '', 67, 'http://obd/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-06-20 17:54:24', '2018-06-20 14:54:24', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2018-06-20 17:54:24', '2018-06-20 14:54:24', '', 0, 'http://obd/?p=69', 8, 'nav_menu_item', '', 0),
(70, 1, '2018-06-20 17:54:25', '2018-06-20 14:54:25', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2018-06-20 17:54:25', '2018-06-20 14:54:25', '', 0, 'http://obd/?p=70', 9, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97', 0),
(2, 'Головнє меню', 'golovnye-menyu', 0),
(3, 'Ліве меню', 'live-menyu', 0),
(4, 'Анонси', 'anonsi', 0),
(5, 'Новини', 'novini', 0),
(6, 'Статті', 'statti', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(23, 2, 0),
(24, 2, 0),
(27, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 4, 0),
(34, 4, 0),
(36, 4, 0),
(38, 2, 0),
(39, 2, 0),
(40, 2, 0),
(45, 3, 0),
(46, 3, 0),
(47, 3, 0),
(48, 3, 0),
(49, 3, 0),
(50, 3, 0),
(51, 5, 0),
(53, 5, 0),
(55, 2, 0),
(56, 2, 0),
(58, 3, 0),
(61, 3, 0),
(63, 1, 0),
(63, 6, 0),
(67, 1, 0),
(67, 6, 0),
(69, 3, 0),
(70, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 11),
(3, 3, 'nav_menu', '', 0, 10),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"951ff46b3153c61464feefdd4656e2dd3457dbdb3fddb10e41582b8dd0d5c6f5";a:4:{s:10:"expiration";i:1530519853;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36";s:5:"login";i:1529310253;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1529491388'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:"commentstatusdiv";i:1;s:7:"slugdiv";i:2;s:9:"authordiv";}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(25, 1, 'nav_menu_recently_edited', '3'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bq8c8wRjYDWG2GwjXns34iGKbJnYyB.', 'admin', 'kolga210921@gmail.com', '', '2018-06-18 08:23:34', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
