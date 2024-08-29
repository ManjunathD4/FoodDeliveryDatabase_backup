CREATE DATABASE  IF NOT EXISTS `fooddelivery` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fooddelivery`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: fooddelivery
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text,
  `Role` enum('Customer','RestaurantAdmin','SystemAdmin') NOT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `LastLoginDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'john_doe','password123','john@example.com','123 Street, City','Customer','2024-06-29 09:39:24',NULL),(2,'jdoe','Passw0rd!','jdoe@gmail.com','123 Main St, Springfield, IL','Customer','2024-06-29 09:44:17',NULL),(3,'asmith','Smith123!','asmith@yahoo.com','456 Elm St, Metropolis, NY','Customer','2024-06-29 09:44:17',NULL),(4,'mjones','MJones!45','mjones@outlook.com','789 Oak St, Gotham, NJ','Customer','2024-06-29 09:44:17',NULL),(5,'rjohnson','Rjohnson$12','rjohnson@hotmail.com','101 Maple St, Smallville, KS','Customer','2024-06-29 09:44:17',NULL),(6,'kbrown','Kbrown@34','kbrown@icloud.com','202 Pine St, Star City, CA','Customer','2024-06-29 09:44:17',NULL),(7,'wgarcia','Wgarcia#56','wgarcia@aol.com','303 Cedar St, Central City, OH','Customer','2024-06-29 09:44:17',NULL),(8,'lwilson','Lwilson78%','lwilson@protonmail.com','404 Birch St, Coast City, TX','Customer','2024-06-29 09:44:17',NULL),(9,'dmartinez','Dmartinez&90','dmartinez@gmail.com','505 Walnut St, Blüdhaven, FL','Customer','2024-06-29 09:44:17',NULL),(10,'tanderson','Tanderson^01','tanderson@yahoo.com','606 Spruce St, Fawcett City, MA','Customer','2024-06-29 09:44:17',NULL),(11,'jlee','Jlee!23','jlee@outlook.com','707 Ash St, Keystone City, PA','Customer','2024-06-29 09:44:17',NULL),(12,'Manju','MANJU@$','desai@','bgm','Customer','2024-06-30 14:08:35',NULL),(13,'Ajay','MANJU','Ajay@123','belagavi','Customer','2024-07-01 16:43:01',NULL),(14,'Rajanikant','RAJANI','hukum@gmail.com','Chennai','Customer','2024-07-12 20:17:24',NULL),(15,'Rajanikant','HUKUM','Thalaiva161@gmail.com','Chennai','Customer','2024-07-12 20:41:06',NULL),(16,'Vijay','Thalapathy','Thalapathy@gmail.com','Chennai','Customer','2024-07-12 20:49:22',NULL),(17,'Ajith','AJITH@$','Ajith@gmail.com','Chennai','Customer','2024-07-26 19:54:02',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-29 23:33:21
