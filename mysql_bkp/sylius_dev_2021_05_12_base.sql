-- MySQL dump 10.13  Distrib 5.7.32, for osx10.14 (x86_64)
--
-- Host: localhost    Database: sylius_dev
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address`
--

LOCK TABLES `sylius_address` WRITE;
/*!40000 ALTER TABLE `sylius_address` DISABLE KEYS */;
INSERT INTO `sylius_address` VALUES (1,NULL,'test','test','test','test','test','test','teest','2021-05-12 18:24:12','2021-05-12 18:24:13','IN',NULL,'test'),(2,NULL,'test','test','test','test','test','test','teest','2021-05-12 18:24:12','2021-05-12 18:24:13','IN',NULL,'test'),(3,NULL,'test','test',NULL,'test','test','test','test','2021-05-12 18:43:29','2021-05-12 18:43:29','IN',NULL,NULL),(4,NULL,'test','test',NULL,'test','test','test','test','2021-05-12 18:43:29','2021-05-12 18:43:29','IN',NULL,NULL),(5,1,'test','test',NULL,'test','test','test','test','2021-05-12 18:43:29','2021-05-12 18:43:29','IN',NULL,NULL),(6,NULL,'test','test','1322','test','test','test','test','2021-05-12 18:50:25','2021-05-12 19:03:07','IN',NULL,NULL),(7,NULL,'test','test','1322','test','test','test','test','2021-05-12 18:50:25','2021-05-12 19:03:07','IN',NULL,NULL),(8,1,'test','test','1322','test','test','test','test','2021-05-12 18:50:25','2021-05-12 19:03:07','IN',NULL,NULL);
/*!40000 ALTER TABLE `sylius_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address_log_entries`
--

DROP TABLE IF EXISTS `sylius_address_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_address_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address_log_entries`
--

LOCK TABLES `sylius_address_log_entries` WRITE;
/*!40000 ALTER TABLE `sylius_address_log_entries` DISABLE KEYS */;
INSERT INTO `sylius_address_log_entries` VALUES (1,'create','2021-05-12 18:24:13','1','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";s:4:\"test\";s:6:\"street\";s:4:\"test\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:5:\"teest\";s:11:\"countryCode\";s:2:\"IN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";s:4:\"test\";}',NULL),(2,'create','2021-05-12 18:24:13','2','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";s:4:\"test\";s:6:\"street\";s:4:\"test\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:5:\"teest\";s:11:\"countryCode\";s:2:\"IN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";s:4:\"test\";}',NULL),(3,'create','2021-05-12 18:43:29','3','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";N;s:6:\"street\";s:4:\"test\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"test\";s:11:\"countryCode\";s:2:\"IN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','test@gmail.com'),(4,'create','2021-05-12 18:43:29','4','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";N;s:6:\"street\";s:4:\"test\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"test\";s:11:\"countryCode\";s:2:\"IN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','test@gmail.com'),(5,'create','2021-05-12 18:43:36','5','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";N;s:6:\"street\";s:4:\"test\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"test\";s:11:\"countryCode\";s:2:\"IN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','test@gmail.com'),(6,'create','2021-05-12 18:50:25','6','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"tst\";s:8:\"lastName\";s:2:\"es\";s:11:\"phoneNumber\";N;s:6:\"street\";s:4:\"test\";s:7:\"company\";N;s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:5:\"tesst\";s:11:\"countryCode\";s:2:\"IN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";s:4:\"test\";}','test@gmail.com'),(7,'create','2021-05-12 18:50:25','7','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"tst\";s:8:\"lastName\";s:2:\"es\";s:11:\"phoneNumber\";N;s:6:\"street\";s:4:\"test\";s:7:\"company\";N;s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:5:\"tesst\";s:11:\"countryCode\";s:2:\"IN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";s:4:\"test\";}','test@gmail.com'),(8,'update','2021-05-12 18:57:34','6','App\\Entity\\Addressing\\Address',2,'a:6:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";s:4:\"1223\";s:7:\"company\";s:4:\"test\";s:8:\"postcode\";s:4:\"test\";s:12:\"provinceName\";N;}','test@gmail.com'),(9,'update','2021-05-12 18:57:34','7','App\\Entity\\Addressing\\Address',2,'a:6:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";s:4:\"1223\";s:7:\"company\";s:4:\"test\";s:8:\"postcode\";s:4:\"test\";s:12:\"provinceName\";N;}','test@gmail.com'),(10,'update','2021-05-12 19:03:07','6','App\\Entity\\Addressing\\Address',3,'a:1:{s:11:\"phoneNumber\";s:4:\"1322\";}','test@gmail.com'),(11,'update','2021-05-12 19:03:07','7','App\\Entity\\Addressing\\Address',3,'a:1:{s:11:\"phoneNumber\";s:4:\"1322\";}','test@gmail.com'),(12,'create','2021-05-12 19:03:12','8','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"test\";s:11:\"phoneNumber\";s:4:\"1322\";s:6:\"street\";s:4:\"test\";s:7:\"company\";s:4:\"test\";s:4:\"city\";s:4:\"test\";s:8:\"postcode\";s:4:\"test\";s:11:\"countryCode\";s:2:\"IN\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}','test@gmail.com');
/*!40000 ALTER TABLE `sylius_address_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_adjustment`
--

DROP TABLE IF EXISTS `sylius_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `details` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  KEY `IDX_ACA6E0F27BE036FC` (`shipment_id`),
  CONSTRAINT `FK_ACA6E0F27BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_adjustment`
--

LOCK TABLES `sylius_adjustment` WRITE;
/*!40000 ALTER TABLE `sylius_adjustment` DISABLE KEYS */;
INSERT INTO `sylius_adjustment` VALUES (3,1,NULL,NULL,'shipping','Default Shipping',0,0,0,NULL,'2021-05-12 18:24:17','2021-05-12 18:24:17',1,'{\"shippingMethodCode\": \"Def\", \"shippingMethodName\": \"Default Shipping\"}'),(9,3,NULL,NULL,'shipping','Default Shipping',0,0,0,NULL,'2021-05-12 18:43:36','2021-05-12 18:43:36',3,'{\"shippingMethodCode\": \"Def\", \"shippingMethodName\": \"Default Shipping\"}'),(10,NULL,NULL,3,'tax','GST 18 percent (18%)',108000,0,0,NULL,'2021-05-12 18:43:36','2021-05-12 18:43:36',NULL,'{\"taxRateCode\": \"GST_18\", \"taxRateName\": \"GST 18 percent\", \"taxRateAmount\": 0.18}'),(28,4,NULL,NULL,'shipping','Default Shipping',0,0,0,NULL,'2021-05-12 19:03:12','2021-05-12 19:03:12',4,'{\"shippingMethodCode\": \"Def\", \"shippingMethodName\": \"Default Shipping\"}'),(29,NULL,NULL,4,'tax','GST 18 percent (18%)',18000,0,0,NULL,'2021-05-12 19:03:12','2021-05-12 19:03:12',NULL,'{\"taxRateCode\": \"GST_18\", \"taxRateName\": \"GST 18 percent\", \"taxRateAmount\": 0.18}'),(30,NULL,NULL,5,'tax','GST 18 percent (18%)',18000,0,0,NULL,'2021-05-12 19:03:12','2021-05-12 19:03:12',NULL,'{\"taxRateCode\": \"GST_18\", \"taxRateName\": \"GST 18 percent\", \"taxRateAmount\": 0.18}'),(31,NULL,NULL,6,'tax','GST 18 percent (18%)',108000,0,0,NULL,'2021-05-12 19:03:12','2021-05-12 19:03:12',NULL,'{\"taxRateCode\": \"GST_18\", \"taxRateName\": \"GST 18 percent\", \"taxRateAmount\": 0.18}');
/*!40000 ALTER TABLE `sylius_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_access_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AA4915D5F37A13B` (`token`),
  KEY `IDX_2AA4915D19EB6921` (`client_id`),
  KEY `IDX_2AA4915DA76ED395` (`user_id`),
  CONSTRAINT `FK_2AA4915D19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_2AA4915DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_access_token`
--

LOCK TABLES `sylius_admin_api_access_token` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_access_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_auth_code`
--

DROP TABLE IF EXISTS `sylius_admin_api_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E366D8485F37A13B` (`token`),
  KEY `IDX_E366D84819EB6921` (`client_id`),
  KEY `IDX_E366D848A76ED395` (`user_id`),
  CONSTRAINT `FK_E366D84819EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_E366D848A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_auth_code`
--

LOCK TABLES `sylius_admin_api_auth_code` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_client`
--

DROP TABLE IF EXISTS `sylius_admin_api_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_client`
--

LOCK TABLES `sylius_admin_api_client` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_refresh_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_refresh_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9160E3FA5F37A13B` (`token`),
  KEY `IDX_9160E3FA19EB6921` (`client_id`),
  KEY `IDX_9160E3FAA76ED395` (`user_id`),
  CONSTRAINT `FK_9160E3FA19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_9160E3FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_refresh_token`
--

LOCK TABLES `sylius_admin_api_refresh_token` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_user`
--

DROP TABLE IF EXISTS `sylius_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_user`
--

LOCK TABLES `sylius_admin_user` WRITE;
/*!40000 ALTER TABLE `sylius_admin_user` DISABLE KEYS */;
INSERT INTO `sylius_admin_user` VALUES (1,'admin@test.com','admin@test.com',1,'60ezlk3yrds0skgso4wsg00c00c4kso','$argon2i$v=19$m=65536,t=4,p=1$VHV5V0w4WHZDSzRwNDZKVA$x1foAG8ww1FOQKwOUFEZNE/P2bTRtKGqfHT9ees+8KY','2021-05-12 17:41:15',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','admin@test.com','admin@test.com','2021-05-12 17:40:35','2021-05-12 17:41:15',NULL,NULL,'en_US','argon2i');
/*!40000 ALTER TABLE `sylius_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_avatar_image`
--

DROP TABLE IF EXISTS `sylius_avatar_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_avatar_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1068A3A97E3C61F9` (`owner_id`),
  CONSTRAINT `FK_1068A3A97E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_admin_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_avatar_image`
--

LOCK TABLES `sylius_avatar_image` WRITE;
/*!40000 ALTER TABLE `sylius_avatar_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_avatar_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel`
--

DROP TABLE IF EXISTS `sylius_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_locale_id` int(11) NOT NULL,
  `base_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `shop_billing_data_id` int(11) DEFAULT NULL,
  `menu_taxon_id` int(11) DEFAULT NULL,
  `contact_phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  UNIQUE KEY `UNIQ_16C8119EB5282EDF` (`shop_billing_data_id`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  KEY `IDX_16C8119EE551C011` (`hostname`),
  KEY `IDX_16C8119EF242B1E6` (`menu_taxon_id`),
  CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_16C8119EB5282EDF` FOREIGN KEY (`shop_billing_data_id`) REFERENCES `sylius_shop_billing_data` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_16C8119EF242B1E6` FOREIGN KEY (`menu_taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel`
--

LOCK TABLES `sylius_channel` WRITE;
/*!40000 ALTER TABLE `sylius_channel` DISABLE KEYS */;
INSERT INTO `sylius_channel` VALUES (1,1,2,1,'default','Default','#000000',NULL,1,NULL,'2021-05-12 17:40:35','2021-05-12 17:53:02',NULL,'order_items_based',NULL,1,0,1,1,1,NULL);
/*!40000 ALTER TABLE `sylius_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_countries`
--

DROP TABLE IF EXISTS `sylius_channel_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_countries` (
  `channel_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`country_id`),
  KEY `IDX_D96E51AE72F5A1AA` (`channel_id`),
  KEY `IDX_D96E51AEF92F3E70` (`country_id`),
  CONSTRAINT `FK_D96E51AE72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D96E51AEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_countries`
--

LOCK TABLES `sylius_channel_countries` WRITE;
/*!40000 ALTER TABLE `sylius_channel_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_channel_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_currencies`
--

DROP TABLE IF EXISTS `sylius_channel_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`),
  CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_currencies`
--

LOCK TABLES `sylius_channel_currencies` WRITE;
/*!40000 ALTER TABLE `sylius_channel_currencies` DISABLE KEYS */;
INSERT INTO `sylius_channel_currencies` VALUES (1,2);
/*!40000 ALTER TABLE `sylius_channel_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_locales`
--

DROP TABLE IF EXISTS `sylius_channel_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`),
  CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_locales`
--

LOCK TABLES `sylius_channel_locales` WRITE;
/*!40000 ALTER TABLE `sylius_channel_locales` DISABLE KEYS */;
INSERT INTO `sylius_channel_locales` VALUES (1,1);
/*!40000 ALTER TABLE `sylius_channel_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_pricing`
--

DROP TABLE IF EXISTS `sylius_channel_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  KEY `IDX_7801820CA80EF684` (`product_variant_id`),
  CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_pricing`
--

LOCK TABLES `sylius_channel_pricing` WRITE;
/*!40000 ALTER TABLE `sylius_channel_pricing` DISABLE KEYS */;
INSERT INTO `sylius_channel_pricing` VALUES (1,1,50000,'default',50000),(2,2,100000,'default',100000),(3,3,600000,'default',600000),(4,4,900000,'default',900000);
/*!40000 ALTER TABLE `sylius_channel_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_country`
--

DROP TABLE IF EXISTS `sylius_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_country`
--

LOCK TABLES `sylius_country` WRITE;
/*!40000 ALTER TABLE `sylius_country` DISABLE KEYS */;
INSERT INTO `sylius_country` VALUES (1,'IN',1);
/*!40000 ALTER TABLE `sylius_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_currency`
--

DROP TABLE IF EXISTS `sylius_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_currency`
--

LOCK TABLES `sylius_currency` WRITE;
/*!40000 ALTER TABLE `sylius_currency` DISABLE KEYS */;
INSERT INTO `sylius_currency` VALUES (1,'USD','2021-05-12 17:40:34','2021-05-12 17:40:34'),(2,'INR','2021-05-12 17:47:39','2021-05-12 17:47:39');
/*!40000 ALTER TABLE `sylius_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`),
  CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer`
--

LOCK TABLES `sylius_customer` WRITE;
/*!40000 ALTER TABLE `sylius_customer` DISABLE KEYS */;
INSERT INTO `sylius_customer` VALUES (1,NULL,NULL,'test@gmail.com','test@gmail.com','test','test',NULL,'u','2021-05-12 18:24:12','2021-05-12 18:24:42','test',0);
/*!40000 ALTER TABLE `sylius_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer_group`
--

DROP TABLE IF EXISTS `sylius_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer_group`
--

LOCK TABLES `sylius_customer_group` WRITE;
/*!40000 ALTER TABLE `sylius_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_exchange_rate`
--

DROP TABLE IF EXISTS `sylius_exchange_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_currency` int(11) NOT NULL,
  `target_currency` int(11) NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  KEY `IDX_5F52B852A76BEED` (`source_currency`),
  KEY `IDX_5F52B85B3FD5856` (`target_currency`),
  CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_exchange_rate`
--

LOCK TABLES `sylius_exchange_rate` WRITE;
/*!40000 ALTER TABLE `sylius_exchange_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_exchange_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_gateway_config`
--

DROP TABLE IF EXISTS `sylius_gateway_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_gateway_config`
--

LOCK TABLES `sylius_gateway_config` WRITE;
/*!40000 ALTER TABLE `sylius_gateway_config` DISABLE KEYS */;
INSERT INTO `sylius_gateway_config` VALUES (1,'[]','cod','offline');
/*!40000 ALTER TABLE `sylius_gateway_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_locale`
--

DROP TABLE IF EXISTS `sylius_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_locale`
--

LOCK TABLES `sylius_locale` WRITE;
/*!40000 ALTER TABLE `sylius_locale` DISABLE KEYS */;
INSERT INTO `sylius_locale` VALUES (1,'en_US','2021-05-12 17:40:35','2021-05-12 17:40:35');
/*!40000 ALTER TABLE `sylius_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_migrations`
--

DROP TABLE IF EXISTS `sylius_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_migrations` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_migrations`
--

LOCK TABLES `sylius_migrations` WRITE;
/*!40000 ALTER TABLE `sylius_migrations` DISABLE KEYS */;
INSERT INTO `sylius_migrations` VALUES ('Sylius\\Bundle\\AdminApiBundle\\Migrations\\Version20161202011556','2021-05-12 17:40:20',2675),('Sylius\\Bundle\\AdminApiBundle\\Migrations\\Version20170313125424','2021-05-12 17:40:23',334),('Sylius\\Bundle\\AdminApiBundle\\Migrations\\Version20170711151342','2021-05-12 17:40:23',2593),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161202011555','2021-05-12 17:40:11',2691),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161209095131','2021-05-12 17:40:13',33),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161214153137','2021-05-12 17:40:14',53),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161215103325','2021-05-12 17:40:14',24),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161219160441','2021-05-12 17:40:14',42),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161220092422','2021-05-12 17:40:14',7),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161221133514','2021-05-12 17:40:14',11),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223091334','2021-05-12 17:40:14',20),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20161223164558','2021-05-12 17:40:14',20),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170103120334','2021-05-12 17:40:14',8),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170109143010','2021-05-12 17:40:14',7),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170110120125','2021-05-12 17:40:14',30),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170116215417','2021-05-12 17:40:14',58),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170117075436','2021-05-12 17:40:14',18),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170120164250','2021-05-12 17:40:14',35),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170124221955','2021-05-12 17:40:14',15),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170201094058','2021-05-12 17:40:14',32),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206122839','2021-05-12 17:40:14',5),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170206141520','2021-05-12 17:40:14',25),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208102345','2021-05-12 17:40:14',31),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170208103250','2021-05-12 17:40:14',16),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214095710','2021-05-12 17:40:14',40),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170214104908','2021-05-12 17:40:14',26),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170215143031','2021-05-12 17:40:14',16),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170217141621','2021-05-12 17:40:14',19),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170220150813','2021-05-12 17:40:14',26),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170223071604','2021-05-12 17:40:14',46),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170301135010','2021-05-12 17:40:14',43),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170303170201','2021-05-12 17:40:14',7),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170321131352','2021-05-12 17:40:14',27),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170327135945','2021-05-12 17:40:14',42),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170401200415','2021-05-12 17:40:14',27),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170518123056','2021-05-12 17:40:14',6),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170824124122','2021-05-12 17:40:14',40),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20170913125128','2021-05-12 17:40:14',27),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20171003103916','2021-05-12 17:40:14',21),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180102140039','2021-05-12 17:40:14',24),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20180226142349','2021-05-12 17:40:14',15),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109095211','2021-05-12 17:40:14',104),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190109160409','2021-05-12 17:40:15',19),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190204092544','2021-05-12 17:40:15',23),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190416073011','2021-05-12 17:40:15',12),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20190607135638','2021-05-12 17:40:15',24),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20191024065651','2021-05-12 17:40:15',21),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200110132702','2021-05-12 17:40:15',98),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200122082429','2021-05-12 17:40:15',48),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200202104152','2021-05-12 17:40:15',10),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200309172908','2021-05-12 17:40:15',18),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200325075815','2021-05-12 17:40:15',20),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20200916093101','2021-05-12 17:40:15',14),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201017150005','2021-05-12 17:40:15',29),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201104085538','2021-05-12 17:40:15',30),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201130071338','2021-05-12 17:40:15',2626),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201204071301','2021-05-12 17:40:18',2472),('Sylius\\Bundle\\CoreBundle\\Migrations\\Version20201208105207','2021-05-12 17:40:20',1),('Sylius\\PayPalPlugin\\Migrations\\Version20200907102535','2021-05-12 17:40:20',24);
/*!40000 ALTER TABLE `sylius_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  KEY `IDX_6196A1F9A393D2FB43625D9F` (`state`,`updated_at`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order`
--

LOCK TABLES `sylius_order` WRITE;
/*!40000 ALTER TABLE `sylius_order` DISABLE KEYS */;
INSERT INTO `sylius_order` VALUES (1,1,2,1,NULL,1,'000000001',NULL,'new','2021-05-12 18:24:17',600000,0,600000,'2021-05-12 18:23:39','2021-05-12 18:24:17','INR','en_US','completed','awaiting_payment','ready','4RMRWoyxRf','::1'),(2,NULL,NULL,1,NULL,1,NULL,NULL,'cart',NULL,0,0,0,'2021-05-12 18:24:42','2021-05-12 18:24:42','INR','en_US','cart','cart','cart',NULL,NULL),(3,3,4,1,NULL,1,'000000002',NULL,'new','2021-05-12 18:43:36',708000,0,708000,'2021-05-12 18:29:09','2021-05-12 18:43:36','INR','en_US','completed','awaiting_payment','ready','-pTRNK4Vgb','::1'),(4,6,7,1,NULL,1,'000000003',NULL,'new','2021-05-12 19:03:12',944000,0,944000,'2021-05-12 18:47:56','2021-05-12 19:03:12','INR','en_US','completed','awaiting_payment','ready','P-Kk64k2h9','::1');
/*!40000 ALTER TABLE `sylius_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item`
--

LOCK TABLES `sylius_order_item` WRITE;
/*!40000 ALTER TABLE `sylius_order_item` DISABLE KEYS */;
INSERT INTO `sylius_order_item` VALUES (1,1,3,1,600000,600000,0,600000,0,'western digital SSD','Western Digital SSD 500 Gb'),(3,3,3,1,600000,708000,0,708000,0,'western digital SSD','Western Digital SSD 500 Gb'),(4,4,2,2,100000,236000,0,236000,0,'western digital SSD','WD SSD 256GB'),(5,4,3,1,600000,708000,0,708000,0,'western digital SSD','Western Digital SSD 500 Gb');
/*!40000 ALTER TABLE `sylius_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item_unit`
--

LOCK TABLES `sylius_order_item_unit` WRITE;
/*!40000 ALTER TABLE `sylius_order_item_unit` DISABLE KEYS */;
INSERT INTO `sylius_order_item_unit` VALUES (1,1,1,0,'2021-05-12 18:23:39','2021-05-12 18:23:40'),(3,3,3,108000,'2021-05-12 18:36:29','2021-05-12 18:36:29'),(4,4,4,18000,'2021-05-12 18:47:56','2021-05-12 18:47:57'),(5,4,4,18000,'2021-05-12 18:58:36','2021-05-12 18:58:36'),(6,5,4,108000,'2021-05-12 18:58:44','2021-05-12 18:58:44');
/*!40000 ALTER TABLE `sylius_order_item_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_sequence`
--

DROP TABLE IF EXISTS `sylius_order_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_sequence`
--

LOCK TABLES `sylius_order_sequence` WRITE;
/*!40000 ALTER TABLE `sylius_order_sequence` DISABLE KEYS */;
INSERT INTO `sylius_order_sequence` VALUES (1,3,3);
/*!40000 ALTER TABLE `sylius_order_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment`
--

LOCK TABLES `sylius_payment` WRITE;
/*!40000 ALTER TABLE `sylius_payment` DISABLE KEYS */;
INSERT INTO `sylius_payment` VALUES (1,1,1,'INR',600000,'new','{\"status\":\"pending\"}','2021-05-12 18:23:39','2021-05-12 18:24:18'),(3,1,3,'INR',708000,'new','{\"status\":\"pending\"}','2021-05-12 18:36:29','2021-05-12 18:43:37'),(4,1,4,'INR',944000,'new','{\"status\":\"pending\"}','2021-05-12 18:47:56','2021-05-12 19:03:13');
/*!40000 ALTER TABLE `sylius_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method`
--

DROP TABLE IF EXISTS `sylius_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gateway_config_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`),
  CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method`
--

LOCK TABLES `sylius_payment_method` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method` DISABLE KEYS */;
INSERT INTO `sylius_payment_method` VALUES (1,'COD',NULL,1,0,'2021-05-12 17:48:07','2021-05-12 17:48:07',1);
/*!40000 ALTER TABLE `sylius_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_channels`
--

DROP TABLE IF EXISTS `sylius_payment_method_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method_channels` (
  `payment_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_method_id`,`channel_id`),
  KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  KEY `IDX_543AC0CC72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_channels`
--

LOCK TABLES `sylius_payment_method_channels` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_channels` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_channels` VALUES (1,1);
/*!40000 ALTER TABLE `sylius_payment_method_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_translation`
--

DROP TABLE IF EXISTS `sylius_payment_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `instructions` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_translation`
--

LOCK TABLES `sylius_payment_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_translation` VALUES (1,1,'Cash On Delivery',NULL,NULL,'en_US');
/*!40000 ALTER TABLE `sylius_payment_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_security_token`
--

DROP TABLE IF EXISTS `sylius_payment_security_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_security_token`
--

LOCK TABLES `sylius_payment_security_token` WRITE;
/*!40000 ALTER TABLE `sylius_payment_security_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment_security_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_paypal_plugin_pay_pal_credentials`
--

DROP TABLE IF EXISTS `sylius_paypal_plugin_pay_pal_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_paypal_plugin_pay_pal_credentials` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creation_time` datetime NOT NULL,
  `expiration_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C56F54AD5AA1164F` (`payment_method_id`),
  CONSTRAINT `FK_C56F54AD5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_paypal_plugin_pay_pal_credentials`
--

LOCK TABLES `sylius_paypal_plugin_pay_pal_credentials` WRITE;
/*!40000 ALTER TABLE `sylius_paypal_plugin_pay_pal_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_paypal_plugin_pay_pal_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product`
--

DROP TABLE IF EXISTS `sylius_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product`
--

LOCK TABLES `sylius_product` WRITE;
/*!40000 ALTER TABLE `sylius_product` DISABLE KEYS */;
INSERT INTO `sylius_product` VALUES (1,5,'SD_Pendrive','2021-05-12 17:58:26','2021-05-12 18:04:00',1,'choice',0),(2,5,'WD_SSD','2021-05-12 18:18:02','2021-05-12 18:22:52',1,'choice',0);
/*!40000 ALTER TABLE `sylius_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association`
--

DROP TABLE IF EXISTS `sylius_product_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`),
  CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association`
--

LOCK TABLES `sylius_product_association` WRITE;
/*!40000 ALTER TABLE `sylius_product_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_product`
--

DROP TABLE IF EXISTS `sylius_product_association_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`),
  CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_product`
--

LOCK TABLES `sylius_product_association_product` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_type`
--

DROP TABLE IF EXISTS `sylius_product_association_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_type`
--

LOCK TABLES `sylius_product_association_type` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_type_translation`
--

DROP TABLE IF EXISTS `sylius_product_association_type_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_type_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_4F618E52C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_type_translation`
--

LOCK TABLES `sylius_product_association_type_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_type_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_type_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  `translatable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute`
--

LOCK TABLES `sylius_product_attribute` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute` VALUES (1,'Storage_Size','integer','integer','a:0:{}','2021-05-12 18:18:33','2021-05-12 18:18:33',0,1);
/*!40000 ALTER TABLE `sylius_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_translation`
--

LOCK TABLES `sylius_product_attribute_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_translation` VALUES (1,1,'Storage_Size','en_US');
/*!40000 ALTER TABLE `sylius_product_attribute_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_value`
--

DROP TABLE IF EXISTS `sylius_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `locale_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_value`
--

LOCK TABLES `sylius_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_channels`
--

DROP TABLE IF EXISTS `sylius_product_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_channels`
--

LOCK TABLES `sylius_product_channels` WRITE;
/*!40000 ALTER TABLE `sylius_product_channels` DISABLE KEYS */;
INSERT INTO `sylius_product_channels` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `sylius_product_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image`
--

DROP TABLE IF EXISTS `sylius_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image`
--

LOCK TABLES `sylius_product_image` WRITE;
/*!40000 ALTER TABLE `sylius_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image_product_variants`
--

DROP TABLE IF EXISTS `sylius_product_image_product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_image_product_variants` (
  `image_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  PRIMARY KEY (`image_id`,`variant_id`),
  KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image_product_variants`
--

LOCK TABLES `sylius_product_image_product_variants` WRITE;
/*!40000 ALTER TABLE `sylius_product_image_product_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_image_product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option`
--

DROP TABLE IF EXISTS `sylius_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option`
--

LOCK TABLES `sylius_product_option` WRITE;
/*!40000 ALTER TABLE `sylius_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_translation`
--

LOCK TABLES `sylius_product_option_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value`
--

DROP TABLE IF EXISTS `sylius_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`),
  CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value`
--

LOCK TABLES `sylius_product_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value_translation`
--

LOCK TABLES `sylius_product_option_value_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_options`
--

DROP TABLE IF EXISTS `sylius_product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`),
  CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_options`
--

LOCK TABLES `sylius_product_options` WRITE;
/*!40000 ALTER TABLE `sylius_product_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_review`
--

LOCK TABLES `sylius_product_review` WRITE;
/*!40000 ALTER TABLE `sylius_product_review` DISABLE KEYS */;
INSERT INTO `sylius_product_review` VALUES (1,2,1,'Product',4,'Review','new','2021-05-12 18:31:31','2021-05-12 18:31:31');
/*!40000 ALTER TABLE `sylius_product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_taxon`
--

DROP TABLE IF EXISTS `sylius_product_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`),
  CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_taxon`
--

LOCK TABLES `sylius_product_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_product_taxon` DISABLE KEYS */;
INSERT INTO `sylius_product_taxon` VALUES (1,1,2,0),(2,1,5,0),(3,2,2,1),(4,2,5,0);
/*!40000 ALTER TABLE `sylius_product_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_translation`
--

DROP TABLE IF EXISTS `sylius_product_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_translation`
--

LOCK TABLES `sylius_product_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_translation` VALUES (1,1,'sandisk','sandisk',NULL,NULL,NULL,NULL,'en_US'),(2,2,'western digital SSD','western-digital-ssd','WD ssd is fast and reliable',NULL,NULL,NULL,'en_US');
/*!40000 ALTER TABLE `sylius_product_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant`
--

DROP TABLE IF EXISTS `sylius_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `position` int(11) NOT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`),
  CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant`
--

LOCK TABLES `sylius_product_variant` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant` DISABLE KEYS */;
INSERT INTO `sylius_product_variant` VALUES (1,1,1,NULL,'SD_Pendrive','2021-05-12 17:58:26','2021-05-12 17:58:26',0,0,0,NULL,NULL,NULL,NULL,0,1,1,1),(2,2,1,NULL,'WD_SSD','2021-05-12 18:18:02','2021-05-12 18:18:02',0,0,0,NULL,NULL,NULL,NULL,0,1,1,1),(3,2,1,NULL,'WD_SSD_50GB','2021-05-12 18:20:47','2021-05-12 18:36:03',0,0,0,NULL,NULL,NULL,NULL,1,1,2,1),(4,2,1,NULL,'WD_SSD_1TB','2021-05-12 18:21:25','2021-05-12 18:35:42',0,0,0,NULL,NULL,NULL,NULL,2,1,2,1);
/*!40000 ALTER TABLE `sylius_product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_option_value`
--

LOCK TABLES `sylius_product_variant_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_translation`
--

DROP TABLE IF EXISTS `sylius_product_variant_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_translation`
--

LOCK TABLES `sylius_product_variant_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_variant_translation` VALUES (1,1,NULL,'en_US'),(2,2,'WD SSD 256GB','en_US'),(3,3,'Western Digital SSD 500 Gb','en_US'),(4,4,'Western Digital SSD 1 TB','en_US');
/*!40000 ALTER TABLE `sylius_product_variant_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion`
--

DROP TABLE IF EXISTS `sylius_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion`
--

LOCK TABLES `sylius_promotion` WRITE;
/*!40000 ALTER TABLE `sylius_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_action`
--

DROP TABLE IF EXISTS `sylius_promotion_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`),
  CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_action`
--

LOCK TABLES `sylius_promotion_action` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_promotion_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`),
  CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_channels`
--

LOCK TABLES `sylius_promotion_channels` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_coupon`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  `reusable_from_cancelled_orders` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`),
  CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_coupon`
--

LOCK TABLES `sylius_promotion_coupon` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_order`
--

DROP TABLE IF EXISTS `sylius_promotion_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`),
  CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_order`
--

LOCK TABLES `sylius_promotion_order` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_rule`
--

DROP TABLE IF EXISTS `sylius_promotion_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`),
  CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_rule`
--

LOCK TABLES `sylius_promotion_rule` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_province`
--

DROP TABLE IF EXISTS `sylius_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`),
  CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_province`
--

LOCK TABLES `sylius_province` WRITE;
/*!40000 ALTER TABLE `sylius_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipment`
--

DROP TABLE IF EXISTS `sylius_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`),
  CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipment`
--

LOCK TABLES `sylius_shipment` WRITE;
/*!40000 ALTER TABLE `sylius_shipment` DISABLE KEYS */;
INSERT INTO `sylius_shipment` VALUES (1,1,1,'ready',NULL,'2021-05-12 18:23:39','2021-05-12 18:24:17',NULL,0),(3,1,3,'ready',NULL,'2021-05-12 18:36:29','2021-05-12 18:43:36',NULL,0),(4,1,4,'ready',NULL,'2021-05-12 18:47:56','2021-05-12 19:03:12',NULL,0);
/*!40000 ALTER TABLE `sylius_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_category`
--

DROP TABLE IF EXISTS `sylius_shipping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_category`
--

LOCK TABLES `sylius_shipping_category` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method`
--

DROP TABLE IF EXISTS `sylius_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method`
--

LOCK TABLES `sylius_shipping_method` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method` VALUES (1,NULL,1,NULL,'Def','a:1:{s:7:\"default\";a:1:{s:6:\"amount\";i:0;}}',1,'flat_rate',1,0,'2021-05-12 17:49:07','2021-05-12 17:49:07',NULL);
/*!40000 ALTER TABLE `sylius_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_channels`
--

DROP TABLE IF EXISTS `sylius_shipping_method_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_channels` (
  `shipping_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`shipping_method_id`,`channel_id`),
  KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  KEY `IDX_2D98333572F5A1AA` (`channel_id`),
  CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_channels`
--

LOCK TABLES `sylius_shipping_method_channels` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_channels` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_channels` VALUES (1,1);
/*!40000 ALTER TABLE `sylius_shipping_method_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_rule`
--

DROP TABLE IF EXISTS `sylius_shipping_method_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_88A0EB655F7D6850` (`shipping_method_id`),
  CONSTRAINT `FK_88A0EB655F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_rule`
--

LOCK TABLES `sylius_shipping_method_rule` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_method_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_translation`
--

LOCK TABLES `sylius_shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_translation` VALUES (1,1,'Default Shipping',NULL,'en_US');
/*!40000 ALTER TABLE `sylius_shipping_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shop_billing_data`
--

DROP TABLE IF EXISTS `sylius_shop_billing_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shop_billing_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_billing_data`
--

LOCK TABLES `sylius_shop_billing_data` WRITE;
/*!40000 ALTER TABLE `sylius_shop_billing_data` DISABLE KEYS */;
INSERT INTO `sylius_shop_billing_data` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sylius_shop_billing_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shop_user`
--

DROP TABLE IF EXISTS `sylius_shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`),
  CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_user`
--

LOCK TABLES `sylius_shop_user` WRITE;
/*!40000 ALTER TABLE `sylius_shop_user` DISABLE KEYS */;
INSERT INTO `sylius_shop_user` VALUES (1,1,'test@gmail.com','test@gmail.com',1,'gm0w5ohm228s40o444s884k0ggwwgog','$argon2i$v=19$m=65536,t=4,p=1$T2N5aVdvR2tIcmZDS1JJQQ$DyjWePiHgnZvK74r4AMSa0M1aXHKApilLR1mG/A04PQ','2021-05-12 18:29:09',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2021-05-12 18:24:42','2021-05-12 18:29:09','argon2i');
/*!40000 ALTER TABLE `sylius_shop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_category`
--

DROP TABLE IF EXISTS `sylius_tax_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_category`
--

LOCK TABLES `sylius_tax_category` WRITE;
/*!40000 ALTER TABLE `sylius_tax_category` DISABLE KEYS */;
INSERT INTO `sylius_tax_category` VALUES (1,'GST_18','GST 18 percent','GST 18 percent','2021-05-12 17:49:38','2021-05-12 17:49:39'),(2,'GST_12','GST 12 percent',NULL,'2021-05-12 17:49:54','2021-05-12 17:49:54'),(3,'GST_28','GST 28 percent',NULL,'2021-05-12 17:50:18','2021-05-12 17:50:18'),(4,'GST_05','GST 5 percent',NULL,'2021-05-12 17:50:33','2021-05-12 17:50:33');
/*!40000 ALTER TABLE `sylius_tax_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_rate`
--

DROP TABLE IF EXISTS `sylius_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`),
  CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_rate`
--

LOCK TABLES `sylius_tax_rate` WRITE;
/*!40000 ALTER TABLE `sylius_tax_rate` DISABLE KEYS */;
INSERT INTO `sylius_tax_rate` VALUES (1,1,1,'GST_18','GST 18 percent',0.18000,0,'default','2021-05-12 17:51:10','2021-05-12 17:51:10'),(2,3,1,'GST_28','GST 28 percent',0.28000,1,'default','2021-05-12 17:51:32','2021-05-12 17:51:33'),(3,4,1,'GST_05','GST 5 percent',0.05000,1,'default','2021-05-12 17:51:55','2021-05-12 17:51:55'),(4,2,1,'GST_12','GST 12 percent',0.12000,1,'default','2021-05-12 17:52:17','2021-05-12 17:52:17');
/*!40000 ALTER TABLE `sylius_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon`
--

DROP TABLE IF EXISTS `sylius_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`),
  CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon`
--

LOCK TABLES `sylius_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_taxon` DISABLE KEYS */;
INSERT INTO `sylius_taxon` VALUES (1,1,NULL,'Category',1,10,0,0,'2021-05-12 17:43:09','2021-05-12 17:43:09',1),(2,1,1,'IT',2,5,1,0,'2021-05-12 17:43:36','2021-05-12 17:43:37',1),(3,1,1,'STATIONERY',6,7,1,1,'2021-05-12 17:44:04','2021-05-12 17:44:04',1),(4,1,1,'HOUSEKEEPING',8,9,1,2,'2021-05-12 17:44:26','2021-05-12 17:44:26',1),(5,1,2,'Storage',3,4,2,0,'2021-05-12 17:56:01','2021-05-12 17:56:01',1);
/*!40000 ALTER TABLE `sylius_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_image`
--

DROP TABLE IF EXISTS `sylius_taxon_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`),
  CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_image`
--

LOCK TABLES `sylius_taxon_image` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_taxon_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_translation`
--

LOCK TABLES `sylius_taxon_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxon_translation` VALUES (1,1,'Category','category',NULL,'en_US'),(2,2,'IT','it',NULL,'en_US'),(3,3,'Stationery','stationery','Stationery','en_US'),(4,4,'HouseKeeping','housekeeping',NULL,'en_US'),(5,5,'Storage','storage',NULL,'en_US');
/*!40000 ALTER TABLE `sylius_taxon_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_user_oauth`
--

DROP TABLE IF EXISTS `sylius_user_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`),
  CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_user_oauth`
--

LOCK TABLES `sylius_user_oauth` WRITE;
/*!40000 ALTER TABLE `sylius_user_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_user_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone`
--

DROP TABLE IF EXISTS `sylius_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone`
--

LOCK TABLES `sylius_zone` WRITE;
/*!40000 ALTER TABLE `sylius_zone` DISABLE KEYS */;
INSERT INTO `sylius_zone` VALUES (1,'IND','India','country','all');
/*!40000 ALTER TABLE `sylius_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone_member`
--

DROP TABLE IF EXISTS `sylius_zone_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`),
  CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone_member`
--

LOCK TABLES `sylius_zone_member` WRITE;
/*!40000 ALTER TABLE `sylius_zone_member` DISABLE KEYS */;
INSERT INTO `sylius_zone_member` VALUES (1,1,'IN');
/*!40000 ALTER TABLE `sylius_zone_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-12 19:03:44
