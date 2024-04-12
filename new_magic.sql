CREATE DATABASE  IF NOT EXISTS `magic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `magic`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: magic
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `board_id` int NOT NULL,
  `board_name` varchar(45) NOT NULL,
  `board_email` varchar(45) NOT NULL,
  `board_comment` varchar(200) NOT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
INSERT INTO `counter` VALUES (1);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `member_username` varchar(45) NOT NULL,
  `member_name` varchar(45) NOT NULL,
  `member_password` varchar(45) NOT NULL,
  `member_mail` varchar(45) NOT NULL,
  `member_phonenumber` varchar(45) DEFAULT NULL,
  `member_sex` varchar(45) DEFAULT NULL,
  `member_birth` varchar(45) DEFAULT NULL,
  `member_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'11044129','Kelly','ling911126','j20021126@gmail.com','0988809431','female','2002-11-26','新竹縣'),(2,'11044112','Emily','20030719','a20030719@gmail.com','0970920719','female','2003-07-19','新北市');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `products_id` int NOT NULL,
  `products_name` varchar(45) NOT NULL,
  `products_cal` int NOT NULL,
  `products_price` int NOT NULL,
  `products_intro1` varchar(45) NOT NULL,
  `products_intro2` varchar(45) NOT NULL,
  `products_png` varchar(45) NOT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'蜜糖魔法圈 Suger Magic Ring',210,30,'最經典的蜜糖魔法圈配上糖霜好滋味','Q彈口感吃一口就愛上','image/p1.jpg'),(2,'草莓魔法圈 Strawberry Magic Ring',240,35,'特製酸甜草莓淋醬','Q彈口感吃一口就愛上','image/p2.jpg'),(3,'巧克力魔法圈 Chocolate Magic Ring',250,35,'65%巧克力淋醬','苦甜新滋味','image/p3.jpg'),(4,'奶油魔法圈 Cream Magic Ring',200,40,'鮮奶油打發的淋醬','健康無負擔','image/p4.jpg'),(5,'咖啡魔法圈 Cream Magic Ring',220,40,'大人的口味吃了精神滿滿','*此產品含有微量咖啡因','image/p5.jpg'),(6,'餅乾可可魔法圈 Cocoa Cookies Magic Ring',260,45,'帶有苦甜的黑可可沾醬 搭配脆口的可可碎片','Q彈又爽脆，豐富層次！','image/p6.jpg'),(7,'草莓脆餅Strawberry Cookie Ring',300,50,'酥脆口感配上特製草莓淋醬','無人能抵的魅力','image/p7.jpg'),(8,'巧克力脆餅Chocolate Cookie Ring',320,50,'酥脆口感配上巧克力特製淋醬','減糖好健康','image/p8.jpg'),(9,'香草脆餅Vanilla Cookie Ring',320,45,'香草脆餅加入酸奶增添獨特風味，裹上美味糖霜','濃郁滋味讓挑剔的嘴意猶未盡！','image/p9.jpg'),(10,'草莓蛋糕圈Strawberry Cake Ring',360,60,'奶油戚風蛋糕體搭配與魔法圈同款淋醬','撞出新滋味','image/p10.jpg'),(11,'巧克力蛋糕圈Chocolate Cake Ring',360,60,'奶油戚風蛋糕體搭配與魔法圈同款淋醬','撞出新滋味','image/p11.jpg'),(12,'金桔檸檬甜甜圈Kumquat Lemonade Ring',310,55,'檸檬糖霜撒上蜜桔丁','手搖經典口味帶出意想不到的美味，等你來嚐鮮！','image/p12.png'),(13,'榛果脆脆甜甜圈Nutty Cocoa Ring',360,55,'甜甜圈外層抹上一層厚厚的榛果醬，並灑上杏仁角','一口咬下幸福指數破表!','image/p13.jpg'),(14,'伯爵脆脆甜甜圈Earl Grey Tea Ring',310,50,'伯爵糖霜淋上鬆軟甜甜圈','配上珍珠糖脆脆的口感，咬下一口，即彷彿身處異國旅遊','image/p14.png'),(15,'杏仁白巧克力甜甜圈Almond White Chocolate Ring',340,50,'白巧克力覆蓋著甜甜圈，撒滿誘人巧克力碎片','特殊美式口感，瞬間滿足欲望無窮味蕾！','image/p15.jpg'),(16,'花生糖霜甜甜圈Peanut Butter Ring',340,55,'香濃花生醬和特製糖霜厚厚覆蓋在甜甜圈表層','絕配滋味令花生迷愛不釋口！','image/p16.jpg'),(17,'抹茶甜甜圈Matcha Ring',320,50,'獨特抹茶巧克力，造就少見絕妙滋味','嚐一口讓味覺披上清爽禪風！','image/p17.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-02 21:43:18
