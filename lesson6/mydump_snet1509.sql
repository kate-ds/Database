-- MySQL dump 10.13  Distrib 8.0.21, for osx10.14 (x86_64)
--
-- Host: localhost    Database: snet1509
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `body` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'Natus eius blanditiis praesentium suscipit rerum. Ab quidem consectetur eius. Id vel dolor accusamus aut dolore. Tenetur consectetur perspiciatis porro in laboriosam illo.','1988-06-17 20:44:30','1985-07-22 08:21:33'),(2,2,2,'Nam eos at consequuntur aliquam deleniti quae velit. Dolorem asperiores officia rem commodi dolorem deleniti nisi. A non est aut quisquam velit.','2016-04-02 13:48:45','2006-09-15 12:55:43'),(3,3,3,'Aut animi qui sequi corrupti. Molestias rerum autem unde tempore quia quis doloribus. Facilis doloremque ad id omnis incidunt et quisquam. Aliquam commodi exercitationem velit dolor a aut ut.','1992-05-30 21:34:39','1982-07-31 17:02:30'),(4,4,4,'Et maxime dolores exercitationem eligendi cum accusantium. Itaque dolorum quia accusamus sunt. Ipsam mollitia corporis id quis est. Et esse eos et placeat autem nihil ipsam. Accusamus doloremque ex ipsa veritatis at qui aut.','2007-03-11 22:16:51','1982-11-01 18:14:55'),(5,5,5,'Iusto rerum necessitatibus corrupti esse cumque distinctio quis numquam. Vel expedita cum rem blanditiis autem. Ut vel commodi provident quia. Sit non eos commodi autem aut doloribus.','2014-09-09 10:48:25','2019-11-05 12:29:42'),(6,6,6,'Iste reiciendis hic repudiandae animi iusto. Est enim et rem reiciendis maiores. Magni consequatur omnis aut totam libero. Dolorem deserunt laudantium perspiciatis occaecati.','2007-09-01 03:33:40','1998-03-25 08:39:35'),(7,7,7,'Molestiae maiores expedita quae cum. Sapiente laborum praesentium itaque fugit. Error quod velit id.','1992-11-15 18:34:57','1987-04-23 10:47:52'),(8,8,8,'Animi rerum cupiditate fugit temporibus. Dolore fugit recusandae nam modi vero dolorem. Ab aut dolore sunt nemo perspiciatis illum officiis ducimus.','1991-09-04 04:18:09','1971-05-16 17:14:38'),(9,9,9,'Eos praesentium quas soluta. Esse autem quos neque et aut impedit aut. Sit mollitia et debitis alias. Et quia sequi eaque veniam.','2000-02-19 10:30:11','1986-07-01 03:50:53'),(10,10,10,'Quae odit aliquam quod eum itaque. Laboriosam assumenda tempore accusamus.','2010-06-04 16:38:32','2004-06-09 08:53:18'),(11,11,11,'Ut est dicta adipisci sed reiciendis voluptatem quo. Consequatur quia praesentium vel et occaecati. Aut dolorem quia eaque voluptatem autem sapiente.','1974-10-02 04:28:57','1993-07-14 02:31:28'),(12,12,12,'Ex temporibus consectetur saepe vel. Est quos in et nihil animi. Incidunt odit molestiae vitae. Reiciendis sit aut ut corrupti non quis perferendis.','1990-06-05 23:26:26','2017-08-17 23:08:39'),(13,13,13,'Voluptate unde reprehenderit error. Aliquam est praesentium optio alias. Dicta officiis culpa numquam sit sit.','1976-04-26 07:20:11','1974-09-19 05:41:23'),(14,14,14,'Quo omnis sunt et amet qui. At repellat voluptates et sint. Dolores sequi est omnis eum enim eos beatae ut.','1994-07-12 05:23:50','2016-11-16 18:42:58'),(15,15,15,'At et ut voluptatem minus et. Qui exercitationem ipsum earum optio labore nemo. Ut cum doloribus aliquid harum qui atque quam. Quia quia doloribus et saepe et.','1985-09-21 01:27:40','2010-07-01 18:54:43'),(16,16,16,'Qui velit repellat quaerat animi dolores repellendus accusantium. Quibusdam reprehenderit itaque cumque. Reprehenderit eos quidem maxime sit qui non quasi.','1984-02-25 19:27:45','2009-09-17 18:36:19');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `communities_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (36,'Audi'),(27,'BMW'),(4,'Cadillac'),(7,'Chevrolet'),(16,'Chevrolet'),(19,'Chevrolet'),(23,'Chevrolet'),(29,'Chevrolet'),(33,'Chevrolet'),(43,'Chevrolet'),(50,'Chevrolet'),(8,'Chrysler'),(49,'Chrysler'),(14,'Dodge'),(3,'Ford'),(12,'Ford'),(31,'Ford'),(35,'Ford'),(11,'GMC'),(47,'GMC'),(41,'Honda'),(46,'Hummer'),(28,'Hyundai'),(18,'Infiniti'),(42,'Jaguar'),(6,'Jeep'),(40,'Lamborghini'),(1,'Lexus'),(34,'Lincoln'),(21,'Mazda'),(5,'Mercedes-Benz'),(17,'Mercedes-Benz'),(39,'Mercedes-Benz'),(2,'MINI'),(24,'Mitsubishi'),(13,'Nissan'),(25,'Nissan'),(26,'Nissan'),(38,'Plymouth'),(20,'Pontiac'),(32,'Pontiac'),(45,'Saturn'),(9,'Toyota'),(10,'Toyota'),(15,'Toyota'),(22,'Toyota'),(37,'Toyota'),(44,'Toyota'),(30,'Volkswagen'),(48,'Volkswagen');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint unsigned NOT NULL,
  `target_user_id` bigint unsigned NOT NULL,
  `status` enum('requested','approved','unfriended','declined') DEFAULT 'requested',
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`initiator_user_id`),
  KEY `initiator_user_id` (`initiator_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
INSERT INTO `friend_requests` VALUES (1,5,'approved','2017-06-16 17:04:46','1998-07-03 04:03:47'),(2,2,'unfriended','1981-10-02 18:05:50','1997-04-21 22:40:05'),(3,3,'unfriended','2016-06-19 08:30:46','1992-03-08 13:01:42'),(4,4,'unfriended','2011-09-27 21:32:13','2000-08-14 17:35:08'),(5,5,'unfriended','2015-09-13 23:31:01','1972-09-23 10:47:42'),(6,6,'declined','1998-06-12 16:13:52','1988-01-25 14:39:34'),(7,7,'approved','1987-10-22 07:41:54','1989-11-19 13:55:07'),(8,8,'approved','2016-09-16 14:08:03','1999-04-02 17:44:45'),(9,9,'requested','1979-05-27 11:52:26','2004-08-04 03:21:51'),(10,10,'requested','1991-06-01 16:26:08','1980-09-13 19:27:05'),(11,11,'requested','2019-01-30 11:02:53','1992-03-12 21:47:01'),(12,12,'unfriended','1991-09-09 23:06:07','1998-05-08 16:01:29'),(13,13,'unfriended','1986-02-01 05:50:03','1977-06-18 05:25:01'),(14,5,'approved','1990-09-14 23:46:52','1974-11-02 22:31:12'),(15,15,'unfriended','1976-11-23 20:47:44','2013-01-22 01:17:10'),(16,16,'unfriended','2001-11-24 14:51:07','2020-07-15 09:37:33'),(17,17,'unfriended','1990-11-24 10:48:31','1997-06-11 22:33:07'),(18,18,'unfriended','1984-01-11 12:19:47','2005-05-02 23:33:24'),(19,5,'approved','2014-07-08 23:29:01','2008-06-24 08:19:19'),(20,20,'declined','1995-05-20 16:27:37','2005-01-28 04:33:43');
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint unsigned NOT NULL,
  `to_post_id` bigint unsigned NOT NULL,
  `to_photo_id` bigint unsigned NOT NULL,
  `to_user_id` bigint unsigned NOT NULL,
  `to_comment_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `to_post_id` (`to_post_id`),
  KEY `to_photo_id` (`to_photo_id`),
  KEY `to_user_id` (`to_user_id`),
  KEY `to_comment_id` (`to_comment_id`),
  KEY `like_post_idx` (`from_user_id`,`to_post_id`),
  KEY `like_photo_idx` (`from_user_id`,`to_photo_id`),
  KEY `like_user_idx` (`from_user_id`,`to_user_id`),
  KEY `like_comment_idx` (`from_user_id`,`to_comment_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`to_post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`to_photo_id`) REFERENCES `photos` (`id`),
  CONSTRAINT `likes_ibfk_4` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_ibfk_5` FOREIGN KEY (`to_comment_id`) REFERENCES `comments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,1,1,1,1),(2,2,2,2,2,2),(3,3,3,3,3,3),(4,4,4,4,4,4),(5,5,5,5,5,5),(6,6,6,6,6,6),(7,7,7,7,7,7),(8,8,8,8,8,8),(9,9,9,9,9,9),(10,10,10,10,10,10),(11,11,11,11,11,11),(12,12,12,12,12,12),(13,13,13,13,13,13),(14,14,14,14,14,14);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_to_comment`
--

DROP TABLE IF EXISTS `likes_to_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_to_comment` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint unsigned NOT NULL,
  `to_comment_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `to_comment_id` (`to_comment_id`),
  KEY `like_comment_idx` (`from_user_id`,`to_comment_id`),
  CONSTRAINT `likes_to_comment_ibfk_1` FOREIGN KEY (`to_comment_id`) REFERENCES `comments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_to_comment`
--

LOCK TABLES `likes_to_comment` WRITE;
/*!40000 ALTER TABLE `likes_to_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes_to_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_to_photo`
--

DROP TABLE IF EXISTS `likes_to_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_to_photo` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint unsigned NOT NULL,
  `to_photo_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `to_photo_id` (`to_photo_id`),
  KEY `like_photo_idx` (`from_user_id`,`to_photo_id`),
  CONSTRAINT `likes_to_photo_ibfk_1` FOREIGN KEY (`to_photo_id`) REFERENCES `photos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_to_photo`
--

LOCK TABLES `likes_to_photo` WRITE;
/*!40000 ALTER TABLE `likes_to_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes_to_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_to_post`
--

DROP TABLE IF EXISTS `likes_to_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_to_post` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint unsigned NOT NULL,
  `to_post_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `to_post_id` (`to_post_id`),
  KEY `like_post_idx` (`from_user_id`,`to_post_id`),
  CONSTRAINT `likes_to_post_ibfk_1` FOREIGN KEY (`to_post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_to_post`
--

LOCK TABLES `likes_to_post` WRITE;
/*!40000 ALTER TABLE `likes_to_post` DISABLE KEYS */;
INSERT INTO `likes_to_post` VALUES (1,1,68),(3,2,23),(5,5,10),(2,5,68),(6,6,99),(7,7,10),(8,8,73),(4,9,48);
/*!40000 ALTER TABLE `likes_to_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint unsigned NOT NULL,
  `to_user_id` bigint unsigned NOT NULL,
  `body` text,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,19,1,'Et similique ratione eum et dolorum ex similique. Dolor quia vel vitae quia et. Nisi tempora aliquam temporibus est possimus non architecto. Voluptatem et labore minus placeat repellat sunt laborum voluptates.',0,'2010-06-10 09:45:38'),(2,19,2,'Enim iure ut dolor et officiis non voluptatem. Corporis non eligendi eum et voluptas et. Accusamus aspernatur odit non qui illo.',1,'1985-04-13 08:32:54'),(3,3,1,'Repudiandae sint ut et et. Fugiat optio iure molestiae nihil sint et ratione voluptatem. Velit pariatur et et suscipit. Corrupti qui asperiores repellat dolor repellat repudiandae et. Minus illo quis officia cum quod sunt dolorum.',0,'2010-11-05 23:44:26'),(4,4,1,'Delectus harum voluptates ut explicabo. Qui molestias dignissimos doloribus velit culpa maiores nihil. Sapiente ex sint nihil fuga et exercitationem illum.',1,'1992-08-26 02:37:11'),(5,19,5,'Rerum adipisci veritatis consequatur necessitatibus beatae. Vel laboriosam delectus in. Aut et ab eum possimus adipisci. Esse dolores et enim ea. Reprehenderit nisi nobis dolor qui.',1,'1997-06-25 20:47:26'),(6,19,5,'Molestiae eos error voluptatem aut ut quos totam. Molestiae quibusdam consectetur dolore saepe dolores quas consectetur temporibus. Odio in illo neque deserunt officia provident voluptatem. Consequuntur repudiandae quis rerum.',0,'2012-06-22 09:11:30'),(7,2,7,'Deserunt iste distinctio similique sequi. Id facere sed autem sed. Sed quo voluptatem ad non. Repellat autem magni id modi fugit iste facere.',1,'1987-01-20 02:44:38'),(8,19,5,'Corporis sed non quam id sint quidem. Dignissimos sint eum voluptates accusantium itaque beatae id.',0,'1978-04-21 02:14:41'),(9,2,9,'Unde esse dolor consequatur dolores velit nemo ab. Maxime quo quia quos modi maxime et. Qui ea voluptas nostrum vero corporis labore. Enim quia totam pariatur nostrum porro earum qui itaque.',0,'1989-01-22 11:45:41'),(10,19,10,'Dignissimos excepturi voluptatum dolores molestiae. A dicta nihil magnam perferendis dignissimos. Non sed eos ullam aut amet aut eligendi. Nemo in nesciunt molestias ut quos id. Mollitia vitae distinctio ad facilis voluptas a iusto.',0,'1978-06-14 16:05:29'),(11,19,5,'Aut pariatur culpa ex accusantium libero nam voluptas. Deleniti sint repudiandae odit ut. Velit facere id perspiciatis. Sequi minima vel quia.',1,'1976-04-23 01:51:31'),(12,19,12,'Molestiae ea nulla enim maiores. Laudantium nemo est voluptas ratione. Accusamus quaerat molestias omnis illum minus. Ut quo temporibus culpa voluptas voluptas eos pariatur.',1,'1978-02-03 00:43:33'),(13,13,5,'Omnis maxime eaque repellat molestiae. Possimus harum aut aut doloremque doloremque. Neque autem facilis occaecati provident. Quos nostrum ipsa aliquid magni.',1,'1993-03-27 03:27:33'),(14,14,14,'Voluptas error et optio assumenda quas tenetur. Perspiciatis sint quia debitis veniam est.',0,'1971-06-16 23:51:57'),(15,15,5,'In et ratione quos eligendi perspiciatis. Dolores veritatis sapiente sunt. Ea velit odio mollitia in et. In voluptatem non quia facilis porro corrupti.',0,'2014-05-22 14:25:20'),(16,16,5,'Dolorum occaecati aliquid minus non. Blanditiis voluptatem voluptatibus vero iure. Itaque aut porro ex iusto ducimus.',0,'2012-04-21 01:26:52'),(17,17,17,'Blanditiis unde et sed esse magni iure alias. Blanditiis corporis voluptatem nostrum nulla. Iste fugit quisquam eum rerum voluptate. Dolorem velit fuga neque qui.',0,'1976-12-28 23:29:09');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `description` text,
  `filename` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,1,'Mollitia non dolores blanditiis ullam. Ut iusto non magnam. Quia est tempore excepturi fugiat provident et.','http://lorempixel.com/640/480/'),(2,2,'Repudiandae ipsam sint corrupti vero animi modi. Quaerat libero natus odio eligendi voluptas voluptatem. Iste assumenda sed rerum corporis.','http://lorempixel.com/640/480/'),(3,3,'Iure sit adipisci non cumque. Fugiat quasi perferendis magnam maxime maxime. Iure tempora a vel tempore dignissimos pariatur. Explicabo ut non qui iusto quia.','http://lorempixel.com/640/480/'),(4,4,'Voluptate et qui tenetur expedita aliquam ducimus iusto aspernatur. Incidunt commodi et numquam explicabo. Labore hic voluptatem nam sint voluptas exercitationem est illo. Quae dolores unde velit tenetur mollitia beatae.','http://lorempixel.com/640/480/'),(5,5,'Sint esse perferendis fuga aut dignissimos. Reiciendis reprehenderit sapiente nemo cupiditate. Inventore qui reprehenderit nostrum quo omnis qui voluptatem. Sequi aspernatur non ipsum itaque assumenda et.','http://lorempixel.com/640/480/'),(6,6,'Non sequi deleniti nulla qui molestiae dolores. Earum adipisci deserunt et ut. Cumque nulla eveniet animi velit omnis. Eum expedita occaecati eveniet consequatur.','http://lorempixel.com/640/480/'),(7,7,'Ut voluptatibus cupiditate quia architecto minima. Ut maxime debitis natus similique praesentium odio distinctio. Ut fugit doloremque fugit animi quo laboriosam neque.','http://lorempixel.com/640/480/'),(8,8,'Omnis optio rerum id sit. Aliquam itaque architecto saepe quam. Qui et suscipit quis et fugiat quia rerum. Dignissimos nostrum eos eaque quae et nisi.','http://lorempixel.com/640/480/'),(9,9,'Natus iste perferendis qui sequi exercitationem occaecati. Aut incidunt odit accusantium quos. Vel architecto voluptatem enim officiis. Enim ut distinctio molestiae numquam. Omnis saepe corrupti qui magnam architecto facilis quis nesciunt.','http://lorempixel.com/640/480/'),(10,10,'Ut facere deserunt et. Recusandae nulla minus accusamus laudantium. Vero et rerum quaerat error est vel ullam doloremque.','http://lorempixel.com/640/480/'),(11,11,'Voluptatibus porro nemo eveniet ut recusandae. Esse eaque earum eligendi. Id quis velit ex laudantium. Sunt omnis harum provident.','http://lorempixel.com/640/480/'),(12,12,'Eligendi ut distinctio quia quisquam aut. Est unde voluptatem inventore occaecati. Tempore sapiente dolorum sit doloremque nostrum fuga sed. Consequatur et quam repudiandae.','http://lorempixel.com/640/480/'),(13,13,'Qui dicta et nihil omnis. Vel consequuntur molestiae magnam accusamus molestiae. Commodi maiores natus rerum non in. Quaerat eligendi non sed officia voluptatibus iste. Distinctio provident et dolores ut asperiores accusantium.','http://lorempixel.com/640/480/'),(14,14,'Quidem tenetur sit nulla. Ex dolorem veritatis architecto iste et. Sit magnam et aperiam ratione molestias praesentium ipsum. Esse laborum et quia praesentium et.','http://lorempixel.com/640/480/'),(15,15,'Beatae exercitationem eos libero hic. Est sapiente sint dolorem optio quia dolore corporis. Eos ut similique aut harum placeat dolore quidem.','http://lorempixel.com/640/480/'),(16,16,'Neque qui enim veniam impedit similique. Commodi id nisi accusamus est sed est minima nam. Repellendus non cupiditate qui perferendis saepe qui. Suscipit facere molestiae reprehenderit et impedit.','http://lorempixel.com/640/480/'),(17,17,'Velit est aut occaecati ut aut. Eum voluptate maxime tempora quia enim impedit quae natus. Et aperiam nostrum eos. Minima soluta vitae laborum natus possimus in repellat.','http://lorempixel.com/640/480/'),(18,18,'Quo sint vero et ullam totam sint numquam. Natus fuga repudiandae eaque nihil mollitia. Veritatis ut et et natus dolorum. Dolores temporibus quis voluptate beatae quia.','http://lorempixel.com/640/480/'),(19,19,'Quis est provident ipsum sit. Enim quaerat expedita optio debitis et dolor soluta at. Unde a magnam consequatur aut eos.','http://lorempixel.com/640/480/'),(20,20,'Exercitationem reprehenderit non ducimus dolores cum voluptas quae. Praesentium eius culpa quis dolore necessitatibus est. Est excepturi dolor officiis recusandae corrupti autem est. Nulla rem omnis aut enim fugiat.','http://lorempixel.com/640/480/'),(21,21,'Impedit repudiandae nostrum et odio eligendi soluta unde. Et aut fuga alias veniam. Nostrum et nulla ut qui. Provident optio sed illum laudantium aut. Iste corrupti sapiente necessitatibus.','http://lorempixel.com/640/480/'),(22,22,'Repellat id dolor cumque veniam ut suscipit laborum soluta. Soluta et vel recusandae vel. Laboriosam reiciendis magnam ut nulla.','http://lorempixel.com/640/480/'),(23,23,'Expedita vero consequatur unde dignissimos in delectus. Cum aut magnam odit dolores enim. Eveniet sapiente sed possimus sit et praesentium ut qui. Consequatur eos saepe molestiae vel non atque.','http://lorempixel.com/640/480/'),(24,24,'Aut quam amet sit illum. Nulla magnam aperiam fuga labore eum nihil. Quis sit tenetur tempora incidunt est quae qui voluptatem. Ut repellat dignissimos natus vel similique omnis nostrum. Magnam blanditiis tenetur magnam et voluptas qui aut sit.','http://lorempixel.com/640/480/'),(25,25,'Consectetur enim molestias autem ratione aspernatur et rerum. Nam nulla consectetur distinctio. Sed et quasi accusantium quis. Iusto molestiae dolor hic inventore quia nemo.','http://lorempixel.com/640/480/'),(26,26,'Quaerat voluptatem blanditiis deleniti quia ut magnam aspernatur earum. Amet officiis quibusdam praesentium. Autem est et incidunt est ratione accusantium vel. Eum rerum ut vel occaecati.','http://lorempixel.com/640/480/'),(27,27,'Recusandae sit molestiae atque minima sunt corrupti quaerat. Rerum dicta eos deleniti voluptatibus. Ut sunt sequi eos. Dolorem magni minus sit ab.','http://lorempixel.com/640/480/'),(28,28,'Molestias est quis culpa qui. Omnis vitae itaque suscipit nesciunt laboriosam tenetur ut.','http://lorempixel.com/640/480/'),(29,29,'Repellendus temporibus ut et inventore quo omnis assumenda. Rem nam autem consequatur voluptate magnam dolorem. Molestiae numquam quos consequatur cum ex corrupti ab. Quidem sunt rem sint incidunt.','http://lorempixel.com/640/480/'),(30,30,'Autem optio laborum ut blanditiis repellendus dolores libero hic. Distinctio voluptatibus quod unde. Dolor voluptates amet repellendus ipsam. Inventore hic reprehenderit suscipit suscipit molestiae ipsam similique. Perferendis natus sit incidunt voluptatibus eos ducimus rem at.','http://lorempixel.com/640/480/'),(31,31,'Quam quo corporis voluptates molestiae sit. Quaerat tenetur et suscipit nam in ad natus. Sint dolorum quidem alias ut ducimus iste.','http://lorempixel.com/640/480/'),(32,32,'Dolorem velit molestias nihil blanditiis. Dolore dolorum magnam sit aut rerum. Repellendus dolor et suscipit distinctio. Quam eos quia repudiandae. Sint quibusdam dolores vitae accusamus ab.','http://lorempixel.com/640/480/'),(33,33,'Et corporis voluptas sed sunt eius accusamus molestiae. Et dolore et quo ut minus quaerat. A eius dignissimos eveniet et modi voluptatum voluptas. Voluptatem possimus maiores magnam corrupti libero quaerat.','http://lorempixel.com/640/480/'),(34,34,'Quidem quod suscipit eos rerum ut consequatur et. Voluptatibus voluptatem fugiat iste praesentium quam nesciunt recusandae. Maxime quod nostrum deserunt labore atque labore non aut. Aut necessitatibus nulla rem reiciendis voluptas.','http://lorempixel.com/640/480/'),(35,35,'Dolores expedita occaecati vitae inventore. Fugit voluptates magni qui autem sunt. Praesentium ea quo odio dolorum necessitatibus veritatis explicabo.','http://lorempixel.com/640/480/'),(36,36,'Omnis esse alias recusandae molestiae facilis. Doloribus rerum cum placeat placeat odit rerum sed sint. Est ratione inventore ut non sequi similique. Exercitationem esse praesentium perferendis. Dolores qui autem sit ducimus quidem et quo.','http://lorempixel.com/640/480/'),(37,37,'Rerum temporibus et optio beatae. Sequi qui enim voluptatum voluptas est ipsum. Et vitae consequatur officia est. Sed autem quos veritatis amet natus sed culpa.','http://lorempixel.com/640/480/'),(38,38,'Quia voluptates minima et dignissimos necessitatibus itaque eum. Iure placeat ea aut maxime velit minus vel. Vitae eos ratione nihil perferendis quibusdam. Quis omnis tenetur aut voluptatem quia nisi sequi minima.','http://lorempixel.com/640/480/'),(39,39,'Quos eos doloribus ea ut vel vero veniam. Cumque quia quia blanditiis error in non.','http://lorempixel.com/640/480/'),(40,40,'Quo optio nihil officia distinctio. Quos qui sequi maxime provident aut. Dolores occaecati autem accusantium. Dolor blanditiis accusantium minus similique.','http://lorempixel.com/640/480/'),(41,41,'Omnis corporis facere repudiandae magnam. Facere animi quia aut sed quia possimus. Sint autem voluptas suscipit labore quia. Quis commodi perspiciatis qui sit aliquid. Sunt qui consequuntur porro voluptatem enim et.','http://lorempixel.com/640/480/'),(42,42,'Error et odio culpa et est et consequatur. Numquam ut vel voluptas rerum adipisci omnis sapiente occaecati. Ratione nobis vel velit voluptas. Eos labore est dicta repellendus voluptatem qui voluptatem est. Esse quis repudiandae et sequi ut temporibus.','http://lorempixel.com/640/480/'),(43,43,'Dolores rem animi amet sequi. Ut inventore voluptatibus aut voluptatem. Ut doloremque sed iste amet non.','http://lorempixel.com/640/480/'),(44,44,'Sed sed tenetur quibusdam sapiente ut tenetur consequatur. Provident sed est rerum illo ut. Id et facere et distinctio alias velit dolorem.','http://lorempixel.com/640/480/'),(45,45,'In magnam alias dolorem consequatur et. Aliquam ut rerum ut. Laborum quam deleniti ullam accusantium sit. Sapiente quidem at suscipit ex amet accusantium temporibus voluptas.','http://lorempixel.com/640/480/'),(46,46,'Soluta quam commodi praesentium ullam velit corporis sed. Non asperiores totam voluptate quos. Et aspernatur illum repellat asperiores quia.','http://lorempixel.com/640/480/'),(47,47,'Velit at dignissimos ipsum corporis harum quia. Sit laudantium consectetur nulla doloribus. In et rerum eum quam voluptatem.','http://lorempixel.com/640/480/'),(48,48,'Eligendi minima alias et ducimus ea ut est. Reiciendis aut totam dolores quae. Sit expedita nihil sint reiciendis ex sed. Dignissimos sint autem et sint.','http://lorempixel.com/640/480/'),(49,49,'Eum voluptas aut facilis architecto. Tempore deserunt quam quo quod praesentium eos.','http://lorempixel.com/640/480/'),(50,50,'Iste aut velit alias voluptates. Repellendus odio quisquam aperiam ipsa labore. Debitis sunt magnam qui placeat ratione tempora itaque quia. Ab occaecati libero necessitatibus saepe. Alias sint fuga beatae quia voluptate recusandae.','http://lorempixel.com/640/480/'),(51,51,'Autem aspernatur laborum qui saepe omnis et. Dolorem dolorem pariatur a. Saepe omnis ratione impedit consequatur quae porro eos. Deserunt provident consectetur quo tempore nam.','http://lorempixel.com/640/480/'),(52,52,'Placeat maiores perspiciatis dolorem velit quas. Harum possimus non est ut ea ab. Minus minus eveniet perferendis a nobis. Nostrum voluptatem sequi libero maiores.','http://lorempixel.com/640/480/'),(53,53,'Laudantium omnis cupiditate non hic suscipit possimus. Quasi sed iusto consequatur aut dignissimos. Nihil non aut quas aspernatur reprehenderit recusandae iste. Similique ipsa non dolorum et neque neque fugit. Nisi iste voluptas dolore praesentium asperiores.','http://lorempixel.com/640/480/'),(54,54,'Nulla velit eum impedit aut et eligendi aperiam. Consectetur ut sed velit rerum ut maiores. Enim qui accusantium sed ab. Veritatis veritatis accusamus natus modi nihil reiciendis.','http://lorempixel.com/640/480/'),(55,55,'Eius recusandae vel officia corrupti illo corrupti. Corporis quis et quis quam. Voluptatem vel velit dolores natus non quia consequatur consequuntur. Vero necessitatibus dolor qui non.','http://lorempixel.com/640/480/'),(56,56,'Neque quae illum accusamus non sunt error eligendi. Qui qui et provident officia nostrum. Repudiandae beatae laborum perferendis velit qui ut.','http://lorempixel.com/640/480/'),(57,57,'Expedita id occaecati eos asperiores. Qui non a est qui possimus sint velit. Id sed omnis accusantium cupiditate eveniet nam ab. Ab aut ipsam molestiae in aspernatur fugit.','http://lorempixel.com/640/480/'),(58,58,'Similique alias deleniti recusandae similique vero. Voluptatem deserunt ut omnis. Deleniti non eum corporis in possimus nisi quis.','http://lorempixel.com/640/480/'),(59,59,'Quod ipsa fuga molestiae alias animi officia. Modi fugiat architecto molestiae illo. Consectetur aut neque voluptatibus sequi eius officiis quis.','http://lorempixel.com/640/480/'),(60,60,'Ratione facilis quam et quisquam. Quae labore corrupti sit temporibus ut. Nulla sequi id aut fuga et possimus.','http://lorempixel.com/640/480/'),(61,61,'Quidem in nemo molestiae sit error fuga qui. Exercitationem quis molestias a asperiores. Temporibus quia voluptatibus ut assumenda asperiores. Iusto hic accusantium eum quidem repudiandae perferendis ratione ipsum.','http://lorempixel.com/640/480/'),(62,62,'Error accusantium officia tempora. Fuga omnis quidem reiciendis sit et dolorum iure. Debitis in nemo non soluta itaque. Aliquid iusto minus in consequatur in id. Nulla dicta porro harum repellat aut eaque molestiae.','http://lorempixel.com/640/480/'),(63,63,'Inventore est aut quo est harum. Optio sed porro accusamus maiores natus nobis.','http://lorempixel.com/640/480/'),(64,64,'Minus itaque minus dolores aut rerum. Nisi eius rerum sint. Porro placeat nulla ex sequi atque harum ut. Ut blanditiis rerum voluptas ea laboriosam inventore. Et vero quaerat doloremque itaque est ut.','http://lorempixel.com/640/480/'),(65,65,'Officia aliquid provident recusandae dolores qui ex. Inventore sunt aut ut occaecati et deleniti placeat a. Provident saepe sit rerum et eos deleniti ratione.','http://lorempixel.com/640/480/'),(66,66,'Iusto ratione eveniet ut sed nihil qui. Corporis culpa distinctio velit nemo quo.','http://lorempixel.com/640/480/'),(67,67,'Non non et veritatis ut ducimus iste. Excepturi pariatur vel blanditiis labore aliquam quia vero. Rerum tempore reprehenderit voluptas ratione eum et. Officia molestias aliquam expedita et aut.','http://lorempixel.com/640/480/'),(68,68,'Quis at corporis sed voluptatem. Voluptas dolor voluptate quos dicta consectetur ea. Consectetur aspernatur commodi libero commodi quasi.','http://lorempixel.com/640/480/'),(69,69,'Amet necessitatibus laboriosam harum quibusdam sit. Eos eius voluptas corporis aperiam. Perferendis animi sint nihil et asperiores accusamus a. Suscipit laboriosam in voluptatum eaque.','http://lorempixel.com/640/480/'),(70,70,'Nulla est ratione laborum unde quia. Ut aut fugiat est et. Aut nemo voluptatum recusandae eligendi nesciunt ea autem quisquam.','http://lorempixel.com/640/480/'),(71,71,'Provident sed sint nisi quae. Saepe id voluptatibus quos voluptatibus ut rerum expedita. Et voluptates quas nisi nam.','http://lorempixel.com/640/480/'),(72,72,'Illum iste repudiandae dolorem eaque molestias voluptas facilis. Nostrum sunt omnis unde rerum architecto voluptatum laboriosam iure. Consectetur tempora et molestiae rem est.','http://lorempixel.com/640/480/'),(73,73,'Nulla molestias sed saepe. Et quam fugiat magnam suscipit ut.','http://lorempixel.com/640/480/'),(74,74,'Eius veniam voluptatem sit libero maxime ducimus blanditiis fugiat. In laboriosam deserunt nisi delectus hic beatae. Reiciendis maiores ea cupiditate molestias porro distinctio quisquam. Eum rerum molestias doloremque sint omnis.','http://lorempixel.com/640/480/'),(75,75,'Repellat et officia asperiores debitis amet vel. Voluptas quae qui nostrum nam vero. Odit ipsam fugit nulla tenetur. Non numquam dicta consequatur ut vero qui.','http://lorempixel.com/640/480/'),(76,76,'Reiciendis cumque delectus ut sit pariatur veritatis alias velit. Deserunt dolor itaque et sunt dolores. Sunt eius expedita quisquam dolorum. Ut aut eum laborum ea eaque velit fugit.','http://lorempixel.com/640/480/'),(77,77,'Rerum dolorem et cum ipsam laudantium et eos. Quam debitis corporis sint occaecati fuga. Autem quisquam laboriosam aut ex eveniet ducimus.','http://lorempixel.com/640/480/'),(78,78,'Error placeat distinctio nihil. Perspiciatis aut est occaecati. Corporis sint hic expedita autem.','http://lorempixel.com/640/480/'),(79,79,'Iure fugit sed quia incidunt fuga repellendus accusamus. Voluptas explicabo necessitatibus repellat aut. Iure eius illo a et ea. Quasi maiores nam nulla quod nihil maiores.','http://lorempixel.com/640/480/'),(80,80,'Provident temporibus minima iusto impedit. Quaerat velit voluptas minus quibusdam eum iusto omnis. Voluptates voluptatem voluptates neque esse enim omnis.','http://lorempixel.com/640/480/'),(81,81,'Molestiae omnis occaecati et a et. Iure et beatae rerum. Tempore eius saepe quaerat iusto.','http://lorempixel.com/640/480/'),(82,82,'Aut necessitatibus possimus pariatur quia. Neque sapiente quos incidunt nemo. Voluptatem sed ipsa asperiores sapiente.','http://lorempixel.com/640/480/'),(83,83,'Ut eum voluptas debitis sit laborum asperiores velit. Est omnis molestiae fugit enim odit. Aut reiciendis omnis voluptates excepturi dolores odit. Fugiat quia saepe veritatis ut aliquid dignissimos.','http://lorempixel.com/640/480/'),(84,84,'Ullam repellendus maiores in repudiandae alias rerum. Numquam consequatur est ipsa architecto qui consequatur velit. Sint iste amet explicabo. Neque eaque dolore temporibus quas.','http://lorempixel.com/640/480/'),(85,85,'Qui repudiandae nihil rerum voluptatum debitis. Perferendis odio laboriosam et sunt aliquam magni voluptates. Saepe aut recusandae quisquam saepe cum. Asperiores mollitia iure consequatur repellendus magni quia.','http://lorempixel.com/640/480/'),(86,86,'Aperiam et fuga quaerat iure. Nesciunt tempora tenetur harum incidunt. Nobis consectetur vero eveniet aliquam voluptatum necessitatibus inventore.','http://lorempixel.com/640/480/'),(87,87,'Nobis sed soluta quibusdam illum ducimus. Fugit ut aperiam ducimus laborum. Dolores omnis aspernatur qui. Et rerum ratione voluptatem esse in.','http://lorempixel.com/640/480/'),(88,88,'Tempore blanditiis accusamus dolor. Dicta voluptate corrupti nisi optio voluptate. Nobis saepe explicabo quia et omnis non. Quia quod a voluptatem earum.','http://lorempixel.com/640/480/'),(89,89,'Reprehenderit non at inventore maxime eaque veritatis. Aut ea error eum velit. Commodi exercitationem dolorum facere rerum neque. Impedit sed cupiditate incidunt saepe.','http://lorempixel.com/640/480/'),(90,90,'Beatae tempore illo harum numquam cupiditate autem autem sequi. Fugit at quo blanditiis voluptas. Voluptates cum qui dolore eius necessitatibus assumenda adipisci.','http://lorempixel.com/640/480/'),(91,91,'Mollitia sapiente deserunt mollitia qui. Similique aut voluptatem magnam rem id dolorem. Deleniti voluptatum est rerum.','http://lorempixel.com/640/480/'),(92,92,'Qui sint praesentium ea dolor occaecati. Ipsa accusamus est porro vel ut. Consectetur sed officiis dicta eos. Quibusdam nobis eum placeat quae magnam.','http://lorempixel.com/640/480/'),(93,93,'Ut ducimus laborum fuga dolores beatae et vel quasi. Occaecati at voluptas totam ducimus. Sed dolore sed omnis reprehenderit.','http://lorempixel.com/640/480/'),(94,94,'Corrupti non quisquam et neque saepe ut delectus. Labore qui omnis sapiente assumenda debitis doloribus fuga odit.','http://lorempixel.com/640/480/'),(95,95,'Sed dolor et quasi id sequi. Magni explicabo saepe at ut nihil. Et voluptatem maxime qui minus cum porro praesentium.','http://lorempixel.com/640/480/'),(96,96,'Nulla molestiae cum eos suscipit ut qui aliquam eius. Distinctio at ab iure numquam nemo. Tempora reprehenderit sint voluptates minima unde. Aliquam ea est ab soluta et consequatur a.','http://lorempixel.com/640/480/'),(97,97,'Natus sint qui laudantium. Voluptatem officia amet nam quibusdam qui.','http://lorempixel.com/640/480/'),(98,98,'Incidunt vel sequi quos dolores fugit. Earum culpa ullam debitis optio. Aut similique et incidunt eveniet sit. Deserunt iste quos eligendi eum non id ipsum. Ut possimus consequatur consequatur quia placeat quia cum minima.','http://lorempixel.com/640/480/'),(99,99,'Dolorum et est qui aliquam. Autem fugiat magni sed molestiae at. Est cumque consectetur accusamus repellat dolores.','http://lorempixel.com/640/480/'),(100,100,'Incidunt quis molestiae quia quibusdam ex. Hic delectus quas debitis odit minima est. Alias sequi atque et sed aut.','http://lorempixel.com/640/480/');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `body` text,
  `metadata` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'Earum temporibus praesentium dolorum exercitationem. Sint sint repellat explicabo consequatur. Sed mollitia repellendus asperiores dolores nulla. Iusto blanditiis rerum rerum beatae nihil dolorem rerum.',NULL,'1981-04-16 18:31:18','1991-01-02 09:31:14'),(2,2,'Quo quidem quo vitae deleniti. Unde laudantium voluptatum aut maxime sequi explicabo. Voluptas ipsam in nulla numquam dicta asperiores. Sit consequatur voluptas praesentium eveniet dolores.',NULL,'1985-08-20 06:59:54','1992-01-05 22:15:26'),(3,3,'Praesentium et libero neque architecto tempore ut autem. Sed porro voluptatem doloribus non hic. Est delectus inventore eaque eius consectetur rerum quia.',NULL,'1998-09-06 05:13:52','1977-05-24 01:05:33'),(4,4,'Laboriosam esse id soluta omnis delectus odit. Molestiae est fuga natus animi pariatur. Modi maiores rerum porro. Ratione facilis repudiandae sapiente temporibus.',NULL,'1997-06-19 19:04:44','2011-03-23 02:43:48'),(5,5,'Veritatis autem cumque et autem. Laboriosam soluta qui iusto et. Expedita est aliquam repellat maxime.',NULL,'2016-08-20 15:51:55','2005-07-23 05:43:56'),(6,6,'Ipsa ut unde pariatur sed. Impedit dolor cumque atque eveniet. Quia et doloribus omnis tempora corrupti consequatur dolor. Eos doloremque vitae non iste sed dolore veniam.',NULL,'2018-10-28 03:50:32','2018-04-27 20:32:42'),(7,7,'Id eum tempore ea provident voluptate soluta molestiae. Sit sint quam alias autem eaque animi. Eligendi tempore similique deserunt maxime. Sit sed aut omnis repudiandae sed illum quisquam.',NULL,'1991-02-08 23:41:23','2019-11-17 14:34:56'),(8,8,'Molestiae rerum deserunt quasi quae possimus consequatur ea. Officia voluptates porro amet. Nulla voluptatem debitis tenetur et doloribus.',NULL,'1970-10-04 21:17:54','2002-10-04 05:56:11'),(9,9,'Voluptatem voluptatum totam vitae. Delectus culpa cupiditate rerum maiores eligendi aliquam. Dolorum odit laboriosam quae ullam quis dicta et.',NULL,'2011-01-15 19:01:40','2000-11-21 12:06:08'),(10,10,'Atque vitae cupiditate ipsa veniam omnis. Dicta officiis repellendus atque iure quis. Omnis ipsum omnis asperiores corporis sunt sed velit. Quasi dolorem blanditiis ipsam quam sunt corporis nihil ducimus.',NULL,'1991-03-01 13:14:59','1991-03-27 14:09:46'),(11,11,'Ducimus quaerat ipsa soluta possimus ullam eveniet. Aut omnis nesciunt ipsa quibusdam. Accusantium est corrupti atque expedita sed hic quia ea. Eligendi quaerat consequuntur autem beatae dolorem voluptatem voluptas. Quia porro facilis suscipit dolorum non earum natus dolorem.',NULL,'2005-12-22 11:11:08','1983-04-30 16:50:02'),(12,12,'Earum voluptas excepturi cumque modi voluptatum. Enim quo quaerat totam numquam. Quam laborum placeat sit qui odio.',NULL,'1986-06-22 07:43:15','1985-12-23 10:42:47'),(13,13,'Quis cum rerum totam magni dolore nemo. Quae expedita porro doloribus cumque. Quis amet error aut quia architecto in hic. Blanditiis quis sed perspiciatis odit necessitatibus.',NULL,'2020-07-13 12:18:30','2020-09-10 19:48:09'),(14,14,'Qui et commodi fuga. Illum doloremque vel voluptatibus voluptas maiores omnis. Ut quis quis rerum soluta mollitia cumque provident.',NULL,'2010-05-27 23:28:08','1971-05-16 13:56:10'),(15,15,'Pariatur adipisci voluptatum totam itaque earum itaque corporis. Delectus in dolor unde fugiat provident soluta. Illo sit tempore dolores et et.',NULL,'2014-08-11 21:03:19','2015-03-05 04:09:51'),(16,16,'Totam accusantium nam quibusdam. Aut fugiat voluptatem accusantium qui dignissimos. Ut quos nobis accusantium iusto et. Delectus culpa eum ut tenetur dolores.',NULL,'1991-10-05 15:32:39','1996-06-08 18:29:14'),(17,17,'Nihil aut sed ut corporis quas perspiciatis fuga cumque. Blanditiis voluptatem quibusdam doloribus. Soluta sunt repellendus repellendus amet. Labore provident temporibus asperiores et itaque eum atque quam.',NULL,'2006-09-04 17:20:54','2009-05-02 02:52:21'),(18,18,'Quis quis temporibus veniam sint. Eos voluptatem quas modi qui voluptate ut dolorem. Dignissimos exercitationem sequi quia sed laboriosam quis recusandae.',NULL,'1990-04-21 15:45:32','2017-02-25 04:30:47'),(19,19,'Qui ipsam iure voluptate incidunt. Sapiente eius modi iste ut omnis enim. Sequi vero quos quibusdam.',NULL,'2019-09-22 01:52:59','2002-07-21 10:47:44'),(20,20,'Quos aspernatur natus aut architecto et. Reiciendis minima doloribus consequatur necessitatibus saepe soluta officiis quia. Eligendi aut sapiente accusamus. Totam a rem voluptatem totam earum error nemo. Et earum quas et animi animi et ut.',NULL,'1984-02-06 19:14:09','2017-05-12 17:02:39'),(21,21,'Dolorem placeat quaerat est odio aliquid eius cupiditate atque. Nesciunt eos est est quia nobis recusandae et. Quos placeat possimus earum assumenda nisi.',NULL,'1981-01-07 06:07:55','1970-05-10 10:07:42'),(22,22,'Dolore optio illo qui rerum in. Earum vero dolor incidunt vel reprehenderit quo in.',NULL,'2018-04-21 03:15:36','1975-08-08 10:06:28'),(23,23,'Omnis quasi deserunt dolores id provident. Nihil enim praesentium nesciunt perferendis quibusdam exercitationem ipsam. Nihil ducimus amet in facere voluptatem. Itaque quae magni veniam nihil.',NULL,'1992-02-04 01:04:42','2017-07-16 20:48:51'),(24,24,'Omnis eum vel aut dolore sed et ab voluptas. Exercitationem voluptatum rerum ipsam consectetur voluptatem necessitatibus et. Quia qui quas molestias sit dolor est est ex.',NULL,'2010-06-28 05:00:55','2009-05-07 02:41:45'),(25,25,'Quos occaecati quia et eius assumenda beatae sit mollitia. Beatae quo voluptatibus quia neque earum est. Consequuntur et quia voluptatibus reprehenderit qui nostrum.',NULL,'1973-12-08 09:06:52','1991-04-15 12:51:40'),(26,26,'Amet ea iste eos et totam iste architecto. Quia officiis nisi quia odit quis. Velit dolorem quis ipsam et in et. Quo dolor porro voluptatem eum rerum ipsam.',NULL,'2008-10-04 13:00:48','2003-04-14 20:32:31'),(27,27,'Sed cumque doloribus voluptas rem inventore rerum sapiente. Enim aperiam asperiores voluptates omnis eum quaerat. At non dolore et vel ratione optio rem. Quo recusandae est dolorum ut sunt accusamus. Qui molestiae quibusdam qui nihil.',NULL,'1983-07-05 04:01:44','1996-08-21 17:21:36'),(28,28,'Quasi et cupiditate quasi ex commodi. Neque iusto nam autem hic id. Facere omnis non similique rem sit.',NULL,'1986-12-17 07:23:38','1985-08-18 17:19:47'),(29,29,'Accusamus voluptatem maiores a quisquam. Quia neque aut animi corporis et quam quis. Est rerum quo fuga nulla.',NULL,'1980-04-23 18:27:15','2012-12-26 01:35:04'),(30,30,'Dolorem voluptatem velit harum enim ut. Aut dicta delectus eveniet occaecati nulla illum voluptate. Consectetur velit distinctio enim alias et.',NULL,'1995-10-22 00:10:20','2018-07-21 01:04:13'),(31,31,'Modi est fugiat harum dolores et. Qui nam minima quia et occaecati. Voluptate eos illum iste voluptatem numquam deserunt enim. Nam ipsam vitae ut rerum et quis ut.',NULL,'2006-06-07 13:23:40','2020-07-07 02:01:15'),(32,32,'Cum error debitis nostrum velit aut ipsum aut. Dolorem incidunt ea dolorum non occaecati ex. Mollitia magnam ea harum laborum rerum accusantium et. Iusto rerum neque fuga placeat ut et.',NULL,'2013-03-29 07:09:45','2008-06-21 22:55:05'),(33,33,'Numquam est aut amet voluptatibus. Recusandae architecto voluptates molestiae et. Quam eaque sed quasi et architecto animi enim. Mollitia in aut quam veniam odio nisi.',NULL,'2014-02-10 16:11:10','1973-03-21 18:58:34'),(34,34,'Nulla eaque asperiores ullam qui. Quas dignissimos eligendi laboriosam. Illum eum debitis velit sit et.',NULL,'2010-07-23 10:31:29','2020-01-09 03:30:41'),(35,35,'Officiis autem odit voluptates. Quis id doloribus tenetur consequatur eos asperiores quibusdam totam. Magnam qui sed enim.',NULL,'1973-06-18 22:57:38','2018-04-23 09:45:03'),(36,36,'Tempore adipisci excepturi rerum dolorum sint non. Aliquam perspiciatis quas dolorem delectus laboriosam. Consequatur iure enim iure omnis. Modi sint natus quia quasi.',NULL,'1994-11-30 04:19:24','2020-03-19 04:34:10'),(37,37,'Dicta autem molestiae cum eligendi quisquam. Molestiae autem esse sit explicabo. Aut mollitia consequuntur voluptatum quis nemo. Voluptatum perspiciatis laboriosam odit harum et.',NULL,'2001-01-28 17:54:10','2014-03-06 20:35:41'),(38,38,'Dicta corrupti alias provident perspiciatis nam. Aut excepturi deserunt consectetur natus. Perferendis sit sit totam nihil consequatur iure. Accusantium commodi harum alias sint in et nemo.',NULL,'1973-02-23 08:16:33','2017-03-28 23:49:27'),(39,39,'Impedit deserunt facilis ab et porro. Fugiat veritatis et officia excepturi sit. In ut velit reprehenderit cumque amet.',NULL,'1998-03-22 10:55:55','2008-07-22 03:53:35'),(40,40,'Eum sequi et unde unde corporis accusantium alias. Animi hic eos sint quasi dolores minima reiciendis minima. Dicta at quia saepe dolor nihil est laudantium. Amet consectetur ducimus nemo aut.',NULL,'1989-10-22 05:33:27','2013-04-04 21:59:51'),(41,41,'Fuga voluptas animi doloremque odit harum totam iusto est. Suscipit provident sint sit sequi tenetur. Iusto quibusdam magni omnis minima omnis omnis ut.',NULL,'2000-05-02 09:59:20','2007-12-16 00:14:11'),(42,42,'Eum amet consequatur voluptatum error sint a ea quia. Corrupti eos officiis voluptas similique. Sed et molestiae molestiae quia sunt.',NULL,'1977-06-28 07:44:25','1992-10-01 12:03:02'),(43,43,'Eius ipsa quaerat laudantium sunt quam. Itaque ipsum eos culpa esse eaque vitae autem. Quia dolore optio voluptatem reprehenderit. Aut repellendus quis in.',NULL,'1993-03-02 16:39:04','1993-04-17 05:12:23'),(44,44,'Aut odio ut ad voluptatem aut quia. Ex hic quibusdam ea deserunt architecto nihil. Iusto error et vel beatae odio. Ad nulla maiores et dolorum.',NULL,'1987-04-11 22:34:24','1996-12-12 23:55:02'),(45,45,'Sit consectetur rerum impedit repellat repellendus sunt. Blanditiis tempora veniam rem et vel dolores nam corporis. Voluptatem provident repellendus aut autem sed dolores. Repellendus molestiae qui sit dolor cum nihil tenetur. Labore quaerat non quia similique quisquam cum.',NULL,'1983-11-27 21:57:29','1979-06-06 01:15:37'),(46,46,'Adipisci quo sunt et consequuntur placeat rem ut aspernatur. Corrupti harum est nostrum praesentium ut modi. Harum porro minima temporibus soluta. Aut eligendi aliquam quia quaerat blanditiis ut.',NULL,'1987-01-02 05:37:22','1982-08-21 13:10:21'),(47,47,'Sint modi distinctio sunt harum quibusdam. Et eum quisquam ex eum. Et pariatur esse tenetur consectetur molestiae.',NULL,'1970-02-09 15:35:17','1990-05-31 15:05:30'),(48,48,'In dicta molestiae tempore cupiditate tenetur alias quidem cum. Ut doloremque molestias ipsam rerum in. Ad tempora itaque et eaque. Ea aut fugiat ut et cum eos quaerat.',NULL,'2012-04-11 09:48:53','1975-12-12 00:45:15'),(49,49,'Repudiandae facilis eos quia id quia suscipit dolorem. Voluptatem illum non voluptas cupiditate harum nihil. Quos voluptas provident sunt et officiis molestiae sed.',NULL,'2015-05-13 03:29:17','1975-03-18 11:24:28'),(50,50,'Quaerat molestiae repudiandae itaque occaecati qui eveniet qui non. Similique cum aut dolor vero. Totam ipsa aut asperiores molestiae quis.',NULL,'1978-11-27 03:09:42','2012-12-10 07:26:53'),(51,51,'Et assumenda modi modi hic. Et at perspiciatis culpa odit. Non consectetur animi et voluptate esse.',NULL,'2017-11-16 23:39:47','2019-05-26 10:37:30'),(52,52,'Odio tempora soluta blanditiis. Consequatur debitis velit perferendis nihil error tenetur at. Nemo culpa eligendi quaerat quas aut. Possimus repellat libero rem voluptatum aut.',NULL,'2020-05-04 06:17:57','2005-03-30 13:08:11'),(53,53,'Pariatur eligendi tempora quas porro. Aut et molestias vel minima quo ea. Soluta qui ut harum id tempore illo.',NULL,'2019-05-28 05:45:59','2005-11-02 07:47:48'),(54,54,'Quisquam ullam eum veritatis cumque. Odit sit temporibus voluptates ut repellendus est dolorem.',NULL,'2013-01-22 12:55:43','2020-05-26 14:01:13'),(55,55,'Magnam aliquid illo ut sunt. Consequatur quia fugit aperiam cupiditate eum qui. Quis fuga aut occaecati nostrum.',NULL,'1978-05-19 10:42:45','2013-08-21 15:27:55'),(56,56,'Expedita non ea facere minus facere doloribus. Harum soluta aperiam aspernatur perferendis dolorem voluptatem iure. Voluptate quo voluptate quas at nemo at.',NULL,'1995-08-09 07:03:38','2005-09-21 03:15:16'),(57,57,'Praesentium harum suscipit ratione ut distinctio atque aut. Tempora eos nisi facilis voluptatem in. Non ipsum eveniet rerum voluptas. Voluptates quis aliquid quia ea. Assumenda ipsa nobis corporis quos nemo incidunt perferendis.',NULL,'1975-03-01 15:53:51','2013-05-02 09:22:38'),(58,58,'Id quia nihil qui reiciendis quia voluptatem minus qui. Quis accusamus similique sunt recusandae in soluta. Omnis sapiente voluptate iusto fugiat repudiandae quam velit. Sunt velit aut sit illo explicabo ducimus cum est.',NULL,'1973-09-08 15:39:58','2003-11-13 00:11:22'),(59,59,'Ex commodi nemo voluptatem. Nisi sed odit unde dolor voluptatem maxime. Ea dolorum ullam beatae ad velit voluptates rerum. Vero ea consectetur autem aut sint neque.',NULL,'2011-12-13 04:36:18','2005-05-13 02:39:24'),(60,60,'Rerum ut quo soluta quae voluptas fugiat adipisci voluptatem. Quia et tempore aut aut placeat sint illum.',NULL,'1978-10-20 18:32:51','1973-09-28 20:04:53'),(61,61,'Earum consequuntur deserunt quia quam adipisci. Quas quaerat ducimus velit eveniet modi. Cum aliquam rem repudiandae nulla. Cum est inventore rerum omnis quos quam adipisci.',NULL,'2019-01-23 04:12:35','2005-07-03 16:53:37'),(62,62,'Eum et voluptatem sed perspiciatis consequatur fuga labore. Illum optio laudantium rem quod a omnis deleniti. Consequatur sunt ex qui dignissimos itaque neque eum. Illo qui quam incidunt ut est repellat ut.',NULL,'1982-04-14 05:59:49','2004-06-16 19:37:19'),(63,63,'Sint exercitationem aliquid quia at assumenda nobis et. Occaecati possimus iste dolore aperiam qui. Laborum totam eum dolor rerum minima earum facere accusantium. Qui autem nemo asperiores similique.',NULL,'1985-05-10 05:02:31','2015-06-09 03:46:40'),(64,64,'Aut expedita velit ratione occaecati. Fugit dolores eligendi laboriosam veniam quidem quo et dolores. Quos laborum architecto qui ipsam pariatur suscipit minima assumenda. Provident corporis eaque qui sequi expedita officia reprehenderit.',NULL,'2002-11-19 08:47:10','2020-07-04 19:19:06'),(65,65,'Et et natus distinctio perferendis odit et ex. Commodi eos minus ab ut ipsum provident. Eos quae amet voluptatem distinctio vel et.',NULL,'2007-05-13 08:11:23','2008-08-19 02:09:43'),(66,66,'Excepturi nisi ratione est autem velit. Nesciunt dolor quibusdam laudantium ad eligendi reprehenderit sint. Voluptatem est ipsum ut corporis. Omnis reiciendis quod in laborum ut ratione sed.',NULL,'1993-01-10 13:30:00','2005-06-23 10:00:40'),(67,67,'Maxime ut adipisci possimus voluptatem et. Quis tenetur asperiores et omnis. Iusto dolore eos asperiores labore voluptas.',NULL,'2013-09-23 19:33:38','1972-01-28 12:28:55'),(68,68,'Et non asperiores qui unde at. Expedita suscipit beatae eos ut iusto sed perferendis. Non eum reprehenderit dicta consectetur magnam tempora.',NULL,'1998-02-27 22:46:17','1986-01-08 07:23:09'),(69,69,'Exercitationem inventore esse eaque. Amet ea veniam ipsum necessitatibus voluptas ad praesentium. Dolor fugiat natus mollitia est quo. Ipsum neque omnis minus maxime sunt ea animi est. Repudiandae fugiat dolorem voluptatum velit fuga quidem.',NULL,'2020-01-02 00:05:07','1996-07-11 14:41:41'),(70,70,'Odit repellendus similique quibusdam facilis tempore et vero. Repudiandae minus debitis ratione autem id.',NULL,'1993-12-12 12:05:24','1994-03-26 10:22:42'),(71,71,'Placeat sit velit exercitationem eveniet quo natus. Expedita ut cum non placeat. Aut non voluptate adipisci ratione molestias quisquam tempore. Ex voluptates quidem enim fuga. Ratione delectus quas sit.',NULL,'1975-07-03 17:14:51','1975-11-25 14:08:01'),(72,72,'Rerum quo deserunt ut voluptate officia voluptate. Eum est ut expedita sed sed. Nihil fugiat illum numquam at.',NULL,'1977-09-09 02:02:59','2000-01-31 10:45:35'),(73,73,'Odit officiis facilis repellat. Hic harum et explicabo sunt. Quis rem ratione est qui. Libero dolorem dolorem quo aperiam corrupti similique.',NULL,'1970-05-01 02:34:12','1977-09-23 15:38:10'),(74,74,'Et numquam vero eum sed. Est ad deserunt distinctio est eaque. Eius porro cupiditate perspiciatis eum. Voluptates dolorum et autem debitis error voluptatibus accusantium minima.',NULL,'1990-11-15 20:23:32','1979-09-13 00:35:06'),(75,75,'Sequi ipsam tempore officia iusto omnis nemo enim quia. Illo aut aut nostrum voluptas atque velit autem. Est libero assumenda dolorum illum corrupti beatae soluta odio. Odit quia mollitia est molestiae inventore praesentium. Non reiciendis et eaque.',NULL,'1995-11-03 08:18:58','2020-01-21 18:22:44'),(76,76,'Nisi eligendi atque facilis suscipit voluptas. Officia eum doloremque ut tempore nam. Totam et facilis beatae inventore et ut. Quia ut ut mollitia est.',NULL,'1970-03-21 14:19:16','1984-05-20 19:11:23'),(77,77,'Modi molestiae error ea ab. Ea possimus ad totam aut quae. Corrupti quo dolore atque consequatur quo necessitatibus ut.',NULL,'1974-06-03 22:31:35','2019-04-10 11:31:29'),(78,78,'Error ut qui suscipit. Rerum et ullam illum est dolores id et. Natus saepe doloremque ut provident nisi quam facilis. Numquam delectus voluptatibus fugiat sunt beatae.',NULL,'1971-01-02 08:56:33','2004-07-10 04:29:48'),(79,79,'Voluptate est quia cumque assumenda est omnis non. Sapiente necessitatibus repellendus iste. Et dolorem veniam esse qui expedita. Molestiae ut est magni ipsum accusamus ex ipsum. Sunt maxime quos modi cum facilis labore.',NULL,'1993-12-29 14:18:53','1970-02-13 11:20:41'),(80,80,'Ipsa aperiam perferendis voluptatem quia. Sed accusamus recusandae recusandae dolor est fugit. Aperiam ut nam voluptas tempora.',NULL,'2014-03-07 16:33:56','1980-02-14 13:01:26'),(81,81,'Ut et rerum nemo voluptatibus quibusdam maxime. Et voluptas dicta ut debitis vitae quas. Doloribus est doloribus voluptas sapiente. Ea similique maiores et quasi.',NULL,'2013-08-27 16:16:03','2001-01-16 13:55:43'),(82,82,'Corporis libero est sequi. Quisquam voluptatem sint eius ipsa sed eveniet sunt.',NULL,'2009-10-02 03:55:22','1990-07-01 03:59:18'),(83,83,'Qui animi officiis qui. Corrupti aliquid provident perspiciatis sequi et voluptates. Aperiam vero deserunt architecto pariatur assumenda.',NULL,'1993-04-14 11:52:37','2014-11-27 01:20:07'),(84,84,'Ut maxime alias consequatur molestias cupiditate consectetur. Necessitatibus eum in cum ducimus molestiae. Unde sit est ipsa atque dicta. Hic molestiae esse et perspiciatis deleniti.',NULL,'1986-05-15 12:18:11','1978-02-13 15:54:57'),(85,85,'Voluptatem amet qui nam et reprehenderit ea. Voluptatibus sit quis eos quo suscipit. Repellat necessitatibus error ut quia. Itaque quod rem quia similique inventore est.',NULL,'1995-11-21 14:26:15','2017-09-01 10:51:03'),(86,86,'Quidem repellendus velit quas. Molestias perspiciatis architecto sed maiores.',NULL,'1986-09-20 03:01:09','2002-11-14 21:09:41'),(87,87,'Nihil vitae necessitatibus ut assumenda omnis quo. Mollitia dolores necessitatibus non dolore consequatur qui ut. Quia sunt et sunt qui aliquid voluptatem.',NULL,'1978-08-14 11:11:08','1983-10-09 12:05:47'),(88,88,'Vero voluptas sint neque rem voluptatum. Ab quis ducimus sit qui. Sint sapiente eos ipsa. Incidunt eum minima architecto deleniti architecto quia. Nam fugit voluptatibus voluptas aliquid sed sed.',NULL,'2007-01-12 12:15:23','1999-07-01 12:59:41'),(89,89,'Sed ratione et ducimus beatae. Delectus dicta qui commodi et debitis sit possimus. Rerum eaque iure quis debitis optio repellendus facilis eum.',NULL,'1970-08-07 16:56:10','2015-01-15 11:07:41'),(90,90,'Vitae doloribus ut dolorum est sit suscipit fugiat. Rem ut exercitationem blanditiis sint quis labore. Rerum eius in temporibus ullam beatae laboriosam.',NULL,'1983-12-10 16:01:53','2000-10-06 08:31:47'),(91,91,'Et sunt aut ut non et quia voluptatum. Dolore enim sit sed quaerat molestias qui. Consectetur voluptas nulla tempore itaque expedita ratione.',NULL,'2015-03-02 21:55:54','1992-02-07 18:20:48'),(92,92,'Totam sed magnam in. Dolore assumenda nam optio. Consequatur dicta libero animi maiores omnis tempore rerum.',NULL,'1974-01-29 15:19:17','1975-12-16 01:51:29'),(93,93,'Earum sint eum atque aut sequi nihil. Ut et aut voluptas cumque voluptas aliquid. Quo magnam et nostrum quam perferendis tempore qui. Eaque debitis voluptatem totam eveniet.',NULL,'1991-06-01 18:20:52','2005-01-11 23:35:42'),(94,94,'Facilis quasi in rerum. Est consequatur est id quaerat qui necessitatibus. Ut voluptate ut quasi quae quis.',NULL,'1996-07-14 08:43:07','2007-08-05 04:54:56'),(95,95,'Pariatur earum animi itaque ullam natus illum aliquid. Quo rerum sit cum officia corrupti ut quia esse. Ut maiores voluptatem nulla facilis et molestiae similique.',NULL,'1997-06-14 01:42:16','2000-12-27 11:13:43'),(96,96,'Id saepe velit esse sed. Architecto quo repellat quo nisi eveniet recusandae laboriosam. Itaque quibusdam qui voluptatem aut rem id labore.',NULL,'1984-09-15 04:42:45','1972-11-03 09:01:21'),(97,97,'Facere dolorem distinctio ut recusandae quia cum beatae quo. Deserunt omnis aut aut excepturi iusto iure inventore. Laboriosam itaque dignissimos maiores ipsa. Facilis aliquid reprehenderit porro neque.',NULL,'2014-02-01 22:57:20','1974-07-28 22:22:01'),(98,98,'Eos est voluptates mollitia eos laudantium. Perferendis est in quis ut. Voluptas omnis dolores sed inventore.',NULL,'2008-02-12 15:52:04','2011-01-08 17:37:26'),(99,99,'Quis ratione eum at velit eligendi iusto ducimus. Unde sint quis corrupti porro iste facilis. Eligendi aut iusto corrupti voluptatem neque debitis beatae.',NULL,'1991-10-16 08:44:51','2014-12-17 23:36:30'),(100,100,'Et voluptatem occaecati fugiat natus porro voluptatem et. Alias animi facere eveniet dolor aut mollitia officiis. Voluptates et quaerat eos doloribus. Aliquid non perferendis minima maxime eius magnam.',NULL,'2005-07-16 20:13:55','1987-01-12 04:12:51');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(50) DEFAULT NULL,
  `photo_id` bigint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `pass` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `phone` (`phone`),
  KEY `name` (`name`,`surname`),
  KEY `email_2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Perice','Grandin','pgrandin0@issuu.com',5517833730,'M','1980-02-02','Point Pedro',1,'2013-09-25 23:17:41',NULL),(2,'Ninetta','Imbrey','nimbrey1@nyu.edu',6265247425,'F','1953-10-10','Quinta',2,'2006-01-10 20:05:56',NULL),(3,'Winfield','Rutledge','wrutledge2@slideshare.net',3327211619,'M','1986-10-04','Cabinda',3,'2013-12-07 18:18:58',NULL),(4,'Estevan','Johnsee','ejohnsee3@smugmug.com',2464909893,'M','1978-08-21','Baihe',4,'2012-10-15 09:12:50',NULL),(5,'Clerkclaude','Phillipp','cphillipp4@moonfruit.com',8535530294,'M','1973-06-16','Villa María',5,'2015-06-11 18:40:45',NULL),(6,'Anne-corinne','Forgan','aforgan5@canalblog.com',7109976239,'F','1959-08-22','Một Ngàn',6,'2011-01-27 04:31:56',NULL),(7,'Emiline','Britner','ebritner6@timesonline.co.uk',1474072587,'F','1941-01-31','Las Vegas, Santa Barbara',7,'2003-06-06 08:19:13',NULL),(8,'Shamus','Pykett','spykett7@un.org',8655711679,'M','1956-02-07','Krasnovishersk',8,'2011-04-30 10:39:46',NULL),(9,'Catina','Bridges','cbridges8@dedecms.com',5945594194,'F','1959-10-28','Curahuasi',9,'2006-11-09 19:20:47',NULL),(10,'Fritz','Seaborn','fseaborn9@washington.edu',6839124197,'M','1997-10-20','Putatbasiun',10,'2015-04-15 11:10:04',NULL),(11,'Lucas','Cantopher','lcantophera@aboutads.info',4434394261,'M','1963-11-29','Djambala',11,'2007-01-04 06:06:35',NULL),(12,'Jamie','Easseby','jeassebyb@livejournal.com',8304844364,'M','1988-12-06','Boguchwała',12,'2003-06-25 09:30:49',NULL),(13,'Gwenore','De Hoogh','gdehooghc@hatena.ne.jp',4694916085,'F','1982-01-19','Uwa',13,'2017-09-10 12:40:52',NULL),(14,'Donica','Scarborough','dscarboroughd@cafepress.com',9569277744,'F','1969-12-26','Rodionovo-Nesvetayskaya',14,'2011-10-23 07:33:06',NULL),(15,'Nora','Vargas','nvargase@addtoany.com',5805831278,'F','1991-04-04','Tullamore',15,'2002-08-12 08:22:17',NULL),(16,'Wilie','Vasey','wvaseyf@seattletimes.com',8277263420,'F','1981-04-13','Vila Nova',16,'2016-06-25 05:47:57',NULL),(17,'Marleah','Neal','mnealg@about.me',9893628809,'F','1953-07-03','Jingmao',17,'2015-01-12 02:05:56',NULL),(18,'Conway','McIlherran','cmcilherranh@slashdot.org',9882994579,'M','1962-06-27','Netishyn',18,'2006-07-25 11:10:09',NULL),(19,'Matelda','Jaan','mjaani@cornell.edu',8282860191,'F','1975-05-22','Ma\'an',19,'2005-03-28 06:34:26',NULL),(20,'Sibbie','Alwell','salwellj@studiopress.com',3011606847,'F','1989-03-23','Boshi',20,'2004-04-25 00:48:58',NULL),(21,'Lawrence','Shinn','lshinnk@businessweek.com',2003301790,'M','1948-08-06','Carmelo',21,'2016-02-29 17:19:52',NULL),(22,'Rourke','Cowdray','rcowdrayl@home.pl',3192668126,'M','1966-04-06','Velyki Kopany',22,'2014-03-13 11:48:19',NULL),(23,'Townsend','Scollan','tscollanm@rediff.com',7215255946,'M','2000-08-01','Nubma',23,'2004-06-15 16:26:06',NULL),(24,'Culver','Chorley','cchorleyn@booking.com',9541435184,'M','1984-08-09','Kotor',24,'2001-10-05 15:54:36',NULL),(25,'Linea','Aisman','laismano@list-manage.com',4053309839,'F','1965-12-24','Magway',25,'2004-08-07 07:46:34',NULL),(26,'Richmond','Mc Harg','rmchargp@sohu.com',6029692144,'M','1970-05-19','Wujing',26,'2007-08-27 02:17:05',NULL),(27,'Kurt','Renals','krenalsq@wordpress.com',1486680630,'M','1983-09-16','Svetogorsk',27,'2020-06-17 22:40:36',NULL),(28,'Emelda','Frodsam','efrodsamr@e-recht24.de',4395364600,'F','1994-06-06','Halton',28,'2007-05-06 10:40:35',NULL),(29,'Seana','Mouat','smouats@google.nl',9939823714,'F','1941-11-02','Zhongxin',29,'2013-04-07 18:19:29',NULL),(30,'Joleen','Allcroft','jallcroftt@imgur.com',3368952762,'F','1968-02-01','Greensboro',30,'2013-12-02 14:09:46',NULL),(31,'Kristan','Beurich','kbeurichu@baidu.com',4709472232,'F','1974-08-23','Peimei',31,'2008-04-22 17:52:20',NULL),(32,'Violante','Sackett','vsackettv@java.com',7219449719,'F','1996-08-25','Saguenay',32,'2002-11-23 11:50:09',NULL),(33,'Gianna','Althrop','galthropw@gravatar.com',4748164381,'F','1976-11-18','Vidzy',33,'2013-01-05 13:15:04',NULL),(34,'Nathan','Tezure','ntezurex@umich.edu',2142402096,'M','1985-03-17','Dallas',34,'2008-05-16 00:40:02',NULL),(35,'Maura','Notley','mnotleyy@loc.gov',6847465457,'F','1975-01-01','Mafeteng',35,'2006-06-20 12:14:28',NULL),(36,'Jermayne','Toupe','jtoupez@bizjournals.com',6886867501,'M','1956-01-31','Bela Vista',36,'2010-10-09 03:15:12',NULL),(37,'Dal','Harrill','dharrill10@163.com',8358402332,'M','1984-02-29','Sok Kwu Wan',37,'2016-10-24 17:59:01',NULL),(38,'Karine','Dutnell','kdutnell11@yale.edu',5469012497,'F','1964-07-01','San Antonio',38,'2006-08-02 10:53:35',NULL),(39,'Gill','Harragin','gharragin12@senate.gov',8808806620,'M','1982-08-09','Aguitu',39,'2010-05-03 15:57:43',NULL),(40,'Germayne','Ambrosch','gambrosch13@cafepress.com',5607247442,'M','1976-01-16','Santa Ana',40,'2008-05-06 18:09:58',NULL),(41,'Erna','Fenn','efenn14@toplist.cz',8121775469,'F','1964-03-31','Terre Haute',41,'2020-09-16 02:50:07',NULL),(42,'Nisse','Ganter','nganter15@acquirethisname.com',4973197454,'F','1974-10-03','Song’ao',42,'2015-08-12 13:30:46',NULL),(43,'Quill','Somers','qsomers16@t-online.de',7705976949,'M','1953-10-04','Nadi',43,'2018-06-29 02:20:13',NULL),(44,'Chantalle','Keasy','ckeasy17@prnewswire.com',6256798055,'F','1976-08-16','Corbeil-Essonnes',44,'2013-10-11 08:18:18',NULL),(45,'Odelia','Standen','ostanden18@etsy.com',5855670341,'F','1976-06-26','São Bento',45,'2007-11-22 23:46:16',NULL),(46,'Steffane','Beecraft','sbeecraft19@auda.org.au',1374167971,'F','1943-04-08','Hirvensalmi',46,'2019-04-10 14:58:49',NULL),(47,'Abey','Fittall','afittall1a@odnoklassniki.ru',6759468229,'M','1941-05-24','Bouça',47,'2012-01-23 16:35:16',NULL),(48,'Herman','Gisbey','hgisbey1b@independent.co.uk',7277722057,'M','1999-04-18','Suzëmka',48,'2014-08-24 18:38:46',NULL),(49,'Felix','Pitkethly','fpitkethly1c@harvard.edu',5418036823,'M','1957-06-10','Taiyigong',49,'2001-08-13 00:03:30',NULL),(50,'Allin','Echallie','aechallie1d@ca.gov',7662553551,'M','1951-03-18','Pęczniew',50,'2020-09-02 15:37:48',NULL),(51,'Gay','Montgomery','gmontgomery1e@un.org',6721665673,'F','1974-11-26','Jenang Selatan',51,'2011-07-22 06:23:38',NULL),(52,'Tedmund','Mulrenan','tmulrenan1f@bbc.co.uk',8265517689,'M','1971-01-09','Masohi',52,'2003-04-26 04:38:13',NULL),(53,'Flin','Allum','fallum1g@usda.gov',5399355042,'M','1990-08-06','Barţa‘ah ash Sharqīyah',53,'2001-07-10 18:21:55',NULL),(54,'Ardra','Beadman','abeadman1h@boston.com',5386529648,'F','1978-08-09','Baisha',54,'2018-06-25 12:16:20',NULL),(55,'See','Ifill','sifill1i@berkeley.edu',8705631739,'M','1976-09-14','Mandalgovi',55,'2014-01-17 17:05:15',NULL),(56,'Randolf','Laughton','rlaughton1j@ebay.com',9847690523,'M','1978-04-04','Xuanhuadian',56,'2019-09-14 08:00:08',NULL),(57,'Kate','Boxe','kboxe1k@howstuffworks.com',8763875723,'F','1954-12-25','Nürnberg',57,'2008-01-19 23:25:41',NULL),(58,'Reinwald','Imlaw','rimlaw1l@baidu.com',7338937188,'M','1998-11-14','Prigrevica',58,'2007-12-12 15:27:51',NULL),(59,'Evin','Scud','escud1m@oaic.gov.au',4904582975,'M','1954-06-09','La Esperanza',59,'2003-07-06 02:55:47',NULL),(60,'Cyrus','Bordessa','cbordessa1n@csmonitor.com',3482568113,'M','1945-02-23','Santa Monica',60,'2007-05-25 07:28:49',NULL),(61,'Jayme','Jiranek','jjiranek1o@wiley.com',7455461808,'M','1986-02-23','Cumedak',61,'2008-07-10 07:35:04',NULL),(62,'Shaylyn','Ysson','sysson1p@unc.edu',9598552307,'F','1948-12-06','Chřibská',62,'2007-11-22 01:53:45',NULL),(63,'Gustavus','Mancer','gmancer1q@about.com',2996059671,'M','1944-12-16','Annotto Bay',63,'2019-08-30 12:19:44',NULL),(64,'Moritz','Murty','mmurty1r@weibo.com',9807068370,'M','1955-10-03','Smiths Falls',64,'2006-01-22 04:18:45',NULL),(65,'Gerard','Pedrick','gpedrick1s@miibeian.gov.cn',9655339888,'M','1953-02-09','Daraitan',65,'2003-06-30 04:02:07',NULL),(66,'Carmine','Livock','clivock1t@opera.com',9412096922,'M','1942-08-26','Alajuela',66,'2013-07-24 17:44:46',NULL),(67,'Annadiane','Doring','adoring1u@economist.com',3903533778,'F','1961-07-02','Leicheng',67,'2014-04-19 14:55:11',NULL),(68,'Marabel','Wanka','mwanka1v@wired.com',5935816387,'F','2000-04-19','Ţūlkarm',68,'2019-04-07 16:05:33',NULL),(69,'Rivi','Gyves','rgyves1w@edublogs.org',9147549773,'F','1980-04-11','Jorong Lauk',69,'2010-11-24 16:27:10',NULL),(70,'Henrik','Heskins','hheskins1x@telegraph.co.uk',9387786442,'M','1981-03-15','Bugo',70,'2011-03-07 17:35:14',NULL),(71,'Sebastian','Ormes','sormes1y@arstechnica.com',4087174141,'M','1985-05-18','Campoalegre',71,'2005-09-10 02:39:21',NULL),(72,'Bliss','Bonnier','bbonnier1z@techcrunch.com',7662519055,'F','1983-04-29','Alexandria',72,'2000-10-08 15:48:04',NULL),(73,'Dieter','Oakland','doakland20@nymag.com',6075220721,'M','1998-04-18','Petaẖ Tiqwa',73,'2006-02-19 23:19:17',NULL),(74,'Arnuad','Blyde','ablyde21@cdbaby.com',6494259214,'M','1949-10-20','Regimin',74,'2015-03-11 03:51:39',NULL),(75,'Murdoch','Klimshuk','mklimshuk22@cnet.com',9483323944,'M','1965-12-29','Lazaro Cardenas',75,'2002-05-27 20:55:12',NULL),(76,'Gwen','Bodocs','gbodocs23@wordpress.org',3048703674,'F','1973-09-06','Huohua',76,'2014-07-05 12:09:15',NULL),(77,'Alie','Gumery','agumery24@un.org',6706206584,'F','1971-06-05','Situsari',77,'2020-09-27 20:55:41',NULL),(78,'Belinda','Eamer','beamer25@adobe.com',8952888107,'F','1981-02-21','Senj',78,'2006-02-02 02:54:47',NULL),(79,'Clemens','Vakhrushev','cvakhrushev26@miibeian.gov.cn',3586288347,'M','1977-09-04','Dapeng',79,'2016-09-08 09:09:59',NULL),(80,'Braden','Lemery','blemery27@house.gov',8786396811,'M','1985-01-01','Phu Khiao',80,'2016-05-01 03:48:13',NULL),(81,'Margareta','Iddenden','middenden28@geocities.com',9891450845,'F','1943-08-08','Xieyang',81,'2007-05-12 13:59:27',NULL),(82,'Teodora','Di Bartolomeo','tdibartolomeo29@is.gd',2719246568,'F','1990-07-09','Tapakrejo',82,'2001-03-21 10:32:25',NULL),(83,'Izabel','Sains','isains2a@nature.com',4702392225,'F','1955-02-21','Chikushino-shi',83,'2018-12-18 12:56:43',NULL),(84,'Carlynn','Bowkley','cbowkley2b@wunderground.com',2357241798,'F','1973-07-25','Ocaña',84,'2009-07-28 10:17:36',NULL),(85,'Emile','Santori','esantori2c@livejournal.com',1802129104,'M','1943-08-04','Nadvoitsy',85,'2006-09-26 22:31:12',NULL),(86,'Cleavland','Lamar','clamar2d@woothemes.com',1632648866,'M','1967-11-13','Teruel',86,'2015-02-05 16:09:08',NULL),(87,'Lazare','Keable','lkeable2e@ucsd.edu',1852208457,'M','1982-06-19','Moñitos',87,'2010-09-25 12:43:35',NULL),(88,'Samara','Castrillo','scastrillo2f@squarespace.com',6624883971,'F','1991-04-21','Nanjiao',88,'2005-06-05 05:07:43',NULL),(89,'Denyse','Discombe','ddiscombe2g@newsvine.com',1303456157,'F','1977-01-30','Kabanga',89,'2014-05-30 07:16:21',NULL),(90,'Tailor','Raison','traison2h@wordpress.com',9843476796,'M','1981-03-04','Herby',90,'2004-04-20 13:52:45',NULL),(91,'Abbie','Delph','adelph2i@usnews.com',6091542335,'F','1961-10-11','Maslovare',91,'2008-11-08 02:50:44',NULL),(92,'Toby','Feldmark','tfeldmark2j@blogtalkradio.com',6704197980,'M','1962-06-12','Dongyu',92,'2020-03-05 08:56:02',NULL),(93,'Dolorita','Locock','dlocock2k@creativecommons.org',3522869194,'F','1976-05-31','Koanara',93,'2013-11-24 21:43:35',NULL),(94,'Pietra','Learmount','plearmount2l@de.vu',3618127944,'F','1983-06-29','Jiling',94,'2020-08-31 18:25:02',NULL),(95,'Mae','Eary','meary2m@icio.us',3966673291,'F','1947-06-18','Yelabuga',95,'2004-11-23 00:35:52',NULL),(96,'Teri','Rizzetti','trizzetti2n@yellowpages.com',4316197219,'F','1972-10-23','Xushuguan',96,'2003-10-25 14:47:02',NULL),(97,'Piotr','Allain','pallain2o@moonfruit.com',2124576134,'M','1992-05-29','Gongping',97,'2006-04-16 19:25:18',NULL),(98,'Editha','Lermit','elermit2p@businessinsider.com',3557834912,'F','1979-02-23','Limoeiro do Norte',98,'2007-04-01 22:24:27',NULL),(99,'Dwayne','Kivelle','dkivelle2q@list-manage.com',7808402844,'M','1999-08-29','Manutapen',99,'2017-07-04 05:38:31',NULL),(100,'Cheston','Lawrie','clawrie2r@time.com',5367254654,'M','1974-02-21','Tyret’ Pervaya',100,'2008-09-04 19:57:51',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communities`
--

DROP TABLE IF EXISTS `users_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_communities` (
  `user_id` bigint unsigned NOT NULL,
  `community_id` bigint unsigned NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communities`
--

LOCK TABLES `users_communities` WRITE;
/*!40000 ALTER TABLE `users_communities` DISABLE KEYS */;
INSERT INTO `users_communities` VALUES (1,1,0),(2,2,0),(3,3,1),(4,4,0),(5,5,1),(6,6,0),(7,7,0),(8,8,0),(9,9,1),(10,10,1),(11,11,0),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,0),(20,20,0);
/*!40000 ALTER TABLE `users_communities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-09 17:00:09
