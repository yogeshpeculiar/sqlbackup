-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: course_testing
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_on` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='																	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'y',1,NULL,NULL,NULL,NULL),(2,'t',2,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_subscribed_videos`
--

DROP TABLE IF EXISTS `course_subscribed_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_subscribed_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id_idx` (`course_id`),
  KEY `video_id_idx` (`video_id`),
  CONSTRAINT `fk_course_courseSubscribedVideo` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `video_id` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_subscribed_videos`
--

LOCK TABLES `course_subscribed_videos` WRITE;
/*!40000 ALTER TABLE `course_subscribed_videos` DISABLE KEYS */;
INSERT INTO `course_subscribed_videos` VALUES (1,90,1);
/*!40000 ALTER TABLE `course_subscribed_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `level_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `is_level_override` tinyint(4) DEFAULT NULL,
  `available_for` tinyint(3) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `meta_key` varchar(50) DEFAULT NULL,
  `meta_desc` varchar(2000) DEFAULT NULL,
  `course_icon` varchar(30) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_on` timestamp(3) NULL DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `completion_activity_points` int(11) NOT NULL,
  `enrollment_activity_points` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `level_id_idx` (`level_id`),
  KEY `category_id_idx` (`category_id`),
  CONSTRAINT `FK2jjy8c9yy3blkox2up7ekdodq` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  CONSTRAINT `FK62gaxpyigo747ksc96dn41r1q` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `level_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (90,'java',1,2,'java','java',NULL,1,'oops',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,98,22,0),(91,'Java ',1,2,'java','java',NULL,1,'oops',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,98,22,0),(92,'dbms',1,2,'dbms','db',NULL,1,'dsd',NULL,'dfsa','C:\\fakepath\\dog.jpg',NULL,NULL,NULL,NULL,1,55,55,0),(93,'sql',1,1,'sql','sql',NULL,1,'database',NULL,'database','C:\\fakepath\\download.jpg',NULL,NULL,NULL,NULL,1,56,56,0),(94,'php',2,1,'php','php',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0),(97,'phpp',2,1,'php','php',NULL,1,'adfsssaf',NULL,'dsasd',NULL,NULL,NULL,NULL,NULL,1,44,44,0),(99,'phppppp',1,2,'dfa','dfas',NULL,1,'fsd',NULL,'dasfa',NULL,NULL,NULL,NULL,NULL,1,44,44,0),(100,'c plus plus',1,1,'operators','c',NULL,1,'adf','operators,pointers','adf','C:\\fakepath\\download.png',NULL,NULL,NULL,NULL,1,22,22,0),(101,'pearl',2,1,'pearl','pearl',NULL,1,'pearl','hgh,hg','pearl',NULL,NULL,NULL,NULL,NULL,1,80,80,0),(102,'go',1,1,'go','go',NULL,1,'dfa','afd,adf','da',NULL,NULL,NULL,NULL,NULL,1,55,55,0),(103,'ghgf',1,2,'ghdf','gdh',1,1,'gfhfd','ghd,g','ghd',NULL,NULL,NULL,NULL,NULL,1,85,89,0),(104,'beans',1,1,'beans','jjjjjfffff',1,1,'da','ad,adf','adf',NULL,NULL,NULL,NULL,NULL,1,33,33,0),(106,'bew',2,1,'add','fgsfs',1,1,'df','df,d','dsaf',NULL,NULL,NULL,NULL,NULL,1,99,99,0),(107,'efr',2,1,'fgf','efr111',0,NULL,'rttg','dgfg','rgrfhh',NULL,NULL,NULL,NULL,NULL,1,3,3,0);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs`
--

DROP TABLE IF EXISTS `docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_on` date DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_docs_courses` (`course_id`),
  CONSTRAINT `fk_docs_courses` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs`
--

LOCK TABLES `docs` WRITE;
/*!40000 ALTER TABLE `docs` DISABLE KEYS */;
INSERT INTO `docs` VALUES (1,'gfd','dfgf',NULL,NULL,NULL,NULL,90);
/*!40000 ALTER TABLE `docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `isactive` tinyint(4) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_on` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,'yyy',1,NULL,NULL,NULL,NULL),(2,'x',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'y','y',NULL,NULL,NULL,NULL),(2,'u','u',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'course_testing'
--

--
-- Dumping routines for database 'course_testing'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-13 17:30:35
