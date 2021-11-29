-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: books_store
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `attached`
--

DROP TABLE IF EXISTS `attached`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attached` (
  `id_book` char(7) NOT NULL,
  `id_category` char(7) NOT NULL,
  PRIMARY KEY (`id_book`,`id_category`),
  KEY `id_category` (`id_category`),
  CONSTRAINT `attached_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `book` (`id_book`),
  CONSTRAINT `attached_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attached`
--

LOCK TABLES `attached` WRITE;
/*!40000 ALTER TABLE `attached` DISABLE KEYS */;
INSERT INTO `attached` VALUES ('114541','123456'),('125423','126503'),('145411','156407'),('514552','534132'),('154544','564220');
/*!40000 ALTER TABLE `attached` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id_author` char(7) NOT NULL,
  `f_name` varchar(15) DEFAULT NULL,
  `m_name` varchar(15) DEFAULT NULL,
  `l_name` varchar(15) DEFAULT NULL,
  `address_author` varchar(50) DEFAULT NULL,
  `email_author` varchar(50) DEFAULT NULL,
  `phone_author` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES ('00010','Dale',NULL,'Carnegie',NULL,NULL,NULL),('00011','Chi',NULL,'Nguyễn',NULL,NULL,NULL),('00012','Spencer',NULL,'Johnson',NULL,NULL,NULL),('00013','Paulo',NULL,'Coelho',NULL,NULL,NULL),('00014','Robert',NULL,'Kiyosaki',NULL,NULL,NULL);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id_book` char(7) NOT NULL,
  `current_book_price` int DEFAULT NULL,
  `n_book` varchar(50) DEFAULT NULL,
  `cover_image` varchar(500) DEFAULT NULL,
  `book_summary` varchar(255) DEFAULT NULL,
  `book_price` int DEFAULT NULL,
  `n_author` varchar(50) DEFAULT NULL,
  `n_publisher` varchar(50) DEFAULT NULL,
  `published_year` char(4) DEFAULT NULL,
  `published_time` date DEFAULT NULL,
  PRIMARY KEY (`id_book`),
  KEY `n_publisher` (`n_publisher`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`n_publisher`) REFERENCES `publisher` (`n_publisher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('114541',120000,'Nghệ thuật thuyết phục bậc thầy',NULL,'Khả năng thuyết phục',140000,'David Barron','Pearson','2003','2021-08-04'),('125423',250000,'Pay Back Time',NULL,'Tam li nha dau tu',300000,'Phil Town','Wiley','1995','2021-08-18'),('145411',150000,'Sức mạnh của khởi đầu ngớ ngẩn',NULL,'Day start-up',175000,'Richie Norton','Bertelsmann','2002','2021-08-03'),('154544',50000,'Quẳng gánh lo đi và vui sống',NULL,'Khát vọng sống',75000,'Dale Carnegie','Seven Seas','1995','2016-08-10'),('514552',300000,'Dắc Nhân Tâm',NULL,'Sach day lam nguoi',350000,'Dale Carnegie','Kim Jang','1970','2021-08-02');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_payment`
--

DROP TABLE IF EXISTS `card_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_payment` (
  `id_payment` char(7) NOT NULL,
  `number_card` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id_payment`),
  KEY `number_card` (`number_card`),
  CONSTRAINT `card_payment_ibfk_1` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id_payment`),
  CONSTRAINT `card_payment_ibfk_2` FOREIGN KEY (`number_card`) REFERENCES `credit_card` (`number_card`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_payment`
--

LOCK TABLES `card_payment` WRITE;
/*!40000 ALTER TABLE `card_payment` DISABLE KEYS */;
INSERT INTO `card_payment` VALUES ('1234567','0000000000000001'),('1234568','0000000000000002'),('1234569','0000000000000003'),('1234560','0000000000000004'),('1234570','0000000000000005'),('1234571','0000000000000006'),('1234572','0000000000000007'),('1234575','1234567890123456');
/*!40000 ALTER TABLE `card_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `number_of_book` int DEFAULT NULL,
  `n_category` varchar(50) DEFAULT NULL,
  `id_category` char(7) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (500,'Khoa học','123456'),(250,'Vật lý','126503'),(1000,'Công nghệ thông tin','156407'),(200,'Toán cao cấp','534132'),(30,'Kinh tế','564220');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id_author` char(7) NOT NULL,
  `id_staff` char(7) NOT NULL,
  PRIMARY KEY (`id_author`,`id_staff`),
  KEY `id_staff` (`id_staff`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`),
  CONSTRAINT `contact_ibfk_2` FOREIGN KEY (`id_author`) REFERENCES `author` (`id_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES ('00010','0002'),('00012','0003'),('00013','0005'),('00011','0007'),('00014','0007');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content` (
  `star` smallint DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `id_customer` char(7) NOT NULL,
  `id_book` char(7) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id_book`,`id_customer`,`time`),
  KEY `id_customer` (`id_customer`,`time`,`id_book`),
  CONSTRAINT `content_ibfk_1` FOREIGN KEY (`id_customer`, `time`, `id_book`) REFERENCES `rate` (`id_customer`, `time`, `id_book`),
  CONSTRAINT `checkstar` CHECK (((`star` >= 0) and (`star` <= 5)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_card` (
  `number_card` varchar(16) NOT NULL,
  `end_time` date DEFAULT NULL,
  `n_bank` varchar(50) DEFAULT NULL,
  `n_owner` varchar(50) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `n_branch` varchar(50) DEFAULT NULL,
  `id_customer` char(7) NOT NULL,
  PRIMARY KEY (`number_card`),
  KEY `id_customer` (`id_customer`),
  CONSTRAINT `credit_card_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  CONSTRAINT `checkid_customer` CHECK ((`id_customer` not in (_utf8mb4'',_utf8mb4'null',_utf8mb4'NULL'))),
  CONSTRAINT `checknumber_card` CHECK ((`number_card` not in (_utf8mb4'',_utf8mb4'null',_utf8mb4'NULL')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card`
--

LOCK TABLES `credit_card` WRITE;
/*!40000 ALTER TABLE `credit_card` DISABLE KEYS */;
INSERT INTO `credit_card` VALUES ('0000000000000001','2022-06-12','NH SACCOMBANK','VO NGUYEN MINH TU','2017-02-10','CN CHO THU DUC','1111111'),('0000000000000002','2022-03-29','NH VIETTINBANK','TRAN VAN B','2017-03-27','CN NGUYEN XI','4444444'),('0000000000000003','2024-07-20','NH DONGABANK','VO QUY LONG','2019-06-21','CN QUANG TRUNG','2222222'),('0000000000000004','2023-07-10','NH VIETCOMBANK','NGUYEN VAN A','2018-11-21','CN THU DUC','3333333'),('0000000000000005','2022-09-03','NH TECHCOMBANK','VO NGUYEN MINH TU','2018-05-18','CN THU DUC','1111111'),('0000000000000006','2026-02-20','NH MBBANK','VO QUY LONG','2021-03-12','CN LI THUONG KIET','2222222'),('0000000000000007','2023-08-11','NH VIETCOMBANK','VO QUY LONG','2018-12-22','CN THU DUC','2222222'),('1234567890123456','2023-08-21','NH OCB','DINH THAI VINH','2018-04-12','CN THU DUC','5555555');
/*!40000 ALTER TABLE `credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `f_name` varchar(15) DEFAULT NULL,
  `m_name` varchar(15) DEFAULT NULL,
  `l_name` varchar(15) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address_customer` varchar(50) DEFAULT NULL,
  `phone_customer` varchar(11) DEFAULT NULL,
  `email_customer` varchar(50) DEFAULT NULL,
  `password_customer` varchar(20) DEFAULT NULL,
  `username_customer` varchar(20) DEFAULT NULL,
  `id_customer` char(7) NOT NULL,
  PRIMARY KEY (`id_customer`),
  CONSTRAINT `checkID` CHECK ((`id_customer` not in (_utf8mb4'',_utf8mb4'null',_utf8mb4'NULL'))),
  CONSTRAINT `checksex` CHECK ((`sex` in (_utf8mb4'M',_utf8mb4'F')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('VO','NGUYEN MINH','TU','M','2000-01-01','Thu Duc,TPHCM','0123456789','tu.vo.2504@hcmut.edu.vn','0000001','tu.vo.2504','1111111'),('VO','QUY','LONG','M','2000-01-02','Quan 10,TPHCM','0000000002','long.vo2k1@hcmut.edu.vn','0000002','long.vo2k1','2222222'),('NGUYEN','VAN','A','M','2001-01-03','Quan 9,TPHCM','0000000003','ng.van.a@hcmut.edu.vn','0000003','ng.van.a','3333333'),('TRAN','VAN','B','M','1999-01-04','Quan 5,TPHCM','0000000004','tr.van.b@hcmut.edu.vn','0000004','tr.van.b','4444444'),('DINH','THAI','VINH','M','1999-09-22','Binh Thanh, TPHCM','0971337478','vinh.dinh0309@hcmut.edu.vn','123456','vinh.dinh0309','5555555');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export`
--

DROP TABLE IF EXISTS `export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `export` (
  `id_note` char(7) NOT NULL,
  `n_staff` char(50) DEFAULT NULL,
  `id_storage` char(7) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `storage_address` varchar(50) DEFAULT NULL,
  `n_book` varchar(50) DEFAULT NULL,
  `id_book` char(7) NOT NULL,
  `amount_of_book` int DEFAULT NULL,
  `current_price_of_book` int DEFAULT NULL,
  `id_staff` char(7) DEFAULT NULL,
  PRIMARY KEY (`id_note`),
  KEY `id_staff` (`id_staff`),
  CONSTRAINT `export_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export`
--

LOCK TABLES `export` WRITE;
/*!40000 ALTER TABLE `export` DISABLE KEYS */;
INSERT INTO `export` VALUES ('00001',NULL,NULL,'2000-01-02 00:00:00','Thu Duc,TPHCM','Hoàng Tử Bé','000001',50,60000,'0007'),('00002',NULL,NULL,'2012-07-02 00:00:00','Thu Duc,TPHCM','Thần Thoại Hy Lạp','000020',100,160000,'0008'),('00003',NULL,NULL,'2013-03-07 00:00:00','Thu Duc,TPHCM','Thần thoại bắc âu','000021',100,93000,'0005'),('00004',NULL,NULL,'2008-10-18 00:00:00','Thu Duc,TPHCM','Các Vị Thần Ai Cập','000022',100,100000,'0002'),('00005',NULL,NULL,'2015-09-20 00:00:00','Thu Duc,TPHCM','Tuổi trẻ đáng Giá Bao Nhiêu','000101',500,60000,'0003');
/*!40000 ALTER TABLE `export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import`
--

DROP TABLE IF EXISTS `import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import` (
  `id_note` char(7) NOT NULL,
  `n_staff` char(50) DEFAULT NULL,
  `id_storage` char(7) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `storage_address` varchar(50) DEFAULT NULL,
  `n_book` varchar(50) DEFAULT NULL,
  `id_book` char(7) NOT NULL,
  `amount_of_book` int DEFAULT NULL,
  `current_price_of_book` int DEFAULT NULL,
  `id_staff` char(7) DEFAULT NULL,
  PRIMARY KEY (`id_note`),
  KEY `id_staff` (`id_staff`),
  CONSTRAINT `import_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import`
--

LOCK TABLES `import` WRITE;
/*!40000 ALTER TABLE `import` DISABLE KEYS */;
INSERT INTO `import` VALUES ('00001',NULL,NULL,'2000-01-02 00:00:00','Thu Duc,TPHCM','Hoàng Tử Bé','000001',50,60000,'0002'),('00002',NULL,NULL,'2012-07-02 00:00:00','Thu Duc,TPHCM','Thần Thoại Hy Lạp','000020',100,160000,'0007'),('00003',NULL,NULL,'2013-03-07 00:00:00','Thu Duc,TPHCM','Thần thoại bắc âu','000021',100,93000,'0005'),('00004',NULL,NULL,'2008-10-18 00:00:00','Thu Duc,TPHCM','Các Vị Thần Ai Cập','000022',100,100000,'0008'),('00005',NULL,NULL,'2015-09-20 00:00:00','Thu Duc,TPHCM','Tuổi trẻ đáng Giá Bao Nhiêu','000101',500,60000,'0003');
/*!40000 ALTER TABLE `import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id_payment` char(7) NOT NULL,
  `id_order` char(7) NOT NULL,
  `id_book` char(7) NOT NULL,
  `n_book` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `current_price` int DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  `id_voucher` char(7) NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_payment` (`id_payment`),
  KEY `id_voucher` (`id_voucher`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id_payment`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id_voucher`) REFERENCES `voucher` (`id_voucher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('1234567','1912714','000020','Thần Thoại Hy Lạp','2021-11-26 12:12:12',1,2131,'2020-12-12 12:12:12','2611221'),('1234568','1912715','000020','Thần Thoại Hy Lạp','2021-11-26 12:12:13',1,2131,'2020-12-12 12:12:12','2611221'),('1234569','1912716','000020','Thần Thoại Hy Lạp','2021-11-26 12:12:15',1,2131,'2020-12-12 12:12:12','2611221');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered`
--

DROP TABLE IF EXISTS `ordered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordered` (
  `id_customer` char(7) DEFAULT NULL,
  `id_book` char(7) NOT NULL,
  `id_order` char(7) NOT NULL,
  PRIMARY KEY (`id_book`,`id_order`),
  KEY `id_order` (`id_order`),
  KEY `id_customer` (`id_customer`),
  CONSTRAINT `ordered_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `book` (`id_book`),
  CONSTRAINT `ordered_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `order` (`id_order`),
  CONSTRAINT `ordered_ibfk_3` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered`
--

LOCK TABLES `ordered` WRITE;
/*!40000 ALTER TABLE `ordered` DISABLE KEYS */;
INSERT INTO `ordered` VALUES ('2222222','125423','1912715'),('2222222','154544','1912714'),('2222222','514552','1912716');
/*!40000 ALTER TABLE `ordered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id_payment` char(7) NOT NULL,
  PRIMARY KEY (`id_payment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('1234560'),('1234567'),('1234568'),('1234569'),('1234570'),('1234571'),('1234572'),('1234573'),('1234574'),('1234575'),('1234576'),('1234577');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `n_publisher` varchar(50) NOT NULL,
  `address_publisher` varchar(50) DEFAULT NULL,
  `phone_publisher` varchar(11) DEFAULT NULL,
  `email_publisher` varchar(50) DEFAULT NULL,
  `business_code` char(7) DEFAULT NULL,
  PRIMARY KEY (`n_publisher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES ('Bertelsmann',NULL,NULL,NULL,NULL),('Kim Jang',NULL,NULL,NULL,NULL),('Pearson',NULL,NULL,NULL,NULL),('Seven Seas',NULL,NULL,NULL,NULL),('Wiley',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate`
--

DROP TABLE IF EXISTS `rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rate` (
  `id_customer` char(7) NOT NULL,
  `time` datetime NOT NULL,
  `id_book` char(7) NOT NULL,
  PRIMARY KEY (`id_customer`,`time`,`id_book`),
  KEY `id_book` (`id_book`),
  CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `book` (`id_book`),
  CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate`
--

LOCK TABLES `rate` WRITE;
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `f_name` varchar(15) DEFAULT NULL,
  `m_name` varchar(15) DEFAULT NULL,
  `l_name` varchar(15) DEFAULT NULL,
  `id_staff` char(7) NOT NULL,
  `id_storage` char(7) DEFAULT NULL,
  `address_staff` varchar(50) DEFAULT NULL,
  `phone_staff` varchar(11) DEFAULT NULL,
  `email_staff` varchar(50) DEFAULT NULL,
  `username_staff` varchar(20) DEFAULT NULL,
  `password_staff` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_staff`),
  KEY `id_storage` (`id_storage`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_storage`) REFERENCES `storage` (`id_storage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('TRAN','VAN','B','0002','004',NULL,NULL,NULL,NULL,NULL),('DINH','THAI','VINH','0003','003',NULL,NULL,NULL,NULL,NULL),('VO','NGUYEN MINH','TU','0005','002',NULL,NULL,NULL,NULL,NULL),('VO','QUY','LONG','0007','001',NULL,NULL,NULL,NULL,NULL),('NGUYEN','VAN','A','0008','005',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage` (
  `address_storage` varchar(50) DEFAULT NULL,
  `email_storage` varchar(50) DEFAULT NULL,
  `phone_storage` varchar(11) DEFAULT NULL,
  `n_storage` varchar(50) DEFAULT NULL,
  `id_storage` char(7) NOT NULL,
  PRIMARY KEY (`id_storage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
INSERT INTO `storage` VALUES ('1, Tan Phu, quan 9,TPHCM','hau.pham@hcmut.edu.vn','123456790','NHA NAM','001'),('1, Linh Trung, Thu Duc,TPHCM','binh.bui@hcmut.edu.vn','0563456790','NGUYEN VAN CU','002'),('1, Phuong 9, Binh Thanh,TPHCM','huy.che@hcmut.edu.vn','123849790','FAHASA','003'),('1, Ba Diem, Hoc Mon,TPHCM','phong.tran@hcmut.edu.vn','789156790','PHU QUY','004'),('1, An Phu Dong, quan 12,TPHCM','nguyen.tran121820@hcmut.edu.vn','896156790','HOA VIEN','005');
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_type_of_book`
--

DROP TABLE IF EXISTS `storage_type_of_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage_type_of_book` (
  `id_storage` char(7) NOT NULL,
  `type_of_book` varchar(50) NOT NULL,
  PRIMARY KEY (`id_storage`,`type_of_book`),
  CONSTRAINT `storage_type_of_book_ibfk_1` FOREIGN KEY (`id_storage`) REFERENCES `storage` (`id_storage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_type_of_book`
--

LOCK TABLES `storage_type_of_book` WRITE;
/*!40000 ALTER TABLE `storage_type_of_book` DISABLE KEYS */;
INSERT INTO `storage_type_of_book` VALUES ('001','VAN HOC NUOC NGOAI'),('001','VAN HOC VIET NAM'),('002','KHOA HOC TU NHIEN'),('002','KHOA HOC XA HOI'),('003','THAM KHAO'),('003','THIEU NHI'),('004','CHINH TRI'),('004','DOI SONG - GIA DINH'),('005','SACH GIAO KHOA'),('005','TO MAU');
/*!40000 ALTER TABLE `storage_type_of_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_book`
--

DROP TABLE IF EXISTS `supply_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply_book` (
  `n_publisher` varchar(50) NOT NULL,
  `supply_time` datetime DEFAULT NULL,
  `id_staff` char(7) NOT NULL,
  PRIMARY KEY (`n_publisher`,`id_staff`),
  KEY `id_staff` (`id_staff`),
  CONSTRAINT `supply_book_ibfk_1` FOREIGN KEY (`n_publisher`) REFERENCES `publisher` (`n_publisher`),
  CONSTRAINT `supply_book_ibfk_2` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_book`
--

LOCK TABLES `supply_book` WRITE;
/*!40000 ALTER TABLE `supply_book` DISABLE KEYS */;
INSERT INTO `supply_book` VALUES ('Bertelsmann','2002-08-13 00:00:00','0005'),('Kim Jang','2006-03-09 00:00:00','0007'),('Pearson','2000-04-13 00:00:00','0007'),('Seven Seas','2000-04-12 00:00:00','0002'),('Wiley','2005-05-10 00:00:00','0003');
/*!40000 ALTER TABLE `supply_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int NOT NULL,
  `IDCARD` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `LASTNAME` varchar(50) NOT NULL,
  `PHONE` varchar(50) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `ROLE` varchar(50) NOT NULL DEFAULT 'CLIENT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'115870399','Kevin','Rodriguez','84215616','_@kevinrodriguez.io','admin','$2y$10$PT7JY/5lAizPM8bf1QvYqe5R4xdbVnXNewQv9Zg3LxmLeC/FHqWVi','ADMIN'),(2,'115870341','David','Rodriguez','84215617','David@gmail.com','david','$2y$10$NhLH/kJhPnXflFFse/3lg.YzkSLzP9WxB5863WmeE3ucVGyc5SgVm','ADMIN'),(3,'115870400','Angela','Jhonson','80809191','maquinadehielo@gmail.com','client','$2y$10$r4ZtMHoCdu.38Q1tzxmtDevWf.wXaJ5afn7KJJKXvVgrnqMAoknr.','CLIENT'),(4,'115870402','Peter','Jhonsone','81809192','Peter@gmail.com','peter','$2y$10$RxFp36KffDCBGUDt2NkqROL8zYFgJ/vKNTsHnJiVdDolMUrO0AZ6y','CLIENT');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher` (
  `discount` int DEFAULT NULL,
  `n_voucher` char(250) DEFAULT NULL,
  `time_of_voucher` datetime DEFAULT NULL,
  `id_voucher` char(7) NOT NULL,
  `applicable_object` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_voucher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher` VALUES (20000,'Giảm giá khi mua combo 3 cuôn sách bất kì','2020-12-12 12:12:12','1912713','All'),(10000,'Black Friday','2021-11-26 00:00:00','2611221','All');
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `written_by`
--

DROP TABLE IF EXISTS `written_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `written_by` (
  `id_book` char(17) NOT NULL,
  `id_author` char(7) NOT NULL,
  PRIMARY KEY (`id_book`,`id_author`),
  KEY `id_author` (`id_author`),
  CONSTRAINT `written_by_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `book` (`id_book`),
  CONSTRAINT `written_by_ibfk_2` FOREIGN KEY (`id_author`) REFERENCES `author` (`id_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `written_by`
--

LOCK TABLES `written_by` WRITE;
/*!40000 ALTER TABLE `written_by` DISABLE KEYS */;
INSERT INTO `written_by` VALUES ('154544','00010'),('114541','00011'),('125423','00012'),('145411','00013'),('514552','00014');
/*!40000 ALTER TABLE `written_by` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-29 21:45:41
