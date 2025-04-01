/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: sql_loclip69_com
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor_movie`
--

DROP TABLE IF EXISTS `actor_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_movie` (
  `movie_id` bigint(20) unsigned NOT NULL,
  `actor_id` bigint(20) unsigned NOT NULL,
  KEY `actor_movie_movie_id_index` (`movie_id`),
  KEY `actor_movie_actor_id_index` (`actor_id`),
  CONSTRAINT `actor_movie_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `actor_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_movie`
--

LOCK TABLES `actor_movie` WRITE;
/*!40000 ALTER TABLE `actor_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `actor_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_md5` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `thumb_url` varchar(2048) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_des` varchar(255) DEFAULT NULL,
  `seo_key` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `actors_name_md5_unique` (`name_md5`),
  KEY `actors_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES
(1,'Momo Sakura','cd89bd8d5a01ff4a2243e65adf7cffd7','momo-sakura',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:33:05','2025-03-10 04:33:05'),
(2,'Sara Futaba','86c90142319f4bbc35d3affff6d550ee','sara-futaba',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:33:16','2025-03-10 04:33:16'),
(3,'Nami Kuroki','8bdf71f81891eb50be1acd35af79de1e','nami-kuroki',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:33:27','2025-03-10 04:33:27'),
(4,'Kanna Abe','eed06329da3777eeadac37e9cb4dab0c','kanna-abe',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:33:38','2025-03-10 04:33:38'),
(5,'Yui Mihama','d5ed790b518400ef73ef74fd1620d7b7','yui-mihama',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:33:49','2025-03-10 04:33:49'),
(6,'Rika Tsubaki','6afb627ba21d327452ae18c1d9b04897','rika-tsubaki',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:34:00','2025-03-10 04:34:00'),
(7,'Hachimitsu Rin','c5d70e1db05898add14b4cbb0ba0898c','hachimitsu-rin',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:34:10','2025-03-10 04:34:10'),
(8,'Waka Misono','3d2f7d1fa4b09f7d5cf3e9131ac02d4b','waka-misono',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:34:21','2025-03-10 04:34:21'),
(9,'Alice Nanase','8c179dafbfea91ec4080ee0b7900a937','alice-nanase',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:34:32','2025-03-10 04:34:32'),
(10,'Kanae Yumemi','d2a558f3f0979b35bfaa8d9106d0fff3','kanae-yumemi',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:34:32','2025-03-10 04:34:32'),
(11,'Miu Shiramine','7422037fa9019b9b606ce690a19fec7c','miu-shiramine',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:34:43','2025-03-10 04:34:43'),
(12,'Ichika Hoshimiya','24a81e750585a7ecee970ff1e0e17d05','ichika-hoshimiya',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:34:54','2025-03-10 04:34:54'),
(13,'Airi Suzumura','136d2fe3a91e9187c0ab5252cbdcba0e','airi-suzumura',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:35:05','2025-03-10 04:35:05'),
(14,'Himari Kinoshita','e7fe2e824343ba774e3d9b6db3a61287','himari-kinoshita',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:35:16','2025-03-10 04:35:16'),
(15,'Natsuki Hoshino','0c4f3cda335362a2c4cf65eee9c59596','natsuki-hoshino',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:35:27','2025-03-10 04:35:27'),
(16,'Saeko Matsushita','eed45503a9a78b67965f0d921771ee42','saeko-matsushita',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:35:38','2025-03-10 04:35:38'),
(17,'Yume Nishimiya','75a6bea806477a79719d27e0f9bed793','yume-nishimiya',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:35:49','2025-03-10 04:35:49'),
(18,'Kaho Yukishiro','4e717dc2e568bf1fe3202ec7d4190c58','kaho-yukishiro',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:36:00','2025-03-10 04:36:00'),
(19,'Yuuhi Shidara','db1c1cffb46f82d7fbe1802f3f36b43f','yuuhi-shidara',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:36:11','2025-03-10 04:36:11'),
(20,'Nao Jinguji','4a629fc30b1b79ec4be771608a3b9428','nao-jinguji',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:36:22','2025-03-10 04:36:22'),
(21,'Kamiki Ran','bbe0ba9bd29e333962341050e6ff8a4b','kamiki-ran',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:36:33','2025-03-10 04:36:33'),
(22,'Rena Momozono','baf44c0cd2b2ef90d71a80002140ccb3','rena-momozono',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:36:44','2025-03-10 04:36:44'),
(23,'Mayuka Yao','ec326ae087bc02cc45c3b8422d2d9442','mayuka-yao',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:36:55','2025-03-10 04:36:55'),
(24,'Karen Yuzuriha','801e8bbdd0b38cf1ef276a4b8be02bf6','karen-yuzuriha',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:37:06','2025-03-10 04:37:06'),
(25,'Sara Uruki','9dd3765bdb9009c0e2cae7591deed620','sara-uruki',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:37:22','2025-03-10 04:37:22'),
(26,'Yurara Sasamoto','a26c62b00c16ebeec12765a2c558d321','yurara-sasamoto',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:37:22','2025-03-10 04:37:22'),
(27,'Emika Shirakami','40f7bdaa6739a2d28382c514afe681da','emika-shirakami',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:37:33','2025-03-10 04:37:33'),
(28,'Aoi Ichino','63d43f470d7d5b12761c7aaa6ff4ef4c','aoi-ichino',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:37:55','2025-03-10 04:37:55'),
(29,'Mizuse Sana','9a8c6cb73595bcc7cae0ac5b534ba09b','mizuse-sana',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:38:06','2025-03-10 04:38:06'),
(30,'Shizuha Takimoto','f1a4d6339ffe8491326acde0f61d7231','shizuha-takimoto',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:38:17','2025-03-10 04:38:17'),
(31,'Ozaki Erika','978923f61b9b1a48af23e3e7c9ff44cd','ozaki-erika',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:38:28','2025-03-10 04:38:28'),
(32,'Ai Sayama','5a3d924bc67b6ec4c8627bf6ed5b9183','ai-sayama',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:38:50','2025-03-10 04:38:50'),
(33,'Julia','2344521e389d6897ae7af9abf16e7ccc','julia',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:39:01','2025-03-10 04:39:01'),
(34,'Riri Nanatsumori','e125860ee9ed814a55361c241212d11a','riri-nanatsumori',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:39:12','2025-03-10 04:39:12'),
(35,'Mihana Sumikawa','4296960f1fac666b7c7c3b07d53abea1','mihana-sumikawa',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:39:23','2025-03-10 04:39:23'),
(36,'Moka Haruhi','142b3bd0acec8bf7e27e1582c0ff3753','moka-haruhi',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:39:34','2025-03-10 04:39:34'),
(37,'RARA','fcab2bc615794dd097d8c7aa0d12c736','rara',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:39:45','2025-03-10 04:39:45'),
(38,'Rairina Minatsuki','6b536532cf60eeb5101dafb449c56286','rairina-minatsuki',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:39:56','2025-03-10 04:39:56'),
(39,'Yoshizawa Ria','94ba19cded22bc8719a0cca7c4e5c569','yoshizawa-ria',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:40:07','2025-03-10 04:40:07'),
(40,'Fumino Satsuki','b2de89b971c8f78854c135e452de089b','fumino-satsuki',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:40:18','2025-03-10 04:40:18'),
(41,'Yui Tenma','47183d568c673b85f85e1ca0994c6522','yui-tenma',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:40:29','2025-03-10 04:40:29'),
(42,'Asami Mizuhata','2646811e8d63fcb96d8fdc71c2454e51','asami-mizuhata',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:40:40','2025-03-10 04:40:40'),
(43,'Hime Hayasaka','b536e53cb6376252a33ec6442baaa113','hime-hayasaka',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:40:51','2025-03-10 04:40:51'),
(44,'Mirai Asumi','1eb094d116642512cfac2e0c8099bc99','mirai-asumi',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:41:02','2025-03-10 04:41:02'),
(45,'Non Ohana','26601e1ebd4674f0f6ed0beb45b6f627','non-ohana',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:41:02','2025-03-10 04:41:02'),
(46,'Honoka Furukawa','bbca87e957b2fecb3084d920ebc51678','honoka-furukawa',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:41:13','2025-03-10 04:41:13'),
(47,'Kaede Fuua','a6581ab2e1d4ac8dbb26ab709f194091','kaede-fuua',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:41:24','2025-03-10 04:41:24'),
(48,'Airi Kijima','e97cdaced297b6d1989bc182d4622bb3','airi-kijima',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:41:35','2025-03-10 04:41:35'),
(49,'Tsumugi Akari','4cdd71d5456145469de31557876741b4','tsumugi-akari',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:41:46','2025-03-10 04:41:46'),
(50,'Nana Yagi','820c526c6cbd2cfe218b09fbcc0ad134','nana-yagi',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:41:57','2025-03-10 04:41:57'),
(51,'Kana Morisawa','761841ffe5005e48dc658eb4e6ecf591','kana-morisawa',NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-10 04:42:08','2025-03-10 04:42:08');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `paginate` int(11) NOT NULL DEFAULT 20,
  `value` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_des` varchar(255) DEFAULT NULL,
  `seo_key` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `catalogs_name_unique` (`name`),
  UNIQUE KEY `catalogs_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES
(1,'Phim Hot','phim-hot',20,'|is_copyright|0|updated_at|desc','Title Phim Hot','Des Phim hot','Key Phim Hot','2025-03-07 01:18:20','2025-03-10 04:44:54');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_des` varchar(255) DEFAULT NULL,
  `seo_key` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,'Phim SexHD','phim-sexhd','Xem Sex Phim Sex Hd Mới, Hay Nhất - Nét Full HD 2025','Phim Sex HD mới nhất được cập nhật hàng ngày đủ mọi thể loại, xem phim sex jav hd tuyển chọn chất lượng HD cực nét, phim sex online tốc độ cao xem sướng nhất 2025','phim sex hd​, phim sex không che hd​, phim sex full hd không che​, phim sex jav hd​, phim sex hd không che​, phim sex full hd​, phim sex gay hd​, phim sex hd khong che​, xem phim sex hd​',3,'dev','2024-10-15 21:30:18','2024-12-30 00:17:06'),
(2,'Vụng trộm','vung-trom','Xem Sex Vụng Trộm 2025 Hay, Mới Nhất - Full HD','Tổng hợp phim sex vụng trộm 2025, xem hay vãi lồn, nứng tê hết cặc. Toàn phim mới, load nhanh, xem sướng vl. Tuyển chọn phim sex vụng trộm hay nhất, các bộ phim JAV có nội dung vụng trộm','phim sex vụng trộm​, phim sex nhật bản vụng trộm​, sex vụng trộm châu âu​, sex vụng trộm không che​, phim sex mỹ vụng trộm​, sex mỹ vụng trộm​, sex việt nam vụng trộm​, phim sex vụng trộm không che​',3,'dev','2024-10-15 21:30:18','2024-12-29 23:57:46'),
(3,'XVIDEOS','xvideos','XVIDEOS - Phim Sex XVIDEOS Hay & Nét Full HD - Mới Nhất 2025','Tổng hợp tất cả video đỉnh cao nhất từ XVIDEOS 2025, đặc biệt chất lượng nét căng HD. Load nhanh như 1 cơn gió.','xvideos​, xvideos com​, xvideo es​, xvideos es​, xvideos 69​, sex xvideo​, xvideo việt nam​, xvideo japan​, xvideo vietnam​, xvideo sex​, xvideo viet​, xvideo viet nam​, xvideo vietsub​, xvideos vlxx​',3,'dev','2024-10-15 21:30:18','2024-12-29 23:56:11'),
(4,'Hàn Quốc 18+','han-quoc-18','Phim Sex Hàn Quốc, Phim Sex Korean Chất Lượng Cao 2025','Phim sex Hàn Quốc hay nhất được cập nhật mỗi ngày, Phim sex Korean chất lượng cao miễn phí, Xem phim sex Hàn Quốc 2025 full hd.','phim sex hàn quốc​, phim sex hàn quốc không che​, xem phim sex hàn quốc​, phim sex gái xinh hàn quốc​, phim sex hàn quốc vietsub​, phim sex hàn quốc có phụ đề​, phim sex hàn quốc hay​',3,'dev','2024-10-15 21:30:18','2024-12-29 23:54:07'),
(5,'AV Không che','av-khong-che','Phim Sex Không Che, Jav Khong Che Lồn Hàng Múp Dâm 2025','JAV không che 2025, phim sex không che là nơi đăng về các tập phim hoàn toàn không che bướm đẹp và lồn dâm, cận cảnh những cái lồn múp và địt vào lồn gái xinh.','jav không che​, jav vietsub không che​, jav không che vietsub​, phim jav không che​, phim sex jav không che​, jav nhật không che​, jav hay không che​',3,'dev','2024-10-15 21:30:21','2024-12-29 23:51:54'),
(6,'Việt Nam Clip','viet-nam-clip','Phim Sex Việt Nam Show Hàng 2025, Lộ Clip, Gái Xinh hay nhất 24/7','Phim sex Việt Nam mới nhất, phim sex Việt Nam 2025 tự quay địt nhau, Clip sex Viet Nam hấp dẫn nhất, sex Việt liên tục cập nhật.','phim sex việt nam​, sex việt nam​, clip sex việt nam​, phim sex việt nam không che​, sex việt nam mới nhất​, sex gay việt nam​, xem phim sex việt nam​, sex việt nam hay​, sex việt nam không che​, sex việt nam mới​',3,'dev','2024-10-16 00:48:46','2024-12-29 23:50:00'),
(7,'Nhật Bản','nhat-ban','Phim Sex Nhật Bản 2025, Xem Sex Nhật Gái Múp Không Che','Phim sex nhật bản 2025 tuyển chọn cực hay, xem miễn phí sex nhật địt lồn hồng gái xinh không che cực sướng, liên tục cập nhật các phim chủ đề Nhật Bản.','sex nhật bản​, phim sex nhật bản​, sex nhật bản không che​, phim sex nhật bản không che​, xem phim sex nhật bản​, coi phim sex nhật bản​, phim sex nhật bản mới nhất​',3,'dev','2024-10-16 00:51:04','2024-12-29 23:48:21'),
(8,'Phim sex Vietsub','phim-sex-vietsub','Phim sex Vietsub, Phim JAV phụ đề Việt mới nhất 2025','Tổng hợp hàng ngày các thể loại phim Sex Việt Nam, VietSub, Sex Trung Quốc, sex Hàn Quốc, JAV hay, và của các video sex nổi tiếng, xem phim sex vietsub 2025 siêu nứng dành cho người lớn, Phim Sex Vietsub chất lượng cao miễn phí','phim sex vietsub​, phim sex vietsub không che​, phim sex vietsub my​, phim sex không che vietsub​, xem phim sex vietsub​, phim sex vietsub khong che​, phim sex chau au vietsub​, phim sex mỹ vietsub​',3,'dev','2024-10-16 00:51:04','2024-12-29 23:39:51'),
(9,'Jav HD','jav-hd','Jav HD, Jav Hay, Phim Sex Jav, Xem Jav 2025 Online','Trang web tổng hợp phim JAV hay nhất, chọn lọc những bộ phim JAV HD chất lượng cao, nội dung hấp dẫn, xem phim jav hd online miễn phí nhanh chất lượng cao full HD 1080p 2025, xem phim sex hay full hd không che diễn viên đẹp','jav hd pro​, phim sex jav hd​, jav hd vietsub​, jav full hd​, phim jav hd​, sex jav hd​, jav hd khong che​, jav hd hay​, jav hd porn​, jav hd uncensored​, jav hd win​, jav hd movie​, jav hd moi​',3,'dev','2024-10-16 00:51:04','2024-12-29 23:37:55'),
(33,'Hentai','hentai','Phim Hentai 2025 Vietsub, Xem Anime Sex Hay 18+ Không Che','Web xem phim sex hoạt hình anime hentai vietsub miễn phí chất lượng cao lớn nhất VN 2025, Hiếp Có Gái Hentai Chồng Phim Dâm Anime','hentai​, anime hentai​, hentai không che​, hentai 3d​, phim hentai​, truyện hentai​, hentai z​, hentai naruto​, hentai one piece​, hentai vn​, phim sex hentai​, sex hentai​, gay hentai​',3,'dev','2024-10-17 07:29:53','2024-12-29 23:36:24'),
(34,'Trung Quốc','trung-quoc','Phim Sex Trung Quốc 2025, Phim Sex Trung Quốc Gái Dáng Chuẩn','Cave Sex Quốc Trung Sex. Xem phim sex Trung Quốc mới nhất. Tuyển chọn sex TQ mới nhất với hàng ngàn bộ phim cực đỉnh xem phim sex Trung Quốc 2025','sex trung quốc​, phim sex trung quốc​, sex cổ trang trung quốc​, sex gay trung quốc​, sex trung quốc mới nhất​, phim sex cổ trang trung quốc​, sex trung quốc hay​, phim sex gay trung quốc​, xem phim sex trung quốc​',3,'dev','2024-10-17 07:29:54','2024-12-29 23:34:13'),
(35,'Tập thể','tap-the','Xem sex Địt tập thể hay nhất 2025','Địt tập thể cô cháu gái múp míp vú to lớn quá rồi · Địt tập thể 2 cô em gái kế dâm dục ngày giáng sinh.  Chúng tôi tổng hợp tất cả phim sex tập thể full hd không che hay nhất từ trước đến nay.','sex tập thể​, phim sex tập thể​, sex châu âu tập thể​, sex mỹ tập thể​, phim sex tập thể không che​, sex gay tập thể​, sex nhật tập thể​, sex tập thể châu âu​, phim sex hiếp dâm tập thể​',3,'dev','2024-10-17 07:29:59','2024-12-29 23:32:12'),
(36,'Mỹ - Châu Âu','my-chau-au','Phim sex Châu Âu 2025, Xem sex Mỹ không che, Phim sex việt sub Châu Âu','Tuyển tập phim sex Châu Âu, xem sex Châu Âu chất lượng HD có nội dung hay, Phim sex Mỹ là một trong những bộ phim sex kích thích người xem khi đây là thể thoại phim 18+ liên quan đến các cảnh nóng về quan hệ tình dục','sex châu âu​, sex âu mỹ​, phim sex châu âu​, sex âu​, phim sex âu mỹ​, sex châu âu vietsub​, phim sex vietsub châu âu​, phim sex âu​, xem phim sex châu âu​, sex châu âu ko che​, sex châu âu mẹ kế​, sex tây âu​',3,'dev','2024-10-17 07:29:59','2024-12-29 23:18:39'),
(37,'Hiếp dâm','hiep-dam','Phim Sex Hiếp Dâm Không Che 2025 - Phim Sex Hiếp Dâm Tập Thể - Hiếp Dâm Học Sinh','Tuyển tập phim sex hiếp dâm 2025, những bộ phim sex có nội dung cưỡng hiếp được tuyển chọn diễn viên xinh đẹp. Tất cả đều là diễn viên chuyên nghiệp thực hiện.','phim sex hiếp dâm không che​, hentai hiếp dâm​, phim sex hiếp dâm tập thể​, hiếp dâm cô giáo​, hiếp dâm vợ bạn​',3,'dev','2024-10-17 07:31:40','2024-12-29 23:06:14'),
(38,'Loạn luân','loan-luan','Loạn Luân - Phim Sex Loạn Luân Không Che Cực Dâm 2025','Phim sex loạn luân không che tuyển chọn cực dâm, loạn luân không che, loạn luân cả gia đình làm tình cực nứng kích thích từng giây rất hấp dẫn 2025','phim sex loạn luân không che, jav loạn luân, phim sex loạn luân vietsub, sex loạn luân không che​, phim sex việt nam loạn luân​',3,'dev','2024-10-17 07:42:17','2024-12-29 23:05:54');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_movie`
--

DROP TABLE IF EXISTS `category_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_movie` (
  `movie_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  KEY `category_movie_movie_id_index` (`movie_id`),
  KEY `category_movie_category_id_index` (`category_id`),
  CONSTRAINT `category_movie_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_movie`
--

LOCK TABLES `category_movie` WRITE;
/*!40000 ALTER TABLE `category_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_movie`
--

DROP TABLE IF EXISTS `director_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director_movie` (
  `movie_id` bigint(20) unsigned NOT NULL,
  `director_id` bigint(20) unsigned NOT NULL,
  KEY `director_movie_movie_id_index` (`movie_id`),
  KEY `director_movie_director_id_index` (`director_id`),
  CONSTRAINT `director_movie_director_id_foreign` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `director_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_movie`
--

LOCK TABLES `director_movie` WRITE;
/*!40000 ALTER TABLE `director_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `director_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_md5` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `thumb_url` varchar(2048) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_des` varchar(255) DEFAULT NULL,
  `seo_key` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `directors_name_md5_unique` (`name_md5`),
  KEY `directors_slug_index` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `episodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` bigint(20) unsigned NOT NULL,
  `server` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `has_report` tinyint(1) NOT NULL DEFAULT 0,
  `report_message` varchar(512) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `episodes_movie_id_slug_index` (`movie_id`,`slug`),
  KEY `episodes_movie_id_index` (`movie_id`),
  CONSTRAINT `episodes_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodes`
--

LOCK TABLES `episodes` WRITE;
/*!40000 ALTER TABLE `episodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `episodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `depth` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES
(1,'Trang chủ','internal_link','/',NULL,NULL,NULL,NULL,'2025-03-07 01:18:20','2025-03-07 01:18:20',NULL),
(2,'Thể loại','internal_link','#',NULL,NULL,NULL,NULL,'2025-03-07 01:18:20','2025-03-07 01:18:20',NULL),
(3,'Quốc gia','internal_link','#',NULL,NULL,NULL,NULL,'2025-03-07 01:18:20','2025-03-07 01:18:20',NULL),
(4,'Phim SexHD','internal_link','/the-loai/phim-sexhd',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(5,'Vụng trộm','internal_link','/the-loai/vung-trom',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(6,'XVIDEOS','internal_link','/the-loai/xvideos',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(7,'Hàn Quốc 18+','internal_link','/the-loai/han-quoc-18',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(8,'AV Không che','internal_link','/the-loai/av-khong-che',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(9,'Việt Nam Clip','internal_link','/the-loai/viet-nam-clip',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(10,'Nhật Bản','internal_link','/quoc-gia/nhat-ban',3,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:37',NULL),
(11,'Phim sex Vietsub','internal_link','/the-loai/phim-sex-vietsub',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(12,'Jav HD','internal_link','/the-loai/jav-hd',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(13,'Hentai','internal_link','/the-loai/hentai',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(14,'Trung Quốc','internal_link','/quoc-gia/trung-quoc',3,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:37',NULL),
(15,'Tập thể','internal_link','/the-loai/tap-the',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(16,'Mỹ - Châu Âu','internal_link','/the-loai/my-chau-au',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(17,'Hiếp dâm','internal_link','/the-loai/hiep-dam',2,NULL,NULL,NULL,'2025-03-10 06:52:36','2025-03-10 06:52:36',NULL),
(18,'Loạn luân','internal_link','/the-loai/loan-luan',2,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(19,'Hàn Quốc','internal_link','/quoc-gia/han-quoc',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(20,'Việt Nam','internal_link','/quoc-gia/viet-nam',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(21,'Thái Lan','internal_link','/quoc-gia/thai-lan',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(22,'Âu Mỹ','internal_link','/quoc-gia/au-my',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(23,'Canada','internal_link','/quoc-gia/canada',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(24,'Sex Anh','internal_link','/quoc-gia/anh',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(25,'Sex Đức','internal_link','/quoc-gia/duc',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(26,'Nước Pháp','internal_link','/quoc-gia/phap',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(27,'Đài Loan','internal_link','/quoc-gia/dai-loan',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(28,'Quốc gia khác','internal_link','/quoc-gia/quoc-gia-khac',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(29,'Hồng Kông','internal_link','/quoc-gia/hong-kong',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL),
(30,'Châu Âu','internal_link','/quoc-gia/chau-au',3,NULL,NULL,NULL,'2025-03-10 06:52:37','2025-03-10 06:52:37',NULL);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2015_08_04_131614_create_menus_table',1),
(4,'2015_08_04_131614_create_settings_table',1),
(5,'2019_08_19_000000_create_failed_jobs_table',1),
(6,'2020_03_31_114745_remove_backpackuser_model',1),
(7,'2022_07_09_153613_create_themes_table',1),
(8,'2022_07_10_125114_create_permission_tables',1),
(9,'2022_07_10_153442_create_categories_table',1),
(10,'2022_07_10_153517_create_actors_table',1),
(11,'2022_07_10_153517_create_directors_table',1),
(12,'2022_07_10_153517_create_regions_table',1),
(13,'2022_07_10_153517_create_studios_table',1),
(14,'2022_07_10_153517_create_tags_table',1),
(15,'2022_07_10_153613_create_movies_table',1),
(16,'2022_07_10_153614_create_episodes_table',1),
(17,'2022_07_11_062342_create_actor_movie_table',1),
(18,'2022_07_11_062342_create_category_movie_table',1),
(19,'2022_07_11_062342_create_director_movie_table',1),
(20,'2022_07_11_062342_create_movie_region_table',1),
(21,'2022_07_11_062342_create_movie_studio_table',1),
(22,'2022_07_11_062342_create_movie_tag_table',1),
(23,'2022_11_02_071552_create_catalogs_table',1),
(24,'2023_06_06_185118_add_fulltext_index_to_movies',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES
(1,'App\\Models\\User',1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_region`
--

DROP TABLE IF EXISTS `movie_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_region` (
  `movie_id` bigint(20) unsigned NOT NULL,
  `region_id` bigint(20) unsigned NOT NULL,
  KEY `movie_region_movie_id_index` (`movie_id`),
  KEY `movie_region_region_id_index` (`region_id`),
  CONSTRAINT `movie_region_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `movie_region_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_region`
--

LOCK TABLES `movie_region` WRITE;
/*!40000 ALTER TABLE `movie_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_studio`
--

DROP TABLE IF EXISTS `movie_studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_studio` (
  `movie_id` bigint(20) unsigned NOT NULL,
  `studio_id` bigint(20) unsigned NOT NULL,
  KEY `movie_studio_movie_id_index` (`movie_id`),
  KEY `movie_studio_studio_id_index` (`studio_id`),
  CONSTRAINT `movie_studio_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `movie_studio_studio_id_foreign` FOREIGN KEY (`studio_id`) REFERENCES `studios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_studio`
--

LOCK TABLES `movie_studio` WRITE;
/*!40000 ALTER TABLE `movie_studio` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_tag`
--

DROP TABLE IF EXISTS `movie_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_tag` (
  `movie_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  KEY `movie_tag_movie_id_index` (`movie_id`),
  KEY `movie_tag_tag_id_index` (`tag_id`),
  CONSTRAINT `movie_tag_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `movie_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_tag`
--

LOCK TABLES `movie_tag` WRITE;
/*!40000 ALTER TABLE `movie_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) NOT NULL,
  `origin_name` varchar(1024) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `thumb_url` varchar(2048) DEFAULT NULL,
  `poster_url` varchar(2048) DEFAULT NULL,
  `type` enum('single','series') NOT NULL,
  `status` enum('trailer','ongoing','completed') NOT NULL,
  `trailer_url` varchar(2048) DEFAULT NULL,
  `episode_time` varchar(255) DEFAULT NULL,
  `episode_current` varchar(255) DEFAULT NULL,
  `episode_total` varchar(255) DEFAULT NULL,
  `quality` varchar(255) DEFAULT 'HD',
  `language` varchar(255) DEFAULT 'Vietsub',
  `notify` varchar(512) DEFAULT NULL,
  `showtimes` varchar(512) DEFAULT NULL,
  `publish_year` int(11) DEFAULT NULL,
  `is_shown_in_theater` tinyint(1) NOT NULL DEFAULT 0,
  `is_recommended` tinyint(1) NOT NULL DEFAULT 0,
  `is_copyright` tinyint(1) NOT NULL DEFAULT 0,
  `is_sensitive_content` tinyint(1) NOT NULL DEFAULT 0,
  `episode_server_count` int(11) NOT NULL DEFAULT 0,
  `episode_data_count` int(11) NOT NULL DEFAULT 0,
  `view_total` int(11) NOT NULL DEFAULT 0,
  `view_day` int(11) NOT NULL DEFAULT 0,
  `view_week` int(11) NOT NULL DEFAULT 0,
  `view_month` int(11) NOT NULL DEFAULT 0,
  `rating_count` int(11) NOT NULL DEFAULT 0,
  `rating_star` decimal(3,1) NOT NULL DEFAULT 0.0,
  `update_handler` varchar(1024) DEFAULT NULL,
  `update_identity` varchar(2048) DEFAULT NULL,
  `update_checksum` varchar(2048) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `movies_slug_unique` (`slug`),
  KEY `movies_publish_year_index` (`publish_year`),
  KEY `movies_user_id_index` (`user_id`),
  FULLTEXT KEY `search_index` (`name`,`origin_name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES
(1,'Browse actor','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(2,'Create actor','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(3,'Update actor','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(4,'Delete actor','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(5,'Browse director','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(6,'Create director','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(7,'Update director','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(8,'Delete director','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(9,'Browse tag','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(10,'Create tag','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(11,'Update tag','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(12,'Delete tag','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(13,'Browse studio','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(14,'Create studio','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20'),
(15,'Update studio','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(16,'Delete studio','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(17,'Browse catalog','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(18,'Create catalog','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(19,'Update catalog','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(20,'Delete catalog','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(21,'Browse category','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(22,'Create category','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(23,'Update category','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(24,'Delete category','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(25,'Browse region','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(26,'Create region','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(27,'Update region','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(28,'Delete region','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(29,'Browse crawl schedule','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(30,'Create crawl schedule','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(31,'Update crawl schedule','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(32,'Delete crawl schedule','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(33,'Browse movie','backpack','2025-03-07 01:18:21','2025-03-07 01:18:21'),
(34,'Create movie','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(35,'Update movie','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(36,'Delete movie','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(37,'Browse user','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(38,'Create user','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(39,'Update user','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(40,'Delete user','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(41,'Browse role','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(42,'Create role','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(43,'Update role','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(44,'Delete role','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(45,'Browse permission','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(46,'Create permission','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(47,'Update permission','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(48,'Delete permission','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(49,'Browse episode','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(50,'Create episode','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(51,'Update episode','backpack','2025-03-07 01:18:22','2025-03-07 01:18:22'),
(52,'Delete episode','backpack','2025-03-07 01:18:23','2025-03-07 01:18:23'),
(53,'Browse menu','backpack','2025-03-07 01:18:23','2025-03-07 01:18:23'),
(54,'Create menu','backpack','2025-03-07 01:18:23','2025-03-07 01:18:23'),
(55,'Update menu','backpack','2025-03-07 01:18:23','2025-03-07 01:18:23'),
(56,'Delete menu','backpack','2025-03-07 01:18:23','2025-03-07 01:18:23'),
(57,'Delete menu item','backpack','2025-03-07 01:18:23','2025-03-07 01:18:23'),
(58,'Browse plugin','backpack','2025-03-07 01:18:23','2025-03-07 01:18:23'),
(59,'Update plugin','backpack','2025-03-07 01:18:23','2025-03-07 01:18:23'),
(60,'Customize theme','backpack','2025-03-07 01:18:23','2025-03-07 01:18:23');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_des` varchar(255) DEFAULT NULL,
  `seo_key` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `regions_name_unique` (`name`),
  UNIQUE KEY `regions_slug_unique` (`slug`),
  KEY `regions_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES
(1,'Hàn Quốc','han-quoc','Phim sex Hàn Quốc 2025 không che, vietsub, hay nhất, Phim Sex Korean Chất Lượng Cao','Phim sex Hàn Quốc không che 2025, vietsub hay nhất với đa dạng thể loại loạn luân, người mẫu, gái xinh, được cập nhật đầy đủ. Phim sex hàn quốc, tuyển trọn 56789 bộ phim sex hàn quốc cực hay gái xinh nhiều vô số kể chân dài tới nách','sex hàn quốc, phim sex hàn',3,'dev','2024-10-15 21:30:18','2025-01-02 22:49:39'),
(2,'Nhật Bản','nhat-ban','Phim Sex Nhật Bản, Phim Sex Japan Miễn Phí 2025','Phim sex Nhật Bản gái xinh địt nhau, nội dung hay nhất, Phim sex Japan miễn phí chất lượng cao, xem phim sex Nhật Bản 2025 full hd. Phim sex nhật bản tuyển chọn cực hay, xem miễn phí sex nhật địt lồn hồng gái xinh không che cực sướng','sex nhật bản, javhd, jav, sex nhật',3,'dev','2024-10-15 21:30:21','2025-01-02 22:48:34'),
(3,'Việt Nam','viet-nam','Phim Sex Việt Nam 2025 Show Hàng, Lộ Clip, Gái Xinh hay nhất 24/7','Sex Việt Nam tự quay 2025, lộ clip sex hot nhất hiện nay, chúng tôi cập nhật sex Việt Nam phục vụ quý khách mỗi ngày. Em hoa chuppy vú bự dâm đãng. Phim sex việt nam, kho phim sex người việt bị quay lén clip sex của các hot girl lộ clip mới nhất.','sex việt, sex việt nam, clip sex việt, clip sex',3,'dev','2024-10-16 00:48:46','2025-01-02 22:47:41'),
(4,'Trung Quốc','trung-quoc','Phim Sex Trung Quốc , Tuyển Chọn Phim Sex China Lồn Đẹp 2025','Phim sex Trung Quốc chọn lọc cực dâm, Phim sex China hay nhất 2025, Kho phim sex Trung Quốc gái xinh mới nhất dành cho người lớn. Phim sex trung quốc không chỉ số lượng lớn mà chất lượng đến từ sex trung quốc','sex trung quốc, sex trung, phim sex trung quốc, sex china, phim sex china',3,'dev','2024-10-16 01:20:18','2025-01-02 22:46:36'),
(5,'Thái Lan','thai-lan','Phim sex thái lan siêu phẩm 2025 gái mới lớn hàng ngon','Phim sex thái lan 2025 sưu tầm những bộ phim có nội dung hay điều không thường xảy ra vì nó chỉ là clip sex mang đến cho người xem những phút giây thư giãn tuyệt','sex thái lan',3,'dev','2024-10-16 01:20:22','2025-01-02 22:45:29'),
(6,'Âu Mỹ','au-my','Phim sex Âu Mỹ, xem phim sex Mỹ không che 2025','Phim sex Âu Mỹ 2025 đê mê khoái lạc. Tổng hợp các phim sex Âu Mỹ vietsub hay chọn lọc, xem phim sex Mỹ chất lượng cao không che mới nhất HD.','phim sex âu mỹ, sex âu, sex mỹ, sex âu mỹ',3,'dev','2024-10-16 01:20:27','2025-01-02 22:44:45'),
(7,'Canada','canada','Xem miễn phí Canada Miễn phí phim khiêu dâm 2025','Những người yêu thích đụ một người mẫu Canada trong âm hộ anh sec dit nhau và mông của cô ấy. Miễn phí khiêu dâm trực tuyến tình dục. Miễn phí canada xem Video porn 2025 Khám phá hàng loạt phim XXX với những màn sex nóng bỏng','sex canada',3,'dev','2024-10-16 01:35:45','2025-01-02 22:44:04'),
(8,'Sex Anh','anh','Phim sex Anh không che, Sex gái Anh, Anh Quốc mới nhât 2025','Xem phim sex phim sex nước anh trực tuyến mới nhất 2025 hoàn toàn miễn phí, xem sex phim sex nước anh chọn lọc','phim sex anh',3,'dev','2024-10-16 02:46:43','2025-01-02 22:43:02'),
(9,'Sex Đức','duc','Phim Sex Đức 2025 - Phim sex mới nhất cực nứng','Miễn phí bà già người đức xem Video porn 2025 Khám phá hàng loạt phim XXX với những màn sex nóng bỏng, sẵn sàng để xem ngay bây giờ.','sex đức, phim sex gái đức',3,'dev','2024-10-16 02:46:46','2025-01-02 22:41:12'),
(10,'Nước Pháp','phap','Phim sex Pháp 2025 không che - Xem phim sex của Pháp','Phim sex Pháp 2025 là một thể loại phim về đề tài quan hệ tình dục. Những thước phim quay cận cảnh các trận mây mưa đầy cuồng nhiệt và mạnh bạo.','sex pháp, phim sex pháp',3,'dev','2024-10-17 02:20:58','2025-01-02 22:38:53'),
(11,'Đài Loan','dai-loan','Phim Sex Trung Quốc 18+ Đài Loan Chinese AV Tuyển Chọn 2025','Nếu bạn muốn thưởng thức phim khiêu dâm để giải tỏa sinh lý 2025, trau dồi kỹ năng thì đừng bỏ qua phim sex Đài Loan - thể loại porn đặc sắc, cuốn hút nhất.','sex đài loan',3,'dev','2024-10-17 02:21:08','2025-01-02 22:38:15'),
(12,'Quốc gia khác','quoc-gia-khac','Phim sex không che Việt Nam, Nhật Bản, Hàn Quốc','Phim sex không che hay nhất 2025, sex Việt Nam, Trung Quốc, Hàn Quốc Nhật Bản không che và có Vietsub, cận cảnh làm tình full HD chân thực nhất.','sex, phim sex, sex các quốc gia',3,'dev','2024-10-17 02:21:09','2025-01-02 22:37:17'),
(13,'Hồng Kông','hong-kong','Phim sex Hồng Kông 2025 đẹp xuất sắc - Clip Sex Trương Mẫn Mỹ Nhân Phim Hồng Kông','Clip Sex Trương Mẫn mỹ nhân phim hồng kông: diễn viên nữ hồng kông đóng cùng phim Châu Tinh Trì, Trương Mẫn chính là mỹ nhân trong lòng người Việt Nam, Miễn phí phim câp ba xa hoi den hong kong xem Video porn 2025','sex hong kong',3,'dev','2024-10-17 03:11:27','2025-01-02 22:36:39'),
(14,'Châu Âu','chau-au','Phim Sex Châu Âu 2025, Sex Âu Mỹ Địt Lồn Gái Tây Dâm','Lựa chọn Sex Châu Âu 2025 nếu bạn yêu thích những cuộc tình nhanh mạnh mẽ cùng những cô nàng tóc vàng da trắng lồn hồng thường không lông cùng trải nghiệm phim sex. Phim sex châu âu chọn lọc những cô nàng tây bướm hồng dâm dục','sex châu âu, sex âu',3,'dev','2024-10-17 07:29:59','2025-01-02 22:35:39');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1),
(11,1),
(12,1),
(13,1),
(14,1),
(15,1),
(16,1),
(17,1),
(18,1),
(19,1),
(20,1),
(21,1),
(22,1),
(23,1),
(24,1),
(25,1),
(26,1),
(27,1),
(28,1),
(29,1),
(30,1),
(31,1),
(32,1),
(33,1),
(34,1),
(35,1),
(36,1),
(37,1),
(38,1),
(39,1),
(40,1),
(41,1),
(42,1),
(43,1),
(44,1),
(45,1),
(46,1),
(47,1),
(48,1),
(49,1),
(50,1),
(51,1),
(52,1),
(53,1),
(54,1),
(55,1),
(56,1),
(57,1),
(58,1),
(59,1),
(60,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'Admin','backpack','2025-03-07 01:18:20','2025-03-07 01:18:20');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `field` text NOT NULL,
  `group` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`),
  KEY `settings_group_active_index` (`group`,`active`),
  KEY `settings_group_index` (`group`),
  KEY `settings_active_index` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES
(1,'site_theme','Theme','site_theme','default','{\"name\":\"value\",\"type\":\"view\",\"view\":\"themes::selector\"}',NULL,0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(2,'site_cache_ttl','Thời gian lưu cache','site_cache_ttl','60','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"gi\\u00e2y (s)\"}','generals',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(3,'site_brand','Site Brand','site_brand',NULL,'{\"name\":\"value\",\"type\":\"textarea\"}','generals',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(4,'site_logo','Site Logo','site_logo','<img itemprop=\"logo\" src=\"/storage/images/logo_web.webp\" width=\"200\" height=\"30px\" title=\"logo\" alt=\"logo\">','{\"name\":\"value\",\"type\":\"textarea\"}','generals',0,'2024-10-15 00:41:36','2025-02-15 01:10:25'),
(5,'site_image_proxy_url','Cấu hình proxy','site_image_proxy_url','https://images2-focus-opensocial.googleusercontent.com/gadgets/proxy?container=focus&refresh=604800&url={image_url}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"{image_url}: bi\\u1ebfn h\\u00ecnh \\u1ea3nh\"}','generals',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(6,'site_image_proxy_enable','Sử dụng Proxy cho đường dẫn hình ảnh','site_image_proxy_enable','0','{\"name\":\"value\",\"type\":\"switch\",\"label\":\"Use proxy link in image path\",\"color\":\"primary\",\"onLabel\":\"\\u2713\",\"offLabel\":\"\\u2715\"}','generals',0,'2024-10-15 00:41:36','2024-10-17 07:35:13'),
(7,'site_meta_siteName','Meta site name','site_meta_siteName','Top Phim Sex hay nhất 2025 - Phim sex hay - Xem Sex Không Che Hay','{\"name\":\"value\",\"type\":\"text\",\"tab\":\"General\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(8,'site_meta_shortcut_icon','Meta shortcut icon','site_meta_shortcut_icon','/storage/images/screenshot_1729175934.png','{\"name\":\"value\",\"type\":\"ckfinder\",\"tab\":\"General\"}','metas',0,'2024-10-15 00:41:36','2024-10-17 07:39:23'),
(9,'site_homepage_title','Tiêu đề mặc định','site_homepage_title','Top Phim Sex hay nhất 2025 - Phim sex hay - Xem Sex Không Che Hay','{\"name\":\"value\",\"type\":\"text\",\"tab\":\"General\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:44'),
(10,'site_meta_description','Meta description','site_meta_description','Phim sex hay nhất 2025 xem phim sex dâm hay vl phim sex mới chất lượng cao xem phim sex hay chọn lọc xem sex gái xinh hay','{\"name\":\"value\",\"type\":\"textarea\",\"tab\":\"General\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(11,'site_meta_keywords','Meta keywords','site_meta_keywords','phim sex hay nhất​, phim sex không che hay nhất​, phim sex việt nam hay nhất​, jav, sex âu, sex mỹ, vlxx, phim sex, sex loạn luận, sex hiếp dâm','{\"name\":\"value\",\"type\":\"textarea\",\"tab\":\"General\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(12,'site_meta_image','Meta image','site_meta_image',NULL,'{\"name\":\"value\",\"type\":\"ckfinder\",\"tab\":\"General\"}','metas',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(13,'site_meta_head_tags','Head meta tags','site_meta_head_tags','<meta charSet=\"utf-8\" />\r\n<meta name=\"viewport\" content=\"initial-scale=1.0, width=device-width\" />\r\n<meta name=\"robots\" content=\"index,follow\" />\r\n<meta name=\"revisit-after\" content=\"1 days\" />\r\n<meta name=\"ROBOTS\" content=\"index,follow\" />\r\n<meta name=\"googlebot\" content=\"index,follow\" />\r\n<meta name=\"BingBOT\" content=\"index,follow\" />\r\n<meta name=\"yahooBOT\" content=\"index,follow\" />\r\n<meta name=\"slurp\" content=\"index,follow\" />\r\n<meta name=\"msnbot\" content=\"index,follow\" />','{\"name\":\"value\",\"type\":\"textarea\",\"tab\":\"General\",\"attributes\":{\"rows\":5}}','metas',0,'2024-10-15 00:41:36','2024-10-17 07:38:12'),
(14,'site_movie_title','Mẫu tiêu đề trang thông tin phim','site_movie_title','Phim sex 2025 {name}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin phim: {name}|{origin_name}|{language}|{quality}|{episode_current}|{publish_year}|...\",\"tab\":\"Phim\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(15,'site_episode_watch_title','Mẫu tiêu đề trang xem phim','site_episode_watch_title','Xem phim sex 2025 {movie.name} tập {name} {movie.language} {movie.quality}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin phim: {movie.name}|{movie.origin_name}|{movie.language}|{movie.quality}|{movie.episode_current}|movie.publish_year}|...<br \\/>Th\\u00f4ng tin t\\u1eadp: {name}\",\"tab\":\"Phim\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(16,'site_category_title','Tiêu đề thể loại mặc định','site_category_title','Danh sách phim sex 2025 {name} - tổng hợp phim sex 2025 {name}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Th\\u1ec3 Lo\\u1ea1i\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(17,'site_category_des','Description thể loại mặc định','site_category_des','Phim sex 2025 {name} mới nhất tuyển chọn hay nhất. Top những bộ phim sex {name} đáng để bạn cày 2025','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Th\\u1ec3 Lo\\u1ea1i\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(18,'site_category_key','Keywords thể loại mặc định','site_category_key','Xem phim sex 2025 {name},Phim sex 2025 {name} mới nhất,Phim sex {name} 2025,phim sex 2025 hay','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Th\\u1ec3 Lo\\u1ea1i\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(19,'site_region_title','Tiêu đề quốc gia mặc định','site_region_title','Danh sách phim sex 2025 {name} - tổng hợp phim sex 2025 {name}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Qu\\u1ed1c Gia\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(20,'site_region_des','Description quốc gia mặc định','site_region_des','Phim sex 2025 {name} mới nhất tuyển chọn hay nhất. Top những bộ phim sex 2025 {name} đáng để bạn cày 2025','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Qu\\u1ed1c Gia\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(21,'site_region_key','Keywords quốc gia mặc định','site_region_key','Xem phim sex 2025 {name},Phim sex 2025 {name} mới,Phim sex {name} 2025,phim sex 2025 hay','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Qu\\u1ed1c Gia\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(22,'site_studio_title','Tiêu đề studio','site_studio_title','Danh sách phim sex 2025 {name} - tổng hợp phim sex 2025 {name}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Studio\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(23,'site_studio_des','Description studio','site_studio_des','Phim sex 2025 {name} mới nhất tuyển chọn hay nhất. Top những bộ phim sex {name} đáng để bạn cày 2025','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Studio\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(24,'site_studio_key','Keywords studio','site_studio_key','Xem phim sex 2025 {name},Phim sex 2025 {name} mới,Phim sex 2025 {name},phim sex 2025 hay','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Studio\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(25,'site_actor_title','Tiêu đề diễn viên','site_actor_title','Phim sex của diễn viên {name} - tổng hợp phim sex {name} hay nhất','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Di\\u1ec5n Vi\\u00ean\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(26,'site_actor_des','Description diễn viên','site_actor_des','Phim sex của diễn viên {name} - tổng hợp phim sex {name} hay nhất','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Di\\u1ec5n Vi\\u00ean\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(27,'site_actor_key','Keywords diễn viên','site_actor_key','xem phim sex {name},phim sex {name},tuyen tap phim sex {name}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Di\\u1ec5n Vi\\u00ean\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(28,'site_director_title','Tiêu đề đạo diễn','site_director_title','Phim sex của đạo diễn {name} - tổng hợp phim sex {name} hay nhất','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"\\u0110\\u1ea1o Di\\u1ec5n\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(29,'site_director_des','Description đạo diễn','site_director_des','Phim sex của đạo diễn {name} - tổng hợp phim sex {name} hay nhất','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"\\u0110\\u1ea1o Di\\u1ec5n\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(30,'site_director_key','Keywords đạo diễn','site_director_key','xem phim sex {name},phim {name},tuyen tap phim sex {name}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"\\u0110\\u1ea1o Di\\u1ec5n\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(31,'site_tag_title','Tiêu đề tag','site_tag_title','Phim sex {name} vietsub - phim sex {name} full hd','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Tag\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(32,'site_tag_des','Description tag','site_tag_des','Phim sex {name} vietsub - phim sex {name} full hd','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Tag\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(33,'site_tag_key','Keywords tag','site_tag_key','xem phim sex {name},phim sex {name},{name} vietsub','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"Th\\u00f4ng tin: {name}\",\"tab\":\"Tag\"}','metas',0,'2024-10-15 00:41:36','2024-12-30 00:25:06'),
(34,'site_routes_movie','Trang thông tin phim','site_routes_movie','/phim/{movie}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"<span class=\\\"text-danger\\\">{movie}, {id}<\\/span> Bu\\u1ed9c ph\\u1ea3i c\\u00f3 \\u00edt nh\\u1ea5t 1 param\",\"tab\":\"Slug\"}','metas',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(35,'site_routes_episode','Trang xem phim','site_routes_episode','/phim/{movie}/{episode}-{id}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"<span class=\\\"text-danger\\\">{movie}, {movie_id}<\\/span> \\u00cdt nh\\u1ea5t 1<br \\/>\\n<span class=\\\"text-danger\\\">{episode}, {id}<\\/span> B\\u1eaft bu\\u1ed9c<br \\/>\",\"tab\":\"Slug\"}','metas',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(36,'site_routes_category','Trang thể loại','site_routes_category','/the-loai/{category}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"<span class=\\\"text-danger\\\">{category}, {id}<\\/span> \\u00cdt nh\\u1ea5t 1\",\"tab\":\"Slug\"}','metas',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(37,'site_routes_region','Trang quốc gia','site_routes_region','/quoc-gia/{region}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"<span class=\\\"text-danger\\\">{region}, {id}<\\/span> \\u00cdt nh\\u1ea5t 1\",\"tab\":\"Slug\"}','metas',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(38,'site_routes_tag','Trang từ khóa','site_routes_tag','/tu-khoa/{tag}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"<span class=\\\"text-danger\\\">{tag}, {id}<\\/span> \\u00cdt nh\\u1ea5t 1\",\"tab\":\"Slug\"}','metas',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(39,'site_routes_types','Trang danh sách phim','site_routes_types','/danh-sach/{type}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"<span class=\\\"text-danger\\\">{type}, {id}<\\/span> \\u00cdt nh\\u1ea5t 1\",\"tab\":\"Slug\"}','metas',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(40,'site_routes_actors','Trang danh diễn viên','site_routes_actors','/dien-vien/{actor}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"<span class=\\\"text-danger\\\">{actor}, {id}<\\/span> \\u00cdt nh\\u1ea5t 1\",\"tab\":\"Slug\"}','metas',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(41,'site_routes_directors','Trang danh đạo diễn','site_routes_directors','/dao-dien/{director}','{\"name\":\"value\",\"type\":\"text\",\"hint\":\"<span class=\\\"text-danger\\\">{director}, {id}<\\/span> \\u00cdt nh\\u1ea5t 1\",\"tab\":\"Slug\"}','metas',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(42,'jwplayer_license','Jwplayer license','jwplayer_license','ITWMv7t88JGzI0xPwW8I0+LveiXX9SWbfdmt0ArUSyc=','{\"name\":\"value\",\"type\":\"text\"}','jwplayer',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(43,'jwplayer_logo_file','Jwplayer logo image','jwplayer_logo_file','/storage/images/logo_web.webp','{\"name\":\"value\",\"type\":\"ckfinder\"}','jwplayer',0,'2024-10-15 00:41:36','2024-12-26 23:40:22'),
(44,'jwplayer_logo_link','Jwplayer logo link','jwplayer_logo_link','/','{\"name\":\"value\",\"type\":\"text\"}','jwplayer',0,'2025-03-07 01:18:19','2025-03-10 04:43:53'),
(45,'jwplayer_logo_position','Jwplayer logo position','jwplayer_logo_position','top-left','{\"name\":\"value\",\"type\":\"select_from_array\",\"options\":{\"top-left\":\"Top left\",\"top-right\":\"Top right\",\"bottom-right\":\"Bottom right\",\"bottom-left\":\"Bottom left\",\"control-bar\":\"Control bar\"}}','jwplayer',0,'2024-10-15 00:41:36','2024-12-26 23:40:22'),
(46,'jwplayer_advertising_file','Jwplayer advertising vast file','jwplayer_advertising_file',NULL,'{\"name\":\"value\",\"type\":\"ckfinder\"}','jwplayer',0,'2024-10-15 00:41:36','2025-02-15 01:16:16'),
(47,'jwplayer_advertising_skipoffset','Jwplayer advertising skipoffset','jwplayer_advertising_skipoffset','5','{\"name\":\"value\",\"type\":\"number\",\"hint\":\"gi\\u00e2y\"}','jwplayer',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(48,'social_facebook_app_id','Facebook App ID','social_facebook_app_id',NULL,'{\"name\":\"value\",\"type\":\"text\"}','others',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(49,'site_scripts_facebook_sdk','Facebook JS SDK script tag','site_scripts_facebook_sdk',NULL,'{\"name\":\"value\",\"type\":\"code\"}','others',0,'2024-10-15 00:41:36','2024-10-15 00:41:36'),
(50,'site_scripts_google_analytics','Google analytics script tag','site_scripts_google_analytics',NULL,'{\"name\":\"value\",\"type\":\"code\"}','others',0,'2025-03-07 01:18:20','2025-03-07 01:18:20'),
(51,'hacoidev/ophim-crawler.options','Options',NULL,NULL,'{\"name\":\"value\",\"0\":\"type\",\"1\":\"hidden\"}','crawler',0,'2024-10-15 21:28:39','2024-10-15 21:28:39'),
(52,'khophim8k/khophim8k-crawler.options','Options',NULL,'{\"domain\":\"https:\\/\\/xxvnapi.com\\/\",\"download_image\":\"1\",\"should_resize_thumb\":\"0\",\"resize_thumb_width\":\"200\",\"resize_thumb_height\":null,\"should_resize_poster\":\"0\",\"resize_poster_width\":\"300\",\"resize_poster_height\":null,\"crawler_schedule_enable\":\"0\",\"crawler_schedule_page_from\":\"1\",\"crawler_schedule_page_to\":\"2\",\"crawler_schedule_cron_config\":\"* * * * *\",\"crawler_schedule_excludedType\":null,\"crawler_schedule_excludedCategories\":null,\"crawler_schedule_excludedRegions\":null,\"crawler_schedule_fields\":[\"episodes\",\"status\",\"episode_time\",\"episode_current\",\"episode_total\",\"name\",\"origin_name\",\"content\",\"thumb_url\",\"poster_url\",\"trailer_url\",\"quality\",\"language\",\"notify\",\"showtimes\",\"publish_year\",\"is_copyright\",\"type\",\"is_shown_in_theater\",\"actors\",\"directors\",\"categories\",\"regions\",\"tags\",\"studios\"]}','{\"name\":\"value\",\"0\":\"type\",\"1\":\"hidden\"}','crawler',0,'2024-10-16 00:25:16','2024-12-09 00:24:12'),
(53,'khophim8k/khophim8k-crawler-fakerview.options','Options',NULL,'{\"domain\":\"https:\\/\\/xxvnapi.com\\/\",\"download_image\":\"1\",\"should_resize_thumb\":\"0\",\"resize_thumb_width\":\"200\",\"resize_thumb_height\":null,\"should_resize_poster\":\"0\",\"resize_poster_width\":\"300\",\"resize_poster_height\":null,\"crawler_schedule_enable\":\"0\",\"crawler_schedule_page_from\":\"1\",\"crawler_schedule_page_to\":\"2\",\"crawler_schedule_cron_config\":\"* * * * *\",\"crawler_schedule_excludedType\":null,\"crawler_schedule_excludedCategories\":null,\"crawler_schedule_excludedRegions\":null,\"crawler_schedule_fields\":[\"episodes\",\"status\",\"episode_time\",\"episode_current\",\"episode_total\",\"name\",\"origin_name\",\"content\",\"thumb_url\",\"poster_url\",\"trailer_url\",\"quality\",\"language\",\"notify\",\"showtimes\",\"publish_year\",\"is_copyright\",\"type\",\"is_shown_in_theater\",\"actors\",\"directors\",\"categories\",\"regions\",\"tags\",\"studios\"]}','{\"name\":\"value\",\"0\":\"type\",\"1\":\"hidden\"}','crawler',0,'2025-01-13 06:16:40','2025-03-10 12:18:04');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studios`
--

DROP TABLE IF EXISTS `studios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_md5` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumb_url` varchar(2048) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_des` varchar(255) DEFAULT NULL,
  `seo_key` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `studios_name_md5_unique` (`name_md5`),
  KEY `studios_slug_index` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studios`
--

LOCK TABLES `studios` WRITE;
/*!40000 ALTER TABLE `studios` DISABLE KEYS */;
/*!40000 ALTER TABLE `studios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_md5` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_des` varchar(255) DEFAULT NULL,
  `seo_key` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_md5_unique` (`name_md5`),
  KEY `tags_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `preview_image` varchar(255) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `themes_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES
(1,'vlxx','Theme VLXX','','kho8k@gmail.com','kho8k/theme-vlxx8k',NULL,0,'2025-03-07 01:27:58','2025-03-10 04:32:00'),
(2,'missav','MissAV','','kho8k@gmail.com','kho8k/theme-missav','{\"recommendations_limit\":10,\"per_page_limit\":20,\"movie_related_limit\":10,\"latest\":\"Phim sex Hot||is_copyright|0|8|\\/danh-sach\\/phim-hot\\r\\nJAV HD|categories|slug|jav-hd|12|\\/the-loai\\/jav-hd\\r\\nPhim sex v\\u1ee5ng tr\\u1ed9m|categories|slug|vung-trom|8|\\/the-loai\\/vung-trom\\r\\nPhim sex kh\\u00f4ng che|categories|slug|av-khong-che|12|\\/the-loai\\/av-khong-che\\r\\nM\\u1ef9-Ch\\u00e2u \\u00c2u|regions|slug|trung-quoc|8|\\/quoc-gia\\/chau-au\",\"hotest\":\"\",\"additional_css\":\"<style>img.logoiframe {width: 15%;position: absolute;top: 2%;left: 3%;background-color: #00000010;z-index: 100;}<\\/style>\",\"body_attributes\":\"class=\'bg-[#1a1a1a] font-sans leading-normal tracking-normal\'\",\"additional_header_js\":\"\",\"additional_body_js\":\"<script>\\n    document.addEventListener(\\\"DOMContentLoaded\\\", function() {\\n        setTimeout(function() {\\n            var playerDiv = document.getElementById(\\\"player-wrapper\\\");\\n\\n            if (playerDiv) {\\n                var imgElement = document.createElement(\\\"img\\\");\\n                imgElement.src = \\\"\\/storage\\/images\\/logovl.png\\\";  \\/\\/ \\u0110\\u01b0\\u1eddng d\\u1eabn h\\u00ecnh \\u1ea3nh\\n                imgElement.alt = \\\"logo\\\";  \\/\\/ Thu\\u1ed9c t\\u00ednh alt c\\u1ee7a \\u1ea3nh\\n                imgElement.className = \\\"logoiframe\\\";  \\/\\/ Th\\u00eam class \'logoiframe\'\\n                playerDiv.appendChild(imgElement);\\n            }\\n        }, 500); \\/\\/ Ch\\u1edd 1 gi\\u00e2y sau khi script tr\\u01b0\\u1edbc \\u0111\\u00e3 th\\u1ef1c thi\\n    });\\n<\\/script>\\n<script>\\nvar catfishDiv = `<div class=\\\"custom-banner-video\\\">\\n                        <div class=\\\"banner-ads\\\">\\n                        <\\/div>\\n                    <\\/div>\\n                    <style>\\n                    .custom-banner-video {\\n                        text-align: center;\\n                        margin: 5px;\\n                    }\\n                    <\\/style>\\n                    `;\\n                    var headerDiv = `\\n                    <div class=\\\"custom-banner-video\\\">\\n                        <div class=\\\"banner-ads\\\">\\n                        <\\/div>\\n                    <\\/div>\\n                    <style>\\n                    .custom-banner-video {\\n                        text-align: center;\\n                        margin: 5px;\\n                    }\\n\\n                    <\\/style>`;\\n\\nvar targetBottomElement = document.querySelector(\\\".h-content\\\");\\nvar targetTopElement = document.querySelector(\\\".h-content\\\");\\nif (targetBottomElement) {\\n    targetBottomElement.insertAdjacentHTML(\\\"beforeend\\\", catfishDiv);\\n}\\nif (targetTopElement) {\\n    targetTopElement.insertAdjacentHTML(\\\"afterbegin\\\", headerDiv);\\n}\\n<\\/script>\",\"additional_footer_js\":\"\",\"footer\":\"<div class=\\\"xl:grid xl:grid-cols-3 xl:gap-8\\\">\\n    <div class=\\\"space-y-4 xl:col-span-1\\\">\\n        <a class=\\\"text-4xl leading-normal\\\" href=\\\"#\\\">\\n            <img src=\\\"\\\" alt=\\\"logo\\\" loading=\\\"lazy\\\" class=\\\"logo-footer\\\">\\n        <\\/a>\\n        <p class=\\\"text-gray-500 text-base\\\">\\n            H\\u00e3y \\u0111\\u1ea3m b\\u1ea3o r\\u1eb1ng b\\u1ea1n \\u0111\\u00e3 \\u0111\\u1ee7 18+ tu\\u1ed5i khi xem Phim sex t\\u1ea1i T\\u00ean Website. Ch\\u00fang t\\u00f4i s\\u1ebd kh\\u00f4ng ch\\u1ecbu b\\u1ea5t c\\u1ee9 tr\\u00e1nh nhi\\u1ec7m n\\u00e0o n\\u1ebfu b\\u1ea1n nh\\u1ecf h\\u01a1n 18 tu\\u1ed5i m\\u00e0 v\\u1eabn xem phim ng\\u01b0\\u1eddi l\\u1edbn.\\n            T\\u1ea5t c\\u1ea3 n\\u1ed9i dung phim \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c d\\u00e0n d\\u1ef1ng t\\u1eeb tr\\u01b0\\u1edbc, kh\\u00f4ng c\\u00f3 th\\u1eadt, ng\\u01b0\\u1eddi xem tuy\\u1ec7t \\u0111\\u1ed1i kh\\u00f4ng b\\u1eaft ch\\u01b0\\u1edbc h\\u00e0nh \\u0111\\u1ed9ng trong phim, tr\\u00e1nh vi ph\\u1ea1m ph\\u00e1p lu\\u1eadt.\\n        <\\/p>\\n        <div id=\\\"inpage\\\" class=\\\"text-gray-900\\\"><\\/div>\\n    <\\/div>\\n    <div class=\\\"grid grid-cols-2 gap-8 xl:mt-0 xl:col-span-2\\\">\\n        <div class=\\\"md:grid md:grid-cols-2 md:gap-8\\\">\\n            <div>\\n                <h3 class=\\\"text-sm font-semibold text-gray-400 tracking-wider uppercase\\\">Video<\\/h3>\\n                <ul class=\\\"mt-4 space-y-4\\\">\\n                    <li>\\n                        <a href=\\\"\\/the-loai\\/jav-hd\\\" class=\\\"text-base text-gray-500 hover:text-primary\\\">JAV HD<\\/a>\\n                    <\\/li>\\n                    <li>\\n                        <a href=\\\"\\/the-loai\\/av-khong-che\\\" class=\\\"text-base text-gray-500 hover:text-primary\\\">\\n                            AV Kh\\u00f4ng Che\\n                        <\\/a>\\n                    <\\/li>\\n                    <li>\\n                        <a href=\\\"\\/the-loai\\/vung-trom\\\" class=\\\"text-base text-gray-500 hover:text-primary\\\">\\n                            V\\u1ee5ng tr\\u1ed9m\\n                        <\\/a>\\n                    <\\/li>\\n                <\\/ul>\\n            <\\/div>\\n            <div class=\\\"md:mt-0 mt-12 \\\">\\n                <h3 class=\\\"text-sm font-semibold text-gray-400 tracking-wider uppercase\\\">Qu\\u1ed1c Gia<\\/h3>\\n                <ul class=\\\"mt-4 space-y-4\\\">\\n                    <li>\\n                        <a href=\\\"\\/quoc-gia\\/nhat-ban\\\" class=\\\"text-base text-gray-500 hover:text-primary\\\">Nh\\u1eadt B\\u1ea3n<\\/a>\\n                    <\\/li>\\n                    <li>\\n                        <a href=\\\"\\/quoc-gia\\/chau-au\\\" class=\\\"text-base text-gray-500 hover:text-primary\\\">\\n                            Ch\\u00e2u \\u00c2u\\n                        <\\/a>\\n                    <\\/li>\\n                    <li>\\n                        <a href=\\\"\\/quoc-gia\\/trung-quoc\\\" class=\\\"text-base text-gray-500 hover:text-primary\\\">\\n                            Trung Qu\\u1ed1c\\n                        <\\/a>\\n                    <\\/li>\\n                <\\/ul>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"md:grid md:grid-cols-2 md:gap-8\\\">\\n            <div>\\n                <h3 class=\\\"text-sm font-semibold text-gray-400 tracking-wider uppercase\\\">\\n                    li\\u00ean k\\u1ebft\\n                <\\/h3>\\n                <ul class=\\\"mt-4 space-y-4\\\">\\n\\n                    <li>\\n                        <a href=\\\"https:\\/\\/t.me\\/quinzz99\\\" class=\\\"text-base text-gray-500 hover:text-primary\\\">\\n                            Y\\u00eau c\\u1ea7u qu\\u1ea3ng c\\u00e1o\\n                        <\\/a>\\n                    <\\/li>\\n\\n                <\\/ul>\\n            <\\/div>\\n\\n        <\\/div>\\n    <\\/div>\\n<\\/div>\\n<div class=\\\"mt-12 border-t border-gray-700 pt-8\\\">\\n    <p class=\\\"flex justify-center items-center text-base text-gray-400 xl:text-center\\\">\\n        <a href=\\\"#\\\">\\u00a9 2024<\\/a>\\n        <a class=\\\"ml-1 align-middle text-lg\\\" href=\\\"\\/\\\"><span style=\\\"visibility: visible;\\\" class=\\\"font-serif\\\"><span class=\\\"text-zinc-50\\\">T\\u00ean<\\/span><span class=\\\"text-primary\\\">Website<\\/span><\\/span>\\n        <\\/a>\\n    <\\/p>\\n<\\/div>\",\"ads_header\":\"<img src=\\\"\\\" alt=\\\"\\\">\",\"ads_catfish\":\"<img src=\\\"\\\" alt=\\\"\\\">\"}',1,'2025-03-10 04:31:54','2025-03-10 06:55:34');
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'dev','dev@gmail.com',NULL,'$2y$10$RbpNSm03.bzI5tXslNBt5uZgZa6BWhDNe4zhqqvsMNNfs72KEKvYu',NULL,'2025-03-07 01:24:11','2025-03-07 01:24:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sql_loclip69_com'
--

--
-- Dumping routines for database 'sql_loclip69_com'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-01  1:30:11
