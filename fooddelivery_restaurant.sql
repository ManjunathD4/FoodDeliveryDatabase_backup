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
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurantId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cuisineType` varchar(100) DEFAULT NULL,
  `deliveryTime` int DEFAULT NULL,
  `address` text,
  `adminUserId` int DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `imagePath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`restaurantId`),
  KEY `adminUserId` (`adminUserId`),
  CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`adminUserId`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (102,'Taste of Punjab','North Indian',25,'No. 45, Koramangala, Bangalore, Karnataka, India',2,4.20,1,'#Masala dosa.jpg'),(103,'Shanghai Express','Chinese',35,'No. 67, Whitefield, Bangalore, Karnataka, India',5,4.80,1,'images/shanghai_express.jpg'),(104,'La Pino\'z Pizza','Italian',20,'No. 89, Indiranagar, Bangalore, Karnataka, India',9,4.00,1,'images/la_pinoz_pizza.jpg'),(105,'Taco Bell','Mexican',40,'No. 120, HSR Layout, Bangalore, Karnataka, India',2,3.90,1,'images/taco_bell.jpg'),(106,'The French Cafe','French',30,'No. 143, Brigade Road, Bangalore, Karnataka, India',6,4.70,1,'images/the_french_cafe.jpg'),(107,'Tokyo Sushi','Japanese',45,'No. 200, JP Nagar, Bangalore, Karnataka, India',7,4.60,1,'images/tokyo_sushi.jpg');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
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
