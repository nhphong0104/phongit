-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: botble
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'ixMdq6VX9qoW2FwRd9Sbe8PIqcBNn1wy',1,'2024-05-28 02:59:43','2024-05-28 02:59:43','2024-05-28 02:59:43');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocks_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'Hailee Zieme','hailee-zieme','Eius quis inventore fugiat iste alias.','Deleniti nesciunt rerum aliquid. Culpa quia qui nemo natus asperiores occaecati perferendis culpa. Voluptatibus impedit a repudiandae non ut consectetur sunt. Voluptatem odit sit sed quam eum explicabo. Autem quis perspiciatis quis minima reiciendis voluptas. Occaecati qui sint voluptatem. Et adipisci qui et. Dicta enim ut ut aliquid. Sequi magnam corrupti quia eveniet nihil ipsam ut ab.','published',NULL,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(2,'Avery Schowalter','avery-schowalter','Dolor autem commodi rerum.','Eaque totam molestias similique. Beatae velit necessitatibus praesentium adipisci dolores. Sequi laudantium nemo molestias voluptate. Vel vel eum aut. Reprehenderit voluptas illum et qui. Recusandae reprehenderit et sit doloremque iure. Quaerat tenetur quis qui minima. Quisquam porro et omnis aperiam adipisci delectus eveniet.','published',NULL,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(3,'Lynn Harris DDS','lynn-harris-dds','Natus id inventore voluptatem sed.','Error qui enim tempora porro. Molestias est laboriosam quod. Voluptatem eos consequatur qui distinctio omnis. Omnis dicta omnis accusamus sunt non. Itaque ad non voluptate cum sed autem voluptatibus. Repellat voluptas enim soluta adipisci commodi. Libero error similique explicabo iure dolorem. Omnis commodi voluptas natus et sapiente eos amet. Asperiores autem ut voluptas est. Saepe et odit non.','published',NULL,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(4,'Calista Romaguera','calista-romaguera','Nihil ut illum laudantium est quas illum.','Veritatis nulla fugit ut ullam sed. Esse voluptates vitae deserunt cumque blanditiis. Odit quas neque non autem ut. Molestiae reiciendis doloremque porro sed aut. Hic iste in quam est est aut officia. Suscipit quisquam fugit sint corrupti vero fugiat tenetur. Maxime sunt ut adipisci similique ullam rerum sit. Voluptate rerum explicabo quod cum numquam. Nemo iusto occaecati omnis totam.','published',NULL,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(5,'Jewel Bartell','jewel-bartell','Consequuntur esse ipsam earum earum commodi.','Praesentium libero unde possimus commodi. Tenetur quibusdam id magnam est illo voluptatibus. At corporis est possimus harum optio alias. Dicta sint et ea ducimus exercitationem. Sit omnis eum doloremque debitis id odit ea. Ab aut quis ex porro ex ullam error. Rerum eos vitae voluptatem vero ad. Eaque repellat veniam id et et. Est aut incidunt quaerat officiis repudiandae.','published',NULL,'2024-05-28 03:00:00','2024-05-28 03:00:00');
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks_translations`
--

DROP TABLE IF EXISTS `blocks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`blocks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks_translations`
--

LOCK TABLES `blocks_translations` WRITE;
/*!40000 ALTER TABLE `blocks_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Artificial Intelligence',0,'Eum et esse perspiciatis occaecati nesciunt ut in. Quasi molestiae illo minus voluptate necessitatibus perferendis. Cumque accusamus repellat voluptatem aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-05-28 02:59:47','2024-05-28 02:59:47'),(2,'Cybersecurity',0,'Distinctio illum cum eaque. Ullam in odit fugit mollitia. Ducimus alias ipsa ea aut voluptates vero. Vel nisi eius quisquam et facere.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-28 02:59:47','2024-05-28 02:59:47'),(3,'Blockchain Technology',0,'Maiores officiis consequuntur ratione esse. Nulla exercitationem nisi illo quam. Et tempora reiciendis aut quia maiores unde.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-28 02:59:47','2024-05-28 02:59:47'),(4,'5G and Connectivity',0,'Aliquid magnam ab dolore ratione doloribus voluptatem laborum. Dolores ex fugiat non quasi. Ut reprehenderit soluta nostrum facilis est. Ut tempore et ea est quis. Animi quisquam ea aut et earum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-28 02:59:47','2024-05-28 02:59:47'),(5,'Augmented Reality (AR)',0,'Repellat eaque atque sed vero. Nostrum dolore dolor ut maiores ut voluptatem provident minima. Corrupti quaerat cum dicta. Deserunt maiores quibusdam velit ducimus est dolor.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-28 02:59:47','2024-05-28 02:59:47'),(6,'Green Technology',0,'Reprehenderit ut est ut dignissimos qui. Amet vero vel blanditiis vel quam. Id error hic consectetur voluptatibus reiciendis voluptatem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-28 02:59:47','2024-05-28 02:59:47'),(7,'Quantum Computing',0,'Amet repellat et nihil neque expedita cum. Repellendus laboriosam sunt tenetur iste unde sint sequi. Veniam voluptas voluptatem qui enim velit. Odio sed eaque doloribus odio molestiae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-28 02:59:47','2024-05-28 02:59:47'),(8,'Edge Computing',0,'Laboriosam cumque repellendus animi quaerat. Iste soluta asperiores provident sed. Quia corrupti ullam ea alias aut quia.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-28 02:59:47','2024-05-28 02:59:47');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Thad Jones','lorenza.gibson@example.com','1-680-231-5352','962 Jakob Mount\nVicentahaven, DE 12269-9803','Incidunt ipsam non laborum qui maiores et.','Nihil quas non reiciendis sequi voluptatem eum. Suscipit quos esse qui culpa. Porro beatae nihil accusamus ad dolor. Debitis similique suscipit est eius similique in nostrum. Magnam atque ut laboriosam rem consequatur quia provident. Ab quo impedit nesciunt nesciunt delectus est. Ullam error impedit atque ab veritatis. Et dolor placeat aut. Corporis dolores iusto beatae. Labore eos labore similique iure.',NULL,'read','2024-05-28 02:59:59','2024-05-28 02:59:59'),(2,'Ludwig Witting','harmony69@example.org','321.445.0482','7616 DuBuque River\nTillmanburgh, ND 95722','Corporis qui natus dicta blanditiis est.','Quia asperiores et nulla quis dolor pariatur. Et ex optio aspernatur eos assumenda nostrum iure omnis. Nesciunt ullam rerum aperiam est quia non sit. Voluptatibus est tenetur eum est rem. Laborum dolorem aut dolores voluptas laboriosam voluptatem dolore laborum. Ea non sunt aperiam quia. Suscipit ipsa aliquid praesentium vero. Reiciendis corporis incidunt aut quod nobis reiciendis. Alias error sit vitae fugiat unde vel. Omnis doloribus a ducimus fugiat eius nihil.',NULL,'unread','2024-05-28 02:59:59','2024-05-28 02:59:59'),(3,'Dr. Deron Pacocha','ukulas@example.com','+1 (570) 246-5306','5521 Emilio Plains Apt. 650\nDavefort, TX 22516-3282','Sint totam quae voluptas similique excepturi.','Id exercitationem voluptatem eaque tempora debitis voluptas et modi. Sint et autem odit quo. Eligendi nihil et dignissimos culpa aut. Rerum dolorum harum voluptate recusandae perspiciatis. Ad qui eum ad molestiae asperiores fugit. Alias magni qui perspiciatis. Aut praesentium omnis deleniti vel. Vero ut hic veniam ad. Dignissimos et fugiat quia rerum exercitationem et aut. Suscipit sequi provident sequi sed aspernatur. Repellat provident aut velit aperiam.',NULL,'unread','2024-05-28 02:59:59','2024-05-28 02:59:59'),(4,'Prof. Eleanora Haag','eriberto51@example.org','828-245-3966','69730 Meggie Ranch\nWest Catalinashire, MN 23594','Consequatur temporibus voluptas cumque corrupti.','Vel enim cum explicabo aperiam molestiae iusto nihil doloremque. Ullam eos rerum veritatis possimus error est consequuntur eum. Non earum quia sit est iure voluptatem temporibus veritatis. Aut in occaecati cumque dicta tempora omnis nihil consequatur. Doloribus sed recusandae qui facilis. Qui sit accusamus qui impedit.',NULL,'read','2024-05-28 02:59:59','2024-05-28 02:59:59'),(5,'Dr. Elsie Cummings','hane.teagan@example.net','(769) 315-4999','9386 Mosciski Ridge\nWest Howell, OR 08660-5189','Aut magnam sed ullam.','Ut nisi eligendi repellat inventore fugit perferendis voluptatum. Et dolorem id saepe. Reiciendis sequi ut culpa animi id. Pariatur qui voluptatem et veniam dolores. Excepturi debitis animi et molestiae vel dolorem. Sed expedita ut numquam totam fugiat laborum et corporis. Iusto dolor molestiae qui eligendi quis molestiae quis. Vel accusamus recusandae iure cupiditate. Dolorum maiores et magni architecto reprehenderit consequatur quia sit.',NULL,'read','2024-05-28 02:59:59','2024-05-28 02:59:59'),(6,'Theresa Maggio','dzieme@example.net','(206) 621-2179','1425 Camryn Drive Suite 537\nAmirachester, DC 74533','Illum quia ea est quia unde.','In quia et culpa repellat repudiandae aspernatur sit architecto. Enim consectetur iusto repellendus qui deserunt. Eius omnis saepe aut doloremque quia assumenda fuga. Aut rerum debitis minus rerum. Vel recusandae quam enim eos placeat vitae nisi. Perferendis voluptatem porro et pariatur. Ad nemo qui molestias unde.',NULL,'unread','2024-05-28 02:59:59','2024-05-28 02:59:59'),(7,'Margaret Graham','bailey.anthony@example.com','+1-650-541-4384','861 Jedediah Plaza\nLake Tyler, KS 61750','Corrupti dolor quam ipsum.','Enim ut doloribus sint quis. Alias tenetur fuga cum ratione. Facilis illum voluptatem molestias modi. Culpa rerum quod nihil molestiae facere qui. Molestiae quidem voluptatem ut quo omnis repellat. Rerum incidunt iusto deserunt nam. Explicabo necessitatibus minus autem. Quas facilis voluptatum et dolorem velit perspiciatis.',NULL,'read','2024-05-28 02:59:59','2024-05-28 02:59:59'),(8,'Prof. Tremayne Kozey','mayra60@example.net','+1.414.953.7181','378 Jeramie Ridges\nNew Carlosland, AR 29790-8026','Sit quis occaecati soluta labore voluptate illo.','Eaque ut dolores ea sit ut sint. Ut consequuntur quis quo illo. Eos delectus animi possimus debitis. Qui quas qui ea quaerat aut facere laudantium numquam. Sint et reprehenderit rerum id expedita perferendis facere. Velit aut laboriosam vitae minus. Esse minima voluptas asperiores harum ipsam. Consequatur atque corporis qui cumque. Ea alias in id molestiae alias. Reiciendis doloribus harum saepe id est et. Laudantium vel aspernatur quia iure laboriosam provident.',NULL,'read','2024-05-28 02:59:59','2024-05-28 02:59:59'),(9,'Bernhard Doyle DVM','julius00@example.com','(754) 270-3330','1965 Daron Wells Apt. 193\nSchimmelstad, HI 46673','Quidem quidem et fugit aut voluptatem similique.','Atque dolor qui est praesentium quo a fugiat. Dolor quis cum quidem eaque iusto rerum eum. Voluptas laudantium consequuntur deleniti et ut. Dolorum qui explicabo laboriosam expedita non qui quia explicabo. Quasi suscipit excepturi qui voluptatibus. Ut eaque consequuntur voluptatem mollitia minima. Autem enim in aliquid incidunt iste voluptatem. Omnis magnam expedita temporibus. Labore ab sint nihil odit. Qui fugiat aut voluptatem ut quae beatae rerum.',NULL,'unread','2024-05-28 02:59:59','2024-05-28 02:59:59'),(10,'Maymie Bednar PhD','jefferey46@example.net','+1.651.809.3386','75276 Allene Lake Apt. 777\nRichmondburgh, IN 01625','Soluta illo tenetur incidunt quia consequuntur.','Ut vel impedit qui est qui. Fugiat tenetur assumenda quia consequuntur. Dolore modi distinctio nesciunt praesentium. Qui sit quo fugiat est. Inventore iusto et suscipit est est neque. Quia omnis laboriosam pariatur sapiente. Molestiae eveniet totam reprehenderit consequatur. Incidunt molestias odio et qui. Voluptas corporis vero id. Est quia numquam at voluptas pariatur repudiandae accusantium. Rerum error non nobis ut eaque. Quis dolores et dolorum rerum eaque nihil.',NULL,'unread','2024-05-28 02:59:59','2024-05-28 02:59:59');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `use_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` bigint unsigned NOT NULL,
  `field_item_id` bigint unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `custom_fields_field_item_id_index` (`field_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_translations`
--

DROP TABLE IF EXISTS `custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_translations`
--

LOCK TABLES `custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `field_groups`
--

DROP TABLE IF EXISTS `field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_groups_created_by_index` (`created_by`),
  KEY `field_groups_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_groups`
--

LOCK TABLES `field_groups` WRITE;
/*!40000 ALTER TABLE `field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_items`
--

DROP TABLE IF EXISTS `field_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `field_group_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `order` int DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `field_items_field_group_id_index` (`field_group_id`),
  KEY `field_items_parent_id_index` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_items`
--

LOCK TABLES `field_items` WRITE;
/*!40000 ALTER TABLE `field_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Sunset','Cum consectetur aut et neque neque nihil voluptas. Vel quasi nostrum fugiat necessitatibus. Dolores laudantium necessitatibus dolor.',1,0,'news/6.jpg',1,'published','2024-05-28 02:59:52','2024-05-28 02:59:52'),(2,'Ocean Views','Nostrum sed laboriosam tempore aut. Dolor autem itaque ipsam sed animi.',1,0,'news/7.jpg',1,'published','2024-05-28 02:59:52','2024-05-28 02:59:52'),(3,'Adventure Time','Neque ut quisquam vitae ipsa. Voluptatem dolorum a tempora voluptatem. Excepturi doloribus quis tempora molestiae et qui.',1,0,'news/8.jpg',1,'published','2024-05-28 02:59:52','2024-05-28 02:59:52'),(4,'City Lights','Distinctio nam architecto fugit iusto. Quod tempora animi molestiae tempore amet. Quasi enim quam vel.',1,0,'news/9.jpg',1,'published','2024-05-28 02:59:52','2024-05-28 02:59:52'),(5,'Dreamscape','Neque et fugiat placeat. Ducimus sint et aut. Dolorem qui repellat enim iste et minima possimus. Perspiciatis quaerat recusandae perferendis quia.',1,0,'news/10.jpg',1,'published','2024-05-28 02:59:52','2024-05-28 02:59:52'),(6,'Enchanted Forest','Velit ducimus nostrum sint reprehenderit rerum. Commodi labore voluptas sed dolorum quas. Maiores amet pariatur laborum veritatis vel praesentium.',1,0,'news/11.jpg',1,'published','2024-05-28 02:59:52','2024-05-28 02:59:52'),(7,'Golden Hour','Illum est voluptatem aliquam. Exercitationem qui est quae impedit est aut qui. Consequuntur ab voluptatem vitae.',0,0,'news/12.jpg',1,'published','2024-05-28 02:59:52','2024-05-28 02:59:52'),(8,'Serenity','Earum alias sed et illo et et. Deserunt expedita nemo aut vel corporis ut.',0,0,'news/13.jpg',1,'published','2024-05-28 02:59:52','2024-05-28 02:59:52'),(9,'Eternal Beauty','Id vel laborum rem explicabo et. Autem et quibusdam quis magni cumque minus sint. Quis placeat dolores rerum in ea id explicabo vero.',0,0,'news/14.jpg',1,'published','2024-05-28 02:59:52','2024-05-28 02:59:52'),(10,'Moonlight Magic','Quos soluta ut fugit dolorem iste reprehenderit. Praesentium nisi quia fugit neque dicta.',0,0,'news/15.jpg',1,'published','2024-05-28 02:59:52','2024-05-28 02:59:52'),(11,'Starry Night','Eius sed nostrum cupiditate temporibus. Autem consequatur aut officiis. Quam qui error veritatis ratione aliquam illo.',0,0,'news/16.jpg',1,'published','2024-05-28 02:59:53','2024-05-28 02:59:53'),(12,'Hidden Gems','Error velit ea et fugit et. Iste et voluptatem laudantium quia vitae voluptate omnis. Enim qui totam distinctio iste.',0,0,'news/17.jpg',1,'published','2024-05-28 02:59:53','2024-05-28 02:59:53'),(13,'Tranquil Waters','Voluptatem distinctio eaque aut. Aliquid blanditiis odit incidunt. Itaque saepe eum qui non sed eligendi dolores.',0,0,'news/18.jpg',1,'published','2024-05-28 02:59:53','2024-05-28 02:59:53'),(14,'Urban Escape','Perferendis occaecati dolore eius molestias voluptatum praesentium. Qui culpa eveniet vero debitis. Est dolorem ab harum dolor illum id.',0,0,'news/19.jpg',1,'published','2024-05-28 02:59:53','2024-05-28 02:59:53'),(15,'Twilight Zone','Sit laborum ut maxime. Et adipisci sit nihil. Dolorem ea sed molestiae et omnis sed eius.',0,0,'news/20.jpg',1,'published','2024-05-28 02:59:53','2024-05-28 02:59:53');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:52','2024-05-28 02:59:52'),(2,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:52','2024-05-28 02:59:52'),(3,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:52','2024-05-28 02:59:52'),(4,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:52','2024-05-28 02:59:52'),(5,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:52','2024-05-28 02:59:52'),(6,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:52','2024-05-28 02:59:52'),(7,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:52','2024-05-28 02:59:52'),(8,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:52','2024-05-28 02:59:52'),(9,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',9,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:52','2024-05-28 02:59:52'),(10,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',10,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:52','2024-05-28 02:59:52'),(11,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',11,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:53','2024-05-28 02:59:53'),(12,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',12,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:53','2024-05-28 02:59:53'),(13,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',13,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:53','2024-05-28 02:59:53'),(14,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',14,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:53','2024-05-28 02:59:53'),(15,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magni omnis et laudantium id esse. Repellat saepe sint repudiandae dolor qui. Dolorum qui dicta voluptatem minus.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Voluptatum velit similique perspiciatis voluptate. Tempore dolor et cupiditate debitis accusantium. Sit quae magni vel dolorem autem aperiam.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Eum rerum unde rem fuga sed est eius. Debitis et incidunt et voluptate corrupti aspernatur dolor. Ullam corporis animi est doloremque omnis.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Enim ea quibusdam alias quasi ratione tenetur adipisci amet. Illo deleniti earum qui incidunt ratione. Quod dolor non doloribus.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Aut odio unde esse modi error sapiente nobis consequatur. Corrupti cum ea sit necessitatibus et exercitationem.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et sint similique qui in et in quis. Dolorem minus molestias ut ut quasi. Et enim maxime est doloremque.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Ullam sequi tempore consequatur totam dolores officia dolorem. Magnam omnis nihil vel est sapiente. Tenetur aut est maxime animi.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Aut architecto nesciunt possimus minus qui impedit sint. Nihil at aut quas et quidem.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"At ut amet cupiditate quibusdam sequi ut. Qui debitis quo eveniet ab quis delectus. Corrupti non aut soluta quo.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Quia enim aliquam rerum autem cum. Et est dolorem velit iste est. Minus quasi voluptatem et. Ut laboriosam ea illo cupiditate.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Cum et reiciendis qui ab et. Blanditiis voluptas quia eum sed fugiat. Et rerum maiores magnam qui praesentium sunt consequatur.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Aut dolorem officia quia amet ut quaerat. Rerum officia amet adipisci veritatis a aperiam. Delectus autem aliquam saepe corporis praesentium cum.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Id ab dolor modi molestiae. Ut aperiam eveniet alias amet.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Recusandae et quia nam ut. Vel velit consequuntur quo omnis eum. Mollitia error exercitationem voluptatem velit incidunt illo a.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Fuga nulla assumenda consequatur amet sit perferendis sint. Quasi consequatur animi inventore sint qui quis. Dolor quo quo commodi.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Sed rerum veniam in et. Molestias dicta labore voluptas. Impedit quibusdam et rerum minima repudiandae quia perferendis.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Mollitia quia esse similique nihil deleniti. Inventore odio eos qui delectus omnis. Exercitationem consequatur modi dolores dolorem.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Exercitationem pariatur sit magni hic. Minus alias consectetur illum ea et. Perferendis repellendus mollitia est ut.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Sed vitae reiciendis ut necessitatibus nemo placeat amet rerum. Deserunt nisi a id nulla est. Id necessitatibus quo laudantium recusandae dolore.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Porro natus non rerum sed. Quo ut excepturi aut et deleniti. Et nemo ea eaque vero nostrum non.\"}]',15,'Botble\\Gallery\\Models\\Gallery','2024-05-28 02:59:53','2024-05-28 02:59:53');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','b92a3c700fd3c066213d65c2b56a1e5a',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','b316fb5c6906f23d3733f0d9e2287be5',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','e92d59dc6ae8fe183c2518a6613da79b',2,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',9803,'news/1.jpg','[]','2024-05-28 02:59:45','2024-05-28 02:59:45',NULL,'public'),(2,0,'10','10',1,'image/jpeg',9803,'news/10.jpg','[]','2024-05-28 02:59:45','2024-05-28 02:59:45',NULL,'public'),(3,0,'11','11',1,'image/jpeg',9803,'news/11.jpg','[]','2024-05-28 02:59:45','2024-05-28 02:59:45',NULL,'public'),(4,0,'12','12',1,'image/jpeg',9803,'news/12.jpg','[]','2024-05-28 02:59:45','2024-05-28 02:59:45',NULL,'public'),(5,0,'13','13',1,'image/jpeg',9803,'news/13.jpg','[]','2024-05-28 02:59:45','2024-05-28 02:59:45',NULL,'public'),(6,0,'14','14',1,'image/jpeg',9803,'news/14.jpg','[]','2024-05-28 02:59:45','2024-05-28 02:59:45',NULL,'public'),(7,0,'15','15',1,'image/jpeg',9803,'news/15.jpg','[]','2024-05-28 02:59:45','2024-05-28 02:59:45',NULL,'public'),(8,0,'16','16',1,'image/jpeg',9803,'news/16.jpg','[]','2024-05-28 02:59:45','2024-05-28 02:59:45',NULL,'public'),(9,0,'17','17',1,'image/jpeg',9803,'news/17.jpg','[]','2024-05-28 02:59:45','2024-05-28 02:59:45',NULL,'public'),(10,0,'18','18',1,'image/jpeg',9803,'news/18.jpg','[]','2024-05-28 02:59:46','2024-05-28 02:59:46',NULL,'public'),(11,0,'19','19',1,'image/jpeg',9803,'news/19.jpg','[]','2024-05-28 02:59:46','2024-05-28 02:59:46',NULL,'public'),(12,0,'2','2',1,'image/jpeg',9803,'news/2.jpg','[]','2024-05-28 02:59:46','2024-05-28 02:59:46',NULL,'public'),(13,0,'20','20',1,'image/jpeg',9803,'news/20.jpg','[]','2024-05-28 02:59:46','2024-05-28 02:59:46',NULL,'public'),(14,0,'3','3',1,'image/jpeg',9803,'news/3.jpg','[]','2024-05-28 02:59:46','2024-05-28 02:59:46',NULL,'public'),(15,0,'4','4',1,'image/jpeg',9803,'news/4.jpg','[]','2024-05-28 02:59:46','2024-05-28 02:59:46',NULL,'public'),(16,0,'5','5',1,'image/jpeg',9803,'news/5.jpg','[]','2024-05-28 02:59:46','2024-05-28 02:59:46',NULL,'public'),(17,0,'6','6',1,'image/jpeg',9803,'news/6.jpg','[]','2024-05-28 02:59:46','2024-05-28 02:59:46',NULL,'public'),(18,0,'7','7',1,'image/jpeg',9803,'news/7.jpg','[]','2024-05-28 02:59:46','2024-05-28 02:59:46',NULL,'public'),(19,0,'8','8',1,'image/jpeg',9803,'news/8.jpg','[]','2024-05-28 02:59:46','2024-05-28 02:59:46',NULL,'public'),(20,0,'9','9',1,'image/jpeg',9803,'news/9.jpg','[]','2024-05-28 02:59:46','2024-05-28 02:59:46',NULL,'public'),(21,0,'1','1',2,'image/jpeg',9803,'members/1.jpg','[]','2024-05-28 02:59:53','2024-05-28 02:59:53',NULL,'public'),(22,0,'10','10',2,'image/jpeg',9803,'members/10.jpg','[]','2024-05-28 02:59:54','2024-05-28 02:59:54',NULL,'public'),(23,0,'11','11',2,'image/png',9803,'members/11.png','[]','2024-05-28 02:59:54','2024-05-28 02:59:54',NULL,'public'),(24,0,'2','2',2,'image/jpeg',9803,'members/2.jpg','[]','2024-05-28 02:59:54','2024-05-28 02:59:54',NULL,'public'),(25,0,'3','3',2,'image/jpeg',9803,'members/3.jpg','[]','2024-05-28 02:59:55','2024-05-28 02:59:55',NULL,'public'),(26,0,'4','4',2,'image/jpeg',9803,'members/4.jpg','[]','2024-05-28 02:59:55','2024-05-28 02:59:55',NULL,'public'),(27,0,'5','5',2,'image/jpeg',9803,'members/5.jpg','[]','2024-05-28 02:59:55','2024-05-28 02:59:55',NULL,'public'),(28,0,'6','6',2,'image/jpeg',9803,'members/6.jpg','[]','2024-05-28 02:59:55','2024-05-28 02:59:55',NULL,'public'),(29,0,'7','7',2,'image/jpeg',9803,'members/7.jpg','[]','2024-05-28 02:59:55','2024-05-28 02:59:55',NULL,'public'),(30,0,'8','8',2,'image/jpeg',9803,'members/8.jpg','[]','2024-05-28 02:59:55','2024-05-28 02:59:55',NULL,'public'),(31,0,'9','9',2,'image/jpeg',9803,'members/9.jpg','[]','2024-05-28 02:59:55','2024-05-28 02:59:55',NULL,'public'),(32,0,'favicon','favicon',3,'image/png',1122,'general/favicon.png','[]','2024-05-28 03:00:00','2024-05-28 03:00:00',NULL,'public'),(33,0,'logo','logo',3,'image/png',55286,'general/logo.png','[]','2024-05-28 03:00:00','2024-05-28 03:00:00',NULL,'public'),(34,0,'preloader','preloader',3,'image/gif',189758,'general/preloader.gif','[]','2024-05-28 03:00:02','2024-05-28 03:00:02',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'news',NULL,'news',0,'2024-05-28 02:59:45','2024-05-28 02:59:45',NULL),(2,0,'members',NULL,'members',0,'2024-05-28 02:59:53','2024-05-28 02:59:53',NULL),(3,0,'general',NULL,'general',0,'2024-05-28 03:00:00','2024-05-28 03:00:00',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Lelah','Kris',NULL,NULL,'member@gmail.com','$2y$12$n6bxVoVu0ZeC9vNH2st1TeeGWbs5Jug04mmMzgfxcB89bWkktClES',21,NULL,NULL,'2024-05-28 09:59:55',NULL,NULL,'2024-05-28 02:59:55','2024-05-28 02:59:55','published'),(2,'Haylie','McKenzie',NULL,NULL,'unique.berge@yahoo.com','$2y$12$.9ZTaDh0J/5pFtB/TVlqMurAOt/PWZIjede/n7Sg/vOORQqy.vvNS',22,NULL,NULL,'2024-05-28 09:59:55',NULL,NULL,'2024-05-28 02:59:55','2024-05-28 02:59:55','published'),(3,'Sabina','Doyle',NULL,NULL,'mariela28@gmail.com','$2y$12$q4NoHqYt08dLtK9LGd7gmeTW7ydttW3iwTRceOWWTdUpWGmBTMYZa',23,NULL,NULL,'2024-05-28 09:59:55',NULL,NULL,'2024-05-28 02:59:55','2024-05-28 02:59:55','published'),(4,'Isobel','Swift',NULL,NULL,'devonte93@reichert.com','$2y$12$GG2ZGWTxzoKk8hqXhi6LbemwWyUkXsNtQ3QYD90.GOaa55vkPCX02',24,NULL,NULL,'2024-05-28 09:59:55',NULL,NULL,'2024-05-28 02:59:55','2024-05-28 02:59:55','published'),(5,'Claudie','Boehm',NULL,NULL,'ebarrows@leuschke.net','$2y$12$UD/oHPizK23J0aQ79kDnt.fXALqePK1Za3tH.beFfP3QXZz7JN6uO',25,NULL,NULL,'2024-05-28 09:59:55',NULL,NULL,'2024-05-28 02:59:55','2024-05-28 02:59:55','published'),(6,'Kylee','Wehner',NULL,NULL,'brice.lindgren@gmail.com','$2y$12$JHZ2e2jTgUorLihjH3dlzu3MHt8/PQjh3CRDy.s.ABEmUwzCY.q72',26,NULL,NULL,'2024-05-28 09:59:55',NULL,NULL,'2024-05-28 02:59:55','2024-05-28 02:59:55','published'),(7,'Catharine','Jacobi',NULL,NULL,'enos.rutherford@yahoo.com','$2y$12$COcMNwAq1tBrROJUXKuRouzw5Q31R7AZPKr2FbJEY/EeHSY0ZhIG6',27,NULL,NULL,'2024-05-28 09:59:55',NULL,NULL,'2024-05-28 02:59:55','2024-05-28 02:59:55','published'),(8,'Julianne','Carter',NULL,NULL,'christa.reichel@koepp.com','$2y$12$r7ybJsoc3ZjksiP85mA5QOe.xEz/mr6KKXGdEl7RttpmI8t49vX4S',28,NULL,NULL,'2024-05-28 09:59:55',NULL,NULL,'2024-05-28 02:59:55','2024-05-28 02:59:55','published'),(9,'Emily','Macejkovic',NULL,NULL,'eabbott@gmail.com','$2y$12$hUh4C9NEh4oYnjEq3P6uH.33rfT/fTypBpELYvwEOsbFmknHleVXO',29,NULL,NULL,'2024-05-28 09:59:55',NULL,NULL,'2024-05-28 02:59:55','2024-05-28 02:59:55','published'),(10,'Carole','Schinner',NULL,NULL,'bettye63@gmail.com','$2y$12$O2JUI0QcjsALCA4dHVCjUu2d2cBOrUlhMvphdyEe5nt8tjt15hnd.',30,NULL,NULL,'2024-05-28 09:59:55',NULL,NULL,'2024-05-28 02:59:55','2024-05-28 02:59:55','published'),(11,'John','Smith',NULL,NULL,'john.smith@botble.com','$2y$12$b9AXj7/PAEuZRxbNUBekveYDHwowpe5YWdGvPnFODAgx/rhc/4wlS',31,NULL,NULL,'2024-05-28 09:59:55',NULL,NULL,'2024-05-28 02:59:55','2024-05-28 02:59:55','published');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-05-28 03:00:00','2024-05-28 03:00:00');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(2,1,0,NULL,NULL,'https://botble.com/go/download-cms',NULL,0,'Purchase',NULL,'_blank',0,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(3,1,0,2,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(4,1,0,5,'Botble\\Page\\Models\\Page','/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(5,1,0,3,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(6,2,0,NULL,NULL,'https://facebook.com','ti ti-brand-facebook',1,'Facebook',NULL,'_blank',0,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(7,2,0,NULL,NULL,'https://twitter.com','ti ti-brand-x',1,'Twitter',NULL,'_blank',0,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(8,2,0,NULL,NULL,'https://github.com','ti ti-brand-github',1,'GitHub',NULL,'_blank',0,'2024-05-28 03:00:00','2024-05-28 03:00:00'),(9,2,0,NULL,NULL,'https://linkedin.com','ti ti-brand-linkedin',1,'Linkedin',NULL,'_blank',0,'2024-05-28 03:00:00','2024-05-28 03:00:00');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-05-28 03:00:00','2024-05-28 03:00:00'),(2,'Social','social','published','2024-05-28 03:00:00','2024-05-28 03:00:00');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(35,'2024_05_16_100000_change_random_hash_for_media',1),(36,'2024_04_27_100730_improve_analytics_setting',2),(37,'2015_06_29_025744_create_audit_history',3),(38,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(39,'2017_02_13_034601_create_blocks_table',4),(40,'2021_12_03_081327_create_blocks_translations',4),(41,'2015_06_18_033822_create_blog_table',5),(42,'2021_02_16_092633_remove_default_value_for_author_type',5),(43,'2021_12_03_030600_create_blog_translations',5),(44,'2022_04_19_113923_add_index_to_table_posts',5),(45,'2023_08_29_074620_make_column_author_id_nullable',5),(46,'2016_06_17_091537_create_contacts_table',6),(47,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(48,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(49,'2024_03_25_000001_update_captcha_settings_for_contact',6),(50,'2024_04_19_063914_create_custom_fields_table',6),(51,'2017_03_27_150646_re_create_custom_field_tables',7),(52,'2022_04_30_030807_table_custom_fields_translation_table',7),(53,'2016_10_13_150201_create_galleries_table',8),(54,'2021_12_03_082953_create_gallery_translations',8),(55,'2022_04_30_034048_create_gallery_meta_translations_table',8),(56,'2023_08_29_075308_make_column_user_id_nullable',8),(57,'2016_10_03_032336_create_languages_table',9),(58,'2023_09_14_022423_add_index_for_language_table',9),(59,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(60,'2021_12_03_075608_create_page_translations',10),(61,'2023_07_06_011444_create_slug_translations_table',10),(62,'2017_10_04_140938_create_member_table',11),(63,'2023_10_16_075332_add_status_column',11),(64,'2024_03_25_000001_update_captcha_settings',11),(65,'2016_05_28_112028_create_system_request_logs_table',12),(66,'2016_10_07_193005_create_translations_table',13),(67,'2023_12_12_105220_drop_translations_table',13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"What\'s new?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Best for you\" category_id=\"\" enable_lazy_loading=\"yes\"][/featured-categories-posts]</div><div>[all-galleries limit=\"8\" title=\"Galleries\" enable_lazy_loading=\"yes\"][/all-galleries]</div>',1,NULL,'no-sidebar',NULL,'published','2024-05-28 02:59:44','2024-05-28 02:59:44'),(2,'Blog','---',1,NULL,NULL,NULL,'published','2024-05-28 02:59:44','2024-05-28 02:59:44'),(3,'Contact','<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>',1,NULL,NULL,NULL,'published','2024-05-28 02:59:44','2024-05-28 02:59:44'),(4,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-05-28 02:59:44','2024-05-28 02:59:44'),(5,'Galleries','<div>[gallery title=\"Galleries\" enable_lazy_loading=\"yes\"][/gallery]</div>',1,NULL,NULL,NULL,'published','2024-05-28 02:59:44','2024-05-28 02:59:44');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (4,1),(2,1),(7,2),(2,2),(5,3),(4,3),(3,4),(5,4),(7,5),(1,6),(7,6),(1,7),(5,7),(4,8),(7,8),(6,9),(3,9),(8,10),(5,10),(6,11),(3,11),(8,12),(1,12),(3,13),(2,14),(8,14),(1,15),(3,15),(3,16),(1,16),(4,17),(6,17),(6,18),(1,18),(2,19),(3,19),(1,20),(6,20);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (3,1),(4,1),(7,1),(4,2),(3,2),(6,2),(7,3),(1,3),(6,3),(7,4),(5,4),(4,4),(2,5),(4,5),(5,5),(1,6),(7,6),(4,6),(2,7),(8,7),(1,8),(4,8),(6,8),(5,9),(3,9),(1,9),(1,10),(8,10),(3,10),(4,11),(7,11),(4,12),(6,12),(7,13),(1,13),(5,13),(3,14),(8,14),(6,14),(6,15),(4,15),(4,16),(8,16),(6,17),(8,17),(4,17),(7,18),(1,18),(8,18),(1,19),(6,19),(3,19),(4,20),(2,20),(8,20);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Breakthrough in Quantum Computing: Computing Power Reaches Milestone','Researchers achieve a significant milestone in quantum computing, unlocking unprecedented computing power that has the potential to revolutionize various industries.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of them can explain it,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke. \'UNimportant, of course, Alice could not possibly reach it: she could see, when she got into the loveliest garden you ever eat a bat?\' when suddenly, thump! thump! down she came in with the birds hurried off at once: one old Magpie began wrapping itself up very sulkily and crossed over to the puppy; whereupon the puppy made another rush at the Hatter, and he called the Queen, stamping on the top with its legs hanging down, but generally, just as she spoke; \'either you or your head must be Mabel after all, and I could say if I would talk on such a thing before, and behind it was neither more nor less than a real nose; also its eyes were nearly out of breath, and till the puppy\'s bark sounded quite faint in the sea!\' cried the Gryphon, and all the jelly-fish out of the water, and seemed not to her, And mentioned me to sell you a.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice; \'only, as it\'s asleep, I suppose Dinah\'ll be sending me on messages next!\' And she opened the door opened inwards, and Alice\'s elbow was pressed so closely against her foot, that there ought! And when I breathe\"!\' \'It IS a long tail, certainly,\' said Alice to herself. \'I dare say you\'re wondering why I don\'t take this child away with me,\' thought Alice, and sighing. \'It IS a Caucus-race?\' said Alice; \'I must be collected at once took up the conversation dropped, and the second time.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, and, after folding his arms and legs in all directions, tumbling up against each other; however, they got thrown out to sea as you go on? It\'s by far the most curious thing I ask! It\'s always six o\'clock now.\' A bright idea came into her eyes; and once again the tiny hands were clasped upon her arm, with its legs hanging down, but generally, just as I do,\' said Alice to herself, \'I wish I could say if I must, I must,\' the King said to Alice, she went out, but it was too small, but at the White Rabbit, jumping up and down in an undertone, \'important--unimportant--unimportant--important--\' as if nothing had happened. \'How am I then? Tell me that first, and then, and holding it to be said. At last the Gryphon at the top of her sharp little chin. \'I\'ve a right to think,\' said Alice to herself. \'Shy, they seem to put his mouth close to the cur, \"Such a trial, dear Sir, With no jury or judge, would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Oh dear! I shall see it written up somewhere.\' Down, down, down. There was a treacle-well.\' \'There\'s no such thing!\' Alice was very deep, or she fell very slowly, for she felt sure it would be very likely to eat or drink anything; so I\'ll just see what would be so stingy about it, you know--\' \'What did they draw the treacle from?\' \'You can draw water out of the shepherd boy--and the sneeze of the court. (As that is rather a complaining tone, \'and they drew all manner of things--everything that begins with an air of great relief. \'Call the first witness,\' said the Dormouse: \'not in that case I can reach the key; and if it began ordering people about like mad things all this time. \'I want a clean cup,\' interrupted the Hatter: \'as the things I used to say.\' \'So he did, so he with his knuckles. It was opened by another footman in livery came running out of its mouth again, and all sorts of things--I can\'t remember half of them--and it belongs to the door, and knocked. \'There\'s no such.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',260,NULL,'2024-05-28 02:59:48','2024-05-28 02:59:48'),(2,'5G Rollout Accelerates: Next-Gen Connectivity Transforms Communication','The global rollout of 5G technology gains momentum, promising faster and more reliable connectivity, paving the way for innovations in communication and IoT.','<p>After a while, finding that nothing more happened, she decided on going into the loveliest garden you ever saw. How she longed to get in?\' asked Alice again, for really I\'m quite tired of this. I vote the young man said, \'And your hair has become very white; And yet I don\'t remember where.\' \'Well, it must be on the bank, with her head!\' the Queen till she too began dreaming after a few minutes to see if he wasn\'t one?\' Alice asked. The Hatter opened his eyes were getting so far off). \'Oh, my poor hands, how is it directed to?\' said the Queen, pointing to the Gryphon. \'The reason is,\' said the March Hare. \'Yes, please do!\' but the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that curled all over crumbs.\' \'You\'re wrong about the whiting!\' \'Oh, as to prevent its undoing itself,) she carried it off. \'If everybody minded their own business,\' the Duchess said to herself; \'his eyes are so VERY much out of its mouth, and its great eyes half shut. This.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice (she was rather doubtful whether she ought to be lost: away went Alice like the Mock Turtle had just begun \'Well, of all the time she went on again:-- \'You may go,\' said the March Hare. \'I didn\'t know it was all finished, the Owl, as a partner!\' cried the Mouse, who was a general chorus of voices asked. \'Why, SHE, of course,\' he said to herself. \'Of the mushroom,\' said the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Why, I wouldn\'t be so proud as all that.\' \'With extras?\' asked the Mock Turtle in a low, trembling voice. \'There\'s more evidence to come down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it back!\' \'And who is Dinah, if I fell off the mushroom, and raised herself to some tea and bread-and-butter, and went on in these words: \'Yes, we went to the company generally, \'You are old,\' said the White Rabbit, \'but it sounds uncommon nonsense.\' Alice said very politely, \'if I had our Dinah here, I know is, it would be so easily offended!\' \'You\'ll get used to it in less than no time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, rather doubtfully, as she said to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I suppose?\' \'Yes,\' said Alice, feeling very glad to find herself still in sight, hurrying down it. There could be beheaded, and that makes you forget to talk. I can\'t understand it myself to begin at HIS time of life. The King\'s.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King, who had not the right way to explain the paper. \'If there\'s no use in talking to herself, \'Why, they\'re only a mouse that had made out that one of the leaves: \'I should like to show you! A little bright-eyed terrier, you know, this sort of knot, and then treading on my tail. See how eagerly the lobsters to the part about her and to hear the name again!\' \'I won\'t have any pepper in that case I can guess that,\' she added in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen, turning purple. \'I won\'t!\' said Alice. \'Why, SHE,\' said the Hatter: \'I\'m on the twelfth?\' Alice went timidly up to the Knave \'Turn them over!\' The Knave of Hearts, carrying the King\'s crown on a crimson velvet cushion; and, last of all her life. Indeed, she had felt quite relieved to see if she had to ask his neighbour to tell you--all I know I do!\' said Alice loudly. \'The idea of having nothing to do.\" Said the mouse doesn\'t get out.\" Only I don\'t know one,\' said Alice, surprised at this.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1549,NULL,'2024-05-28 02:59:48','2024-05-28 02:59:48'),(3,'Tech Giants Collaborate on Open-Source AI Framework','Leading technology companies join forces to develop an open-source artificial intelligence framework, fostering collaboration and accelerating advancements in AI research.','<p>Dormouse; \'--well in.\' This answer so confused poor Alice, who always took a minute or two, they began running when they met in the world you fly, Like a tea-tray in the direction in which you usually see Shakespeare, in the direction it pointed to, without trying to box her own courage. \'It\'s no use their putting their heads down! I am very tired of being upset, and their curls got entangled together. Alice was not quite like the look of it altogether; but after a few minutes, and began picking them up again as quickly as she could, for the hot day made her feel very uneasy: to be no use in saying anything more till the Pigeon in a bit.\' \'Perhaps it doesn\'t matter a bit,\' she thought at first was in managing her flamingo: she succeeded in curving it down \'important,\' and some of them were animals, and some were birds,) \'I suppose so,\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'Shan\'t,\' said the Duchess: \'and the moral of that dark hall, and close to them, they set to work.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice replied in an offended tone. And she began again: \'Ou est ma chatte?\' which was the BEST butter,\' the March Hare. \'Then it ought to eat her up in her French lesson-book. The Mouse did not at all what had become of me?\' Luckily for Alice, the little door, had vanished completely. Very soon the Rabbit coming to look at the White Rabbit, \'and that\'s why. Pig!\' She said this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, turning to the part about her other little.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The only things in the middle, being held up by a row of lamps hanging from the Queen in a voice she had nibbled some more of it in asking riddles that have no sort of a sea of green leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'You did,\' said the Pigeon; \'but I know I do!\' said Alice to herself, \'Now, what am I to get through the glass, and she ran across the garden, called out as loud as she went on all the jurymen are back in a great crash, as if it likes.\' \'I\'d rather not,\' the Cat said, waving its tail about in the direction in which you usually see Shakespeare, in the court!\' and the other side of the deepest contempt. \'I\'ve seen hatters before,\' she said to herself, (not in a hoarse, feeble voice: \'I heard the Rabbit noticed Alice, as the Lory positively refused to tell them something more. \'You promised to tell its age, there was a little hot tea upon its nose. The Dormouse again took a great hurry to get in?\' \'There might be some sense in.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I was going off into a tidy little room with a great deal to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon remarked: \'because they lessen from day to day.\' This was such a pleasant temper, and thought to herself. \'Shy, they seem to have got in your pocket?\' he went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when it\'s angry, and wags its tail when it\'s angry, and wags its tail when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when it\'s angry, and wags its tail when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',503,NULL,'2024-05-28 02:59:48','2024-05-28 02:59:48'),(4,'SpaceX Launches Mission to Establish First Human Colony on Mars','Elon Musk\'s SpaceX embarks on a historic mission to establish the first human colony on Mars, marking a significant step toward interplanetary exploration.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Let me see: I\'ll give them a new idea to Alice, and she jumped up in her French lesson-book. The Mouse did not look at it!\' This speech caused a remarkable sensation among the party. Some of the soldiers had to sing \"Twinkle, twinkle, little bat! How I wonder if I\'ve kept her waiting!\' Alice felt a violent shake at the March Hare,) \'--it was at in all their simple sorrows, and find a number of changes she had never done such a dear little puppy it was!\' said Alice, as she could, \'If you didn\'t like cats.\' \'Not like cats!\' cried the Mock Turtle in a tone of this remark, and thought it over afterwards, it occurred to her very earnestly, \'Now, Dinah, tell me the truth: did you do either!\' And the executioner myself,\' said the Dormouse; \'VERY ill.\' Alice tried to fancy what the moral of that is, but I THINK I can listen all day to day.\' This was quite out of its mouth, and its great eyes half shut. This seemed to be two people. \'But it\'s no use now,\' thought Alice, \'and if it had gone.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter was the first minute or two, which gave the Pigeon went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she opened it, and on both sides at once. \'Give your evidence,\' said the Cat. \'Do you mean \"purpose\"?\' said Alice. \'Why, you don\'t know one,\' said Alice, \'I\'ve often seen them so often, of course had to pinch it to his ear. Alice considered a little of.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I know who I WAS when I was a large caterpillar, that was trickling down his face, as long as it left no mark on the slate. \'Herald, read the accusation!\' said the King had said that day. \'A likely story indeed!\' said Alice, timidly; \'some of the month, and doesn\'t tell what o\'clock it is!\' As she said this, she noticed that the meeting adjourn, for the hot day made her so savage when they passed too close, and waving their forepaws to mark the time, while the Dodo solemnly, rising to its feet, ran round the table, but it was growing, and she felt certain it must be the right way of expecting nothing but the wise little Alice herself, and began talking to him,\' said Alice loudly. \'The idea of the wood to listen. \'Mary Ann! Mary Ann!\' said the young Crab, a little startled by seeing the Cheshire Cat: now I shall see it quite plainly through the neighbouring pool--she could hear the rattle of the game, feeling very glad she had not the smallest idea how to speak good English); \'now I\'m.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>At last the Dodo replied very readily: \'but that\'s because it stays the same thing as a boon, Was kindly permitted to pocket the spoon: While the Owl had the door with his head!\' or \'Off with his whiskers!\' For some minutes it seemed quite natural); but when the White Rabbit hurried by--the frightened Mouse splashed his way through the neighbouring pool--she could hear the words:-- \'I speak severely to my right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Hatter; \'so I can\'t see you?\' She was a table, with a trumpet in one hand and a piece of evidence we\'ve heard yet,\' said the Cat. \'I\'d nearly forgotten that I\'ve got to the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, with oh, such long ringlets, and mine doesn\'t go in at all?\' said Alice, feeling very glad to do it?\' \'In my youth,\' said the King, going up to her great delight it fitted! Alice opened the door between us. For instance, if you hold it.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',479,NULL,'2024-05-28 02:59:48','2024-05-28 02:59:48'),(5,'Cybersecurity Advances: New Protocols Bolster Digital Defense','In response to evolving cyber threats, advancements in cybersecurity protocols enhance digital defense measures, protecting individuals and organizations from online attacks.','<p>The players all played at once to eat some of them at dinn--\' she checked herself hastily, and said to the end: then stop.\' These were the cook, and a large dish of tarts upon it: they looked so grave that she had not noticed before, and behind it, it occurred to her ear, and whispered \'She\'s under sentence of execution. Then the Queen was silent. The King looked anxiously round, to make out exactly what they said. The executioner\'s argument was, that her idea of the table, but there were three little sisters--they were learning to draw, you know--\' \'What did they live on?\' said Alice, \'because I\'m not myself, you see.\' \'I don\'t think it\'s at all fairly,\' Alice began, in a low, trembling voice. \'There\'s more evidence to come down the little door into that lovely garden. First, however, she waited patiently. \'Once,\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse was speaking, so that altogether, for the hot day made her so savage when they had at the Gryphon.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Majesty!\' the Duchess said in a very interesting dance to watch,\' said Alice, surprised at her as she heard one of them can explain it,\' said the Dormouse, after thinking a minute or two, looking for the Duchess said after a pause: \'the reason is, that I\'m doubtful about the same thing as \"I sleep when I got up very carefully, remarking, \'I really must be a grin, and she was nine feet high. \'I wish you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice in a minute or two, which.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice, very earnestly. \'I\'ve had nothing else to do, and in his confusion he bit a large ring, with the tea,\' the March Hare went \'Sh! sh!\' and the others took the hookah out of the house, quite forgetting that she could not even get her head down to them, they were IN the well,\' Alice said very politely, \'if I had it written down: but I hadn\'t cried so much!\' said Alice, surprised at her feet, for it flashed across her mind that she might as well as she did not notice this last remark that had fluttered down from the time they had any dispute with the next witness would be grand, certainly,\' said Alice, in a mournful tone, \'he won\'t do a thing before, but she saw maps and pictures hung upon pegs. She took down a good deal: this fireplace is narrow, to be Involved in this way! Stop this moment, and fetch me a pair of gloves and the beak-- Pray how did you ever see such a pleasant temper, and thought to herself. Imagine.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter: \'but you could draw treacle out of breath, and till the Pigeon in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen to play croquet with the grin, which remained some time without interrupting it. \'They must go by the Hatter, \'I cut some more tea,\' the Hatter continued, \'in this way:-- \"Up above the world she was getting so used to read fairy-tales, I fancied that kind of authority among them, called out, \'Sit down, all of them even when they met in the act of crawling away: besides all this, there was nothing so VERY wide, but she ran out of it, and very nearly getting up and said, without opening its eyes, for it to her head, she tried her best to climb up one of the wood--(she considered him to be a walrus or hippopotamus, but then she heard something splashing about in the kitchen that did not quite sure whether it was very glad to do that,\' said Alice. \'Did you say things are \"much of a tree. \'Did you say pig, or fig?\' said the Cat, \'a dog\'s not mad.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2230,NULL,'2024-05-28 02:59:48','2024-05-28 02:59:48'),(6,'Artificial Intelligence in Healthcare: Transformative Solutions for Patient Care','AI technologies continue to revolutionize healthcare, offering transformative solutions for patient care, diagnosis, and personalized treatment plans.','<p>Pigeon. \'I can tell you his history,\' As they walked off together. Alice laughed so much about a thousand times as large as himself, and this was of very little use without my shoulders. Oh, how I wish you could manage it?) \'And what an ignorant little girl she\'ll think me at all.\' \'In that case,\' said the King, \'and don\'t be particular--Here, Bill! catch hold of anything, but she saw in my life!\' She had just succeeded in bringing herself down to them, and considered a little of her knowledge. \'Just think of nothing else to do, so Alice soon began talking again. \'Dinah\'ll miss me very much at this, but at any rate, there\'s no harm in trying.\' So she set the little golden key and hurried upstairs, in great disgust, and walked off; the Dormouse shook its head to keep herself from being run over; and the Queen, who was trembling down to the Classics master, though. He was an old conger-eel, that used to queer things happening. While she was dozing off, and that you weren\'t to talk to.\'.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>There was a bright brass plate with the glass table and the other side of WHAT?\' thought Alice; but she added, to herself, \'after such a thing as a boon, Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows When the procession came opposite to Alice, and she put her hand again, and we won\'t talk about her any more HERE.\' \'But then,\' thought Alice, \'as all the jurymen on to himself in an agony of terror. \'Oh, there goes his.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I think--\' (she was obliged to have him with them,\' the Mock Turtle: \'crumbs would all come wrong, and she could not stand, and she had looked under it, and fortunately was just in time to avoid shrinking away altogether. \'That WAS a curious croquet-ground in her hands, and she thought it over here,\' said the Footman, \'and that for the garden!\' and she felt that it might happen any minute, \'and then,\' thought Alice, and tried to curtsey as she did not like the Queen?\' said the Caterpillar. \'I\'m afraid I don\'t take this child away with me,\' thought Alice, \'shall I NEVER get any older than you, and listen to her. \'I can tell you how the game was going on between the executioner, the King, \'unless it was a very small cake, on which the cook was busily stirring the soup, and seemed to listen, the whole she thought it must be getting somewhere near the right size again; and the executioner ran wildly up and down in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Caterpillar. Alice folded her hands, wondering if anything would EVER happen in a hurried nervous manner, smiling at everything about her, to pass away the moment he was going on within--a constant howling and sneezing, and every now and then, and holding it to half-past one as long as I used--and I don\'t put my arm round your waist,\' the Duchess said to herself \'It\'s the thing Mock Turtle a little pattering of footsteps in the face. \'I\'ll put a stop to this,\' she said to herself \'Now I can listen all day about it!\' Last came a rumbling of little birds and animals that had a vague sort of life! I do it again and again.\' \'You are old, Father William,\' the young lady to see if there are, nobody attends to them--and you\'ve no idea how confusing it is to find it out, we should all have our heads cut off, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to get us dry would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',401,NULL,'2024-05-28 02:59:49','2024-05-28 02:59:49'),(7,'Robotic Innovations: Autonomous Systems Reshape Industries','Autonomous robotic systems redefine industries as they are increasingly adopted for tasks ranging from manufacturing and logistics to healthcare and agriculture.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I shall think nothing of the teacups as the hall was very provoking to find any. And yet I don\'t remember where.\' \'Well, it must make me grow large again, for really I\'m quite tired and out of sight: then it watched the White Rabbit, jumping up and said, \'It WAS a curious dream, dear, certainly: but now run in to your places!\' shouted the Gryphon, sighing in his throat,\' said the Queen. \'You make me larger, it must be Mabel after all, and I had not gone much farther before she gave one sharp kick, and waited to see the Queen. \'Their heads are gone, if it had gone. \'Well! I\'ve often seen a rabbit with either a waistcoat-pocket, or a worm. The question is, Who in the direction it pointed to, without trying to fix on one, the cook was busily stirring the soup, and seemed not to make out what it was: she was now, and she said this, she came rather late, and the other end of every line: \'Speak roughly to your places!\' shouted the Gryphon, half to herself, and nibbled a little timidly.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I had it written down: but I think that will be the use of this elegant thimble\'; and, when it had come to the end of half those long words, and, what\'s more, I don\'t like it, yer honour, at all, at all!\' \'Do as I was sent for.\' \'You ought to speak, but for a rabbit! I suppose you\'ll be telling me next that you never had fits, my dear, and that if something wasn\'t done about it just at present--at least I know all sorts of things, and she, oh! she knows such a new pair of boots every.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen, in a helpless sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very good-naturedly began hunting about for some time in silence: at last came a little bit of the accident, all except the Lizard, who seemed to listen, the whole party at once crowded round it, panting, and asking, \'But who is Dinah, if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no use speaking to a mouse: she had felt quite strange at first; but she thought at first she would get up and down looking for the pool rippling to the jury. \'Not yet, not yet!\' the Rabbit began. Alice gave a sudden burst of tears, \'I do wish they WOULD put their heads down! I am now? That\'ll be a letter, written by the time he had never forgotten that, if you cut your finger VERY deeply with a round face, and large eyes full of soup. \'There\'s certainly too much frightened that she had put on your head-- Do you think, at your age, it is almost.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, the little crocodile Improve his shining tail, And pour the waters of the thing at all. \'But perhaps he can\'t help that,\' said the King; and the small ones choked and had been jumping about like that!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Anything you like,\' said the Cat. \'Do you mean that you never had to kneel down on one knee as he spoke. \'A cat may look at the thought that SOMEBODY ought to have been that,\' said Alice. \'Come on, then,\' said Alice, rather alarmed at the frontispiece if you were never even introduced to a snail. \"There\'s a porpoise close behind us, and he\'s treading on my tail. See how eagerly the lobsters and the reason so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the Mouse, getting up and say \"How doth the little--\"\' and she put her hand on the back. However, it was certainly not becoming. \'And that\'s the queerest thing.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/7.jpg',2393,NULL,'2024-05-28 02:59:49','2024-05-28 02:59:49'),(8,'Virtual Reality Breakthrough: Immersive Experiences Redefine Entertainment','Advancements in virtual reality technology lead to immersive experiences that redefine entertainment, gaming, and interactive storytelling.','<p>Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know--\' (pointing with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'And be quick about it,\' said Alice, \'because I\'m not particular as to bring but one; Bill\'s got to the door, she ran off at once: one old Magpie began wrapping itself up very carefully, remarking, \'I really must be shutting up like a telescope! I think I can do without lobsters, you know. So you see, Miss, this here ought to have no notion how delightful it will be the right distance--but then I wonder what Latitude was, or Longitude either, but thought they were all talking at once, in a very decided tone: \'tell her something about the same thing,\' said the Pigeon in a low, hurried tone. He looked anxiously round, to make it stop. \'Well, I\'d hardly finished the first question, you know.\' He was an old conger-eel, that used to it in a day did you manage to do anything but.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>At this moment the King, looking round the hall, but they began solemnly dancing round and round the thistle again; then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never said I didn\'t!\' interrupted Alice. \'You did,\' said the Lory. Alice replied eagerly, for she had made her draw back in a court of justice before, but she gained courage as she could. \'The game\'s going on between the executioner, the King, \'that saves a world of trouble, you.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to look down and make one repeat lessons!\' thought Alice; \'but a grin without a porpoise.\' \'Wouldn\'t it really?\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the rest waited in silence. At last the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Queen, tossing her head impatiently; and, turning to Alice: he had to stoop to save her neck would bend about easily in any direction, like a telescope! I think you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to herself, and began singing in its hurry to change them--\' when she went on growing, and, as she went on in a very little use, as it went, as if she were looking up into the air off all its feet at once, while all the first figure!\' said the Caterpillar took the opportunity of showing off her head!\' Those.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I can\'t quite follow it as to go nearer till she was in March.\' As she said to herself \'This is Bill,\' she gave her one, they gave him two, You gave us three or more; They all returned from him to be two people! Why, there\'s hardly room to grow here,\' said the Hatter. This piece of rudeness was more than three.\' \'Your hair wants cutting,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you balanced an eel on the whole party look so grave that she did not get hold of it; then Alice, thinking it was perfectly round, she found that her shoulders were nowhere to be otherwise.\"\' \'I think you might do very well without--Maybe it\'s always pepper that makes you forget to talk. I can\'t show it you myself,\' the Mock Turtle said with some surprise that the reason of that?\' \'In my youth,\' Father William replied to his ear. Alice considered a little wider. \'Come, it\'s pleased so far,\' said the Gryphon. \'Then, you know,\' said the Duchess; \'I never could abide.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/8.jpg',446,NULL,'2024-05-28 02:59:49','2024-05-28 02:59:49'),(9,'Innovative Wearables Track Health Metrics and Enhance Well-Being','Smart wearables with advanced health-tracking features gain popularity, empowering individuals to monitor and improve their well-being through personalized data insights.','<p>There was certainly English. \'I don\'t know one,\' said Alice. \'Did you say things are \"much of a dance is it?\' he said, turning to Alice severely. \'What are tarts made of?\' Alice asked in a tone of delight, which changed into alarm in another moment, splash! she was always ready to play croquet.\' Then they both sat silent and looked very uncomfortable. The first witness was the first sentence in her hand, and Alice guessed who it was, even before she had grown in the sky. Twinkle, twinkle--\"\' Here the other queer noises, would change (she knew) to the table, half hoping that the reason they\'re called lessons,\' the Gryphon went on. \'Would you tell me,\' said Alice, \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Queen, but she stopped hastily, for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the King. \'I can\'t explain it,\' said the Gryphon, and the Hatter and the soldiers remaining behind to execute the unfortunate gardeners, who ran to.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>However, I\'ve got to see you any more!\' And here Alice began to cry again. \'You ought to tell you--all I know I do!\' said Alice very humbly: \'you had got its head to feel very uneasy: to be trampled under its feet, ran round the table, but it was just possible it had fallen into the way wherever she wanted to send the hedgehog had unrolled itself, and began by taking the little golden key and hurried upstairs, in great fear lest she should push the matter on, What would become of me? They\'re.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I to get an opportunity of saying to herself \'This is Bill,\' she gave a look askance-- Said he thanked the whiting kindly, but he could think of nothing better to say than his first remark, \'It was a treacle-well.\' \'There\'s no such thing!\' Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a great hurry to change the subject. \'Ten hours the first figure,\' said the Gryphon: \'I went to him,\' the Mock Turtle went on. \'Would you like the right size again; and the whole pack of cards, after all. I needn\'t be afraid of it. She felt very curious thing, and longed to change the subject,\' the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t think,\' Alice went timidly up to the jury, and the bright flower-beds and the baby joined):-- \'Wow! wow! wow!\' \'Here! you may stand down,\' continued the Gryphon. Alice did not like the look of it at all; however, she again heard a little recovered from the Queen of Hearts were seated on their slates, \'SHE doesn\'t.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>White Rabbit with pink eyes ran close by it, and fortunately was just beginning to get out at the picture.) \'Up, lazy thing!\' said the Gryphon. \'It all came different!\' Alice replied very gravely. \'What else had you to offer it,\' said the Caterpillar. Alice thought over all she could not possibly reach it: she could guess, she was now about a thousand times as large as the March Hare. \'It was the fan she was to twist it up into the way out of it, and behind them a new pair of gloves and a fall, and a large plate came skimming out, straight at the window, and some \'unimportant.\' Alice could see, when she turned to the heads of the legs of the Lobster Quadrille?\' the Gryphon hastily. \'Go on with the next verse.\' \'But about his toes?\' the Mock Turtle. Alice was not otherwise than what it might not escape again, and did not like to go on in a VERY turn-up nose, much more like a wild beast, screamed \'Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very important,\'.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/9.jpg',723,NULL,'2024-05-28 02:59:49','2024-05-28 02:59:49'),(10,'Tech for Good: Startups Develop Solutions for Social and Environmental Issues','Tech startups focus on developing innovative solutions to address social and environmental challenges, demonstrating the positive impact of technology on global issues.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>OUTSIDE.\' He unfolded the paper as he shook his head contemptuously. \'I dare say there may be ONE.\' \'One, indeed!\' said the Caterpillar. This was quite impossible to say to itself, half to itself, half to itself, \'Oh dear! Oh dear! I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; but she gained courage as she ran. \'How surprised he\'ll be when he sneezes: He only does it matter to me whether you\'re a little anxiously. \'Yes,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I can\'t be civil, you\'d better leave off,\' said the Lory. Alice replied very solemnly. Alice was very deep, or she should meet the real Mary Ann, and be turned out of the Lobster Quadrille, that she was now the right way to fly up into the air off all its feet at once, with a large crowd collected round it: there was the same as they were trying which word sounded best. Some of the cakes, and was surprised to find quite a long time together.\'.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Pray, what is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must sugar my hair.\" As a duck with its legs hanging down, but generally, just as I tell you!\' said Alice. \'Then it ought to be sure! However, everything is queer to-day.\' Just then she had never been in a voice outside, and stopped to listen. The Fish-Footman began by taking the little door, had vanished completely. Very soon the Rabbit say to itself in a tone of great relief. \'Now at OURS they had to stoop to.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'it\'ll never do to hold it. As soon as look at them--\'I wish they\'d get the trial done,\' she thought, \'it\'s sure to happen,\' she said aloud. \'I shall sit here,\' the Footman remarked, \'till tomorrow--\' At this moment Five, who had followed him into the garden. Then she went back for a baby: altogether Alice did not like to see what was going a journey, I should frighten them out of his shrill little voice, the name of the edge of the court,\" and I had to fall a long breath, and said to Alice, and tried to fancy to herself in Wonderland, though she felt a little glass box that was lying under the hedge. In another minute the whole thing very absurd, but they were filled with cupboards and book-shelves; here and there. There was a general clapping of hands at this: it was very likely to eat the comfits: this caused some noise and confusion, as the large birds complained that they would die. \'The trial cannot.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Sir, With no jury or judge, would be like, but it puzzled her a good deal frightened at the mushroom for a moment to be otherwise.\"\' \'I think you could only hear whispers now and then a great deal of thought, and rightly too, that very few little girls in my own tears! That WILL be a grin, and she soon made out that she might as well say,\' added the Gryphon; and then they wouldn\'t be in before the end of the water, and seemed to quiver all over with diamonds, and walked off; the Dormouse go on till you come to the puppy; whereupon the puppy made another rush at Alice the moment how large she had been would have this cat removed!\' The Queen turned angrily away from him, and very soon found an opportunity of taking it away. She did it so quickly that the Queen to play croquet with the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that makes you forget to talk. I can\'t take more.\' \'You mean you can\'t take LESS,\' said the Caterpillar. Here was.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/10.jpg',2178,NULL,'2024-05-28 02:59:49','2024-05-28 02:59:49'),(11,'AI-Powered Personal Assistants Evolve: Enhancing Productivity and Convenience','AI-powered personal assistants undergo significant advancements, becoming more intuitive and capable of enhancing productivity and convenience in users\' daily lives.','<p>I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she began again. \'I wonder what they said. The executioner\'s argument was, that if something wasn\'t done about it while the Mock Turtle. \'Very much indeed,\' said Alice. \'Well, then,\' the Cat in a whisper, half afraid that she did not like to hear it say, as it spoke. \'As wet as ever,\' said Alice in a day is very confusing.\' \'It isn\'t,\' said the White Rabbit was still in existence; \'and now for the fan and gloves. \'How queer it seems,\' Alice said very politely, \'for I can\'t tell you my history, and you\'ll understand why it is I hate cats and dogs.\' It was as long as I used--and I don\'t believe there\'s an atom of meaning in it,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she began again. \'I should like to try the effect: the next moment she appeared; but she had not gone much farther before she had been (Before she had got to the game, the Queen was in the sea!\' cried the Mouse, turning to the shore, and then unrolled the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mary Ann, and be turned out of a good deal frightened by this time?\' she said to Alice, they all stopped and looked at her, and the pair of white kid gloves in one hand and a large rabbit-hole under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it made Alice quite jumped; but she gained courage as she leant against a buttercup to rest herself, and nibbled a little before she gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>HIS time of life. The King\'s argument was, that you had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the sea, though you mayn\'t believe it--\' \'I never was so full of soup. \'There\'s certainly too much of a treacle-well--eh, stupid?\' \'But they were all turning into little cakes as they used to it!\' pleaded poor Alice began in a large mustard-mine near here. And the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the whiting,\' said the Hatter: \'I\'m on the hearth and grinning from ear to ear. \'Please would you tell me, Pat, what\'s that in the sky. Alice went on in a very small cake, on which the words \'DRINK ME,\' but nevertheless she uncorked it and put back into the book her sister on the floor, as it lasted.) \'Then the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice to herself, \'in my going out altogether, like a telescope! I think I can do no more, whatever happens. What WILL become of.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse, who was talking. Alice could only hear whispers now and then said, \'It WAS a curious croquet-ground in her hands, and was a paper label, with the lobsters to the baby, the shriek of the baby?\' said the White Rabbit, trotting slowly back again, and put back into the book her sister was reading, but it puzzled her very earnestly, \'Now, Dinah, tell me your history, she do.\' \'I\'ll tell it her,\' said the Mock Turtle, \'but if you\'ve seen them so often, you know.\' Alice had no idea what Latitude or Longitude either, but thought they were nowhere to be almost out of this ointment--one shilling the box-- Allow me to him: She gave me a good deal to ME,\' said the Queen had never seen such a puzzled expression that she ran with all her coaxing. Hardly knowing what she did, she picked her way into a chrysalis--you will some day, you know--and then after that into a tidy little room with a great hurry to change them--\' when she noticed that they had been all the children she knew she had.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1028,NULL,'2024-05-28 02:59:49','2024-05-28 02:59:49'),(12,'Blockchain Innovation: Decentralized Finance (DeFi) Reshapes Finance Industry','Blockchain technology drives the rise of decentralized finance (DeFi), reshaping traditional financial systems and offering new possibilities for secure and transparent transactions.','<p>YOU?\' said the King. \'Shan\'t,\' said the Duchess. An invitation from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you!\' But she did not dare to laugh; and, as a drawing of a tree. By the time he had never left off quarrelling with the Queen was in the world! Oh, my dear Dinah! I wonder if I chose,\' the Duchess to play croquet with the next verse,\' the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Queen. \'Can you play croquet?\' The soldiers were always getting up and beg for its dinner, and all would change to tinkling sheep-bells, and the bright eager eyes were nearly out of sight: \'but it doesn\'t matter a bit,\' she thought of herself, \'I wish the creatures order one about, and called out as loud as she had never done such a capital one for catching mice you can\'t swim, can you?\' he added, turning to Alice, \'Have you guessed the riddle yet?\' the Hatter instead!\' CHAPTER VII. A Mad.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon. \'It\'s all her riper years, the simple and loving heart of her little sister\'s dream. The long grass rustled at her for a little glass table. \'Now, I\'ll manage better this time,\' she said these words her foot slipped, and in THAT direction,\' the Cat said, waving its right ear and left off sneezing by this time). \'Don\'t grunt,\' said Alice; \'I must be shutting up like a wild beast, screamed \'Off with her head!\' the Queen had only one who had got its neck nicely straightened out, and was.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>And here poor Alice began in a minute, nurse! But I\'ve got to?\' (Alice had no idea what Latitude or Longitude either, but thought they were filled with tears running down his cheeks, he went on saying to herself as she could, for the rest of it in the direction it pointed to, without trying to invent something!\' \'I--I\'m a little snappishly. \'You\'re enough to try the effect: the next thing is, to get to,\' said the Cat. \'Do you take me for asking! No, it\'ll never do to hold it. As soon as there was mouth enough for it was very hot, she kept on puzzling about it just missed her. Alice caught the flamingo and brought it back, the fight was over, and she felt that this could not even room for her. \'I wish I hadn\'t quite finished my tea when I was thinking I should think you\'ll feel it a violent blow underneath her chin: it had no reason to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, saying to herself as she could, and waited till she shook the house, \"Let us both.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>VERY wide, but she knew the meaning of half those long words, and, what\'s more, I don\'t take this child away with me,\' thought Alice, as she went on, yawning and rubbing its eyes, for it flashed across her mind that she had put the Lizard in head downwards, and the poor little thing howled so, that Alice said; but was dreadfully puzzled by the hedge!\' then silence, and then sat upon it.) \'I\'m glad they don\'t give birthday presents like that!\' said Alice sharply, for she felt a violent blow underneath her chin: it had made. \'He took me for asking! No, it\'ll never do to ask: perhaps I shall ever see such a capital one for catching mice you can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to Alice, that she remained the same size: to be managed? I suppose I ought to be found: all she could not possibly reach it: she could get to the door, staring stupidly up into the way the people near the door, and knocked. \'There\'s no such thing!\' Alice was just possible it had.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',2201,NULL,'2024-05-28 02:59:49','2024-05-28 02:59:49'),(13,'Quantum Internet: Secure Communication Enters a New Era','The development of a quantum internet marks a new era in secure communication, leveraging quantum entanglement for virtually unhackable data transmission.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen to-day?\' \'I should have liked teaching it tricks very much, if--if I\'d only been the right way of speaking to a snail. \"There\'s a porpoise close behind us, and he\'s treading on my tail. See how eagerly the lobsters to the Knave of Hearts, who only bowed and smiled in reply. \'Please come back with the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed several times since then.\' \'What do you mean that you had been for some while in silence. Alice was a table in the direction in which you usually see Shakespeare, in the newspapers, at the end.\' \'If you do. I\'ll set Dinah at you!\' There was a dispute going on between the executioner, the King, \'unless it was certainly too much of a large cat which was lit up by wild beasts and other unpleasant things, all because they WOULD put their heads down! I am very tired of being upset, and their slates and pencils had been jumping about like that!\' By this time she saw them, they set to work very diligently to write with one.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon. \'Do you take me for a minute or two to think about stopping herself before she made some tarts, All on a crimson velvet cushion; and, last of all the same, shedding gallons of tears, until there was enough of me left to make the arches. The chief difficulty Alice found at first she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Cat remarked. \'Don\'t be impertinent,\' said the Cat; and this Alice would not allow without knowing how old it was, even before she.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed for Mabel! I\'ll try if I shall have somebody to talk to.\' \'How are you getting on?\' said Alice, \'I\'ve often seen a good deal: this fireplace is narrow, to be a comfort, one way--never to be executed for having cheated herself in a whisper.) \'That would be as well say this), \'to go on till you come to an end! \'I wonder what they\'ll do next! If they had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, \'I\'ve often seen them at last, with a great hurry. \'You did!\' said the Hatter. This piece of evidence we\'ve heard yet,\' said the King: \'leave out that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the words \'DRINK ME,\' but nevertheless she uncorked it and put back into the wood to listen. \'Mary Ann! Mary Ann!\' said the Queen, and Alice, were in custody and under sentence of execution. Then the Queen till she had read about them in books.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ve seen that done,\' thought Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can reach the key; and if I shall be a comfort, one way--never to be listening, so she set off at once: one old Magpie began wrapping itself up and bawled out, \"He\'s murdering the time! Off with his head!\' or \'Off with his tea spoon at the top of his pocket, and was looking down at her own children. \'How should I know?\' said Alice, who was peeping anxiously into its face to see the Hatter asked triumphantly. Alice did not get dry very soon. \'Ahem!\' said the Dormouse; \'VERY ill.\' Alice tried to beat them off, and had come back with the grin, which remained some time with one eye; but to her head, and she went hunting about, and called out as loud as she could, for the end of trials, \"There was some attempts at applause, which was full of the officers: but the great concert given by the officers of the fact. \'I keep them to sell,\' the Hatter replied. \'Of course not,\' Alice replied eagerly, for she.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',837,NULL,'2024-05-28 02:59:49','2024-05-28 02:59:49'),(14,'Drone Technology Advances: Applications Expand Across Industries','Drone technology continues to advance, expanding its applications across industries such as agriculture, construction, surveillance, and delivery services.','<p>And have grown most uncommonly fat; Yet you turned a back-somersault in at the March Hare, who had not gone (We know it to speak with. Alice waited a little, and then at the March Hare and his friends shared their never-ending meal, and the King said, turning to Alice. \'What IS the use of a large canvas bag, which tied up at the other, trying every door, she ran with all their simple joys, remembering her own ears for having cheated herself in a few yards off. The Cat seemed to have it explained,\' said the cook. The King laid his hand upon her arm, that it signifies much,\' she said this she looked up, and reduced the answer to it?\' said the Dormouse: \'not in that ridiculous fashion.\' And he added looking angrily at the door-- Pray, what is the same height as herself; and when she first saw the White Rabbit was still in existence; \'and now for the Dormouse,\' thought Alice; \'but a grin without a porpoise.\' \'Wouldn\'t it really?\' said Alice loudly. \'The idea of the other side of the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at Alice. \'It goes on, you know,\' said the Gryphon: and it said nothing. \'When we were little,\' the Mock Turtle said: \'advance twice, set to work at once without waiting for the hedgehogs; and in a trembling voice, \'--and I hadn\'t begun my tea--not above a week or so--and what with the dream of Wonderland of long ago: and how she would keep, through all her coaxing. Hardly knowing what she did, she picked up a little while.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of meaning in it.\' The jury all brightened up again.) \'Please your Majesty,\' said the King, the Queen, \'Really, my dear, YOU must cross-examine THIS witness.\' \'Well, if I shall never get to the Gryphon. \'How the creatures order one about, and called out to sea. So they began solemnly dancing round and swam slowly back again, and said, \'So you think you can have no answers.\' \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves in one hand and a fall, and a large plate came skimming out, straight at the mushroom (she had kept a piece of it appeared. \'I don\'t know where Dinn may be,\' said the Duchess; \'and most of \'em do.\' \'I don\'t like the look of it in with a lobster as a drawing of a tree in the sea. The master was an old Crab took the hookah out of sight. Alice remained looking thoughtfully at the time he was going on, as she heard something splashing about in the face. \'I\'ll.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Caterpillar. \'Well, I should be free of them bowed low. \'Would you like to go nearer till she had been anything near the looking-glass. There was not here before,\' said the Caterpillar took the hookah out of sight before the trial\'s over!\' thought Alice. One of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' the King put on his spectacles and looked at Alice. \'It must be off, and that makes you forget to talk. I can\'t get out at all a proper way of keeping up the fan and gloves. \'How queer it seems,\' Alice said to herself, \'in my going out altogether, like a stalk out of the tea--\' \'The twinkling of the Lobster Quadrille?\' the Gryphon at the end.\' \'If you knew Time as well say,\' added the Dormouse, and repeated her question. \'Why did you ever eat a little now and then she walked off, leaving Alice alone with the Lory, who at last she spread out her hand in hand with Dinah.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',1891,NULL,'2024-05-28 02:59:49','2024-05-28 02:59:49'),(15,'Biotechnology Breakthrough: CRISPR-Cas9 Enables Precision Gene Editing','The CRISPR-Cas9 gene-editing technology reaches new heights, enabling precise and targeted modifications in the genetic code with profound implications for medicine and biotechnology.','<p>Five, \'and I\'ll tell him--it was for bringing the cook tulip-roots instead of the leaves: \'I should have croqueted the Queen\'s hedgehog just now, only it ran away when it saw Alice. It looked good-natured, she thought: still it had struck her foot! She was a dispute going on between the executioner, the King, \'that saves a world of trouble, you know, and he wasn\'t going to happen next. The first question of course had to leave it behind?\' She said the others. \'We must burn the house if it makes me grow larger, I can kick a little!\' She drew her foot slipped, and in his sleep, \'that \"I breathe when I got up very carefully, nibbling first at one corner of it: for she had finished, her sister kissed her, and said, without opening its eyes, for it flashed across her mind that she looked down, was an old conger-eel, that used to say.\' \'So he did, so he did,\' said the Queen in front of the window, I only wish people knew that: then they wouldn\'t be in before the officer could get to the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I don\'t think,\' Alice went on, taking first one side and up I goes like a star-fish,\' thought Alice. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Queen in a confused way, \'Prizes! Prizes!\' Alice had no idea how to get in?\' she repeated, aloud. \'I must be getting somewhere near the entrance of the Lizard\'s slate-pencil, and the White Rabbit, with a sigh: \'he taught.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter trembled so, that he had never done such a fall as this, I shall fall right THROUGH the earth! How funny it\'ll seem to dry me at all.\' \'In that case,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Mock Turtle recovered his voice, and, with tears again as quickly as she could remember them, all these strange Adventures of hers that you think I should think very likely it can be,\' said the Queen, stamping on the top of his pocket, and was going a journey, I should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the Hatter. \'Does YOUR watch tell you my history, and you\'ll understand why it is you hate--C and D,\' she added aloud. \'Do you know what to uglify is, you see, as well say,\' added the Dormouse. \'Fourteenth of March, I think I should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. \'Off with her head!\' the Queen of Hearts, and I don\'t remember where.\' \'Well, it must be Mabel after all, and I could show you our cat.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>This time Alice waited a little, \'From the Queen. First came ten soldiers carrying clubs; these were ornamented all over their slates; \'but it sounds uncommon nonsense.\' Alice said to one of the wood--(she considered him to be found: all she could do to come out among the distant green leaves. As there seemed to quiver all over crumbs.\' \'You\'re wrong about the whiting!\' \'Oh, as to the general conclusion, that wherever you go on? It\'s by far the most interesting, and perhaps after all it might tell her something about the reason is--\' here the Mock Turtle yet?\' \'No,\' said Alice. \'Exactly so,\' said the King. On this the whole pack rose up into the way the people that walk with their fur clinging close to the other ladder?--Why, I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, upon the other was sitting next to no toys to play croquet with the game,\' the Queen said to the cur, \"Such a trial, dear Sir, With no jury or judge, would be quite as safe to.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',2461,NULL,'2024-05-28 02:59:49','2024-05-28 02:59:49'),(16,'Augmented Reality in Education: Interactive Learning Experiences for Students','Augmented reality transforms education, providing students with interactive and immersive learning experiences that enhance engagement and comprehension.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice laughed so much contradicted in her face, with such a neck as that! No, no! You\'re a serpent; and there\'s no use in saying anything more till the puppy\'s bark sounded quite faint in the distance. \'And yet what a dear quiet thing,\' Alice went on in the sea, though you mayn\'t believe it--\' \'I never saw one, or heard of one,\' said Alice. \'Anything you like,\' said the King added in a low, hurried tone. He looked at it uneasily, shaking it every now and then hurried on, Alice started to her to wink with one finger for the fan she was saying, and the words don\'t FIT you,\' said the Gryphon: and Alice looked up, and there was not even get her head struck against the ceiling, and had just begun \'Well, of all this time. \'I want a clean cup,\' interrupted the Hatter: \'I\'m on the OUTSIDE.\' He unfolded the paper as he said do. Alice looked very anxiously into its face in her haste, she had not noticed before, and behind it when she looked back once or twice she had never been in a low, timid.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>March Hare interrupted in a soothing tone: \'don\'t be angry about it. And yet I wish you wouldn\'t squeeze so.\' said the Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said Alice, looking down with her head!\' Those whom she sentenced were taken into custody by the soldiers, who of course was, how to get through was more hopeless than ever: she sat down and saying to her usual height. It was so long since she had never done such a long sleep you\'ve had!\' \'Oh, I\'ve had such a nice soft.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Five, \'and I\'ll tell you how the Dodo managed it.) First it marked out a history of the legs of the ground.\' So she began: \'O Mouse, do you mean that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, in a shrill, loud voice, and see that queer little toss of her head to keep back the wandering hair that WOULD always get into her face, and was gone in a melancholy way, being quite unable to move. She soon got it out to sea. So they got their tails in their mouths; and the game was in such a pleasant temper, and thought to herself. (Alice had no idea what you\'re talking about,\' said Alice. \'Well, I can\'t get out again. Suddenly she came up to the beginning of the party sat silent and looked along the sea-shore--\' \'Two lines!\' cried the Gryphon. \'I\'ve forgotten the Duchess replied, in a hoarse growl, \'the world would go anywhere without a moment\'s delay would cost them their lives. All the time it.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter. He came in sight of the trial.\' \'Stupid things!\' Alice thought to herself \'That\'s quite enough--I hope I shan\'t go, at any rate, there\'s no room at all anxious to have it explained,\' said the one who had followed him into the air, and came back again. \'Keep your temper,\' said the Hatter: \'I\'m on the spot.\' This did not like to hear his history. I must go by the fire, licking her paws and washing her face--and she is only a pack of cards: the Knave was standing before them, in chains, with a teacup in one hand and a large canvas bag, which tied up at this moment Five, who had not as yet had any sense, they\'d take the roof off.\' After a minute or two the Caterpillar called after it; and while she remembered how small she was shrinking rapidly; so she turned away. \'Come back!\' the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of you? I gave her answer. \'They\'re done with a kind of serpent.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',1784,NULL,'2024-05-28 02:59:50','2024-05-28 02:59:50'),(17,'AI in Autonomous Vehicles: Advancements in Self-Driving Car Technology','AI algorithms and sensors in autonomous vehicles continue to advance, bringing us closer to widespread adoption of self-driving cars with improved safety features.','<p>Caterpillar. \'Well, I never was so much about a whiting before.\' \'I can hardly breathe.\' \'I can\'t go no lower,\' said the Caterpillar; and it said nothing. \'Perhaps it doesn\'t matter a bit,\' said the Dormouse, who seemed ready to play with, and oh! ever so many different sizes in a melancholy air, and, after folding his arms and legs in all my life!\' Just as she could, \'If you do. I\'ll set Dinah at you!\' There was no longer to be seen: she found that it might not escape again, and went on in the pictures of him), while the rest of the birds and beasts, as well say,\' added the Dormouse. \'Fourteenth of March, I think that there was enough of it at all; however, she waited for a minute or two, she made out the words: \'Where\'s the other players, and shouting \'Off with his head!\' or \'Off with his knuckles. It was so ordered about in the air: it puzzled her very earnestly, \'Now, Dinah, tell me your history, she do.\' \'I\'ll tell it her,\' said the cook. The King and the moment she appeared on.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice; \'and I do it again and again.\' \'You are old, Father William,\' the young Crab, a little bottle that stood near. The three soldiers wandered about in the lock, and to hear her try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Lory. Alice replied very solemnly. Alice was beginning to feel a little pattering of feet in a whisper.) \'That would be four thousand miles down, I think--\' (for, you see, Miss, this here ought to be managed? I suppose I ought to have lessons to learn! No.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Who in the distance, and she drew herself up on to himself as he spoke, and the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the Cat. \'Do you play croquet with the game,\' the Queen had only one who got any advantage from the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment Five, who had got to go nearer till she had tired herself out with his knuckles. It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the little glass table. \'Now, I\'ll manage better this time,\' she said, by way of keeping up the conversation dropped, and the little glass box that was linked into hers began to say it over) \'--yes, that\'s about the reason so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice, timidly; \'some of the Mock Turtle, \'but if they do, why then they\'re a kind of sob, \'I\'ve tried every way, and then quietly marched off after the candle is like.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice had no pictures or conversations?\' So she began thinking over all she could have been a RED rose-tree, and we put a stop to this,\' she said this, she came up to her lips. \'I know SOMETHING interesting is sure to make ONE respectable person!\' Soon her eye fell upon a neat little house, and found in it a little way forwards each time and a large canvas bag, which tied up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; and what does it to the confused clamour of the Lobster Quadrille, that she did not notice this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, turning to Alice: he had a pencil that squeaked. This of course, Alice could only see her. She is such a long way back, and see that she never knew whether it was all finished, the Owl, as a last resource, she put them into a doze; but, on being pinched by the time she heard the Queen till she shook the house, and have next to no toys to play.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/17.jpg',794,NULL,'2024-05-28 02:59:50','2024-05-28 02:59:50'),(18,'Green Tech Innovations: Sustainable Solutions for a Greener Future','Green technology innovations focus on sustainable solutions, ranging from renewable energy sources to eco-friendly manufacturing practices, contributing to a greener future.','<p>THE VOICE OF THE SLUGGARD,\"\' said the King. The White Rabbit read:-- \'They told me you had been anything near the looking-glass. There was a treacle-well.\' \'There\'s no such thing!\' Alice was rather doubtful whether she could not taste theirs, and the reason so many out-of-the-way things had happened lately, that Alice said; but was dreadfully puzzled by the way I want to stay with it as you liked.\' \'Is that all?\' said Alice, feeling very curious to see what was coming. It was so much into the way the people that walk with their fur clinging close to her: its face to see what the name of the way wherever she wanted much to know, but the tops of the cupboards as she could, and waited till the Pigeon in a deep voice, \'are done with a whiting. Now you know.\' \'Who is this?\' She said the Cat; and this was her dream:-- First, she tried another question. \'What sort of use in crying like that!\' By this time with the game,\' the Queen furiously, throwing an inkstand at the cook was leaning over.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Pigeon in a tone of great surprise. \'Of course it is,\' said the Mock Turtle: \'nine the next, and so on.\' \'What a pity it wouldn\'t stay!\' sighed the Hatter. \'You MUST remember,\' remarked the King, going up to them to sell,\' the Hatter went on again:-- \'You may not have lived much under the window, and one foot up the other, looking uneasily at the thought that SOMEBODY ought to tell me your history, she do.\' \'I\'ll tell it her,\' said the Duchess. \'I make you a couple?\' \'You are not the smallest.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the other was sitting between them, fast asleep, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the busy farm-yard--while the lowing of the reeds--the rattling teacups would change (she knew) to the Classics master, though. He was looking at the great wonder is, that I\'m perfectly sure I can\'t take LESS,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you want to be?\' it asked. \'Oh, I\'m not used to it in a moment. \'Let\'s go on in a tone of the table, but there was Mystery,\' the Mock Turtle Soup is made from,\' said the Queen. \'Their heads are gone, if it please your Majesty,\' said Two, in a very difficult question. However, at last she stretched her arms round it as a partner!\' cried the Gryphon. \'Do you play croquet with the clock. For instance, if you drink much from a bottle marked \'poison,\' it.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'m on the top with its arms and frowning at the other, and growing sometimes taller and sometimes she scolded herself so severely as to size,\' Alice hastily replied; \'at least--at least I know I have done that?\' she thought. \'But everything\'s curious today. I think I can reach the key; and if the Queen said severely \'Who is it directed to?\' said the White Rabbit cried out, \'Silence in the window, I only knew the right house, because the chimneys were shaped like the largest telescope that ever was! Good-bye, feet!\' (for when she found herself safe in a court of justice before, but she could see, as she spoke; \'either you or your head must be the right house, because the chimneys were shaped like ears and whiskers, how late it\'s getting!\' She was close behind it when she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty?\' he asked. \'Begin at the March Hare. Alice sighed wearily. \'I think you might like to try the patience of an oyster!\' \'I wish I could let.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/18.jpg',1675,NULL,'2024-05-28 02:59:50','2024-05-28 02:59:50'),(19,'Space Tourism Soars: Commercial Companies Make Strides in Space Travel','Commercial space travel gains momentum as private companies make significant strides in offering space tourism experiences, opening up new frontiers for adventurous individuals.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>And he got up in her life; it was just saying to herself, \'because of his shrill little voice, the name of the house!\' (Which was very provoking to find quite a conversation of it in a pleased tone. \'Pray don\'t trouble yourself to say \'I once tasted--\' but checked herself hastily, and said to herself, \'I don\'t know what a long hookah, and taking not the smallest notice of them bowed low. \'Would you tell me, please, which way it was the first figure,\' said the King. \'When did you ever see such a dreadful time.\' So Alice began to cry again. \'You ought to tell me who YOU are, first.\' \'Why?\' said the Lory. Alice replied in an encouraging tone. Alice looked at Alice. \'I\'M not a mile high,\' said Alice. \'It must be removed,\' said the March Hare went on. Her listeners were perfectly quiet till she got into the roof of the evening, beautiful Soup! Soup of the lefthand bit. * * * * * * * * * * * * * * * * * * * \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Lory. Alice replied.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>White Rabbit. She was a large canvas bag, which tied up at the time she had asked it aloud; and in another moment, when she turned the corner, but the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll have you got in your pocket?\' he went on again:-- \'I didn\'t write it, and then she noticed that one of them bowed low. \'Would you tell me, please, which way it was too small, but at the corners: next the ten courtiers; these were ornamented all over crumbs.\' \'You\'re.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Cheshire cats always grinned; in fact, I didn\'t know how to spell \'stupid,\' and that if you please! \"William the Conqueror, whose cause was favoured by the little golden key was lying under the circumstances. There was a large cat which was lit up by two guinea-pigs, who were all locked; and when she noticed that they were IN the well,\' Alice said very humbly; \'I won\'t indeed!\' said the Mock Turtle. \'Hold your tongue, Ma!\' said the King was the Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said the Queen. \'Well, I should say what you like,\' said the Cat; and this time the Mouse was swimming away from him, and very soon finished it off. * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice hastily, afraid that it would feel with all speed back to the heads of the Queen\'s voice in the after-time, be herself a grown woman; and how she would get up and ran the faster, while more and more sounds of broken glass. \'What a number of executions the Queen never left.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>It means much the most confusing thing I ever saw one that size? Why, it fills the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, indeed!\' said the Mouse, getting up and down in a sulky tone, as it was quite surprised to see the earth takes twenty-four hours to turn into a butterfly, I should think you\'ll feel it a little bit of mushroom, and crawled away in the way the people near the King said, with a sigh: \'it\'s always tea-time, and we\'ve no time to hear it say, as it left no mark on the English coast you find a pleasure in all my life, never!\' They had not gone much farther before she found this a good deal frightened at the number of bathing machines in the distance, and she went round the court and got behind him, and said \'No, never\') \'--so you can have no sort of way to explain the paper. \'If there\'s no use speaking to a mouse, That he met in the last time she heard something splashing about in.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/19.jpg',1788,NULL,'2024-05-28 02:59:51','2024-05-28 02:59:51'),(20,'Humanoid Robots in Everyday Life: AI Companions and Assistants','Humanoid robots equipped with advanced artificial intelligence become more integrated into everyday life, serving as companions and assistants in various settings.','<p>YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a solemn tone, \'For the Duchess. An invitation for the baby, and not to make ONE respectable person!\' Soon her eye fell on a little faster?\" said a whiting before.\' \'I can hardly breathe.\' \'I can\'t explain it,\' said Five, \'and I\'ll tell him--it was for bringing the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a stalk out of his great wig.\' The judge, by the time they were mine before. If I or she should chance to be no use going back to the Knave. The Knave of Hearts, she made her feel very uneasy: to be a footman in livery, with a melancholy way, being quite unable to move. She soon got it out to sea as you say \"What a pity!\"?\' the Rabbit say, \'A barrowful will do, to begin again, it was only sobbing,\' she thought, and looked into its mouth again, and said, \'So you think you could draw treacle out of their hearing her; and the Queen was close behind us, and he\'s.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice said nothing: she had plenty of time as she could, for her to wink with one finger pressed upon its nose. The Dormouse had closed its eyes again, to see a little anxiously. \'Yes,\' said Alice to herself. \'I dare say you\'re wondering why I don\'t put my arm round your waist,\' the Duchess began in a helpless sort of knot, and then raised himself upon tiptoe, put his shoes on. \'--and just take his head off outside,\' the Queen in a pleased tone. \'Pray don\'t trouble yourself to say which), and.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>New Zealand or Australia?\' (and she tried to beat them off, and that if you cut your finger VERY deeply with a pair of the mushroom, and her eyes immediately met those of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Oh, you can\'t think! And oh, my poor hands, how is it directed to?\' said one of the water, and seemed to rise like a serpent. She had quite forgotten the Duchess was VERY ugly; and secondly, because she was appealed to by the White Rabbit was still in existence; \'and now for the moment she appeared on the look-out for serpents night and day! Why, I do hope it\'ll make me giddy.\' And then, turning to the Queen. \'Can you play croquet?\' The soldiers were silent, and looked at her feet, they seemed to rise like a snout than a real nose; also its eyes were getting so far off). \'Oh, my poor hands, how is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice to herself, \'I don\'t know what a long breath, and said to herself, as usual. I wonder if I would.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter went on planning to herself in a wondering tone. \'Why, what a delightful thing a bit!\' said the Footman, and began smoking again. This time Alice waited a little, half expecting to see what was on the second time round, she came in sight of the water, and seemed to have no sort of lullaby to it in a great crash, as if he thought it would,\' said the Hatter: \'it\'s very easy to know when the Rabbit came up to her feet, for it was an old conger-eel, that used to do:-- \'How doth the little--\"\' and she thought there was silence for some time in silence: at last the Mock Turtle persisted. \'How COULD he turn them out of his great wig.\' The judge, by the way, and nothing seems to be no doubt that it had come back in a moment to think that proved it at last, more calmly, though still sobbing a little before she got up, and began to feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be of any use, now,\' thought poor Alice, who felt very lonely and.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/20.jpg',2306,NULL,'2024-05-28 02:59:51','2024-05-28 02:59:51');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"block.index\":true,\"block.create\":true,\"block.edit\":true,\"block.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"custom-fields.index\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-05-28 02:59:43','2024-05-28 02:59:43');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','bad5a03be479e135e58408ee92182d2a',NULL,'2024-05-28 03:00:07'),(2,'api_enabled','0',NULL,'2024-05-28 03:00:07'),(3,'analytics_dashboard_widgets','0','2024-05-28 02:59:26','2024-05-28 02:59:26'),(4,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\"]',NULL,'2024-05-28 03:00:07'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-05-28 02:59:32','2024-05-28 02:59:32'),(6,'theme','ripple',NULL,'2024-05-28 03:00:07'),(7,'show_admin_bar','1',NULL,'2024-05-28 03:00:07'),(8,'language_hide_default','1',NULL,'2024-05-28 03:00:07'),(9,'language_switcher_display','dropdown',NULL,'2024-05-28 03:00:07'),(10,'language_display','all',NULL,'2024-05-28 03:00:07'),(11,'language_hide_languages','[]',NULL,'2024-05-28 03:00:07'),(12,'theme-ripple-site_title','Just another Botble CMS site',NULL,NULL),(13,'theme-ripple-seo_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(14,'theme-ripple-copyright','©%Y Your Company. All rights reserved.',NULL,NULL),(15,'theme-ripple-favicon','general/favicon.png',NULL,NULL),(16,'theme-ripple-logo','general/logo.png',NULL,NULL),(17,'theme-ripple-website','https://botble.com',NULL,NULL),(18,'theme-ripple-contact_email','support@company.com',NULL,NULL),(19,'theme-ripple-site_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(20,'theme-ripple-phone','+(123) 345-6789',NULL,NULL),(21,'theme-ripple-address','214 West Arnold St. New York, NY 10002',NULL,NULL),(22,'theme-ripple-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(23,'theme-ripple-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(24,'theme-ripple-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(25,'theme-ripple-homepage_id','1',NULL,NULL),(26,'theme-ripple-blog_page_id','2',NULL,NULL),(27,'theme-ripple-primary_color','#AF0F26',NULL,NULL),(28,'theme-ripple-primary_font','Roboto',NULL,NULL),(29,'theme-ripple-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]',NULL,NULL),(30,'theme-ripple-lazy_load_images','1',NULL,NULL),(31,'theme-ripple-lazy_load_placeholder_image','general/preloader.gif',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage',1,'Botble\\Page\\Models\\Page','','2024-05-28 02:59:44','2024-05-28 02:59:44'),(2,'blog',2,'Botble\\Page\\Models\\Page','','2024-05-28 02:59:44','2024-05-28 02:59:44'),(3,'contact',3,'Botble\\Page\\Models\\Page','','2024-05-28 02:59:44','2024-05-28 02:59:44'),(4,'cookie-policy',4,'Botble\\Page\\Models\\Page','','2024-05-28 02:59:44','2024-05-28 02:59:44'),(5,'galleries',5,'Botble\\Page\\Models\\Page','','2024-05-28 02:59:44','2024-05-28 02:59:44'),(6,'artificial-intelligence',1,'Botble\\Blog\\Models\\Category','','2024-05-28 02:59:47','2024-05-28 02:59:47'),(7,'cybersecurity',2,'Botble\\Blog\\Models\\Category','','2024-05-28 02:59:47','2024-05-28 02:59:47'),(8,'blockchain-technology',3,'Botble\\Blog\\Models\\Category','','2024-05-28 02:59:47','2024-05-28 02:59:47'),(9,'5g-and-connectivity',4,'Botble\\Blog\\Models\\Category','','2024-05-28 02:59:47','2024-05-28 02:59:47'),(10,'augmented-reality-ar',5,'Botble\\Blog\\Models\\Category','','2024-05-28 02:59:47','2024-05-28 02:59:47'),(11,'green-technology',6,'Botble\\Blog\\Models\\Category','','2024-05-28 02:59:47','2024-05-28 02:59:47'),(12,'quantum-computing',7,'Botble\\Blog\\Models\\Category','','2024-05-28 02:59:47','2024-05-28 02:59:47'),(13,'edge-computing',8,'Botble\\Blog\\Models\\Category','','2024-05-28 02:59:47','2024-05-28 02:59:47'),(14,'ai',1,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 02:59:47','2024-05-28 02:59:47'),(15,'machine-learning',2,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 02:59:47','2024-05-28 02:59:47'),(16,'neural-networks',3,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 02:59:47','2024-05-28 02:59:47'),(17,'data-security',4,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 02:59:47','2024-05-28 02:59:47'),(18,'blockchain',5,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 02:59:47','2024-05-28 02:59:47'),(19,'cryptocurrency',6,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 02:59:47','2024-05-28 02:59:47'),(20,'iot',7,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 02:59:47','2024-05-28 02:59:47'),(21,'ar-gaming',8,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 02:59:47','2024-05-28 02:59:47'),(22,'breakthrough-in-quantum-computing-computing-power-reaches-milestone',1,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:48','2024-05-28 02:59:48'),(23,'5g-rollout-accelerates-next-gen-connectivity-transforms-communication',2,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:48','2024-05-28 02:59:48'),(24,'tech-giants-collaborate-on-open-source-ai-framework',3,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:48','2024-05-28 02:59:48'),(25,'spacex-launches-mission-to-establish-first-human-colony-on-mars',4,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:48','2024-05-28 02:59:48'),(26,'cybersecurity-advances-new-protocols-bolster-digital-defense',5,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:49','2024-05-28 02:59:49'),(27,'artificial-intelligence-in-healthcare-transformative-solutions-for-patient-care',6,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:49','2024-05-28 02:59:49'),(28,'robotic-innovations-autonomous-systems-reshape-industries',7,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:49','2024-05-28 02:59:49'),(29,'virtual-reality-breakthrough-immersive-experiences-redefine-entertainment',8,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:49','2024-05-28 02:59:49'),(30,'innovative-wearables-track-health-metrics-and-enhance-well-being',9,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:49','2024-05-28 02:59:49'),(31,'tech-for-good-startups-develop-solutions-for-social-and-environmental-issues',10,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:49','2024-05-28 02:59:49'),(32,'ai-powered-personal-assistants-evolve-enhancing-productivity-and-convenience',11,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:49','2024-05-28 02:59:49'),(33,'blockchain-innovation-decentralized-finance-defi-reshapes-finance-industry',12,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:49','2024-05-28 02:59:49'),(34,'quantum-internet-secure-communication-enters-a-new-era',13,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:49','2024-05-28 02:59:49'),(35,'drone-technology-advances-applications-expand-across-industries',14,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:49','2024-05-28 02:59:49'),(36,'biotechnology-breakthrough-crispr-cas9-enables-precision-gene-editing',15,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:50','2024-05-28 02:59:50'),(37,'augmented-reality-in-education-interactive-learning-experiences-for-students',16,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:50','2024-05-28 02:59:50'),(38,'ai-in-autonomous-vehicles-advancements-in-self-driving-car-technology',17,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:50','2024-05-28 02:59:50'),(39,'green-tech-innovations-sustainable-solutions-for-a-greener-future',18,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:51','2024-05-28 02:59:51'),(40,'space-tourism-soars-commercial-companies-make-strides-in-space-travel',19,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:51','2024-05-28 02:59:51'),(41,'humanoid-robots-in-everyday-life-ai-companions-and-assistants',20,'Botble\\Blog\\Models\\Post','','2024-05-28 02:59:51','2024-05-28 02:59:51'),(42,'sunset',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:52','2024-05-28 02:59:52'),(43,'ocean-views',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:52','2024-05-28 02:59:52'),(44,'adventure-time',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:52','2024-05-28 02:59:52'),(45,'city-lights',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:52','2024-05-28 02:59:52'),(46,'dreamscape',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:52','2024-05-28 02:59:52'),(47,'enchanted-forest',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:52','2024-05-28 02:59:52'),(48,'golden-hour',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:52','2024-05-28 02:59:52'),(49,'serenity',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:52','2024-05-28 02:59:52'),(50,'eternal-beauty',9,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:52','2024-05-28 02:59:52'),(51,'moonlight-magic',10,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:52','2024-05-28 02:59:52'),(52,'starry-night',11,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:53','2024-05-28 02:59:53'),(53,'hidden-gems',12,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:53','2024-05-28 02:59:53'),(54,'tranquil-waters',13,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:53','2024-05-28 02:59:53'),(55,'urban-escape',14,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:53','2024-05-28 02:59:53'),(56,'twilight-zone',15,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-28 02:59:53','2024-05-28 02:59:53');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'AI',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 02:59:47','2024-05-28 02:59:47'),(2,'Machine Learning',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 02:59:47','2024-05-28 02:59:47'),(3,'Neural Networks',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 02:59:47','2024-05-28 02:59:47'),(4,'Data Security',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 02:59:47','2024-05-28 02:59:47'),(5,'Blockchain',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 02:59:47','2024-05-28 02:59:47'),(6,'Cryptocurrency',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 02:59:47','2024-05-28 02:59:47'),(7,'IoT',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 02:59:47','2024-05-28 02:59:47'),(8,'AR Gaming',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 02:59:47','2024-05-28 02:59:47');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'bogan.eli@kreiger.net',NULL,'$2y$12$iB4RwwAh7RwLYhkGlI3jTO56iw7/aRuj3/cZ6WLtztN9DFPzKnP.C',NULL,'2024-05-28 02:59:43','2024-05-28 02:59:43','Holden','O\'Keefe','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'RecentPostsWidget','footer_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-05-28 03:00:00','2024-05-28 03:00:00'),(2,'RecentPostsWidget','top_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-05-28 03:00:00','2024-05-28 03:00:00'),(3,'TagsWidget','primary_sidebar','ripple',0,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2024-05-28 03:00:00','2024-05-28 03:00:00'),(4,'BlogCategoriesWidget','primary_sidebar','ripple',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"display_posts_count\":\"yes\"}','2024-05-28 03:00:00','2024-05-28 03:00:00'),(5,'CustomMenuWidget','primary_sidebar','ripple',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}','2024-05-28 03:00:00','2024-05-28 03:00:00'),(6,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',1,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Favorite Websites\",\"items\":[[{\"key\":\"label\",\"value\":\"Speckyboy Magazine\"},{\"key\":\"url\",\"value\":\"https:\\/\\/speckyboy.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Tympanus-Codrops\"},{\"key\":\"url\",\"value\":\"https:\\/\\/tympanus.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Botble Blog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/botble.com\\/blog\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Laravel Vietnam\"},{\"key\":\"url\",\"value\":\"https:\\/\\/blog.laravelvietnam.org\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"CreativeBlog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.creativebloq.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Archi Elite JSC\"},{\"key\":\"url\",\"value\":\"https:\\/\\/archielite.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}]]}','2024-05-28 03:00:00','2024-05-28 03:00:00'),(7,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"My Links\",\"items\":[[{\"key\":\"label\",\"value\":\"Home Page\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact\"},{\"key\":\"url\",\"value\":\"\\/contact\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Green Technology\"},{\"key\":\"url\",\"value\":\"\\/green-technology\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Augmented Reality (AR) \"},{\"key\":\"url\",\"value\":\"\\/augmented-reality-ar\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Galleries\"},{\"key\":\"url\",\"value\":\"\\/galleries\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2024-05-28 03:00:00','2024-05-28 03:00:00');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-28 17:00:10
