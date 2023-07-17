-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: voting
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'admin','admin','admin@gmail.com','2021-01-06 00:34:45');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcandidate`
--

DROP TABLE IF EXISTS `tblcandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcandidate` (
  `candidate_id` varchar(100) NOT NULL,
  `candidate_name` varchar(200) DEFAULT NULL,
  `candidate_email` varchar(100) DEFAULT NULL,
  `candidate_mobile` varchar(100) DEFAULT NULL,
  `candidate_study_year` varchar(100) DEFAULT NULL,
  `candidate_party_name` varchar(100) DEFAULT NULL,
  `candidate_party_logo_name` varchar(100) DEFAULT NULL,
  `candidate_party_logo` varchar(500) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcandidate`
--

LOCK TABLES `tblcandidate` WRITE;
/*!40000 ALTER TABLE `tblcandidate` DISABLE KEYS */;
INSERT INTO `tblcandidate` VALUES ('C20210324055810','Arun Pandit','arunpandit@gmail.com','9335648551','2018','Vachas','Vachas.jpeg','F:/project-workspace/OnlineVotingSystem/WebContent/uploads/Vachas.jpeg','Pending','2021-03-24 12:35:56','2021-05-09 19:15:34'),('C20210324061559','Javed Tamboli','javed.tamboli@gmail.com','8369651475','2020','Credo','Credo.jpeg','F:/project-workspace/OnlineVotingSystem/WebContent/uploads/Credo.jpeg','Approved','2021-03-24 12:46:46','2021-03-24 21:17:14'),('C20210324081809','Govid Raut','govindraut780@yahoomail.com','8866889977','2014','Unite & Reform','Unite-And-Reform.jpeg','F:/project-workspace/OnlineVotingSystem/WebContent/uploads/Unite-And-Reform.jpeg','Approved','2021-03-24 14:49:49','2021-03-25 07:26:31'),('C20210324081949','Chetan Kadam','chetankadam12@gmail.com','7456845214','2017','Socialism & Liberation','Socialism-And-Liberation.jpeg','F:/project-workspace/OnlineVotingSystem/WebContent/uploads/Socialism-And-Liberation.jpeg','Approved','2021-03-24 14:51:37','2021-05-09 19:15:29'),('C20210324082138','Mahesh Kandekar','mahesh890@yahoomail.com','9632147865','2019','Equality & Justice','Equality-And -Justice.jpeg','F:/project-workspace/OnlineVotingSystem/WebContent/uploads/Equality-And -Justice.jpeg','Approved','2021-03-24 14:53:25','2021-03-24 21:17:14');
/*!40000 ALTER TABLE `tblcandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcaptcha`
--

DROP TABLE IF EXISTS `tblcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcaptcha`
--

LOCK TABLES `tblcaptcha` WRITE;
/*!40000 ALTER TABLE `tblcaptcha` DISABLE KEYS */;
INSERT INTO `tblcaptcha` VALUES ('11619');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvoter`
--

DROP TABLE IF EXISTS `tblvoter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvoter` (
  `voter_id` varchar(100) NOT NULL,
  `voter_name` varchar(200) DEFAULT NULL,
  `voter_gender` varchar(100) DEFAULT NULL,
  `voter_dob` varchar(100) DEFAULT NULL,
  `voter_email` varchar(100) DEFAULT NULL,
  `voter_mobile` varchar(100) DEFAULT NULL,
  `voter_address` varchar(100) DEFAULT NULL,
  `voter_study_year` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`voter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvoter`
--

LOCK TABLES `tblvoter` WRITE;
/*!40000 ALTER TABLE `tblvoter` DISABLE KEYS */;
INSERT INTO `tblvoter` VALUES ('V20210324040002','Kishor Kadam','Male','1990-02-03','kadamk329@yahoo.com','7276763516','Bhalawani, Ahmednagar, Maharashtra.','2014','kishor','java@1991','2021-03-24 10:30:54','2021-03-25 00:14:07'),('V20210324082845','Sandhya Ayyer','Female','1995-03-18','sandhya345@gmail.com','8965231478','Ameerpeth, Hyderabad.','2015','sandhya','java@1991','2021-03-24 14:59:54','2021-03-24 20:29:54'),('V20210324102921','Mayur Mahale','Male','1995-03-24','mayurmahale12@gmail.com','8869351425','New Sangavi, Pune','2014','mayur','mahale@123','2021-03-24 17:00:03','2021-03-24 22:30:03'),('V20210324105245','Shashi Bhure','Male','1999-04-08','shashibhure33@yahoo.com','9741256358','Akurdi, Pune','2013','shashi','bhure@123','2021-03-24 17:23:30','2021-03-24 22:53:30'),('V20210324114918','Sagar Kharmale','Male','1992-02-25','sagarkharmale@gmail.com','8456571542','Bhandgaon, Ahmednagar, Maharashtra.','2015','sagar','sagar@123','2021-03-24 18:20:04','2021-03-24 23:50:04');
/*!40000 ALTER TABLE `tblvoter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvoting`
--

DROP TABLE IF EXISTS `tblvoting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvoting` (
  `vid` int NOT NULL AUTO_INCREMENT,
  `party_name` varchar(100) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvoting`
--

LOCK TABLES `tblvoting` WRITE;
/*!40000 ALTER TABLE `tblvoting` DISABLE KEYS */;
INSERT INTO `tblvoting` VALUES (1,'Equality & Justice','kishor'),(2,'Equality & Justice','shashi'),(3,'Credo','mayur'),(4,'Socialism & Liberation','sandhya'),(5,'Socialism & Liberation','sagar');
/*!40000 ALTER TABLE `tblvoting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-22  9:30:05
