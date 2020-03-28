-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: course_testing
-- ------------------------------------------------------
-- Server version	8.0.18

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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (92,'dbms',1,2,'dbms','db',NULL,1,'dsd',NULL,'dfsa','C:\\fakepath\\dog.jpg',NULL,NULL,NULL,NULL,1,55,55,0),(93,'sql',1,1,'sql','sql',NULL,1,'database','jjj,kk','database','C:\\fakepath\\download.jpg',NULL,NULL,NULL,NULL,1,56,56,0),(94,'php',2,1,'php','php',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,0),(97,'phpp',2,1,'php','php',NULL,1,'adfsssaf',NULL,'dsasd',NULL,NULL,NULL,NULL,NULL,1,44,44,0),(99,'phppppp',1,2,'dfa','dfas',NULL,1,'fsd',NULL,'dasfa',NULL,NULL,NULL,NULL,NULL,1,44,44,0),(103,'ghgf',1,2,'ghdf','gdh',1,1,'gfhfd','ghd,g','ghd',NULL,NULL,NULL,NULL,NULL,1,85,89,0),(104,'beans',1,1,'beans','jjjjjfffff',1,1,'da','ad,adf','adf',NULL,NULL,NULL,NULL,NULL,1,33,33,0),(106,'bew',2,1,'add','fgsfs',1,1,'df','df,d','dsaf',NULL,NULL,NULL,NULL,NULL,1,99,99,0),(107,'efr',2,1,'fgf','efr111',0,NULL,'rttg','dgfg','rgrfhh',NULL,NULL,NULL,NULL,NULL,1,3,3,0),(109,'mava',1,1,'mava','maaava',1,1,'mavaaaa','m,a,va','mava',NULL,NULL,NULL,NULL,NULL,1,10,10,0),(112,'pearll',1,2,'pearl','pearl',1,1,'pearl','programming lang,loosely typed','brainstroming ',NULL,NULL,NULL,NULL,NULL,1,20,20,0),(113,'pearl2',1,2,'pearl2','earl2',1,1,'dd','dd,d','dd',NULL,NULL,NULL,NULL,NULL,1,22,22,0),(114,'java2',1,1,'java','javaa',1,1,'java','java','java',NULL,NULL,NULL,NULL,NULL,0,25,25,0),(115,'java3',1,1,'java','javaa',1,1,'java','java','java',NULL,NULL,NULL,NULL,NULL,1,25,25,0),(117,'java4',1,2,'javaaa','ava3',1,1,'hghghg','j,a,va','dd',NULL,NULL,NULL,NULL,NULL,1,25,25,0),(118,'soft eng',1,2,'se','soft_eng',1,1,'very essenial','softwareModels,workflow','real time application',NULL,NULL,NULL,NULL,NULL,1,55,50,0),(119,'java 5',3,1,'java','java_5',1,1,'javaaaa','j,a,v','javaaa',NULL,NULL,NULL,NULL,NULL,1,80,79,0),(123,'softwareTesting',3,2,'functional','softwareTesting',1,1,'functional testing ','whitebox,blackbox','non functional testing',NULL,NULL,NULL,NULL,NULL,1,60,50,0),(124,'go(copy)',1,1,'go','go',NULL,1,'dfa','afd,adf','da',NULL,NULL,NULL,NULL,NULL,1,55,55,0),(125,'go(copy1)',1,1,'go','go',NULL,1,'dfa','afd,adf','da',NULL,NULL,NULL,NULL,NULL,1,55,55,0),(126,'go(copy2)',1,1,'go','go',NULL,1,'dfa','afd,adf','da',NULL,NULL,NULL,NULL,NULL,1,55,55,0),(127,'Mobile Development',3,1,'mobile','Mobile Development',0,1,'Mobile Development - Android and IoS','Mobile','Mobile Develpment - Android and IoS','C:\\fakepath\\1.jpg',NULL,NULL,NULL,NULL,1,7,3,0),(130,'sql3',1,1,'sql','sql',NULL,1,'database',NULL,'database','C:\\fakepath\\download.jpg',NULL,NULL,NULL,NULL,1,56,56,0),(131,'testing',3,2,'tag1','testing',1,1,'this is testitn','test1','this is testitn',NULL,NULL,NULL,NULL,NULL,1,6,8,0),(132,'sssssssssss',1,1,'sql','sql',NULL,1,'database',NULL,'database','C:\\fakepath\\download.jpg',NULL,NULL,NULL,NULL,1,56,56,0),(133,'python2',3,2,'d','python2',0,1,'dsdfa','t','dall',NULL,NULL,NULL,NULL,NULL,1,11,20,0),(134,'python 3',3,2,'t','python 3',1,1,'ddd','d','ddd',NULL,NULL,NULL,NULL,NULL,1,9,6,0);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-29  0:07:19
