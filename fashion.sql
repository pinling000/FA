CREATE DATABASE  IF NOT EXISTS `fashion`  /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fashion`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fashion
-- ------------------------------------------------------
-- Server version	5.7.21-log

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

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `boardid` int NOT NULL AUTO_INCREMENT,
  `boardname` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `star` float NOT NULL,
  `comment` varchar(45) NOT NULL,
  `productid` varchar(45) NOT NULL,
  PRIMARY KEY (`boardid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'test','2022-06-10',2,'rgegergeggeg','1');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `num` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
#INSERT INTO `car` VALUES (1,'星空莓莓',560,1,'image/strawberry.jpg');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `count` int NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (19);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestbook` (
  `guestbookid` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `comment` varchar(45) NOT NULL,
  `star` float NOT NULL,
  `product` varchar(45) NOT NULL,
  PRIMARY KEY (`guestbookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `mid` int NOT NULL AUTO_INCREMENT UNIQUE,
  `name` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `phone` varchar(45),
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('1','aaa','cyim@gmail.com','aaa','0918691890'),('2','admin','admin','admin',NULL),('3','test','test','1234',NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_table`
--

DROP TABLE IF EXISTS `new_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_table` (
  `idnew_table` int NOT NULL,
  PRIMARY KEY (`idnew_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table`
--

LOCK TABLES `new_table` WRITE;
/*!40000 ALTER TABLE `new_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_table` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `product`
--
DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_ID` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `feature` varchar(200) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `inventory` int DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `html` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_ID` int NOT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `feature` varchar(200) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `inventory` int DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `html` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'珍珠波浪造型戒指五件組',NULL,'200','戒指',1000,'assets\\image\\ring1\\2022-06-06 (1).png',NULL),(2,'氣質波浪戒指兩件組',NULL,'200','戒指',1000,'assets\\image\\ring2\\2022-06-06 (7).png',NULL),(3,'水晶造型戒',NULL,'200','戒指',1000,'assets\\image\\ring3\\1654683742362.jpg',NULL),(4,'螺旋編織戒',NULL,'200','戒指',1000,'assets\\image\\ring4\\1654628306689.jpg',NULL),(5,'交織造型戒',NULL,'200','戒指',1000,'assets\\image\\ring5\\1654628351365.jpg',NULL),(6,'幾何垂墜耳環',NULL,'200','耳環',1000,'assets\\image\\earrings1\\1654628472821.jpg',NULL),(7,'琉璃行星造型耳環',NULL,'200','耳環',1000,'assets\\image\\earrings2\\1654628534568.jpg',NULL),(8,'幸運水晶花耳環',NULL,'200','耳環',1000,'assets\\image\\earrings3\\1654628669133.jpg',NULL),(9,'花圈垂墜耳環',NULL,'200','耳環',1000,'assets\\image\\earrings4\\1654628746887.jpg',NULL),(10,'銀色楓葉',NULL,'200','項鍊',1000,'assets\\image\\necklace1\\S__15826947.jpg',NULL),(11,'流星鎖骨練',NULL,'200','項鍊',1000,'assets\\image\\necklace2\\1654628105355.jpg',NULL),(12,'夏日蝴蝶結',NULL,'200','項鍊',1000,'assets\\image\\necklace3\\1654628058833.jpg',NULL),(13,'水滴項鍊',NULL,'200','項鍊',1000,'assets\\image\\necklace4\\1654627909140.jpg',NULL),(14,'蝴蝶漫舞',NULL,'200','項鍊',1000,'assets\\image\\necklace5\\1654627738057.jpg',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `mail` varchar(45),
  `price` varchar(45),
  `num` varchar(45),
  `receiver_name` varchar(45),
  `receiver_tel` varchar(45),
  `receiver_mail` varchar(45),
  `receiver_address` varchar(45),
  `location` varchar(45),
  `deliver` varchar(45),
  `pay` varchar(45),
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
#INSERT INTO `orders` VALUES ('1','2','400','2','貨到付款','aaa','1245876','sdhjhjshkj'),('2','1','1','200','貨到付款','bbb','12265486','soijfoei');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 23:45:35