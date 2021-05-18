-- MySQL dump 10.13  Distrib 5.7.30, for Win64 (x86_64)
--
-- Host: localhost    Database: BookADDA
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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `Author_id` int(11) NOT NULL AUTO_INCREMENT,
  `Author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (109,'Techmax'),(110,'Corely'),(111,'Brad'),(112,'bcd'),(114,'Dennis'),(115,'John'),(119,'abc');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `Book_id` int(11) NOT NULL AUTO_INCREMENT,
  `Book_name` varchar(100) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `S_id` int(11) DEFAULT NULL,
  `Author_id` int(11) DEFAULT NULL,
  `P_id` int(11) DEFAULT NULL,
  `Edition_id` int(11) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Book_sem` int(11) DEFAULT NULL,
  PRIMARY KEY (`Book_id`),
  KEY `S_id` (`S_id`),
  KEY `Author_id` (`Author_id`),
  KEY `P_id` (`P_id`),
  KEY `Edition_id` (`Edition_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `seller` (`S_id`),
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`Author_id`) REFERENCES `author` (`Author_id`),
  CONSTRAINT `book_ibfk_3` FOREIGN KEY (`P_id`) REFERENCES `publisher` (`P_id`),
  CONSTRAINT `book_ibfk_4` FOREIGN KEY (`Edition_id`) REFERENCES `edition` (`Edition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7520 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (7505,'Engg Science-1','PDF',200,35021,114,208,313,'Physics and Biology','2021-05-12 12:20:03',3),(7506,'Engg Maths','Books',350,35021,110,208,309,'EM-1','2020-12-16 07:02:39',NULL),(7507,'COA','Books',400,35012,111,209,311,'COA mcq for Unit 1-4 and question bank for all units','2021-01-06 18:05:55',4),(7508,'SEPM','PDF',250,35021,112,209,312,'MCQ questions book for project management','2020-12-16 07:02:39',NULL),(7509,'Engg Graphics','PDF',100,35021,110,209,310,'MCQ questions book for graphics','2020-12-16 07:02:39',NULL),(7510,'Discrete Structures','Books',500,35002,111,210,310,'DS mcq and theory for final exams','2020-12-16 07:02:39',NULL),(7511,'DSF','PDF',360,35021,110,208,309,'MCQ questions book','2021-05-12 12:20:03',6),(7512,'Engg Maths-3','PDF',260,35021,115,208,310,'Engg maths 3 mcq for 4 units and question bank for all units','2020-12-19 07:14:08',NULL),(7517,'DSBDA','PDF',250,35011,112,209,310,'DSBDA unit 1-6 with question papers','2021-05-12 16:17:59',6),(7518,'SP','Books',348,35011,112,208,310,'SP','2021-05-12 17:53:18',6),(7519,'CNT','PDF',150,35011,111,208,311,'CNT notes','2021-05-12 19:56:44',8);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyer` (
  `B_id` int(11) NOT NULL AUTO_INCREMENT,
  `B_name` varchar(100) DEFAULT NULL,
  `B_password` varchar(50) DEFAULT NULL,
  `B_branch` varchar(50) DEFAULT NULL,
  `B_sem` int(11) DEFAULT NULL,
  `B_contact` int(11) DEFAULT NULL,
  `B_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`B_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35022 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (35001,'abc','123789','IT',4,12345678,'b8855804@urhen.com'),(35002,'Piyush','456123','Comp',5,42315678,'wetewrwqeqwr@gmail.com'),(35003,'Swapnil Asane','987654','Comp',6,42516378,'swapnil0@gmail.com'),(35010,'John Doe','456123','IT',6,985083322,'john@gmail.com'),(35011,'Anuj Galande','456123','Comp',4,12345678,'anuj.galande@gmail.com'),(35012,'Shreya','159753','IT',5,13467825,'shreya.boyane@gmail.com'),(35021,'Ankit Gole','123456','IT',5,12345678,'ankit.gole2000@gmail.com');
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `seller_after_insert` AFTER INSERT ON `buyer` FOR EACH ROW begin
insert into seller(S_id,S_name,S_password,S_branch,S_sem,S_email,S_contact)
values(new.B_id,new.B_name,new.B_password,new.B_branch,new.B_sem,new.B_email,new.B_contact);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `buys`
--

DROP TABLE IF EXISTS `buys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buys` (
  `B_id` int(11) NOT NULL,
  `Book_id` int(11) NOT NULL,
  PRIMARY KEY (`B_id`,`Book_id`),
  KEY `Book_id` (`Book_id`),
  CONSTRAINT `buys_ibfk_1` FOREIGN KEY (`B_id`) REFERENCES `buyer` (`B_id`),
  CONSTRAINT `buys_ibfk_2` FOREIGN KEY (`Book_id`) REFERENCES `book` (`Book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buys`
--

LOCK TABLES `buys` WRITE;
/*!40000 ALTER TABLE `buys` DISABLE KEYS */;
/*!40000 ALTER TABLE `buys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `C_id` int(11) NOT NULL AUTO_INCREMENT,
  `B_id` int(11) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  PRIMARY KEY (`C_id`),
  KEY `B_id` (`B_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`B_id`) REFERENCES `buyer` (`B_id`)
) ENGINE=InnoDB AUTO_INCREMENT=705 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (701,35012,450),(703,35002,NULL),(704,35021,900);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edition`
--

DROP TABLE IF EXISTS `edition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edition` (
  `Edition_id` int(11) NOT NULL AUTO_INCREMENT,
  `Edition` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Edition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edition`
--

LOCK TABLES `edition` WRITE;
/*!40000 ALTER TABLE `edition` DISABLE KEYS */;
INSERT INTO `edition` VALUES (309,'5'),(310,'7'),(311,'6'),(312,'2'),(313,'11'),(324,'1'),(326,'3');
/*!40000 ALTER TABLE `edition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `Item_id` int(11) NOT NULL AUTO_INCREMENT,
  `Book_id` int(11) DEFAULT NULL,
  `C_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Item_id`),
  KEY `Book_id` (`Book_id`),
  KEY `C_id` (`C_id`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`Book_id`) REFERENCES `book` (`Book_id`),
  CONSTRAINT `item_ibfk_2` FOREIGN KEY (`C_id`) REFERENCES `cart` (`C_id`)
) ENGINE=InnoDB AUTO_INCREMENT=621 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (606,7506,703),(614,7505,701),(615,7508,701),(619,7510,704),(620,7507,704);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `Order_id` int(11) NOT NULL AUTO_INCREMENT,
  `Book_name` varchar(100) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `sold_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Book_sem` int(11) DEFAULT NULL,
  `S_id` int(11) DEFAULT NULL,
  `Author_id` int(11) DEFAULT NULL,
  `P_id` int(11) DEFAULT NULL,
  `Edition_id` int(11) DEFAULT NULL,
  `B_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Order_id`),
  KEY `S_id` (`S_id`),
  KEY `Author_id` (`Author_id`),
  KEY `P_id` (`P_id`),
  KEY `Edition_id` (`Edition_id`),
  KEY `B_id` (`B_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `seller` (`S_id`),
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`Author_id`) REFERENCES `author` (`Author_id`),
  CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`P_id`) REFERENCES `publisher` (`P_id`),
  CONSTRAINT `order_details_ibfk_4` FOREIGN KEY (`Edition_id`) REFERENCES `edition` (`Edition_id`),
  CONSTRAINT `order_details_ibfk_5` FOREIGN KEY (`B_id`) REFERENCES `buyer` (`B_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,'Engg Science-1','PDF',200,'Physics and Biology','2021-01-06 18:43:19',NULL,35021,114,208,313,35012),(2,'SEPM','PDF',250,'MCQ questions book for project management','2021-01-06 18:43:19',NULL,35021,112,209,312,35012),(3,'Discrete Structures','Books',500,'DS mcq and theory for final exams','2021-04-15 13:27:08',NULL,35002,111,210,310,35021),(4,'COA','Books',400,'COA mcq for Unit 1-4 and question bank for all units','2021-04-15 13:27:08',4,35012,111,209,311,35021),(5,'Discrete Structures','Books',500,'DS mcq and theory for final exams','2021-04-15 13:27:08',NULL,35002,111,210,310,35021),(6,'COA','Books',400,'COA mcq for Unit 1-4 and question bank for all units','2021-04-15 13:27:08',4,35012,111,209,311,35021),(7,'Discrete Structures','Books',500,'DS mcq and theory for final exams','2021-05-12 12:20:03',NULL,35002,111,210,310,35021),(8,'COA','Books',400,'COA mcq for Unit 1-4 and question bank for all units','2021-05-12 12:20:03',4,35012,111,209,311,35021);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher` (
  `P_id` int(11) NOT NULL AUTO_INCREMENT,
  `Publisher` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`P_id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (208,'Techneo'),(209,'Decode'),(210,'Technical'),(213,'Techmax');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller` (
  `S_id` int(11) NOT NULL AUTO_INCREMENT,
  `S_name` varchar(100) DEFAULT NULL,
  `S_password` varchar(50) DEFAULT NULL,
  `S_branch` varchar(50) DEFAULT NULL,
  `S_sem` int(11) DEFAULT NULL,
  `S_email` varchar(50) DEFAULT NULL,
  `S_contact` int(11) DEFAULT NULL,
  PRIMARY KEY (`S_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35022 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (35001,'abc','123789','IT',4,'b8855804@urhen.com',12345678),(35002,'Piyush','456123','Comp',5,'wetewrwqeqwr@gmail.com',42315678),(35003,'Swapnil Asane','987654','Comp',6,'swapnil0@gmail.com',42516378),(35010,'John Doe','456123','IT',6,'john@gmail.com',985083322),(35011,'Anuj Galande','456123','Comp',4,'anuj.galande@gmail.com',12345678),(35012,'Shreya','159753','IT',5,'shreya.boyane@gmail.com',13467825),(35021,'Ankit Gole','123456','IT',5,'ankit.gole2000@gmail.com',12345678);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-18 11:01:00
