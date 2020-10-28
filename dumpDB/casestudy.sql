-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: casestudy
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
-- Table structure for table `tariffdetails`
--

DROP TABLE IF EXISTS `tariffdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tariffdetails` (
  `planID` int unsigned NOT NULL AUTO_INCREMENT,
  `planName` varchar(50) NOT NULL,
  `planType` varchar(5) NOT NULL,
  `tariff` double unsigned NOT NULL,
  `validity` int unsigned NOT NULL,
  `rental` double unsigned DEFAULT NULL,
  PRIMARY KEY (`planID`),
  UNIQUE KEY `planID_UNIQUE` (`planID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariffdetails`
--

LOCK TABLES `tariffdetails` WRITE;
/*!40000 ALTER TABLE `tariffdetails` DISABLE KEYS */;
INSERT INTO `tariffdetails` VALUES (1,'Basic','Data',0.5,30,500),(2,'Standard','Data',0.4,30,800),(3,'Premium','Data',0.3,30,1000),(4,'Silver','Voice',0.5,30,500),(5,'Gold','Voice',0.4,30,800),(6,'Diamond','Voice',0.3,30,1000);
/*!40000 ALTER TABLE `tariffdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plan`
--

DROP TABLE IF EXISTS `user_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_plan` (
  `user_id` int DEFAULT NULL,
  `plan_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plan`
--

LOCK TABLES `user_plan` WRITE;
/*!40000 ALTER TABLE `user_plan` DISABLE KEYS */;
INSERT INTO `user_plan` VALUES (1,5),(1,1),(1,3),(19,4);
/*!40000 ALTER TABLE `user_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdetails` (
  `userID` int unsigned NOT NULL AUTO_INCREMENT,
  `registrationNumber` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactNumber` bigint NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `registrationNumber_UNIQUE` (`registrationNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
INSERT INTO `userdetails` VALUES (1,1000,'RaviRanjan','Burdwan','Ravi@gamil.com',877878787,'123','user'),(2,1001,'Arijit','Burdwan','hello@com',788778787,'ari','user'),(3,2,'nullGhosh','burdwan','Aridfdkjhf@hello',788877787,'ari','user'),(4,1002,'null Ghosh','hdsudushd','hhhd@hwwe',7878544,'add','user'),(6,10454,'jahs','js','whww',5454454,'hssh','user'),(7,104451,'jahs','js','whww',5454454,'hssh','user'),(8,1008,'hello boy','hhusw','hsds@yggq',12421564154,'7878','user'),(9,1009,'bhge hehhfrn','hhdbhdc','hdhhh@hhbrb',56558484,'qwerty','user'),(10,1010,'Ankita Mondal','swhwh','ffgsfd@hwhw',54487454,'777','user'),(11,1011,'Ankita  hhdu','jdjd','dhwuhdwh@hdhdq',3214888,'4444','user'),(12,1012,'bored jsdsh','sjjdijd','uehehh@djije',59943364,'4545','user'),(13,1013,'nnedh nrjfnn','rbfhbr','jncjncjn@hhcrbr',8978444,'aaaa','user'),(14,1014,'hduwuwh dhudhuw','hsdhuhds','hdhwu@heuhde',551245468,'aaaa','user'),(15,1015,'ababadbabd jcnsjn','dkdmd','snjsc@cdncd',4545484,'dddd','user'),(16,1016,'Tridib avcbh','dhhdshd','vhd@sjdjds',878785454,'1111','user'),(17,1017,'Camelo abcd','Burdwan','hello@hsjah',78787878,'1234','user'),(18,1018,'sjdsjjs dksjdsj','DKSJDKSD','djsdjs@sjnsj',7454844,'1111','user'),(19,1019,'tcs tcs','kolkata','abc@xyz',123456780,'1234','user');
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-28 16:42:11
