-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-11-12 14:02:08','2020-11-12 14:02:08','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://foodies.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://foodies.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','foodies','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','daniel_raymundo@foodies.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','foodies-landing-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','foodies-landing-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:3:{i:2;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','135','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','11','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1620741727','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1605481330;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1605492130;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1605535330;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605535913;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605535914;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605880930;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'nonce_key','MRP4eV+96m|L+~|$a?U]; dv*kC?>QxGS1hAok3/C!R-=Sh#S&q :!q~@i~W/(Vr','no');
INSERT INTO `wp_options` VALUES (112,'nonce_salt','.2~zV&-;hB5U]*O[[P0UQBvBQnF6RN&ABt$i][O=I1*`ZuA./:S-%(|9b^dJ>Cp.','no');
INSERT INTO `wp_options` VALUES (113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (118,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1605477806;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1605466016;s:7:\"checked\";a:1:{s:21:\"foodies-landing-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1605192841;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (125,'_site_transient_timeout_browser_4853ba0b18950b426d4c3572e2139b70','1605795114','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_browser_4853ba0b18950b426d4c3572e2139b70','a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"14.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (127,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1605795114','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (136,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (145,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (153,'current_theme','Foodies Landing Theme','yes');
INSERT INTO `wp_options` VALUES (154,'theme_mods_foodies-landing-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (155,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (176,'_transient_health-check-site-status-result','{\"good\":\"11\",\"recommended\":\"9\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (210,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (216,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1605466015;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (217,'acf_version','5.9.3','yes');
INSERT INTO `wp_options` VALUES (219,'recovery_mode_email_last_sent','1605370461','yes');
INSERT INTO `wp_options` VALUES (234,'_site_transient_timeout_theme_roots','1605467816','no');
INSERT INTO `wp_options` VALUES (235,'_site_transient_theme_roots','a:1:{s:21:\"foodies-landing-theme\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=918 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_wp_attached_file','2020/11/2020-landscape-1.png');
INSERT INTO `wp_postmeta` VALUES (4,5,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2020/11/2020-landscape-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (5,5,'_starter_content_theme','twentytwenty');
INSERT INTO `wp_postmeta` VALUES (6,5,'_customize_draft_post_name','the-new-umoma-opens-its-doors');
INSERT INTO `wp_postmeta` VALUES (7,6,'_thumbnail_id','5');
INSERT INTO `wp_postmeta` VALUES (8,6,'_customize_draft_post_name','the-new-umoma-opens-its-doors');
INSERT INTO `wp_postmeta` VALUES (9,6,'_customize_changeset_uuid','45fec7c8-e9a9-4a46-89b8-e8085dac81c1');
INSERT INTO `wp_postmeta` VALUES (10,7,'_customize_draft_post_name','about');
INSERT INTO `wp_postmeta` VALUES (11,7,'_customize_changeset_uuid','45fec7c8-e9a9-4a46-89b8-e8085dac81c1');
INSERT INTO `wp_postmeta` VALUES (12,8,'_customize_draft_post_name','contact');
INSERT INTO `wp_postmeta` VALUES (13,8,'_customize_changeset_uuid','45fec7c8-e9a9-4a46-89b8-e8085dac81c1');
INSERT INTO `wp_postmeta` VALUES (14,9,'_customize_draft_post_name','blog');
INSERT INTO `wp_postmeta` VALUES (15,9,'_customize_changeset_uuid','45fec7c8-e9a9-4a46-89b8-e8085dac81c1');
INSERT INTO `wp_postmeta` VALUES (16,11,'_edit_lock','1605193403:1');
INSERT INTO `wp_postmeta` VALUES (17,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (18,15,'_edit_lock','1605370400:1');
INSERT INTO `wp_postmeta` VALUES (19,34,'name','Sucursal 75 Avenida');
INSERT INTO `wp_postmeta` VALUES (20,34,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (21,34,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (22,34,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (23,34,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (24,34,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (25,34,'address','Avenida Jerusalen 0006, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (26,34,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (27,34,'latitude','13.710566');
INSERT INTO `wp_postmeta` VALUES (28,34,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (29,34,'longitude','-89.231635');
INSERT INTO `wp_postmeta` VALUES (30,34,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (31,34,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (32,34,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (33,35,'name','Sucursal Masferrer');
INSERT INTO `wp_postmeta` VALUES (34,35,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (35,35,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (36,35,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (37,35,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (38,35,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (39,35,'address','Ave Masferrer Nte., Col. Escalón, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (40,35,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (41,35,'latitude','13.706564');
INSERT INTO `wp_postmeta` VALUES (42,35,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (43,35,'longitude','-89.249223');
INSERT INTO `wp_postmeta` VALUES (44,35,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (45,35,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (46,35,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (47,36,'name','Sucursal Zona Rosa');
INSERT INTO `wp_postmeta` VALUES (48,36,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (49,36,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (50,36,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (51,36,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (52,36,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (53,36,'address','Plaza Italia, Avenida De La Revolucion, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (54,36,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (55,36,'latitude','13.688865');
INSERT INTO `wp_postmeta` VALUES (56,36,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (57,36,'longitude','-89.240007');
INSERT INTO `wp_postmeta` VALUES (58,36,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (59,36,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (60,36,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (61,37,'name','Sucursal Los Proceres');
INSERT INTO `wp_postmeta` VALUES (62,37,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (63,37,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (64,37,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (65,37,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (66,37,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (67,37,'address','Boulevard Los Proceres, contiguo a la UCA, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (68,37,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (69,37,'latitude','13.683013');
INSERT INTO `wp_postmeta` VALUES (70,37,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (71,37,'longitude','-89.235606');
INSERT INTO `wp_postmeta` VALUES (72,37,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (73,37,'type','delivery');
INSERT INTO `wp_postmeta` VALUES (74,37,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (75,38,'name','Sucursal Los Héroes 1');
INSERT INTO `wp_postmeta` VALUES (76,38,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (77,38,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (78,38,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (79,38,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (80,38,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (81,38,'address','Boulevard De Los Héroes, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (82,38,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (83,38,'latitude','13.708297');
INSERT INTO `wp_postmeta` VALUES (84,38,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (85,38,'longitude','-89.210445');
INSERT INTO `wp_postmeta` VALUES (86,38,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (87,38,'type','delivery');
INSERT INTO `wp_postmeta` VALUES (88,38,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (89,34,'_edit_lock','1605370952:1');
INSERT INTO `wp_postmeta` VALUES (90,24,'name','Sucursal 75 Avenida');
INSERT INTO `wp_postmeta` VALUES (91,24,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (92,24,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (93,24,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (94,24,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (95,24,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (96,24,'address','Avenida Jerusalen 0006, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (97,24,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (98,24,'latitude','13.710566');
INSERT INTO `wp_postmeta` VALUES (99,24,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (100,24,'longitude','-89.231635');
INSERT INTO `wp_postmeta` VALUES (101,24,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (102,24,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (103,24,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (104,25,'name','Sucursal Masferrer');
INSERT INTO `wp_postmeta` VALUES (105,25,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (106,25,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (107,25,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (108,25,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (109,25,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (110,25,'address','Ave Masferrer Nte., Col. Escalón, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (111,25,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (112,25,'latitude','13.706564');
INSERT INTO `wp_postmeta` VALUES (113,25,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (114,25,'longitude','-89.249223');
INSERT INTO `wp_postmeta` VALUES (115,25,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (116,25,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (117,25,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (118,26,'name','Sucursal Zona Rosa');
INSERT INTO `wp_postmeta` VALUES (119,26,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (120,26,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (121,26,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (122,26,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (123,26,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (124,26,'address','Plaza Italia, Avenida De La Revolucion, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (125,26,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (126,26,'latitude','13.688865');
INSERT INTO `wp_postmeta` VALUES (127,26,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (128,26,'longitude','-89.240007');
INSERT INTO `wp_postmeta` VALUES (129,26,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (130,26,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (131,26,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (132,27,'name','Sucursal Los Proceres');
INSERT INTO `wp_postmeta` VALUES (133,27,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (134,27,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (135,27,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (136,27,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (137,27,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (138,27,'address','Boulevard Los Proceres, contiguo a la UCA, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (139,27,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (140,27,'latitude','13.683013');
INSERT INTO `wp_postmeta` VALUES (141,27,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (142,27,'longitude','-89.235606');
INSERT INTO `wp_postmeta` VALUES (143,27,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (144,27,'type','delivery');
INSERT INTO `wp_postmeta` VALUES (145,27,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (146,28,'name','Sucursal Los Héroes 1');
INSERT INTO `wp_postmeta` VALUES (147,28,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (148,28,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (149,28,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (150,28,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (151,28,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (152,28,'address','Boulevard De Los Héroes, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (153,28,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (154,28,'latitude','13.708297');
INSERT INTO `wp_postmeta` VALUES (155,28,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (156,28,'longitude','-89.210445');
INSERT INTO `wp_postmeta` VALUES (157,28,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (158,28,'type','delivery');
INSERT INTO `wp_postmeta` VALUES (159,28,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (160,34,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (161,34,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (162,34,'_wp_desired_post_slug','sucursal-75-avenida-1-3');
INSERT INTO `wp_postmeta` VALUES (163,35,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (164,35,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (165,35,'_wp_desired_post_slug','sucursal-masferrer-4-3');
INSERT INTO `wp_postmeta` VALUES (166,36,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (167,36,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (168,36,'_wp_desired_post_slug','sucursal-zona-rosa-5-3');
INSERT INTO `wp_postmeta` VALUES (169,37,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (170,37,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (171,37,'_wp_desired_post_slug','sucursal-los-proceres-2-3');
INSERT INTO `wp_postmeta` VALUES (172,38,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (173,38,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (174,38,'_wp_desired_post_slug','sucursal-los-heroes-1-3-3');
INSERT INTO `wp_postmeta` VALUES (175,29,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (176,29,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (177,29,'_wp_desired_post_slug','sucursal-75-avenida-1-2');
INSERT INTO `wp_postmeta` VALUES (178,30,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (179,30,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (180,30,'_wp_desired_post_slug','sucursal-masferrer-4-2');
INSERT INTO `wp_postmeta` VALUES (181,31,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (182,31,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (183,31,'_wp_desired_post_slug','sucursal-zona-rosa-5-2');
INSERT INTO `wp_postmeta` VALUES (184,32,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (185,32,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (186,32,'_wp_desired_post_slug','sucursal-los-proceres-2-2');
INSERT INTO `wp_postmeta` VALUES (187,33,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (188,33,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (189,33,'_wp_desired_post_slug','sucursal-los-heroes-1-3-2');
INSERT INTO `wp_postmeta` VALUES (190,24,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (191,24,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (192,24,'_wp_desired_post_slug','sucursal-75-avenida-1');
INSERT INTO `wp_postmeta` VALUES (193,25,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (194,25,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (195,25,'_wp_desired_post_slug','sucursal-masferrer-4');
INSERT INTO `wp_postmeta` VALUES (196,26,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (197,26,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (198,26,'_wp_desired_post_slug','sucursal-zona-rosa-5');
INSERT INTO `wp_postmeta` VALUES (199,27,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (200,27,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (201,27,'_wp_desired_post_slug','sucursal-los-proceres-2');
INSERT INTO `wp_postmeta` VALUES (202,28,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (203,28,'_wp_trash_meta_time','1605371316');
INSERT INTO `wp_postmeta` VALUES (204,28,'_wp_desired_post_slug','sucursal-los-heroes-1-3');
INSERT INTO `wp_postmeta` VALUES (205,39,'name','Sucursal 75 Avenida');
INSERT INTO `wp_postmeta` VALUES (206,39,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (207,39,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (208,39,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (209,39,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (210,39,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (211,39,'address','Avenida Jerusalen 0006, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (212,39,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (213,39,'latitude','13.710566');
INSERT INTO `wp_postmeta` VALUES (214,39,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (215,39,'longitude','-89.231635');
INSERT INTO `wp_postmeta` VALUES (216,39,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (217,39,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (218,39,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (219,40,'name','Sucursal Masferrer');
INSERT INTO `wp_postmeta` VALUES (220,40,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (221,40,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (222,40,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (223,40,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (224,40,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (225,40,'address','Ave Masferrer Nte., Col. Escalón, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (226,40,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (227,40,'latitude','13.706564');
INSERT INTO `wp_postmeta` VALUES (228,40,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (229,40,'longitude','-89.249223');
INSERT INTO `wp_postmeta` VALUES (230,40,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (231,40,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (232,40,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (233,41,'name','Sucursal Zona Rosa');
INSERT INTO `wp_postmeta` VALUES (234,41,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (235,41,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (236,41,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (237,41,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (238,41,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (239,41,'address','Plaza Italia, Avenida De La Revolucion, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (240,41,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (241,41,'latitude','13.688865');
INSERT INTO `wp_postmeta` VALUES (242,41,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (243,41,'longitude','-89.240007');
INSERT INTO `wp_postmeta` VALUES (244,41,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (245,41,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (246,41,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (247,42,'name','Sucursal Los Proceres');
INSERT INTO `wp_postmeta` VALUES (248,42,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (249,42,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (250,42,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (251,42,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (252,42,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (253,42,'address','Boulevard Los Proceres, contiguo a la UCA, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (254,42,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (255,42,'latitude','13.683013');
INSERT INTO `wp_postmeta` VALUES (256,42,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (257,42,'longitude','-89.235606');
INSERT INTO `wp_postmeta` VALUES (258,42,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (259,42,'type','delivery');
INSERT INTO `wp_postmeta` VALUES (260,42,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (261,43,'name','Sucursal Los Héroes 1');
INSERT INTO `wp_postmeta` VALUES (262,43,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (263,43,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (264,43,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (265,43,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (266,43,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (267,43,'address','Boulevard De Los Héroes, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (268,43,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (269,43,'latitude','13.708297');
INSERT INTO `wp_postmeta` VALUES (270,43,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (271,43,'longitude','-89.210445');
INSERT INTO `wp_postmeta` VALUES (272,43,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (273,43,'type','delivery');
INSERT INTO `wp_postmeta` VALUES (274,43,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (275,42,'_edit_lock','1605371372:1');
INSERT INTO `wp_postmeta` VALUES (276,43,'_edit_lock','1605371377:1');
INSERT INTO `wp_postmeta` VALUES (277,41,'_edit_lock','1605371391:1');
INSERT INTO `wp_postmeta` VALUES (278,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (279,45,'_edit_lock','1605373537:1');
INSERT INTO `wp_postmeta` VALUES (280,47,'name','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (281,47,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (282,48,'name','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (283,48,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (284,49,'name','Para compartir');
INSERT INTO `wp_postmeta` VALUES (285,49,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (286,50,'name','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (287,50,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (288,51,'name','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (289,51,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (290,52,'name','Para compartir');
INSERT INTO `wp_postmeta` VALUES (291,52,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (292,47,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (293,47,'_wp_trash_meta_time','1605372748');
INSERT INTO `wp_postmeta` VALUES (294,47,'_wp_desired_post_slug','cat-1');
INSERT INTO `wp_postmeta` VALUES (295,48,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (296,48,'_wp_trash_meta_time','1605372748');
INSERT INTO `wp_postmeta` VALUES (297,48,'_wp_desired_post_slug','cat-2');
INSERT INTO `wp_postmeta` VALUES (298,49,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (299,49,'_wp_trash_meta_time','1605372748');
INSERT INTO `wp_postmeta` VALUES (300,49,'_wp_desired_post_slug','cat-3');
INSERT INTO `wp_postmeta` VALUES (301,42,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (302,42,'_wp_trash_meta_time','1605372748');
INSERT INTO `wp_postmeta` VALUES (303,42,'_wp_desired_post_slug','sucursal-los-proceres-2');
INSERT INTO `wp_postmeta` VALUES (304,43,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (305,43,'_wp_trash_meta_time','1605372748');
INSERT INTO `wp_postmeta` VALUES (306,43,'_wp_desired_post_slug','sucursal-los-heroes-1-3');
INSERT INTO `wp_postmeta` VALUES (307,39,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (308,39,'_wp_trash_meta_time','1605372748');
INSERT INTO `wp_postmeta` VALUES (309,39,'_wp_desired_post_slug','sucursal-75-avenida-1');
INSERT INTO `wp_postmeta` VALUES (310,40,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (311,40,'_wp_trash_meta_time','1605372748');
INSERT INTO `wp_postmeta` VALUES (312,40,'_wp_desired_post_slug','sucursal-masferrer-4');
INSERT INTO `wp_postmeta` VALUES (313,41,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (314,41,'_wp_trash_meta_time','1605372748');
INSERT INTO `wp_postmeta` VALUES (315,41,'_wp_desired_post_slug','sucursal-zona-rosa-5');
INSERT INTO `wp_postmeta` VALUES (316,50,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (317,50,'_wp_trash_meta_time','1605372777');
INSERT INTO `wp_postmeta` VALUES (318,50,'_wp_desired_post_slug','cat-1');
INSERT INTO `wp_postmeta` VALUES (319,51,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (320,51,'_wp_trash_meta_time','1605372777');
INSERT INTO `wp_postmeta` VALUES (321,51,'_wp_desired_post_slug','cat-2');
INSERT INTO `wp_postmeta` VALUES (322,52,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (323,52,'_wp_trash_meta_time','1605372777');
INSERT INTO `wp_postmeta` VALUES (324,52,'_wp_desired_post_slug','cat-3');
INSERT INTO `wp_postmeta` VALUES (325,53,'name','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (326,53,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (327,54,'name','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (328,54,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (329,55,'name','Para compartir');
INSERT INTO `wp_postmeta` VALUES (330,55,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (331,53,'_edit_lock','1605373597:1');
INSERT INTO `wp_postmeta` VALUES (332,54,'_edit_lock','1605373601:1');
INSERT INTO `wp_postmeta` VALUES (333,55,'_edit_lock','1605373604:1');
INSERT INTO `wp_postmeta` VALUES (334,53,'id','1');
INSERT INTO `wp_postmeta` VALUES (335,53,'_id','field_5fb00e50bf8a9');
INSERT INTO `wp_postmeta` VALUES (336,54,'id','2');
INSERT INTO `wp_postmeta` VALUES (337,54,'_id','field_5fb00e50bf8a9');
INSERT INTO `wp_postmeta` VALUES (338,55,'id','3');
INSERT INTO `wp_postmeta` VALUES (339,55,'_id','field_5fb00e50bf8a9');
INSERT INTO `wp_postmeta` VALUES (340,57,'name','Sucursal 75 Avenida');
INSERT INTO `wp_postmeta` VALUES (341,57,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (342,57,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (343,57,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (344,57,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (345,57,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (346,57,'address','Avenida Jerusalen 0006, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (347,57,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (348,57,'latitude','13.710566');
INSERT INTO `wp_postmeta` VALUES (349,57,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (350,57,'longitude','-89.231635');
INSERT INTO `wp_postmeta` VALUES (351,57,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (352,57,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (353,57,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (354,58,'name','Sucursal Masferrer');
INSERT INTO `wp_postmeta` VALUES (355,58,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (356,58,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (357,58,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (358,58,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (359,58,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (360,58,'address','Ave Masferrer Nte., Col. Escalón, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (361,58,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (362,58,'latitude','13.706564');
INSERT INTO `wp_postmeta` VALUES (363,58,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (364,58,'longitude','-89.249223');
INSERT INTO `wp_postmeta` VALUES (365,58,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (366,58,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (367,58,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (368,59,'name','Sucursal Zona Rosa');
INSERT INTO `wp_postmeta` VALUES (369,59,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (370,59,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (371,59,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (372,59,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (373,59,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (374,59,'address','Plaza Italia, Avenida De La Revolucion, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (375,59,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (376,59,'latitude','13.688865');
INSERT INTO `wp_postmeta` VALUES (377,59,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (378,59,'longitude','-89.240007');
INSERT INTO `wp_postmeta` VALUES (379,59,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (380,59,'type','takeaway');
INSERT INTO `wp_postmeta` VALUES (381,59,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (382,60,'name','Sucursal Los Proceres');
INSERT INTO `wp_postmeta` VALUES (383,60,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (384,60,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (385,60,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (386,60,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (387,60,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (388,60,'address','Boulevard Los Proceres, contiguo a la UCA, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (389,60,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (390,60,'latitude','13.683013');
INSERT INTO `wp_postmeta` VALUES (391,60,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (392,60,'longitude','-89.235606');
INSERT INTO `wp_postmeta` VALUES (393,60,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (394,60,'type','delivery');
INSERT INTO `wp_postmeta` VALUES (395,60,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (396,61,'name','Sucursal Los Héroes 1');
INSERT INTO `wp_postmeta` VALUES (397,61,'_name','field_5faff9738c4d2');
INSERT INTO `wp_postmeta` VALUES (398,61,'opening_time','10:00:00');
INSERT INTO `wp_postmeta` VALUES (399,61,'_opening_time','field_5faff9ac8c4d3');
INSERT INTO `wp_postmeta` VALUES (400,61,'closing_time','20:00:00');
INSERT INTO `wp_postmeta` VALUES (401,61,'_closing_time','field_5faff9cd8c4d4');
INSERT INTO `wp_postmeta` VALUES (402,61,'address','Boulevard De Los Héroes, San Salvador.');
INSERT INTO `wp_postmeta` VALUES (403,61,'_address','field_5faff9d88c4d5');
INSERT INTO `wp_postmeta` VALUES (404,61,'latitude','13.708297');
INSERT INTO `wp_postmeta` VALUES (405,61,'_latitude','field_5faff9e48c4d6');
INSERT INTO `wp_postmeta` VALUES (406,61,'longitude','-89.210445');
INSERT INTO `wp_postmeta` VALUES (407,61,'_longitude','field_5faff9f48c4d7');
INSERT INTO `wp_postmeta` VALUES (408,61,'type','delivery');
INSERT INTO `wp_postmeta` VALUES (409,61,'_type','field_5faffa048c4d8');
INSERT INTO `wp_postmeta` VALUES (410,59,'_edit_lock','1605373627:1');
INSERT INTO `wp_postmeta` VALUES (411,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (412,62,'_edit_lock','1605393235:1');
INSERT INTO `wp_postmeta` VALUES (413,69,'name','La imposible');
INSERT INTO `wp_postmeta` VALUES (414,69,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (415,69,'image','https://i.postimg.cc/mr34nFhd/alireza-etemadi-9-G-o-JBKwi1c-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (416,69,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (417,69,'description','1/2 Libra de carne envuelta en tocíno, con cebolla morada, queso cheddar, especias...');
INSERT INTO `wp_postmeta` VALUES (418,69,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (419,69,'price','91.00');
INSERT INTO `wp_postmeta` VALUES (420,69,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (421,69,'category','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (422,69,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (423,70,'name','La normal');
INSERT INTO `wp_postmeta` VALUES (424,70,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (425,70,'image','https://i.postimg.cc/CKpYJ4MB/angelo-pantazis-g-MCO0i-Xeo-c-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (426,70,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (427,70,'description','1/4 de carne, con tomates frescos, lechuga repollada, aderezos y cebolla caramelizada, gen...');
INSERT INTO `wp_postmeta` VALUES (428,70,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (429,70,'price','734.00');
INSERT INTO `wp_postmeta` VALUES (430,70,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (431,70,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (432,70,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (433,71,'name','Amor para dos');
INSERT INTO `wp_postmeta` VALUES (434,71,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (435,71,'image','https://i.postimg.cc/RFMmxVHv/ashley-green-Ub-TUTDRqj-o-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (436,71,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (437,71,'description','2 hamburguesas de 1/4 de carne acompañada con cebolla empanizada, trocitos de tocino, queso cheddar...');
INSERT INTO `wp_postmeta` VALUES (438,71,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (439,71,'price','990.00');
INSERT INTO `wp_postmeta` VALUES (440,71,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (441,71,'category','Para compartir');
INSERT INTO `wp_postmeta` VALUES (442,71,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (443,72,'name','Pollototes');
INSERT INTO `wp_postmeta` VALUES (444,72,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (445,72,'image','https://i.postimg.cc/hjpBDWLT/brian-chan-Nb-Xj-Zomy-NEM-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (446,72,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (447,72,'description','2 Piezas de pollo empanizadas, acompañadas de papas, aderezos especiales, especias y bebida.');
INSERT INTO `wp_postmeta` VALUES (448,72,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (449,72,'price','29.00');
INSERT INTO `wp_postmeta` VALUES (450,72,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (451,72,'category','Para compartir');
INSERT INTO `wp_postmeta` VALUES (452,72,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (453,73,'name','La mounstrosa');
INSERT INTO `wp_postmeta` VALUES (454,73,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (455,73,'image','https://i.postimg.cc/zvQYhCPf/eaters-collective-p-LKg-Cs-BOiw4-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (456,73,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (457,73,'description','1/2 libra de carne, cebolla morada, aderezos, queso cheddar, tocino, cebolla caramelizada, Pechuga de...');
INSERT INTO `wp_postmeta` VALUES (458,73,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (459,73,'price','180.00');
INSERT INTO `wp_postmeta` VALUES (460,73,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (461,73,'category','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (462,73,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (463,74,'name','La dietetica');
INSERT INTO `wp_postmeta` VALUES (464,74,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (465,74,'image','https://i.postimg.cc/sfHrbzDR/fabio-alves-it-FJJve2-V4c-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (466,74,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (467,74,'description','1/4 de carne, tomate fresco, lechuga, rabanos, cebolla morada, aceite de oliva, salsa cesar...');
INSERT INTO `wp_postmeta` VALUES (468,74,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (469,74,'price','902.00');
INSERT INTO `wp_postmeta` VALUES (470,74,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (471,74,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (472,74,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (473,75,'name','La querida');
INSERT INTO `wp_postmeta` VALUES (474,75,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (475,75,'image','https://i.postimg.cc/qqqdgbwY/jiroe-rd-PCVPVxp-Ag-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (476,75,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (477,75,'description','1/4 de carne, tomate fresco, aceite de oliva, lechuga tradicional, cebolla caramelizada, en pan int..');
INSERT INTO `wp_postmeta` VALUES (478,75,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (479,75,'price','306.00');
INSERT INTO `wp_postmeta` VALUES (480,75,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (481,75,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (482,75,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (483,76,'name','La jugosa');
INSERT INTO `wp_postmeta` VALUES (484,76,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (485,76,'image','https://i.postimg.cc/dtzKt9yH/jonathan-borba-1k-A3l-ACHeqk-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (486,76,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (487,76,'description','1/4 de carne, 8onz de tocino, queso a la parrilla, aderezos especiales, cebolla caramelizada, queso cheddar...');
INSERT INTO `wp_postmeta` VALUES (488,76,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (489,76,'price','911.00');
INSERT INTO `wp_postmeta` VALUES (490,76,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (491,76,'category','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (492,76,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (493,77,'name','La jugosa doble');
INSERT INTO `wp_postmeta` VALUES (494,77,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (495,77,'image','https://i.postimg.cc/W47R8LfC/jonathan-borba-8l8-Yl2ru-Usg-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (496,77,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (497,77,'description','1/2 Libra de carne, 16onz de tocino, queso a la parrilla, cebolla caramelizada, queso cheddar, aderezos espe... ');
INSERT INTO `wp_postmeta` VALUES (498,77,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (499,77,'price','122.00');
INSERT INTO `wp_postmeta` VALUES (500,77,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (501,77,'category','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (502,77,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (503,78,'name','La colosal');
INSERT INTO `wp_postmeta` VALUES (504,78,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (505,78,'image','https://i.postimg.cc/j58pV6Th/jonathan-borba-Kosh4-Zk-Wqas-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (506,78,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (507,78,'description','1/2 libra de carne, cebolla caramelizada, cebolla empanizada, tocino, queso frito, queso cheddar, aderezos...');
INSERT INTO `wp_postmeta` VALUES (508,78,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (509,78,'price','665.00');
INSERT INTO `wp_postmeta` VALUES (510,78,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (511,78,'category','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (512,78,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (513,79,'name','La historica');
INSERT INTO `wp_postmeta` VALUES (514,79,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (515,79,'image','https://i.postimg.cc/bJY7FC7J/jonathan-borba-x-Utkfr-q-BFU-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (516,79,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (517,79,'description','1 Libra de carne, doble queso frito, cebolla caramelizada, jamon virginia, queso cheddar, tomate, lechuga y ade...');
INSERT INTO `wp_postmeta` VALUES (518,79,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (519,79,'price','135.00');
INSERT INTO `wp_postmeta` VALUES (520,79,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (521,79,'category','Para compartir');
INSERT INTO `wp_postmeta` VALUES (522,79,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (523,80,'name','Para el peque');
INSERT INTO `wp_postmeta` VALUES (524,80,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (525,80,'image','https://i.postimg.cc/9QZH4qPW/kayleigh-harrington-6f-HRz-S9y-Mj0-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (526,80,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (527,80,'description','1/4 de carne, cebolla caramelizada, queso cheddar.');
INSERT INTO `wp_postmeta` VALUES (528,80,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (529,80,'price','871.00');
INSERT INTO `wp_postmeta` VALUES (530,80,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (531,80,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (532,80,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (533,81,'name','Minis para amigos');
INSERT INTO `wp_postmeta` VALUES (534,81,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (535,81,'image','https://i.postimg.cc/MHvhzcKJ/niklas-rhose-Flm-Xvql-D-n-I-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (536,81,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (537,81,'description','Mini hamburguesas de 8onz de carne, cebolla caramelizada, salsa barbacoa, trocitos de tocino, queso cheddar...');
INSERT INTO `wp_postmeta` VALUES (538,81,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (539,81,'price','812.00');
INSERT INTO `wp_postmeta` VALUES (540,81,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (541,81,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (542,81,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (543,82,'name','El sub');
INSERT INTO `wp_postmeta` VALUES (544,82,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (545,82,'image','https://i.postimg.cc/g0pF3k43/pixzolo-photography-3t-L4vtr-Fq-TQ-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (546,82,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (547,82,'description','Pan de 15cm, carne en trocitos, queso cheddar, jamon virginia, tocino, aderezos espe...');
INSERT INTO `wp_postmeta` VALUES (548,82,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (549,82,'price','898.00');
INSERT INTO `wp_postmeta` VALUES (550,82,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (551,82,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (552,82,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (553,83,'name','Envueltos');
INSERT INTO `wp_postmeta` VALUES (554,83,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (555,83,'image','https://i.postimg.cc/rs37s8K0/romson-preechawit-YZOH-Yb54-V0-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (556,83,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (557,83,'description','Orden de 3 tacos, carne de tu gusto, queso cheddar derretido, chirmol, guacamole, acompa...');
INSERT INTO `wp_postmeta` VALUES (558,83,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (559,83,'price','815.00');
INSERT INTO `wp_postmeta` VALUES (560,83,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (561,83,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (562,83,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (563,81,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (564,81,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (565,81,'_wp_desired_post_slug','minis-para-amigos-13');
INSERT INTO `wp_postmeta` VALUES (566,82,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (567,82,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (568,82,'_wp_desired_post_slug','el-sub-14');
INSERT INTO `wp_postmeta` VALUES (569,83,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (570,83,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (571,83,'_wp_desired_post_slug','envueltos-15');
INSERT INTO `wp_postmeta` VALUES (572,69,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (573,69,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (574,69,'_wp_desired_post_slug','la-imposible-1');
INSERT INTO `wp_postmeta` VALUES (575,70,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (576,70,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (577,70,'_wp_desired_post_slug','la-normal-2');
INSERT INTO `wp_postmeta` VALUES (578,71,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (579,71,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (580,71,'_wp_desired_post_slug','amor-para-dos-3');
INSERT INTO `wp_postmeta` VALUES (581,72,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (582,72,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (583,72,'_wp_desired_post_slug','pollototes-4');
INSERT INTO `wp_postmeta` VALUES (584,73,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (585,73,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (586,73,'_wp_desired_post_slug','la-mounstrosa-5');
INSERT INTO `wp_postmeta` VALUES (587,74,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (588,74,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (589,74,'_wp_desired_post_slug','la-dietetica-6');
INSERT INTO `wp_postmeta` VALUES (590,75,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (591,75,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (592,75,'_wp_desired_post_slug','la-querida-7');
INSERT INTO `wp_postmeta` VALUES (593,76,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (594,76,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (595,76,'_wp_desired_post_slug','la-jugosa-8');
INSERT INTO `wp_postmeta` VALUES (596,77,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (597,77,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (598,77,'_wp_desired_post_slug','la-jugosa-doble-9');
INSERT INTO `wp_postmeta` VALUES (599,78,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (600,78,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (601,78,'_wp_desired_post_slug','la-colosal-10');
INSERT INTO `wp_postmeta` VALUES (602,79,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (603,79,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (604,79,'_wp_desired_post_slug','la-historica-11');
INSERT INTO `wp_postmeta` VALUES (605,80,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (606,80,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (607,80,'_wp_desired_post_slug','para-el-peque-12');
INSERT INTO `wp_postmeta` VALUES (608,53,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (609,53,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (610,53,'_wp_desired_post_slug','cat-1');
INSERT INTO `wp_postmeta` VALUES (611,54,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (612,54,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (613,54,'_wp_desired_post_slug','cat-2');
INSERT INTO `wp_postmeta` VALUES (614,55,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (615,55,'_wp_trash_meta_time','1605376101');
INSERT INTO `wp_postmeta` VALUES (616,55,'_wp_desired_post_slug','cat-3');
INSERT INTO `wp_postmeta` VALUES (617,84,'name','La imposible');
INSERT INTO `wp_postmeta` VALUES (618,84,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (619,84,'image','https://i.postimg.cc/mr34nFhd/alireza-etemadi-9-G-o-JBKwi1c-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (620,84,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (621,84,'description','1/2 Libra de carne envuelta en tocíno, con cebolla morada, queso cheddar, especias...');
INSERT INTO `wp_postmeta` VALUES (622,84,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (623,84,'price','91.00');
INSERT INTO `wp_postmeta` VALUES (624,84,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (625,84,'category','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (626,84,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (627,85,'name','La normal');
INSERT INTO `wp_postmeta` VALUES (628,85,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (629,85,'image','https://i.postimg.cc/CKpYJ4MB/angelo-pantazis-g-MCO0i-Xeo-c-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (630,85,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (631,85,'description','1/4 de carne, con tomates frescos, lechuga repollada, aderezos y cebolla caramelizada, gen...');
INSERT INTO `wp_postmeta` VALUES (632,85,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (633,85,'price','734.00');
INSERT INTO `wp_postmeta` VALUES (634,85,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (635,85,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (636,85,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (637,86,'name','Amor para dos');
INSERT INTO `wp_postmeta` VALUES (638,86,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (639,86,'image','https://i.postimg.cc/RFMmxVHv/ashley-green-Ub-TUTDRqj-o-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (640,86,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (641,86,'description','2 hamburguesas de 1/4 de carne acompañada con cebolla empanizada, trocitos de tocino, queso cheddar...');
INSERT INTO `wp_postmeta` VALUES (642,86,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (643,86,'price','990.00');
INSERT INTO `wp_postmeta` VALUES (644,86,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (645,86,'category','Para compartir');
INSERT INTO `wp_postmeta` VALUES (646,86,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (647,87,'name','Pollototes');
INSERT INTO `wp_postmeta` VALUES (648,87,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (649,87,'image','https://i.postimg.cc/hjpBDWLT/brian-chan-Nb-Xj-Zomy-NEM-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (650,87,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (651,87,'description','2 Piezas de pollo empanizadas, acompañadas de papas, aderezos especiales, especias y bebida.');
INSERT INTO `wp_postmeta` VALUES (652,87,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (653,87,'price','29.00');
INSERT INTO `wp_postmeta` VALUES (654,87,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (655,87,'category','Para compartir');
INSERT INTO `wp_postmeta` VALUES (656,87,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (657,88,'name','La mounstrosa');
INSERT INTO `wp_postmeta` VALUES (658,88,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (659,88,'image','https://i.postimg.cc/zvQYhCPf/eaters-collective-p-LKg-Cs-BOiw4-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (660,88,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (661,88,'description','1/2 libra de carne, cebolla morada, aderezos, queso cheddar, tocino, cebolla caramelizada, Pechuga de...');
INSERT INTO `wp_postmeta` VALUES (662,88,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (663,88,'price','180.00');
INSERT INTO `wp_postmeta` VALUES (664,88,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (665,88,'category','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (666,88,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (667,89,'name','La dietetica');
INSERT INTO `wp_postmeta` VALUES (668,89,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (669,89,'image','https://i.postimg.cc/sfHrbzDR/fabio-alves-it-FJJve2-V4c-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (670,89,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (671,89,'description','1/4 de carne, tomate fresco, lechuga, rabanos, cebolla morada, aceite de oliva, salsa cesar...');
INSERT INTO `wp_postmeta` VALUES (672,89,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (673,89,'price','902.00');
INSERT INTO `wp_postmeta` VALUES (674,89,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (675,89,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (676,89,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (677,90,'name','La querida');
INSERT INTO `wp_postmeta` VALUES (678,90,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (679,90,'image','https://i.postimg.cc/qqqdgbwY/jiroe-rd-PCVPVxp-Ag-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (680,90,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (681,90,'description','1/4 de carne, tomate fresco, aceite de oliva, lechuga tradicional, cebolla caramelizada, en pan int..');
INSERT INTO `wp_postmeta` VALUES (682,90,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (683,90,'price','306.00');
INSERT INTO `wp_postmeta` VALUES (684,90,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (685,90,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (686,90,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (687,91,'name','La jugosa');
INSERT INTO `wp_postmeta` VALUES (688,91,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (689,91,'image','https://i.postimg.cc/dtzKt9yH/jonathan-borba-1k-A3l-ACHeqk-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (690,91,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (691,91,'description','1/4 de carne, 8onz de tocino, queso a la parrilla, aderezos especiales, cebolla caramelizada, queso cheddar...');
INSERT INTO `wp_postmeta` VALUES (692,91,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (693,91,'price','911.00');
INSERT INTO `wp_postmeta` VALUES (694,91,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (695,91,'category','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (696,91,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (697,92,'name','La jugosa doble');
INSERT INTO `wp_postmeta` VALUES (698,92,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (699,92,'image','https://i.postimg.cc/W47R8LfC/jonathan-borba-8l8-Yl2ru-Usg-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (700,92,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (701,92,'description','1/2 Libra de carne, 16onz de tocino, queso a la parrilla, cebolla caramelizada, queso cheddar, aderezos espe... ');
INSERT INTO `wp_postmeta` VALUES (702,92,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (703,92,'price','122.00');
INSERT INTO `wp_postmeta` VALUES (704,92,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (705,92,'category','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (706,92,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (707,93,'name','La colosal');
INSERT INTO `wp_postmeta` VALUES (708,93,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (709,93,'image','https://i.postimg.cc/j58pV6Th/jonathan-borba-Kosh4-Zk-Wqas-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (710,93,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (711,93,'description','1/2 libra de carne, cebolla caramelizada, cebolla empanizada, tocino, queso frito, queso cheddar, aderezos...');
INSERT INTO `wp_postmeta` VALUES (712,93,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (713,93,'price','665.00');
INSERT INTO `wp_postmeta` VALUES (714,93,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (715,93,'category','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (716,93,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (717,94,'name','La historica');
INSERT INTO `wp_postmeta` VALUES (718,94,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (719,94,'image','https://i.postimg.cc/bJY7FC7J/jonathan-borba-x-Utkfr-q-BFU-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (720,94,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (721,94,'description','1 Libra de carne, doble queso frito, cebolla caramelizada, jamon virginia, queso cheddar, tomate, lechuga y ade...');
INSERT INTO `wp_postmeta` VALUES (722,94,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (723,94,'price','135.00');
INSERT INTO `wp_postmeta` VALUES (724,94,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (725,94,'category','Para compartir');
INSERT INTO `wp_postmeta` VALUES (726,94,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (727,95,'name','Para el peque');
INSERT INTO `wp_postmeta` VALUES (728,95,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (729,95,'image','https://i.postimg.cc/9QZH4qPW/kayleigh-harrington-6f-HRz-S9y-Mj0-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (730,95,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (731,95,'description','1/4 de carne, cebolla caramelizada, queso cheddar.');
INSERT INTO `wp_postmeta` VALUES (732,95,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (733,95,'price','871.00');
INSERT INTO `wp_postmeta` VALUES (734,95,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (735,95,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (736,95,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (737,96,'name','Minis para amigos');
INSERT INTO `wp_postmeta` VALUES (738,96,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (739,96,'image','https://i.postimg.cc/MHvhzcKJ/niklas-rhose-Flm-Xvql-D-n-I-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (740,96,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (741,96,'description','Mini hamburguesas de 8onz de carne, cebolla caramelizada, salsa barbacoa, trocitos de tocino, queso cheddar...');
INSERT INTO `wp_postmeta` VALUES (742,96,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (743,96,'price','812.00');
INSERT INTO `wp_postmeta` VALUES (744,96,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (745,96,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (746,96,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (747,97,'name','El sub');
INSERT INTO `wp_postmeta` VALUES (748,97,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (749,97,'image','https://i.postimg.cc/g0pF3k43/pixzolo-photography-3t-L4vtr-Fq-TQ-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (750,97,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (751,97,'description','Pan de 15cm, carne en trocitos, queso cheddar, jamon virginia, tocino, aderezos espe...');
INSERT INTO `wp_postmeta` VALUES (752,97,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (753,97,'price','898.00');
INSERT INTO `wp_postmeta` VALUES (754,97,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (755,97,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (756,97,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (757,98,'name','Envueltos');
INSERT INTO `wp_postmeta` VALUES (758,98,'_name','field_5fb017415b335');
INSERT INTO `wp_postmeta` VALUES (759,98,'image','https://i.postimg.cc/rs37s8K0/romson-preechawit-YZOH-Yb54-V0-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (760,98,'_image','field_5fb0175b5b336');
INSERT INTO `wp_postmeta` VALUES (761,98,'description','Orden de 3 tacos, carne de tu gusto, queso cheddar derretido, chirmol, guacamole, acompa...');
INSERT INTO `wp_postmeta` VALUES (762,98,'_description','field_5fb0176d5b337');
INSERT INTO `wp_postmeta` VALUES (763,98,'price','815.00');
INSERT INTO `wp_postmeta` VALUES (764,98,'_price','field_5fb0177c5b338');
INSERT INTO `wp_postmeta` VALUES (765,98,'category','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (766,98,'_category','field_5fb017875b339');
INSERT INTO `wp_postmeta` VALUES (767,88,'_edit_lock','1605376174:1');
INSERT INTO `wp_postmeta` VALUES (768,99,'name','Las tradicionales');
INSERT INTO `wp_postmeta` VALUES (769,99,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (770,99,'id','1');
INSERT INTO `wp_postmeta` VALUES (771,99,'_id','field_5fb00e50bf8a9');
INSERT INTO `wp_postmeta` VALUES (772,100,'name','Recomendaciones');
INSERT INTO `wp_postmeta` VALUES (773,100,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (774,100,'id','2');
INSERT INTO `wp_postmeta` VALUES (775,100,'_id','field_5fb00e50bf8a9');
INSERT INTO `wp_postmeta` VALUES (776,101,'name','Para compartir');
INSERT INTO `wp_postmeta` VALUES (777,101,'_name','field_5fb00a3441aeb');
INSERT INTO `wp_postmeta` VALUES (778,101,'id','3');
INSERT INTO `wp_postmeta` VALUES (779,101,'_id','field_5fb00e50bf8a9');
INSERT INTO `wp_postmeta` VALUES (780,102,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (781,102,'_edit_lock','1605387442:1');
INSERT INTO `wp_postmeta` VALUES (782,108,'_edit_lock','1605388002:1');
INSERT INTO `wp_postmeta` VALUES (783,111,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (784,111,'_wp_trash_meta_time','1605388008');
INSERT INTO `wp_postmeta` VALUES (785,111,'_wp_desired_post_slug','1961648392');
INSERT INTO `wp_postmeta` VALUES (786,110,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (787,110,'_wp_trash_meta_time','1605388008');
INSERT INTO `wp_postmeta` VALUES (788,110,'_wp_desired_post_slug','303523289');
INSERT INTO `wp_postmeta` VALUES (789,109,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (790,109,'_wp_trash_meta_time','1605388008');
INSERT INTO `wp_postmeta` VALUES (791,109,'_wp_desired_post_slug','51621170');
INSERT INTO `wp_postmeta` VALUES (792,108,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (793,108,'_wp_trash_meta_time','1605388008');
INSERT INTO `wp_postmeta` VALUES (794,108,'_wp_desired_post_slug','1106172894');
INSERT INTO `wp_postmeta` VALUES (795,112,'_edit_lock','1605388019:1');
INSERT INTO `wp_postmeta` VALUES (796,114,'_edit_lock','1605388213:1');
INSERT INTO `wp_postmeta` VALUES (797,119,'_edit_lock','1605388766:1');
INSERT INTO `wp_postmeta` VALUES (798,120,'name','asd');
INSERT INTO `wp_postmeta` VALUES (799,120,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (800,120,'email','asd');
INSERT INTO `wp_postmeta` VALUES (801,120,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (802,120,'message','asd');
INSERT INTO `wp_postmeta` VALUES (803,120,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (804,120,'_edit_lock','1605388769:1');
INSERT INTO `wp_postmeta` VALUES (805,120,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (806,120,'_wp_trash_meta_time','1605388779');
INSERT INTO `wp_postmeta` VALUES (807,120,'_wp_desired_post_slug','asd-1344822925');
INSERT INTO `wp_postmeta` VALUES (808,119,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (809,119,'_wp_trash_meta_time','1605388779');
INSERT INTO `wp_postmeta` VALUES (810,119,'_wp_desired_post_slug','asd-841378833');
INSERT INTO `wp_postmeta` VALUES (811,118,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (812,118,'_wp_trash_meta_time','1605388779');
INSERT INTO `wp_postmeta` VALUES (813,118,'_wp_desired_post_slug','825226234');
INSERT INTO `wp_postmeta` VALUES (814,117,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (815,117,'_wp_trash_meta_time','1605388779');
INSERT INTO `wp_postmeta` VALUES (816,117,'_wp_desired_post_slug','1785186962');
INSERT INTO `wp_postmeta` VALUES (817,116,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (818,116,'_wp_trash_meta_time','1605388779');
INSERT INTO `wp_postmeta` VALUES (819,116,'_wp_desired_post_slug','476379244');
INSERT INTO `wp_postmeta` VALUES (820,115,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (821,115,'_wp_trash_meta_time','1605388779');
INSERT INTO `wp_postmeta` VALUES (822,115,'_wp_desired_post_slug','901012138');
INSERT INTO `wp_postmeta` VALUES (823,114,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (824,114,'_wp_trash_meta_time','1605388779');
INSERT INTO `wp_postmeta` VALUES (825,114,'_wp_desired_post_slug','1769438919');
INSERT INTO `wp_postmeta` VALUES (826,113,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (827,113,'_wp_trash_meta_time','1605388779');
INSERT INTO `wp_postmeta` VALUES (828,113,'_wp_desired_post_slug','904606808');
INSERT INTO `wp_postmeta` VALUES (829,112,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (830,112,'_wp_trash_meta_time','1605388779');
INSERT INTO `wp_postmeta` VALUES (831,112,'_wp_desired_post_slug','1251283123');
INSERT INTO `wp_postmeta` VALUES (832,121,'name','Daniel Antonio Raymundo Rosales');
INSERT INTO `wp_postmeta` VALUES (833,121,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (834,121,'email','raymundo.host@gmail.com');
INSERT INTO `wp_postmeta` VALUES (835,121,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (836,121,'message','Son lo mejor amigos!');
INSERT INTO `wp_postmeta` VALUES (837,121,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (838,121,'_edit_lock','1605388808:1');
INSERT INTO `wp_postmeta` VALUES (839,122,'name','asdasd');
INSERT INTO `wp_postmeta` VALUES (840,122,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (841,122,'email','asdasd');
INSERT INTO `wp_postmeta` VALUES (842,122,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (843,122,'message','asd');
INSERT INTO `wp_postmeta` VALUES (844,122,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (845,123,'name','');
INSERT INTO `wp_postmeta` VALUES (846,123,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (847,123,'email','');
INSERT INTO `wp_postmeta` VALUES (848,123,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (849,123,'message','');
INSERT INTO `wp_postmeta` VALUES (850,123,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (851,124,'name','');
INSERT INTO `wp_postmeta` VALUES (852,124,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (853,124,'email','');
INSERT INTO `wp_postmeta` VALUES (854,124,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (855,124,'message','');
INSERT INTO `wp_postmeta` VALUES (856,124,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (857,125,'name','');
INSERT INTO `wp_postmeta` VALUES (858,125,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (859,125,'email','');
INSERT INTO `wp_postmeta` VALUES (860,125,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (861,125,'message','');
INSERT INTO `wp_postmeta` VALUES (862,125,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (863,126,'name','');
INSERT INTO `wp_postmeta` VALUES (864,126,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (865,126,'email','');
INSERT INTO `wp_postmeta` VALUES (866,126,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (867,126,'message','');
INSERT INTO `wp_postmeta` VALUES (868,126,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (869,127,'name','');
INSERT INTO `wp_postmeta` VALUES (870,127,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (871,127,'email','');
INSERT INTO `wp_postmeta` VALUES (872,127,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (873,127,'message','');
INSERT INTO `wp_postmeta` VALUES (874,127,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (875,128,'name','');
INSERT INTO `wp_postmeta` VALUES (876,128,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (877,128,'email','');
INSERT INTO `wp_postmeta` VALUES (878,128,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (879,128,'message','');
INSERT INTO `wp_postmeta` VALUES (880,128,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (881,129,'name','');
INSERT INTO `wp_postmeta` VALUES (882,129,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (883,129,'email','');
INSERT INTO `wp_postmeta` VALUES (884,129,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (885,129,'message','');
INSERT INTO `wp_postmeta` VALUES (886,129,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (887,130,'name','');
INSERT INTO `wp_postmeta` VALUES (888,130,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (889,130,'email','');
INSERT INTO `wp_postmeta` VALUES (890,130,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (891,130,'message','');
INSERT INTO `wp_postmeta` VALUES (892,130,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (893,131,'name','');
INSERT INTO `wp_postmeta` VALUES (894,131,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (895,131,'email','');
INSERT INTO `wp_postmeta` VALUES (896,131,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (897,131,'message','');
INSERT INTO `wp_postmeta` VALUES (898,131,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (899,132,'name','');
INSERT INTO `wp_postmeta` VALUES (900,132,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (901,132,'email','');
INSERT INTO `wp_postmeta` VALUES (902,132,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (903,132,'message','');
INSERT INTO `wp_postmeta` VALUES (904,132,'_message','field_5fb03fb249277');
INSERT INTO `wp_postmeta` VALUES (905,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (906,3,'_wp_trash_meta_time','1605390506');
INSERT INTO `wp_postmeta` VALUES (907,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (908,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (909,2,'_wp_trash_meta_time','1605390506');
INSERT INTO `wp_postmeta` VALUES (910,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (911,135,'_edit_lock','1605390384:1');
INSERT INTO `wp_postmeta` VALUES (912,137,'name','asd');
INSERT INTO `wp_postmeta` VALUES (913,137,'_name','field_5fb03f9949275');
INSERT INTO `wp_postmeta` VALUES (914,137,'email','asd');
INSERT INTO `wp_postmeta` VALUES (915,137,'_email','field_5fb03fa849276');
INSERT INTO `wp_postmeta` VALUES (916,137,'message','asd');
INSERT INTO `wp_postmeta` VALUES (917,137,'_message','field_5fb03fb249277');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-11-12 14:02:08','2020-11-12 14:02:08','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-11-12 14:02:08','2020-11-12 14:02:08','',0,'http://foodies.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-11-12 14:02:08','2020-11-12 14:02:08','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://foodies.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2020-11-14 21:48:26','2020-11-14 21:48:26','',0,'http://foodies.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-11-12 14:02:08','2020-11-12 14:02:08','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://foodies.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-11-14 21:48:26','2020-11-14 21:48:26','',0,'http://foodies.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2020-11-12 14:11:54','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-11-12 14:11:54','0000-00-00 00:00:00','',0,'http://foodies.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-11-12 14:14:16','0000-00-00 00:00:00','','The New UMoMA Opens its Doors','','auto-draft','open','closed','','','','','2020-11-12 14:14:15','0000-00-00 00:00:00','',0,'http://foodies.local/wp-content/uploads/2020/11/2020-landscape-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-11-12 14:14:16','0000-00-00 00:00:00','<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://foodies.local/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://foodies.local/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://foodies.local/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://foodies.local/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://foodies.local/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://foodies.local/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://foodies.local/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://foodies.local/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://foodies.local/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://foodies.local/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->','The New UMoMA Opens its Doors','','auto-draft','closed','closed','','','','','2020-11-12 14:14:16','0000-00-00 00:00:00','',0,'http://foodies.local/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-11-12 14:14:16','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->','About','','auto-draft','closed','closed','','','','','2020-11-12 14:14:16','0000-00-00 00:00:00','',0,'http://foodies.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-11-12 14:14:16','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->','Contact','','auto-draft','closed','closed','','','','','2020-11-12 14:14:16','0000-00-00 00:00:00','',0,'http://foodies.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-11-12 14:14:16','0000-00-00 00:00:00','','Blog','','auto-draft','closed','closed','','','','','2020-11-12 14:14:16','0000-00-00 00:00:00','',0,'http://foodies.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-11-12 14:14:16','0000-00-00 00:00:00','{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"01918920d9ad039ef5919792fd56834a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3ccb7002a522a3ad33e51cf789ebf731\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://foodies.local/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://foodies.local/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-12 14:14:16\"\n    }\n}','','','auto-draft','closed','closed','','45fec7c8-e9a9-4a46-89b8-e8085dac81c1','','','2020-11-12 14:14:16','0000-00-00 00:00:00','',0,'http://foodies.local/?p=10',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-11-12 15:05:46','2020-11-12 15:05:46','','Home','','publish','closed','closed','','home','','','2020-11-12 15:05:46','2020-11-12 15:05:46','',0,'http://foodies.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-11-12 15:05:46','2020-11-12 15:05:46','','Home','','inherit','closed','closed','','11-revision-v1','','','2020-11-12 15:05:46','2020-11-12 15:05:46','',11,'http://foodies.local/11-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-11-14 15:34:04','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-14 15:34:04','0000-00-00 00:00:00','',0,'http://foodies.local/?post_type=acf-field-group&p=13',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-11-14 15:34:48','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-14 15:34:48','0000-00-00 00:00:00','',0,'http://foodies.local/?post_type=acf-field-group&p=14',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-11-14 15:39:46','2020-11-14 15:39:46','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"location\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Location','location','publish','closed','closed','','group_5faff9305b1ad','','','2020-11-14 15:39:46','2020-11-14 15:39:46','',0,'http://foodies.local/?post_type=acf-field-group&#038;p=15',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-11-14 15:39:46','2020-11-14 15:39:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Name','name','publish','closed','closed','','field_5faff9738c4d2','','','2020-11-14 15:39:46','2020-11-14 15:39:46','',15,'http://foodies.local/?post_type=acf-field&p=16',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-11-14 15:39:46','2020-11-14 15:39:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Opening Time','opening_time','publish','closed','closed','','field_5faff9ac8c4d3','','','2020-11-14 15:39:46','2020-11-14 15:39:46','',15,'http://foodies.local/?post_type=acf-field&p=17',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-11-14 15:39:46','2020-11-14 15:39:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Closing Time','closing_time','publish','closed','closed','','field_5faff9cd8c4d4','','','2020-11-14 15:39:46','2020-11-14 15:39:46','',15,'http://foodies.local/?post_type=acf-field&p=18',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-11-14 15:39:46','2020-11-14 15:39:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Address','address','publish','closed','closed','','field_5faff9d88c4d5','','','2020-11-14 15:39:46','2020-11-14 15:39:46','',15,'http://foodies.local/?post_type=acf-field&p=19',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-11-14 15:39:46','2020-11-14 15:39:46','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Latitude','latitude','publish','closed','closed','','field_5faff9e48c4d6','','','2020-11-14 15:39:46','2020-11-14 15:39:46','',15,'http://foodies.local/?post_type=acf-field&p=20',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-11-14 15:39:46','2020-11-14 15:39:46','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Longitude','longitude','publish','closed','closed','','field_5faff9f48c4d7','','','2020-11-14 15:39:46','2020-11-14 15:39:46','',15,'http://foodies.local/?post_type=acf-field&p=21',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-11-14 15:39:46','2020-11-14 15:39:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Type','type','publish','closed','closed','','field_5faffa048c4d8','','','2020-11-14 15:39:46','2020-11-14 15:39:46','',15,'http://foodies.local/?post_type=acf-field&p=22',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-11-14 15:39:52','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-14 15:39:52','0000-00-00 00:00:00','',0,'http://foodies.local/?post_type=location&p=23',0,'location','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-11-14 16:13:12','2020-11-14 16:13:12','','sucursal-75-avenida-1','','trash','closed','closed','','sucursal-75-avenida-1__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-75-avenida-1/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-11-14 16:13:12','2020-11-14 16:13:12','','sucursal-masferrer-4','','trash','closed','closed','','sucursal-masferrer-4__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-masferrer-4/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-11-14 16:13:12','2020-11-14 16:13:12','','sucursal-zona-rosa-5','','trash','closed','closed','','sucursal-zona-rosa-5__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-zona-rosa-5/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-11-14 16:13:12','2020-11-14 16:13:12','','sucursal-los-proceres-2','','trash','closed','closed','','sucursal-los-proceres-2__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-los-proceres-2/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-11-14 16:13:12','2020-11-14 16:13:12','','sucursal-los-heroes-1-3','','trash','closed','closed','','sucursal-los-heroes-1-3__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-los-heroes-1-3/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-11-14 16:13:15','2020-11-14 16:13:15','','sucursal-75-avenida-1','','trash','closed','closed','','sucursal-75-avenida-1-2__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-75-avenida-1-2/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-11-14 16:13:15','2020-11-14 16:13:15','','sucursal-masferrer-4','','trash','closed','closed','','sucursal-masferrer-4-2__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-masferrer-4-2/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-11-14 16:13:15','2020-11-14 16:13:15','','sucursal-zona-rosa-5','','trash','closed','closed','','sucursal-zona-rosa-5-2__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-zona-rosa-5-2/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-11-14 16:13:15','2020-11-14 16:13:15','','sucursal-los-proceres-2','','trash','closed','closed','','sucursal-los-proceres-2-2__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-los-proceres-2-2/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-11-14 16:13:15','2020-11-14 16:13:15','','sucursal-los-heroes-1-3','','trash','closed','closed','','sucursal-los-heroes-1-3-2__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-los-heroes-1-3-2/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-11-14 16:16:18','2020-11-14 16:16:18','','sucursal-75-avenida-1','','trash','closed','closed','','sucursal-75-avenida-1-3__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-75-avenida-1-3/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-11-14 16:16:18','2020-11-14 16:16:18','','sucursal-masferrer-4','','trash','closed','closed','','sucursal-masferrer-4-3__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-masferrer-4-3/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-11-14 16:16:18','2020-11-14 16:16:18','','sucursal-zona-rosa-5','','trash','closed','closed','','sucursal-zona-rosa-5-3__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-zona-rosa-5-3/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-11-14 16:16:18','2020-11-14 16:16:18','','sucursal-los-proceres-2','','trash','closed','closed','','sucursal-los-proceres-2-3__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-los-proceres-2-3/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-11-14 16:16:18','2020-11-14 16:16:18','','sucursal-los-heroes-1-3','','trash','closed','closed','','sucursal-los-heroes-1-3-3__trashed','','','2020-11-14 16:28:36','2020-11-14 16:28:36','',0,'http://foodies.local/location/sucursal-los-heroes-1-3-3/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-11-14 16:28:39','2020-11-14 16:28:39','','sucursal-75-avenida-1','','trash','closed','closed','','sucursal-75-avenida-1__trashed-2','','','2020-11-14 16:52:28','2020-11-14 16:52:28','',0,'http://foodies.local/location/sucursal-75-avenida-1/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-11-14 16:28:39','2020-11-14 16:28:39','','sucursal-masferrer-4','','trash','closed','closed','','sucursal-masferrer-4__trashed-2','','','2020-11-14 16:52:28','2020-11-14 16:52:28','',0,'http://foodies.local/location/sucursal-masferrer-4/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-11-14 16:28:39','2020-11-14 16:28:39','','sucursal-zona-rosa-5','','trash','closed','closed','','sucursal-zona-rosa-5__trashed-2','','','2020-11-14 16:52:28','2020-11-14 16:52:28','',0,'http://foodies.local/location/sucursal-zona-rosa-5/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-11-14 16:28:40','2020-11-14 16:28:40','','sucursal-los-proceres-2','','trash','closed','closed','','sucursal-los-proceres-2__trashed-2','','','2020-11-14 16:52:28','2020-11-14 16:52:28','',0,'http://foodies.local/location/sucursal-los-proceres-2/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-11-14 16:28:40','2020-11-14 16:28:40','','sucursal-los-heroes-1-3','','trash','closed','closed','','sucursal-los-heroes-1-3__trashed-2','','','2020-11-14 16:52:28','2020-11-14 16:52:28','',0,'http://foodies.local/location/sucursal-los-heroes-1-3/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-11-14 16:45:32','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-14 16:45:32','0000-00-00 00:00:00','',0,'http://foodies.local/?post_type=categories&p=44',0,'categories','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-11-14 16:48:03','2020-11-14 16:48:03','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"categorie\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Categorie','categorie','publish','closed','closed','','group_5fb00a2af2e76','','','2020-11-14 17:05:37','2020-11-14 17:05:37','',0,'http://foodies.local/?post_type=acf-field-group&#038;p=45',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-11-14 16:48:03','2020-11-14 16:48:03','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Name','name','publish','closed','closed','','field_5fb00a3441aeb','','','2020-11-14 16:48:03','2020-11-14 16:48:03','',45,'http://foodies.local/?post_type=acf-field&p=46',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-11-14 16:48:59','2020-11-14 16:48:59','','cat-1','','trash','closed','closed','','cat-1__trashed','','','2020-11-14 16:52:28','2020-11-14 16:52:28','',0,'http://foodies.local/location/cat-1/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-11-14 16:48:59','2020-11-14 16:48:59','','cat-2','','trash','closed','closed','','cat-2__trashed','','','2020-11-14 16:52:28','2020-11-14 16:52:28','',0,'http://foodies.local/location/cat-2/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-11-14 16:48:59','2020-11-14 16:48:59','','cat-3','','trash','closed','closed','','cat-3__trashed','','','2020-11-14 16:52:28','2020-11-14 16:52:28','',0,'http://foodies.local/location/cat-3/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-11-14 16:52:11','2020-11-14 16:52:11','','cat-1','','trash','closed','closed','','cat-1__trashed','','','2020-11-14 16:52:57','2020-11-14 16:52:57','',0,'http://foodies.local/categorie/cat-1/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-11-14 16:52:11','2020-11-14 16:52:11','','cat-2','','trash','closed','closed','','cat-2__trashed','','','2020-11-14 16:52:57','2020-11-14 16:52:57','',0,'http://foodies.local/categorie/cat-2/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-11-14 16:52:11','2020-11-14 16:52:11','','cat-3','','trash','closed','closed','','cat-3__trashed','','','2020-11-14 16:52:57','2020-11-14 16:52:57','',0,'http://foodies.local/categorie/cat-3/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-11-14 16:53:01','2020-11-14 16:53:01','','cat-1','','trash','closed','closed','','cat-1__trashed-2','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/cat-1/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-11-14 16:53:01','2020-11-14 16:53:01','','cat-2','','trash','closed','closed','','cat-2__trashed-2','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/cat-2/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-11-14 16:53:01','2020-11-14 16:53:01','','cat-3','','trash','closed','closed','','cat-3__trashed-2','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/cat-3/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-11-14 17:05:37','2020-11-14 17:05:37','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Id','id','publish','closed','closed','','field_5fb00e50bf8a9','','','2020-11-14 17:05:37','2020-11-14 17:05:37','',45,'http://foodies.local/?post_type=acf-field&p=56',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-11-14 17:07:02','2020-11-14 17:07:02','','sucursal-75-avenida-1','','publish','closed','closed','','sucursal-75-avenida-1','','','2020-11-14 17:07:02','2020-11-14 17:07:02','',0,'http://foodies.local/location/sucursal-75-avenida-1/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-11-14 17:07:02','2020-11-14 17:07:02','','sucursal-masferrer-4','','publish','closed','closed','','sucursal-masferrer-4','','','2020-11-14 17:07:02','2020-11-14 17:07:02','',0,'http://foodies.local/location/sucursal-masferrer-4/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-11-14 17:07:02','2020-11-14 17:07:02','','sucursal-zona-rosa-5','','publish','closed','closed','','sucursal-zona-rosa-5','','','2020-11-14 17:07:02','2020-11-14 17:07:02','',0,'http://foodies.local/location/sucursal-zona-rosa-5/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-11-14 17:07:03','2020-11-14 17:07:03','','sucursal-los-proceres-2','','publish','closed','closed','','sucursal-los-proceres-2','','','2020-11-14 17:07:03','2020-11-14 17:07:03','',0,'http://foodies.local/location/sucursal-los-proceres-2/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-11-14 17:07:03','2020-11-14 17:07:03','','sucursal-los-heroes-1-3','','publish','closed','closed','','sucursal-los-heroes-1-3','','','2020-11-14 17:07:03','2020-11-14 17:07:03','',0,'http://foodies.local/location/sucursal-los-heroes-1-3/',0,'location','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-11-14 17:45:06','2020-11-14 17:45:06','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"menu\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Menu','menu','publish','closed','closed','','group_5fb0173b4e350','','','2020-11-14 17:45:06','2020-11-14 17:45:06','',0,'http://foodies.local/?post_type=acf-field-group&#038;p=62',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-11-14 17:45:06','2020-11-14 17:45:06','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Name','name','publish','closed','closed','','field_5fb017415b335','','','2020-11-14 17:45:06','2020-11-14 17:45:06','',62,'http://foodies.local/?post_type=acf-field&p=63',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-11-14 17:45:06','2020-11-14 17:45:06','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Image','image','publish','closed','closed','','field_5fb0175b5b336','','','2020-11-14 17:45:06','2020-11-14 17:45:06','',62,'http://foodies.local/?post_type=acf-field&p=64',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-11-14 17:45:06','2020-11-14 17:45:06','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Description','description','publish','closed','closed','','field_5fb0176d5b337','','','2020-11-14 17:45:06','2020-11-14 17:45:06','',62,'http://foodies.local/?post_type=acf-field&p=65',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-11-14 17:45:06','2020-11-14 17:45:06','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}','Price','price','publish','closed','closed','','field_5fb0177c5b338','','','2020-11-14 17:45:06','2020-11-14 17:45:06','',62,'http://foodies.local/?post_type=acf-field&p=66',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-11-14 17:45:06','2020-11-14 17:45:06','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Category','category','publish','closed','closed','','field_5fb017875b339','','','2020-11-14 17:45:06','2020-11-14 17:45:06','',62,'http://foodies.local/?post_type=acf-field&p=67',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-11-14 17:45:11','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-14 17:45:11','0000-00-00 00:00:00','',0,'http://foodies.local/?post_type=menu&p=68',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','la-imposible-1','','trash','closed','closed','','la-imposible-1__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/la-imposible-1/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','la-normal-2','','trash','closed','closed','','la-normal-2__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/la-normal-2/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','amor-para-dos-3','','trash','closed','closed','','amor-para-dos-3__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/amor-para-dos-3/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','pollototes-4','','trash','closed','closed','','pollototes-4__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/pollototes-4/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','la-mounstrosa-5','','trash','closed','closed','','la-mounstrosa-5__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/la-mounstrosa-5/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','la-dietetica-6','','trash','closed','closed','','la-dietetica-6__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/la-dietetica-6/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','la-querida-7','','trash','closed','closed','','la-querida-7__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/la-querida-7/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','la-jugosa-8','','trash','closed','closed','','la-jugosa-8__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/la-jugosa-8/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','la-jugosa-doble-9','','trash','closed','closed','','la-jugosa-doble-9__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/la-jugosa-doble-9/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','la-colosal-10','','trash','closed','closed','','la-colosal-10__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/la-colosal-10/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','la-historica-11','','trash','closed','closed','','la-historica-11__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/la-historica-11/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-11-14 17:47:36','2020-11-14 17:47:36','','para-el-peque-12','','trash','closed','closed','','para-el-peque-12__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/para-el-peque-12/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (81,0,'2020-11-14 17:47:37','2020-11-14 17:47:37','','minis-para-amigos-13','','trash','closed','closed','','minis-para-amigos-13__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/minis-para-amigos-13/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (82,0,'2020-11-14 17:47:37','2020-11-14 17:47:37','','el-sub-14','','trash','closed','closed','','el-sub-14__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/el-sub-14/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (83,0,'2020-11-14 17:47:37','2020-11-14 17:47:37','','envueltos-15','','trash','closed','closed','','envueltos-15__trashed','','','2020-11-14 17:48:21','2020-11-14 17:48:21','',0,'http://foodies.local/categorie/envueltos-15/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','la-imposible-1','','publish','closed','closed','','la-imposible-1','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/la-imposible-1/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','la-normal-2','','publish','closed','closed','','la-normal-2','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/la-normal-2/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','amor-para-dos-3','','publish','closed','closed','','amor-para-dos-3','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/amor-para-dos-3/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','pollototes-4','','publish','closed','closed','','pollototes-4','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/pollototes-4/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','la-mounstrosa-5','','publish','closed','closed','','la-mounstrosa-5','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/la-mounstrosa-5/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','la-dietetica-6','','publish','closed','closed','','la-dietetica-6','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/la-dietetica-6/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','la-querida-7','','publish','closed','closed','','la-querida-7','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/la-querida-7/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','la-jugosa-8','','publish','closed','closed','','la-jugosa-8','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/la-jugosa-8/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','la-jugosa-doble-9','','publish','closed','closed','','la-jugosa-doble-9','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/la-jugosa-doble-9/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','la-colosal-10','','publish','closed','closed','','la-colosal-10','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/la-colosal-10/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','la-historica-11','','publish','closed','closed','','la-historica-11','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/la-historica-11/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-11-14 17:48:50','2020-11-14 17:48:50','','para-el-peque-12','','publish','closed','closed','','para-el-peque-12','','','2020-11-14 17:48:50','2020-11-14 17:48:50','',0,'http://foodies.local/menu/para-el-peque-12/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (96,0,'2020-11-14 17:48:56','2020-11-14 17:48:56','','minis-para-amigos-13','','publish','closed','closed','','minis-para-amigos-13','','','2020-11-14 17:48:56','2020-11-14 17:48:56','',0,'http://foodies.local/menu/minis-para-amigos-13/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (97,0,'2020-11-14 17:48:56','2020-11-14 17:48:56','','el-sub-14','','publish','closed','closed','','el-sub-14','','','2020-11-14 17:48:56','2020-11-14 17:48:56','',0,'http://foodies.local/menu/el-sub-14/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (98,0,'2020-11-14 17:48:56','2020-11-14 17:48:56','','envueltos-15','','publish','closed','closed','','envueltos-15','','','2020-11-14 17:48:56','2020-11-14 17:48:56','',0,'http://foodies.local/menu/envueltos-15/',0,'menu','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2020-11-14 18:10:17','2020-11-14 18:10:17','','cat-1','','publish','closed','closed','','cat-1','','','2020-11-14 18:10:17','2020-11-14 18:10:17','',0,'http://foodies.local/categorie/cat-1/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2020-11-14 18:10:17','2020-11-14 18:10:17','','cat-2','','publish','closed','closed','','cat-2','','','2020-11-14 18:10:17','2020-11-14 18:10:17','',0,'http://foodies.local/categorie/cat-2/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2020-11-14 18:10:17','2020-11-14 18:10:17','','cat-3','','publish','closed','closed','','cat-3','','','2020-11-14 18:10:17','2020-11-14 18:10:17','',0,'http://foodies.local/categorie/cat-3/',0,'categorie','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2020-11-14 20:36:15','2020-11-14 20:36:15','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"message\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Message','message','publish','closed','closed','','group_5fb03f9504fb7','','','2020-11-14 20:36:37','2020-11-14 20:36:37','',0,'http://foodies.local/?post_type=acf-field-group&#038;p=102',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2020-11-14 20:36:15','2020-11-14 20:36:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Name','name','publish','closed','closed','','field_5fb03f9949275','','','2020-11-14 20:36:15','2020-11-14 20:36:15','',102,'http://foodies.local/?post_type=acf-field&p=103',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2020-11-14 20:36:15','2020-11-14 20:36:15','a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Email','email','publish','closed','closed','','field_5fb03fa849276','','','2020-11-14 20:36:15','2020-11-14 20:36:15','',102,'http://foodies.local/?post_type=acf-field&p=104',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2020-11-14 20:36:15','2020-11-14 20:36:15','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Message','message','publish','closed','closed','','field_5fb03fb249277','','','2020-11-14 20:36:37','2020-11-14 20:36:37','',102,'http://foodies.local/?post_type=acf-field&#038;p=105',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2020-11-14 20:36:21','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-14 20:36:21','0000-00-00 00:00:00','',0,'http://foodies.local/?post_type=message&p=106',0,'message','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2020-11-14 20:36:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-14 20:36:42','0000-00-00 00:00:00','',0,'http://foodies.local/?post_type=message&p=107',0,'message','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2020-11-14 21:01:59','2020-11-14 21:01:59','','1106172894','','trash','closed','closed','','1106172894__trashed','','','2020-11-14 21:06:48','2020-11-14 21:06:48','',0,'http://foodies.local/message/1106172894/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2020-11-14 21:03:39','2020-11-14 21:03:39','','51621170','','trash','closed','closed','','51621170__trashed','','','2020-11-14 21:06:48','2020-11-14 21:06:48','',0,'http://foodies.local/message/51621170/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2020-11-14 21:04:37','2020-11-14 21:04:37','','303523289','','trash','closed','closed','','303523289__trashed','','','2020-11-14 21:06:48','2020-11-14 21:06:48','',0,'http://foodies.local/message/303523289/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2020-11-14 21:06:36','2020-11-14 21:06:36','','1961648392','','trash','closed','closed','','1961648392__trashed','','','2020-11-14 21:06:48','2020-11-14 21:06:48','',0,'http://foodies.local/message/1961648392/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2020-11-14 21:06:55','2020-11-14 21:06:55','','1251283123','','trash','closed','closed','','1251283123__trashed','','','2020-11-14 21:19:39','2020-11-14 21:19:39','',0,'http://foodies.local/message/1251283123/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2020-11-14 21:07:38','2020-11-14 21:07:38','','904606808','','trash','closed','closed','','904606808__trashed','','','2020-11-14 21:19:39','2020-11-14 21:19:39','',0,'http://foodies.local/message/904606808/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2020-11-14 21:10:04','2020-11-14 21:10:04','','1769438919','','trash','closed','closed','','1769438919__trashed','','','2020-11-14 21:19:39','2020-11-14 21:19:39','',0,'http://foodies.local/message/1769438919/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2020-11-14 21:10:47','2020-11-14 21:10:47','','901012138','','trash','closed','closed','','901012138__trashed','','','2020-11-14 21:19:39','2020-11-14 21:19:39','',0,'http://foodies.local/message/901012138/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2020-11-14 21:11:28','2020-11-14 21:11:28','','476379244','','trash','closed','closed','','476379244__trashed','','','2020-11-14 21:19:39','2020-11-14 21:19:39','',0,'http://foodies.local/message/476379244/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2020-11-14 21:11:35','2020-11-14 21:11:35','','1785186962','','trash','closed','closed','','1785186962__trashed','','','2020-11-14 21:19:39','2020-11-14 21:19:39','',0,'http://foodies.local/message/1785186962/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2020-11-14 21:12:42','2020-11-14 21:12:42','','825226234','','trash','closed','closed','','825226234__trashed','','','2020-11-14 21:19:39','2020-11-14 21:19:39','',0,'http://foodies.local/message/825226234/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2020-11-14 21:18:47','2020-11-14 21:18:47','','asd-841378833','','trash','closed','closed','','asd-841378833__trashed','','','2020-11-14 21:19:39','2020-11-14 21:19:39','',0,'http://foodies.local/message/asd-841378833/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2020-11-14 21:19:23','2020-11-14 21:19:23','','asd-1344822925','','trash','closed','closed','','asd-1344822925__trashed','','','2020-11-14 21:19:39','2020-11-14 21:19:39','',0,'http://foodies.local/message/asd-1344822925/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2020-11-14 21:20:02','2020-11-14 21:20:02','','raymundo-hostgmail-com-966881986','','publish','closed','closed','','raymundo-hostgmail-com-966881986','','','2020-11-14 21:20:02','2020-11-14 21:20:02','',0,'http://foodies.local/message/raymundo-hostgmail-com-966881986/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2020-11-14 21:21:50','2020-11-14 21:21:50','','asdasd-1249720022','','publish','closed','closed','','asdasd-1249720022','','','2020-11-14 21:21:50','2020-11-14 21:21:50','',0,'http://foodies.local/message/asdasd-1249720022/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2020-11-14 21:34:01','2020-11-14 21:34:01','','1872280693','','publish','closed','closed','','1872280693','','','2020-11-14 21:34:01','2020-11-14 21:34:01','',0,'http://foodies.local/message/1872280693/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2020-11-14 21:34:10','2020-11-14 21:34:10','','592828570','','publish','closed','closed','','592828570','','','2020-11-14 21:34:10','2020-11-14 21:34:10','',0,'http://foodies.local/message/592828570/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2020-11-14 21:35:54','2020-11-14 21:35:54','','1421244150','','publish','closed','closed','','1421244150','','','2020-11-14 21:35:54','2020-11-14 21:35:54','',0,'http://foodies.local/message/1421244150/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2020-11-14 21:35:56','2020-11-14 21:35:56','','1991442594','','publish','closed','closed','','1991442594','','','2020-11-14 21:35:56','2020-11-14 21:35:56','',0,'http://foodies.local/message/1991442594/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2020-11-14 21:36:07','2020-11-14 21:36:07','','649676041','','publish','closed','closed','','649676041','','','2020-11-14 21:36:07','2020-11-14 21:36:07','',0,'http://foodies.local/message/649676041/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2020-11-14 21:37:01','2020-11-14 21:37:01','','1417076188','','publish','closed','closed','','1417076188','','','2020-11-14 21:37:01','2020-11-14 21:37:01','',0,'http://foodies.local/message/1417076188/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2020-11-14 21:37:16','2020-11-14 21:37:16','','626496110','','publish','closed','closed','','626496110','','','2020-11-14 21:37:16','2020-11-14 21:37:16','',0,'http://foodies.local/message/626496110/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2020-11-14 21:37:26','2020-11-14 21:37:26','','629925805','','publish','closed','closed','','629925805','','','2020-11-14 21:37:26','2020-11-14 21:37:26','',0,'http://foodies.local/message/629925805/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2020-11-14 21:37:29','2020-11-14 21:37:29','','1317679208','','publish','closed','closed','','1317679208','','','2020-11-14 21:37:29','2020-11-14 21:37:29','',0,'http://foodies.local/message/1317679208/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2020-11-14 21:37:49','2020-11-14 21:37:49','','1382615333','','publish','closed','closed','','1382615333','','','2020-11-14 21:37:49','2020-11-14 21:37:49','',0,'http://foodies.local/message/1382615333/',0,'message','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2020-11-14 21:48:26','2020-11-14 21:48:26','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://foodies.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-11-14 21:48:26','2020-11-14 21:48:26','',3,'http://foodies.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2020-11-14 21:48:26','2020-11-14 21:48:26','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://foodies.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-11-14 21:48:26','2020-11-14 21:48:26','',2,'http://foodies.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2020-11-14 21:48:47','2020-11-14 21:48:47','','Menu','','publish','closed','closed','','menu','','','2020-11-14 21:48:47','2020-11-14 21:48:47','',0,'http://foodies.local/?page_id=135',0,'page','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2020-11-14 21:48:47','2020-11-14 21:48:47','','Menu','','inherit','closed','closed','','135-revision-v1','','','2020-11-14 21:48:47','2020-11-14 21:48:47','',135,'http://foodies.local/135-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (137,0,'2020-11-15 19:08:14','2020-11-15 19:08:14','','asd-1926629260','','publish','closed','closed','','asd-1926629260','','','2020-11-15 19:08:14','2020-11-15 19:08:14','',0,'http://foodies.local/message/asd-1926629260/',0,'message','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','daniel_raymundo');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"7e73591ba3408ea103755e83bed6785ea907f5c7997c12113101c07f90bb5b7f\";a:4:{s:10:\"expiration\";i:1605540781;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15\";s:5:\"login\";i:1605367981;}s:64:\"5c0e23645a92e53bd87197a4965cde9ad010d3f7c28ee7d19b98600d0f101b3c\";a:4:{s:10:\"expiration\";i:1605548596;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15\";s:5:\"login\";i:1605375796;}s:64:\"94d8c36c7646236c9ebee65d8fde40da84c2769e599d1acfc555d4525b94b42e\";a:4:{s:10:\"expiration\";i:1605558924;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15\";s:5:\"login\";i:1605386124;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'acf_user_settings','a:1:{s:15:\"show_field_keys\";s:1:\"1\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'daniel_raymundo','$P$BxwtAj87oEQZMLh8bZHrFTC11eixcW/','daniel_raymundo','daniel_raymundo@foodies.com','http://foodies.local','2020-11-12 14:02:08','',0,'daniel_raymundo');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-15 18:53:17
