-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: abashipdb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `abaship_auction`
--

DROP TABLE IF EXISTS `abaship_auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_auction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `cost` decimal(14,2) NOT NULL,
  `is_win` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `post_id` bigint NOT NULL,
  `shipper_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abaShip_auction_post_id_shipper_id_93170b5d_uniq` (`post_id`,`shipper_id`),
  KEY `abaShip_auction_shipper_id_3d568bf1_fk_abaShip_user_id` (`shipper_id`),
  CONSTRAINT `abaShip_auction_post_id_6b882420_fk_abaShip_post_id` FOREIGN KEY (`post_id`) REFERENCES `abaship_post` (`id`),
  CONSTRAINT `abaShip_auction_shipper_id_3d568bf1_fk_abaShip_user_id` FOREIGN KEY (`shipper_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_auction`
--

LOCK TABLES `abaship_auction` WRITE;
/*!40000 ALTER TABLE `abaship_auction` DISABLE KEYS */;
INSERT INTO `abaship_auction` VALUES (1,'2021-10-05 02:29:14.866055','2021-10-05 03:28:04.969946',50000.00,1,1,1,27),(2,'2021-10-05 04:10:13.050003','2021-10-05 04:13:03.645035',50000.00,1,1,3,27),(3,'2021-10-05 04:30:19.574633','2021-10-05 04:31:57.269255',60000.00,1,1,4,27),(4,'2021-10-05 04:49:49.267849','2021-10-05 04:50:54.895315',70000.00,1,1,5,27),(5,'2021-10-07 07:59:49.787954','2021-10-07 08:01:14.307425',70000.00,1,1,8,27),(6,'2021-12-20 17:27:43.425448','2021-12-20 17:58:54.152913',1111.00,1,1,10,32),(7,'2021-12-20 17:35:12.751715','2021-12-20 17:35:12.751715',1111.00,0,1,10,27),(8,'2021-12-20 17:39:54.355538','2021-12-20 17:39:54.356538',11112.00,0,1,10,28),(11,'2022-02-20 14:56:02.792188','2022-02-25 14:46:59.048980',2500.00,1,1,11,28),(12,'2022-02-20 15:08:55.395909','2022-02-20 15:08:55.395909',10000.00,0,1,11,27),(15,'2022-02-20 15:36:07.924368','2022-02-20 15:36:07.924368',2000.00,0,1,13,27),(16,'2022-02-20 15:37:08.671093','2022-02-25 15:09:57.733591',1000.00,1,1,13,28),(18,'2022-02-25 14:06:47.698909','2022-02-25 14:06:47.698909',5000.00,0,1,14,27),(19,'2022-02-25 14:07:18.835692','2022-02-25 14:07:18.835692',30000.00,0,1,14,28),(20,'2022-02-25 15:07:00.081273','2022-02-25 15:07:34.110272',10000.00,1,1,7,28),(21,'2022-02-27 13:44:21.950510','2022-02-27 13:44:21.950510',10000.00,0,1,2,27),(22,'2022-05-21 12:23:24.464603','2022-05-21 12:23:24.464603',5000.00,0,1,15,28),(23,'2022-05-21 12:24:28.172835','2022-05-21 12:35:37.308901',8000.00,1,1,15,27),(24,'2022-05-22 12:28:10.706448','2022-05-22 12:42:07.245380',1000.00,1,1,16,28),(25,'2022-05-22 12:28:54.440525','2022-05-22 12:28:54.440525',23300.00,0,1,16,27),(26,'2022-05-22 12:44:43.015571','2022-05-30 14:25:05.527871',4400.00,1,1,17,27),(28,'2022-05-30 14:03:56.239723','2022-05-30 14:03:56.239723',100000.00,0,1,18,28),(29,'2022-05-30 14:04:29.298381','2022-05-30 14:05:28.818166',250000.00,1,1,18,27),(30,'2022-05-31 07:07:00.965726','2022-05-31 07:07:00.965726',1000.00,0,1,22,27),(31,'2022-05-31 07:07:47.954461','2022-05-31 07:08:53.760726',10000.00,1,1,22,28),(32,'2022-05-31 07:49:17.125499','2022-05-31 07:49:26.543784',10000.00,0,1,23,38),(34,'2022-05-31 07:54:51.705494','2022-05-31 07:54:51.705994',5000.00,0,1,21,28),(35,'2022-05-31 07:55:14.290237','2022-05-31 07:55:14.290237',4000.00,0,1,24,28);
/*!40000 ALTER TABLE `abaship_auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_categoryproductship`
--

DROP TABLE IF EXISTS `abaship_categoryproductship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_categoryproductship` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_categoryproductship`
--

LOCK TABLES `abaship_categoryproductship` WRITE;
/*!40000 ALTER TABLE `abaship_categoryproductship` DISABLE KEYS */;
INSERT INTO `abaship_categoryproductship` VALUES (1,'Hàng điện tử.','view_detail_auction'),(2,'Hàng gia dụng','Hàng gia dụng'),(3,'Hàng mỹ phẩm','Hàng mỹ phẩm'),(4,'Chuyển nhà','Chuyển nhà'),(5,'Chuyển văn phòng','Chuyển văn phòng');
/*!40000 ALTER TABLE `abaship_categoryproductship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_debtapp`
--

DROP TABLE IF EXISTS `abaship_debtapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_debtapp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `has_payed` tinyint(1) NOT NULL,
  `deduct_id` bigint NOT NULL,
  `shipper_id` bigint NOT NULL,
  `order_ship_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_ship_id` (`order_ship_id`),
  KEY `abaShip_debtapp_deduct_id_153d1920_fk_abaShip_deduct_id` (`deduct_id`),
  KEY `abaShip_debtapp_shipper_id_760206b8_fk_abaShip_user_id` (`shipper_id`),
  CONSTRAINT `abaShip_debtapp_deduct_id_153d1920_fk_abaShip_deduct_id` FOREIGN KEY (`deduct_id`) REFERENCES `abaship_deduct` (`id`),
  CONSTRAINT `abaShip_debtapp_order_ship_id_cc3b4148_fk_abaShip_o` FOREIGN KEY (`order_ship_id`) REFERENCES `abaship_ordership` (`auction_win_id`),
  CONSTRAINT `abaShip_debtapp_shipper_id_760206b8_fk_abaShip_user_id` FOREIGN KEY (`shipper_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_debtapp`
--

LOCK TABLES `abaship_debtapp` WRITE;
/*!40000 ALTER TABLE `abaship_debtapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `abaship_debtapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_debtshipper`
--

DROP TABLE IF EXISTS `abaship_debtshipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_debtshipper` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `has_payed` tinyint(1) NOT NULL,
  `deduct_id` bigint NOT NULL,
  `shipper_id` bigint NOT NULL,
  `order_ship_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_ship_id` (`order_ship_id`),
  KEY `abaShip_debtshipper_deduct_id_65a356ec_fk_abaShip_deduct_id` (`deduct_id`),
  KEY `abaShip_debtshipper_shipper_id_fb9a6074_fk_abaShip_user_id` (`shipper_id`),
  CONSTRAINT `abaShip_debtshipper_deduct_id_65a356ec_fk_abaShip_deduct_id` FOREIGN KEY (`deduct_id`) REFERENCES `abaship_deduct` (`id`),
  CONSTRAINT `abaShip_debtshipper_order_ship_id_d12aa24a_fk_abaShip_o` FOREIGN KEY (`order_ship_id`) REFERENCES `abaship_ordership` (`auction_win_id`),
  CONSTRAINT `abaShip_debtshipper_shipper_id_fb9a6074_fk_abaShip_user_id` FOREIGN KEY (`shipper_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_debtshipper`
--

LOCK TABLES `abaship_debtshipper` WRITE;
/*!40000 ALTER TABLE `abaship_debtshipper` DISABLE KEYS */;
/*!40000 ALTER TABLE `abaship_debtshipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_deduct`
--

DROP TABLE IF EXISTS `abaship_deduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_deduct` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `percent` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_deduct`
--

LOCK TABLES `abaship_deduct` WRITE;
/*!40000 ALTER TABLE `abaship_deduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `abaship_deduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_idcard`
--

DROP TABLE IF EXISTS `abaship_idcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_idcard` (
  `user_id` bigint NOT NULL,
  `id_card` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_card_front` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_card_back` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mfg_date` datetime(6) NOT NULL,
  `exp_date` datetime(6) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `id_card` (`id_card`),
  CONSTRAINT `abaShip_idcard_user_id_7caa3372_fk_abaShip_user_id` FOREIGN KEY (`user_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_idcard`
--

LOCK TABLES `abaship_idcard` WRITE;
/*!40000 ALTER TABLE `abaship_idcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `abaship_idcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_imageitem`
--

DROP TABLE IF EXISTS `abaship_imageitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_imageitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `abaShip_imageitem_post_id_f9201e8f_fk_abaShip_post_id` (`post_id`),
  CONSTRAINT `abaShip_imageitem_post_id_f9201e8f_fk_abaShip_post_id` FOREIGN KEY (`post_id`) REFERENCES `abaship_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_imageitem`
--

LOCK TABLES `abaship_imageitem` WRITE;
/*!40000 ALTER TABLE `abaship_imageitem` DISABLE KEYS */;
INSERT INTO `abaship_imageitem` VALUES (1,'image/upload/v1633365583/nbulwpzhkst6hyee6rsx.jpg',1),(2,'image/upload/v1633365584/jaeg0rpnzn7jquatd24s.png',1),(3,'image/upload/v1633365983/drnbm6jojderozejsgvd.jpg',2),(4,'image/upload/v1633365983/lzzpvafmqsobldjqcl6b.png',2),(5,'image/upload/v1633406916/qojbh2ggbzqhk83oavih.jpg',3),(6,'image/upload/v1633408151/lare6t23levyuuum0kw0.jpg',4),(7,'image/upload/v1633409346/otuvktqi4wfvf0oputqr.jpg',5),(14,'image/upload/v1633528349/lse5vmvdzluhrwdeltjr.jpg',7),(15,'image/upload/v1633593523/rwslf8blwamjttmb9uxe.jpg',8),(16,'image/upload/v1634229917/whtnbz6k3eyojcqno98z.jpg',9),(17,'image/upload/v1645368846/lyaxpbfx9ubofal0qvbb.jpg',11),(19,'image/upload/v1645371293/kucdjhblbhxq46xwplgs.png',13),(20,'image/upload/v1645797906/rv2ka0ekipueak8wmu6h.jpg',14),(21,'image/upload/v1645797906/nera2vfbmrnecketh00e.jpg',14),(22,'image/upload/v1651978599/nlv4m0sigiu7bmbeglis.jpg',15),(23,'image/upload/v1651978600/vmvwnfwy79gwz2skc5lh.jpg',15),(24,'image/upload/v1651978601/srugjnbp5c3fs491feib.jpg',15),(25,'image/upload/v1651978602/iqpihgaotloujgp6xnvk.jpg',15),(26,'image/upload/v1653222199/utnq9iijsymgz3pmhsum.jpg',16),(27,'image/upload/v1653222200/txoajx5tnbdey535jpxe.jpg',16),(28,'image/upload/v1653222670/fstkpu9aecgrtumo8sn3.jpg',17),(29,'image/upload/v1653222671/uk9jyw75yoencu5g5gf4.jpg',17),(30,'image/upload/v1653222672/ga6i5xqiatxtp2krhrbo.jpg',17),(31,'image/upload/v1653222675/lxndm4xxvyovcg4aqbnp.jpg',17),(32,'image/upload/v1653222679/wwn4fzxf5vwcyvijzuc1.jpg',17),(33,'image/upload/v1653222679/ub5czlpgnnfwteyrqnlz.jpg',17),(34,'image/upload/v1653222680/k2zvcx4yznstupfntwp2.jpg',17),(35,'image/upload/v1653222681/zaqmn2a5sq2hyd8ezcko.jpg',17),(36,'image/upload/v1653222682/wkiiybdchxsjq1a3mwpn.jpg',17),(37,'image/upload/v1653919343/mkmathqayuqqq6d6aq3r.jpg',18),(38,'image/upload/v1653919346/ltstglxdcgdbnwtn22ye.jpg',18),(39,'image/upload/v1653919350/nvxzredkdctuookem5k5.jpg',18),(42,'image/upload/v1653920092/twmzw3j3yputjszpagid.jpg',20),(43,'image/upload/v1653920093/iaeitmte0eooyhzwe2x1.jpg',20),(44,'image/upload/v1653920237/cfdyx0nkpinng0f33taa.jpg',21),(45,'image/upload/v1653920238/lozo8kmasj2jbpyfm71p.jpg',21),(46,'image/upload/v1653980738/b4hvik3ox43sqhgnjeb7.jpg',22),(47,'image/upload/v1653980739/x2yhrxuvcsliplsuvrq4.jpg',22),(48,'image/upload/v1653983265/lkxxuu2prmt09p9nn8j9.jpg',23),(49,'image/upload/v1653983269/lff6tbjofxbajy7xldqx.jpg',23),(50,'image/upload/v1653983273/twv8lbs0xjxgbwyzvwg7.jpg',23),(51,'image/upload/v1653983655/ls5m1xxis1rexcyqskjl.jpg',24);
/*!40000 ALTER TABLE `abaship_imageitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_notification`
--

DROP TABLE IF EXISTS `abaship_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_notification`
--

LOCK TABLES `abaship_notification` WRITE;
/*!40000 ALTER TABLE `abaship_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `abaship_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_ordership`
--

DROP TABLE IF EXISTS `abaship_ordership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_ordership` (
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `auction_win_id` bigint NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `shipped_date` datetime(6) DEFAULT NULL,
  `status` smallint unsigned NOT NULL,
  `pay_method` smallint unsigned NOT NULL,
  `voucher_id` bigint DEFAULT NULL,
  `payed` tinyint(1) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  PRIMARY KEY (`auction_win_id`),
  KEY `abaShip_ordership_voucher_id_714cf0b1_fk_abaShip_voucher_id` (`voucher_id`),
  CONSTRAINT `abaShip_ordership_auction_win_id_0c77a3a7_fk_abaShip_auction_id` FOREIGN KEY (`auction_win_id`) REFERENCES `abaship_auction` (`id`),
  CONSTRAINT `abaShip_ordership_voucher_id_714cf0b1_fk_abaShip_voucher_id` FOREIGN KEY (`voucher_id`) REFERENCES `abaship_voucher` (`id`),
  CONSTRAINT `abaship_ordership_chk_1` CHECK ((`status` >= 0)),
  CONSTRAINT `abaship_ordership_chk_2` CHECK ((`pay_method` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_ordership`
--

LOCK TABLES `abaship_ordership` WRITE;
/*!40000 ALTER TABLE `abaship_ordership` DISABLE KEYS */;
INSERT INTO `abaship_ordership` VALUES ('2021-10-05 03:28:04.959034','2021-10-05 14:25:04.525713',1,1,NULL,1,2,NULL,0,0.00),('2021-10-05 04:13:03.635043','2021-10-05 04:13:03.635043',2,1,NULL,0,2,NULL,0,0.00),('2021-10-05 04:31:57.260615','2021-10-05 04:31:57.260615',3,1,NULL,0,2,NULL,0,0.00),('2021-10-05 04:50:54.883320','2021-10-05 04:50:54.883320',4,1,NULL,0,2,NULL,0,0.00),('2021-10-07 08:01:14.297124','2021-10-07 08:01:14.297124',5,1,NULL,0,2,1,0,0.00),('2021-12-20 17:58:54.122931','2021-12-20 18:26:59.883816',6,1,NULL,2,2,1,0,0.00),('2022-02-25 14:46:58.804296','2022-03-31 14:08:10.189536',11,1,NULL,0,1,NULL,0,0.00),('2022-02-25 15:09:57.369809','2022-02-25 15:10:37.110169',16,1,NULL,2,2,NULL,0,0.00),('2022-02-25 15:07:30.305745','2022-02-25 15:08:12.338828',20,1,NULL,2,2,NULL,0,0.00),('2022-05-21 12:35:36.977156','2022-05-21 12:39:19.370111',23,1,NULL,2,1,NULL,0,0.00),('2022-05-22 12:42:06.662433','2022-05-22 12:42:06.662433',24,1,NULL,0,0,NULL,0,0.00),('2022-05-30 14:25:03.780539','2022-05-30 14:25:03.780539',26,1,NULL,0,2,NULL,0,0.00),('2022-05-30 14:05:28.196262','2022-05-30 14:07:18.518129',29,1,NULL,2,1,NULL,0,0.00),('2022-05-31 07:08:53.252278','2022-05-31 08:16:35.662056',31,1,NULL,2,2,NULL,0,0.00);
/*!40000 ALTER TABLE `abaship_ordership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_post`
--

DROP TABLE IF EXISTS `abaship_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double DEFAULT NULL,
  `is_finish` tinyint(1) NOT NULL,
  `customer_id` bigint NOT NULL,
  `receive_stock_id` bigint NOT NULL,
  `send_stock_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `abaShip_post_customer_id_d4f46beb_fk_abaShip_user_id` (`customer_id`),
  KEY `abaShip_post_receive_stock_id_66af681c_fk_abaShip_stock_id` (`receive_stock_id`),
  KEY `abaShip_post_send_stock_id_cb628ae2_fk_abaShip_stock_id` (`send_stock_id`),
  CONSTRAINT `abaShip_post_customer_id_d4f46beb_fk_abaShip_user_id` FOREIGN KEY (`customer_id`) REFERENCES `abaship_user` (`id`),
  CONSTRAINT `abaShip_post_receive_stock_id_66af681c_fk_abaShip_stock_id` FOREIGN KEY (`receive_stock_id`) REFERENCES `abaship_stock` (`id`),
  CONSTRAINT `abaShip_post_send_stock_id_cb628ae2_fk_abaShip_stock_id` FOREIGN KEY (`send_stock_id`) REFERENCES `abaship_stock` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_post`
--

LOCK TABLES `abaship_post` WRITE;
/*!40000 ALTER TABLE `abaship_post` DISABLE KEYS */;
INSERT INTO `abaship_post` VALUES (1,'2020-10-04 16:32:14.075152','2021-10-05 03:28:04.966030',1,'giao hàng gia dụng',NULL,1,26,2,1),(2,'2020-10-04 16:46:20.419402','2021-10-04 16:51:06.823203',1,'giao hàng gia dụng',9,0,26,2,1),(3,'2021-10-05 04:08:33.359464','2021-10-05 04:13:03.642039',1,'giao hàng gia dụng',9,1,26,2,1),(4,'2021-10-05 04:29:08.983312','2021-10-05 04:31:57.264903',1,'chuyển nhà',9,1,26,2,1),(5,'2021-11-05 04:49:03.784546','2021-10-05 04:50:54.890321',1,'chuyển nhà',9,1,26,1,2),(7,'2021-12-06 13:34:44.220432','2022-02-25 15:07:33.089049',1,'chuyển nhà',9,1,26,1,2),(8,'2021-01-07 07:58:40.181512','2021-10-07 08:01:14.303067',1,'chuyển nhà',9,1,25,1,2),(9,'2021-10-14 16:45:13.480393','2021-10-14 16:45:13.481392',1,'chuyển vp',9,0,25,1,2),(10,'2021-12-20 16:48:39.710385','2021-12-20 17:58:54.139921',1,'thuốc tây',9,1,30,1,2),(11,'2022-02-20 14:54:02.711771','2022-02-25 14:46:58.923891',1,'Betta fish',2,1,26,1,4),(13,'2022-02-20 15:34:42.626077','2022-02-25 15:09:57.472381',1,'Con Quỳnh Như',90,1,33,8,6),(14,'2022-02-25 14:05:03.313279','2022-02-25 14:05:03.313780',1,'ABCD',2,0,34,10,9),(15,'2022-05-08 02:56:30.434776','2022-05-21 12:35:37.101254',1,'Giao trai cay',2.5,1,36,11,12),(16,'2022-05-22 12:23:21.614477','2022-05-22 12:42:07.105281',1,'Giao bánh tét',2,1,36,12,14),(17,'2022-05-22 12:31:12.827290','2022-05-30 14:25:05.193135',1,'Giao ca',20,1,36,14,16),(18,'2022-05-30 14:02:19.656446','2022-05-30 14:05:28.666058',1,'ABCDEF',2,1,30,19,17),(20,'2022-05-30 14:14:51.817666','2022-05-30 14:14:51.817666',1,'Giao gì đây giao gì đây',2.35,0,33,7,5),(21,'2022-05-30 14:17:16.454675','2022-05-30 14:17:16.454675',1,'Giao trứng cho ác',1.5,0,35,22,21),(22,'2022-05-31 07:05:16.403364','2022-05-31 07:08:53.508005',1,'ABC',12,1,36,25,24),(23,'2022-05-31 07:47:40.145250','2022-05-31 07:47:40.145250',1,'AGGGG',2,0,26,2,1),(24,'2022-05-31 07:54:14.083890','2022-05-31 07:54:14.083890',1,'ABVVCVC',3,0,26,4,1),(25,'2022-05-31 08:41:06.663479','2022-05-31 08:41:06.663980',1,'pt tool lay dchi tu dong => may chung tĩnh => huyen\r\npt viet bai yeu cau giao hang theo thoi gian (ngay)\r\nthong ke theo ngay\r\ncho ng dung huy don khi trang thai Not yet shipped\r\nnhắn tin\r\nshipper, admin cho phep active\r\nphai co cmnd (shipper, address)\r\nthongke: shipper, rating, thong ke theo thang, năm, ngày\r\nso luon shipper dc rating cao, giao hang nhieu nhat,....',1,0,36,14,24);
/*!40000 ALTER TABLE `abaship_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_post_category_product_ship`
--

DROP TABLE IF EXISTS `abaship_post_category_product_ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_post_category_product_ship` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `categoryproductship_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abaShip_post_category_pr_post_id_categoryproducts_19f478c8_uniq` (`post_id`,`categoryproductship_id`),
  KEY `abaShip_post_categor_categoryproductship__35176703_fk_abaShip_c` (`categoryproductship_id`),
  CONSTRAINT `abaShip_post_categor_categoryproductship__35176703_fk_abaShip_c` FOREIGN KEY (`categoryproductship_id`) REFERENCES `abaship_categoryproductship` (`id`),
  CONSTRAINT `abaShip_post_categor_post_id_342420d6_fk_abaShip_p` FOREIGN KEY (`post_id`) REFERENCES `abaship_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_post_category_product_ship`
--

LOCK TABLES `abaship_post_category_product_ship` WRITE;
/*!40000 ALTER TABLE `abaship_post_category_product_ship` DISABLE KEYS */;
INSERT INTO `abaship_post_category_product_ship` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,3),(5,5,3),(7,7,3),(8,8,3),(9,9,3),(10,10,3);
/*!40000 ALTER TABLE `abaship_post_category_product_ship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_rate`
--

DROP TABLE IF EXISTS `abaship_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_rate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rate` int unsigned NOT NULL,
  `customer_id` bigint NOT NULL,
  `shipper_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abaShip_rate_customer_id_shipper_id_17089e47_uniq` (`customer_id`,`shipper_id`),
  KEY `abaShip_rate_shipper_id_c0aeb476_fk_abaShip_user_id` (`shipper_id`),
  CONSTRAINT `abaShip_rate_customer_id_c3b178ff_fk_abaShip_user_id` FOREIGN KEY (`customer_id`) REFERENCES `abaship_user` (`id`),
  CONSTRAINT `abaShip_rate_shipper_id_c0aeb476_fk_abaShip_user_id` FOREIGN KEY (`shipper_id`) REFERENCES `abaship_user` (`id`),
  CONSTRAINT `abaship_rate_chk_1` CHECK ((`rate` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_rate`
--

LOCK TABLES `abaship_rate` WRITE;
/*!40000 ALTER TABLE `abaship_rate` DISABLE KEYS */;
INSERT INTO `abaship_rate` VALUES (6,'2021-10-06 09:16:22.325227','2021-10-06 09:39:30.106652','agfasdsdsdssd',1,26,27),(7,'2021-10-07 08:03:12.088949','2021-10-07 13:25:10.001851','sgdh',5,25,27),(8,'2022-02-25 15:06:13.023812','2022-02-25 15:08:59.874897',NULL,5,26,28),(9,'2022-02-25 15:11:11.072027','2022-02-25 15:12:19.719298',NULL,2,33,28),(11,'2022-05-22 12:16:31.977115','2022-05-22 12:26:42.700949',NULL,5,36,27),(12,'2022-05-30 14:08:52.140354','2022-05-30 14:09:02.029730',NULL,4,30,27),(13,'2022-05-31 08:30:24.803253','2022-05-31 08:30:39.476638',NULL,3,36,28);
/*!40000 ALTER TABLE `abaship_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_stock`
--

DROP TABLE IF EXISTS `abaship_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_stock` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_represent_man` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `abaShip_stock_customer_id_bb13cc4b_fk_abaShip_user_id` (`customer_id`),
  CONSTRAINT `abaShip_stock_customer_id_bb13cc4b_fk_abaShip_user_id` FOREIGN KEY (`customer_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_stock`
--

LOCK TABLES `abaship_stock` WRITE;
/*!40000 ALTER TABLE `abaship_stock` DISABLE KEYS */;
INSERT INTO `abaship_stock` VALUES (1,'số 10 Nguyễn Trãi','Phong','0122112133',26),(2,'số 11 Nguyễn Kiệm','Ba','0122112133',26),(4,'Tex','Huy Trần','0988282828',26),(5,'Texas','Huy','00929292',33),(6,'Ben Tre','Anna','091991911',33),(7,'Ben Tre','Anna','091991911',33),(8,'Dong Thap','My Linh','0778222111',33),(9,'Tien Giang','ABC','113',34),(10,'Hau Giang','DĐS','2211111',34),(11,'Binh Duong','Tran Phan Huy','0775398511',36),(12,'Binh Phuoc','Vu Duc Hoa','0976626611',36),(13,'Binh Phuoc','Vu Duc Hoa','0976626611',36),(14,'Thailand','Amanda Chalisa Obdam','0079858511',36),(15,'Thailand','Quang Vinh Tran','093999292',36),(16,'Texas','Phan Huy Tran','087711818',36),(17,'Puerto Rico','Huy','0988388332',30),(18,'Thailand','Trong','099999222',30),(19,'Thailand','Trong','09999922',30),(20,'Tennessee','John','077747373',36),(21,'Utah','Harnaar','099299292',35),(22,'India','Adline','088828282',35),(23,'BAC','Huy','091919122',36),(24,'Thu Dau Mot, Binh Duong','Huy','09877272',36),(25,'Phu Giao, Binh Duong','Trong','096777272',36);
/*!40000 ALTER TABLE `abaship_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_user`
--

DROP TABLE IF EXISTS `abaship_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_user`
--

LOCK TABLES `abaship_user` WRITE;
/*!40000 ALTER TABLE `abaship_user` DISABLE KEYS */;
INSERT INTO `abaship_user` VALUES (1,'pbkdf2_sha256$260000$0ptLMUBzMBvBpRGdVb1qhl$RT2ZdAbRmpGTADG9mJRMCECg4TM5BKPIsp+WW5ktR6w=','2022-05-22 12:12:56.320079',1,'admin','huyphan.it@gmail.com',1,1,'2021-10-03 16:05:33.288059','image/upload/v1645370710/lnnkoctwf6mc5bn8pcyz.jpg','0775398511','Huy','Phan','Male','Binh Duong','2022-03-05'),(25,'pbkdf2_sha256$260000$Vjfgqe74dEGakvJxIq4sOM$EAQCmTb9//aWE/FvB0XyuAzWDChWItNZmOM0JPjrw7I=',NULL,0,'DoTrong','nguyendotrong.it@gmail.com',0,1,'2021-10-04 15:35:01.778130','image/upload/v1645796430/j1yewimctjefwreqqxjx.jpg','0223456778','Trọng','Nguyễn','0','GV HCM','2000-11-12'),(26,'pbkdf2_sha256$260000$FkeyG04x1CrpvHy5IJtipf$3MB7LFch/paBkEdU5CUiHzwg9ivKwbn1cUi4Io1l59A=',NULL,0,'phanhuy','phanhuytran15@gmail.com',0,1,'2021-10-04 15:39:15.114193','image/upload/v1648736667/lmhhnxmc2dwpreooxvxa.jpg','0223456778','Phan Huy','Tran','Male','GV HCM','2000-11-02'),(27,'pbkdf2_sha256$260000$IcYHhgomHj65OYTNSNxc9E$LPRufjSi2lSSVwH9Ld2GbALqt/tDaB+oZPMvXkSt9u0=',NULL,0,'shipper','nguyendotrong.it@gmail.com',0,1,'2020-03-05 02:13:30.000000','image/upload/v1653918895/up2do2azblfkoe8zqysf.jpg','0223456778','shipper','Nguyễn','Male','GV HCM','2000-11-12'),(28,'pbkdf2_sha256$260000$Lrlvs1TrJdEgpdVnjf6g9h$W0hpDbsUzzUYcbcH4aBkKVUAVUrwMqGAydXa6xead8U=',NULL,0,'shipper1','nguyendotrong.it@gmail.com',0,1,'2021-10-05 02:14:18.000000','image/upload/v1633400529/uupx6h32o96rpsqofmcn.jpg','0223456778','shipper1','Nguyễn','Male','Dong Nai','2000-11-12'),(29,'pbkdf2_sha256$260000$XmBYUEgA9Frv2bllwJ5cC6$l0XhG8kmnOBZUGPTk/ejIMBD7wrscRH2oUZBu1zkHG0=',NULL,0,'dotrong3','trong3@gmail.com',0,1,'2020-05-27 18:43:06.522387','image/upload/v1635360190/vdeptyw0duzbouybnqqc.jpg','0123456786','Trọng','Đỗ','Male','HCMC','2022-05-19'),(30,'pbkdf2_sha256$260000$cnhqAwR4a6jQuZ4WIogWOB$DnylCOmk3s8dz54H3M3uUImsUBEsUtu6BwxE3sUnbcY=',NULL,0,'dotrong11','nngoctrung57@gmail.com',0,1,'2021-12-20 15:52:04.706194','image/upload/v1653919154/hmvxgq8sk2grqpg8ueo3.jpg','0123456877','Trọng','Đỗ','Male','61 Bình Dương','2000-11-11'),(31,'pbkdf2_sha256$260000$iFfDGNY13zX0UgjMMRhv2z$7C7EMayk/su19g2inCQWCwlIRlkOGPbROcJ9H/7RQg8=',NULL,0,'shippertrong','shippertrong11@gmail.com',0,1,'2020-05-20 17:25:00.900277','image/upload/v1653221656/ksjdj44amf0ncuo6s5vp.jpg','0123456877','Trọng','Đỗ','Male','61 Bình Dương','2000-11-11'),(32,'pbkdf2_sha256$260000$9u6OX1RiKbKb20kQdYDpZo$7NyK5BwDZRROR2I+eZj/a8CgnHh169AuwlJNjLNzqAE=',NULL,0,'shippertrong1','nngoctrung57@gmail.com',0,1,'2020-12-20 17:25:19.317282','image/upload/v1653919071/qtgd9tswut2lbefm27bv.jpg','0123456877','Trọng','Đỗ','Male','61 Bình Dương','2000-11-11'),(33,'pbkdf2_sha256$260000$aHHkY4apjYvfeCCwbW3dkG$57BzKdHHa17v4JkRj0JCqqV0c1kSuziH1gu4Ifork/A=',NULL,0,'denisphan','phanvanh@gmail.com',0,1,'2022-02-20 15:21:00.176438','image/upload/v1653920015/iq1moxvx8rz5lrgwfrxm.png','0775398511','Van A','Phan','Other','Tiền Giang','1992-02-12'),(34,'pbkdf2_sha256$260000$sSwql4Oys0ge8gHPa7w9qK$wpkGfP9sfdjTzoU5Z8owSODugb60e95F0d+Hdjjw2+4=',NULL,0,'cuno','cuno@gmail.com',0,1,'2022-02-25 14:03:42.870562','image/upload/v1645797826/nrboqjfedlvc5ma4rviv.png','0775398511','Cuno','Tran','Male','Binh Duong','2022-02-01'),(35,'pbkdf2_sha256$260000$XDwLwNgUMKqpCNS0YeZjqZ$yOCgDMZrFY5hstQaY02+ltOflxuQoR1jq8qmcyiDpdY=',NULL,0,'minhdiem','luongminhdiem@mail.com',0,1,'2022-03-09 13:24:27.622580','image/upload/v1646832273/corj6jt0nzhk0eqmj9wh.jpg','0707277677','Minh Diem','Luong','Female','City Soho','1988-10-05'),(36,'pbkdf2_sha256$260000$u9opmLFANuLUfn3qQfrCC8$D9esifE/lj5Wh0rEmhLSWq5uhkaVWXfMB2hAkNIjuhE=',NULL,0,'quangvinh','phanhuytran15@gmail.com',0,1,'2022-05-08 02:29:45.382467','image/upload/v1653917934/fpkfd9wjseww24eankiv.jpg','0908297868','Quang Vinh','Tran','Male','262 Luy Ban Bich, Tan Phu, HCMC','1985-05-22'),(37,'pbkdf2_sha256$260000$Ri53MNOwrCSUOsQi1rt8Hx$n8+rTFLpmTM/C6Pwo91K6OrShwJo/GtleHLdKea6VK0=',NULL,0,'paweensuda','fpd@gmail.com',0,1,'2022-05-08 02:37:07.953419','image/upload/v1653919024/ranet8qd5finxp2emfj5.png','098888282','Fashai Paweensuda','Drouin','Female','45 Ho Hao Hon, Co Giang, District 1, HCMC','1995-07-27'),(38,'pbkdf2_sha256$260000$BebwE199Y4KW90TVv0YjdE$MyVC+aD1oZSY4LrYp0OoSUAB55M5XHfqoW8NvUHSoTM=',NULL,0,'shipper10','abc@gmail.com',0,1,'2022-05-31 07:20:53.951480','image/upload/v1653981658/tzlotxducbvk8rkysdyg.jpg','098888888','Shipper 10','Trần','Male','Hawaii','2022-05-26');
/*!40000 ALTER TABLE `abaship_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_user_groups`
--

DROP TABLE IF EXISTS `abaship_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abaShip_user_groups_user_id_group_id_f92a3023_uniq` (`user_id`,`group_id`),
  KEY `abaShip_user_groups_group_id_7e283486_fk_auth_group_id` (`group_id`),
  CONSTRAINT `abaShip_user_groups_group_id_7e283486_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `abaShip_user_groups_user_id_9d37a2f4_fk_abaShip_user_id` FOREIGN KEY (`user_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_user_groups`
--

LOCK TABLES `abaship_user_groups` WRITE;
/*!40000 ALTER TABLE `abaship_user_groups` DISABLE KEYS */;
INSERT INTO `abaship_user_groups` VALUES (7,25,1),(8,26,1),(12,27,2),(11,28,2),(13,29,1),(14,30,1),(15,31,1),(16,32,2),(17,33,1),(18,34,1),(19,35,1),(20,36,1),(21,37,2),(22,38,2);
/*!40000 ALTER TABLE `abaship_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_user_notifications`
--

DROP TABLE IF EXISTS `abaship_user_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_user_notifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `notification_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abaShip_user_notifications_user_id_notification_id_b53942db_uniq` (`user_id`,`notification_id`),
  KEY `abaShip_user_notific_notification_id_b7b22e76_fk_abaShip_n` (`notification_id`),
  CONSTRAINT `abaShip_user_notific_notification_id_b7b22e76_fk_abaShip_n` FOREIGN KEY (`notification_id`) REFERENCES `abaship_notification` (`id`),
  CONSTRAINT `abaShip_user_notifications_user_id_0f0a9e43_fk_abaShip_user_id` FOREIGN KEY (`user_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_user_notifications`
--

LOCK TABLES `abaship_user_notifications` WRITE;
/*!40000 ALTER TABLE `abaship_user_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `abaship_user_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_user_user_permissions`
--

DROP TABLE IF EXISTS `abaship_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abaShip_user_user_permis_user_id_permission_id_e5d34c36_uniq` (`user_id`,`permission_id`),
  KEY `abaShip_user_user_pe_permission_id_dea1df3a_fk_auth_perm` (`permission_id`),
  CONSTRAINT `abaShip_user_user_pe_permission_id_dea1df3a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `abaShip_user_user_pe_user_id_6f4e0305_fk_abaShip_u` FOREIGN KEY (`user_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_user_user_permissions`
--

LOCK TABLES `abaship_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `abaship_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `abaship_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abaship_voucher`
--

DROP TABLE IF EXISTS `abaship_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abaship_voucher` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abaship_voucher`
--

LOCK TABLES `abaship_voucher` WRITE;
/*!40000 ALTER TABLE `abaship_voucher` DISABLE KEYS */;
INSERT INTO `abaship_voucher` VALUES (1,'2021-10-05 03:25:45.752666','2021-10-05 03:25:45.752666','ad','as',12,'2021-10-05 03:25:34.000000','2021-10-13 00:00:00.000000');
/*!40000 ALTER TABLE `abaship_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'customer'),(2,'shipper');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (51,1,22),(1,1,24),(2,1,28),(3,1,36),(4,1,40),(5,1,41),(6,1,42),(7,1,43),(8,1,44),(9,1,45),(10,1,46),(11,1,47),(12,1,48),(13,1,49),(14,1,50),(15,1,51),(16,1,52),(17,1,53),(18,1,54),(19,1,55),(20,1,56),(21,1,60),(22,1,61),(23,1,62),(24,1,63),(25,1,64),(26,1,65),(27,1,66),(28,1,67),(29,1,68),(53,1,97),(56,1,98),(50,2,22),(30,2,24),(31,2,28),(32,2,32),(33,2,36),(34,2,40),(35,2,41),(36,2,42),(37,2,43),(38,2,44),(39,2,48),(40,2,52),(41,2,56),(42,2,57),(43,2,58),(44,2,59),(45,2,60),(46,2,64),(47,2,68),(48,2,72),(49,2,76),(54,2,98),(52,2,99),(55,2,100);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add category product ship',7,'add_categoryproductship'),(26,'Can change category product ship',7,'change_categoryproductship'),(27,'Can delete category product ship',7,'delete_categoryproductship'),(28,'Can view category product ship',7,'view_categoryproductship'),(29,'Can add deduct',8,'add_deduct'),(30,'Can change deduct',8,'change_deduct'),(31,'Can delete deduct',8,'delete_deduct'),(32,'Can view deduct',8,'view_deduct'),(33,'Can add notification',9,'add_notification'),(34,'Can change notification',9,'change_notification'),(35,'Can delete notification',9,'delete_notification'),(36,'Can view notification',9,'view_notification'),(37,'Can add voucher',10,'add_voucher'),(38,'Can change voucher',10,'change_voucher'),(39,'Can delete voucher',10,'delete_voucher'),(40,'Can view voucher',10,'view_voucher'),(41,'Can add id card',11,'add_idcard'),(42,'Can change id card',11,'change_idcard'),(43,'Can delete id card',11,'delete_idcard'),(44,'Can view id card',11,'view_idcard'),(45,'Can add stock',12,'add_stock'),(46,'Can change stock',12,'change_stock'),(47,'Can delete stock',12,'delete_stock'),(48,'Can view stock',12,'view_stock'),(49,'Can add post',13,'add_post'),(50,'Can change post',13,'change_post'),(51,'Can delete post',13,'delete_post'),(52,'Can view post',13,'view_post'),(53,'Can add image item',14,'add_imageitem'),(54,'Can change image item',14,'change_imageitem'),(55,'Can delete image item',14,'delete_imageitem'),(56,'Can view image item',14,'view_imageitem'),(57,'Can add auction',15,'add_auction'),(58,'Can change auction',15,'change_auction'),(59,'Can delete auction',15,'delete_auction'),(60,'Can view detail auction',15,'view_detail_auction'),(61,'Can add rate',16,'add_rate'),(62,'Can change rate',16,'change_rate'),(63,'Can delete rate',16,'delete_rate'),(64,'Can view rate',16,'view_rate'),(65,'Can add order ship',17,'add_ordership'),(66,'Can change order ship',17,'change_ordership'),(67,'Can delete order ship',17,'delete_ordership'),(68,'Can view order ship',17,'view_ordership'),(69,'Can add debt shipper',18,'add_debtshipper'),(70,'Can change debt shipper',18,'change_debtshipper'),(71,'Can delete debt shipper',18,'delete_debtshipper'),(72,'Can view debt shipper',18,'view_debtshipper'),(73,'Can add debt app',19,'add_debtapp'),(74,'Can change debt app',19,'change_debtapp'),(75,'Can delete debt app',19,'delete_debtapp'),(76,'Can view debt app',19,'view_debtapp'),(77,'Can add application',20,'add_application'),(78,'Can change application',20,'change_application'),(79,'Can delete application',20,'delete_application'),(80,'Can view application',20,'view_application'),(81,'Can add access token',21,'add_accesstoken'),(82,'Can change access token',21,'change_accesstoken'),(83,'Can delete access token',21,'delete_accesstoken'),(84,'Can view access token',21,'view_accesstoken'),(85,'Can add grant',22,'add_grant'),(86,'Can change grant',22,'change_grant'),(87,'Can delete grant',22,'delete_grant'),(88,'Can view grant',22,'view_grant'),(89,'Can add refresh token',23,'add_refreshtoken'),(90,'Can change refresh token',23,'change_refreshtoken'),(91,'Can delete refresh token',23,'delete_refreshtoken'),(92,'Can view refresh token',23,'view_refreshtoken'),(93,'Can add id token',24,'add_idtoken'),(94,'Can change id token',24,'change_idtoken'),(95,'Can delete id token',24,'delete_idtoken'),(96,'Can view id token',24,'view_idtoken'),(97,'can view list auction on post',15,'view_list_auction_on_post'),(98,'can view shipper\'s list auction',15,'view_list_auction_of_shipper'),(99,'Can add auction into post',13,'add_auction_into_post'),(100,'can update status order',17,'update_status_order'),(101,'Can view auction',15,'view_auction');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_abaShip_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_abaShip_user_id` FOREIGN KEY (`user_id`) REFERENCES `abaship_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-03 16:43:38.437261','1','customer',1,'[{\"added\": {}}]',3,1),(2,'2021-10-03 16:43:45.794277','2','shipper',1,'[{\"added\": {}}]',3,1),(3,'2021-10-04 16:06:25.487010','12','username: ',3,'',6,1),(4,'2021-10-04 16:06:25.496007','13','username: add',3,'',6,1),(5,'2021-10-04 16:06:25.499004','14','username: dat',3,'',6,1),(6,'2021-10-04 16:06:25.504004','15','username: q',3,'',6,1),(7,'2021-10-04 16:06:25.507999','16','username: t',3,'',6,1),(8,'2021-10-04 16:06:25.513995','17','username: td',3,'',6,1),(9,'2021-10-04 16:18:52.289032','1','customer',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(10,'2021-10-04 16:20:23.135303','2','shipper',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(11,'2021-10-04 16:20:37.213686','57','abaShip | auction | Can add auction into post',2,'[{\"changed\": {\"fields\": [\"Name\", \"Codename\"]}}]',2,1),(12,'2021-10-04 16:20:44.868276','57','abaShip | auction | Can add auction into post',2,'[]',2,1),(13,'2021-10-04 16:25:01.372772','60','abaShip | auction | Can view detail auction',2,'[{\"changed\": {\"fields\": [\"Name\", \"Codename\"]}}]',2,1),(14,'2021-10-04 16:25:30.686623','97','abaShip | auction | can view list auction on post',1,'[{\"added\": {}}]',2,1),(15,'2021-10-04 16:25:52.419576','98','abaShip | auction | can view shipper\'s list auction',1,'[{\"added\": {}}]',2,1),(16,'2021-10-04 16:26:18.356506','99','abaShip | post | Can add auction into post',1,'[{\"added\": {}}]',2,1),(17,'2021-10-04 16:26:38.855483','57','abaShip | auction | Can add auction',2,'[{\"changed\": {\"fields\": [\"Name\", \"Codename\"]}}]',2,1),(18,'2021-10-04 16:29:23.824741','1','Category: Hàng điện tử.,\nDescription: view_detail_auction',1,'[{\"added\": {}}]',7,1),(19,'2021-10-04 16:29:32.983057','2','Category: Hàng gia dụng,\nDescription: Hàng gia dụng',1,'[{\"added\": {}}]',7,1),(20,'2021-10-04 16:29:43.110950','3','Category: Hàng mỹ phẩm,\nDescription: Hàng mỹ phẩm',1,'[{\"added\": {}}]',7,1),(21,'2021-10-04 16:29:49.753619','4','Category: Chuyển nhà,\nDescription: Chuyển nhà',1,'[{\"added\": {}}]',7,1),(22,'2021-10-04 16:29:57.209164','5','Category: Chuyển văn phòng,\nDescription: Chuyển văn phòng',1,'[{\"added\": {}}]',7,1),(23,'2021-10-05 02:12:25.459770','21','username: phanhuy1',3,'',6,1),(24,'2021-10-05 02:12:25.463767','24','username: phanhuy11',3,'',6,1),(25,'2021-10-05 02:17:28.089946','2','shipper',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(26,'2021-10-05 02:18:31.314905','1','customer',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(27,'2021-10-05 02:22:09.174084','28','username: shipper1',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Avatar\"]}}]',6,1),(28,'2021-10-05 02:22:45.408552','27','username: shipper',2,'[{\"changed\": {\"fields\": [\"Groups\", \"Avatar\", \"First name\", \"Gender\"]}}]',6,1),(29,'2021-10-05 02:29:08.578755','2','shipper',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(30,'2021-10-05 03:16:53.956987','1','customer',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(31,'2021-10-05 03:25:45.755769','1','name: ad,\ndiscount: 12.0',1,'[{\"added\": {}}]',10,1),(32,'2021-10-05 13:22:50.919051','2','shipper',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(33,'2021-10-05 13:55:41.054069','100','abaShip | order ship | can update status order',1,'[{\"added\": {}}]',2,1),(34,'2021-10-05 14:15:47.665687','2','shipper',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(35,'2022-02-25 14:36:31.817488','1','customer',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (15,'abaShip','auction'),(7,'abaShip','categoryproductship'),(19,'abaShip','debtapp'),(18,'abaShip','debtshipper'),(8,'abaShip','deduct'),(11,'abaShip','idcard'),(14,'abaShip','imageitem'),(9,'abaShip','notification'),(17,'abaShip','ordership'),(13,'abaShip','post'),(16,'abaShip','rate'),(12,'abaShip','stock'),(6,'abaShip','user'),(10,'abaShip','voucher'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(21,'oauth2_provider','accesstoken'),(20,'oauth2_provider','application'),(22,'oauth2_provider','grant'),(24,'oauth2_provider','idtoken'),(23,'oauth2_provider','refreshtoken'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-03 15:58:36.543220'),(2,'contenttypes','0002_remove_content_type_name','2021-10-03 15:58:36.702935'),(3,'auth','0001_initial','2021-10-03 15:58:37.220113'),(4,'auth','0002_alter_permission_name_max_length','2021-10-03 15:58:37.319095'),(5,'auth','0003_alter_user_email_max_length','2021-10-03 15:58:37.331751'),(6,'auth','0004_alter_user_username_opts','2021-10-03 15:58:37.343742'),(7,'auth','0005_alter_user_last_login_null','2021-10-03 15:58:37.355737'),(8,'auth','0006_require_contenttypes_0002','2021-10-03 15:58:37.361733'),(9,'auth','0007_alter_validators_add_error_messages','2021-10-03 15:58:37.374727'),(10,'auth','0008_alter_user_username_max_length','2021-10-03 15:58:37.386723'),(11,'auth','0009_alter_user_last_name_max_length','2021-10-03 15:58:37.401714'),(12,'auth','0010_alter_group_name_max_length','2021-10-03 15:58:37.429339'),(13,'auth','0011_update_proxy_permissions','2021-10-03 15:58:37.444329'),(14,'auth','0012_alter_user_first_name_max_length','2021-10-03 15:58:37.459320'),(15,'abaShip','0001_initial','2021-10-03 15:58:41.588279'),(16,'admin','0001_initial','2021-10-03 15:58:41.858384'),(17,'admin','0002_logentry_remove_auto_add','2021-10-03 15:58:41.893365'),(18,'admin','0003_logentry_add_action_flag_choices','2021-10-03 15:58:41.923347'),(19,'oauth2_provider','0001_initial','2021-10-03 15:58:45.735368'),(20,'oauth2_provider','0002_auto_20190406_1805','2021-10-03 15:58:45.984225'),(21,'oauth2_provider','0003_auto_20201211_1314','2021-10-03 15:58:46.208096'),(22,'oauth2_provider','0004_auto_20200902_2022','2021-10-03 15:58:47.274340'),(23,'sessions','0001_initial','2021-10-03 15:58:47.342408'),(24,'abaShip','0002_auto_20211007_1947','2021-10-07 12:48:19.029308'),(25,'abaShip','0003_auto_20211009_2135','2021-10-09 14:37:12.418436'),(26,'abaShip','0004_alter_ordership_total','2021-10-09 14:37:12.442095');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4b6eg8nf9lbntmyd74of4q363htl0gri','.eJxVjMEOwiAQRP-FsyHAFioevfsNZBe2UjWQlPZk_Hdp0oPeZubNzFsE3NYctsZLmJO4CC1OvxlhfHLZQXpguVcZa1mXmeRekQdt8lYTv65H9-8gY8t9PZ4RQFuNNDBH0JFNF-QgOTRWWz_AaDx0b92kInskcsqRM0lNOibx-QLdVjfu:1nLnjB:TnPgcIrcmLR2fnB0yqAQX8AM2ITxlBFPa7iE2IBTm6g','2022-03-06 15:02:21.713618'),('bsf711hidkcn9txc74rtfmlxrd0ufyk3','.eJxVjMEOwiAQRP-FsyHAFioevfsNZBe2UjWQlPZk_Hdp0oPeZubNzFsE3NYctsZLmJO4CC1OvxlhfHLZQXpguVcZa1mXmeRekQdt8lYTv65H9-8gY8t9PZ4RQFuNNDBH0JFNF-QgOTRWWz_AaDx0b92kInskcsqRM0lNOibx-QLdVjfu:1nnbvg:EnfU0kJt6F4zHPb2BIPAfY7eHvGgHwlAN5wFKGn_Xws','2022-05-22 08:06:12.748127'),('hxjr45jnkfq9qmoyms2qohuaq64jnd6i','.eJxVjMEOwiAQRP-FsyHAFioevfsNZBe2UjWQlPZk_Hdp0oPeZubNzFsE3NYctsZLmJO4CC1OvxlhfHLZQXpguVcZa1mXmeRekQdt8lYTv65H9-8gY8t9PZ4RQFuNNDBH0JFNF-QgOTRWWz_AaDx0b92kInskcsqRM0lNOibx-QLdVjfu:1mX4a7:xnJrUozic5qOFpXKfuJ72zbBTG0M6fEi6aHwxFD8I04','2021-10-17 16:43:19.795658'),('idvi4fqtkzjo9d9wpp9hsqcinh2voj7c','.eJxVjMEOwiAQRP-FsyHAFioevfsNZBe2UjWQlPZk_Hdp0oPeZubNzFsE3NYctsZLmJO4CC1OvxlhfHLZQXpguVcZa1mXmeRekQdt8lYTv65H9-8gY8t9PZ4RQFuNNDBH0JFNF-QgOTRWWz_AaDx0b92kInskcsqRM0lNOibx-QLdVjfu:1mbaQC:6FfQMiyJtKvmd_5WeLqgLSAtvFLxFMUcXboIV5wZwo8','2021-10-30 03:31:44.182640'),('jvesix5mxqzbveiabiycccxtcxvpxv5p','.eJxVjMEOwiAQRP-FsyHAFioevfsNZBe2UjWQlPZk_Hdp0oPeZubNzFsE3NYctsZLmJO4CC1OvxlhfHLZQXpguVcZa1mXmeRekQdt8lYTv65H9-8gY8t9PZ4RQFuNNDBH0JFNF-QgOTRWWz_AaDx0b92kInskcsqRM0lNOibx-QLdVjfu:1mXZvq:4MwISXBg8is0CbugyqC3QbPMXNlPQMH7UTdxLsnIX10','2021-10-19 02:11:50.468287'),('nu1wy6huuannlkc0wzypgzzeazg167h3','.eJxVjMEOwiAQRP-FsyHAFioevfsNZBe2UjWQlPZk_Hdp0oPeZubNzFsE3NYctsZLmJO4CC1OvxlhfHLZQXpguVcZa1mXmeRekQdt8lYTv65H9-8gY8t9PZ4RQFuNNDBH0JFNF-QgOTRWWz_AaDx0b92kInskcsqRM0lNOibx-QLdVjfu:1nskS8:KdsmJN0I1KcfCIhVrLqRZhxgM1hLVqT_BlDQx5W0TDE','2022-06-05 12:12:56.680338'),('zbf7n20wr6n618xv78qfohcle26mf17q','.eJxVjMEOwiAQRP-FsyHAFioevfsNZBe2UjWQlPZk_Hdp0oPeZubNzFsE3NYctsZLmJO4CC1OvxlhfHLZQXpguVcZa1mXmeRekQdt8lYTv65H9-8gY8t9PZ4RQFuNNDBH0JFNF-QgOTRWWz_AaDx0b92kInskcsqRM0lNOibx-QLdVjfu:1mzK6b:iOQgidZAiLz1LYq37q4Xfer5p_JuiTyaPTt1q1i2c0k','2022-01-03 14:57:37.719729');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_abaShip_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_abaShip_user_id` FOREIGN KEY (`user_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'l6rkYy2Eed92SsNTfGk8uyyXb9W0Yg','2021-10-05 02:14:58.314267','read write',1,26,'2021-10-04 16:14:58.314267','2021-10-04 16:14:58.314267',NULL,NULL),(2,'E2NbUdo6j20vc2VIq8sL3Vo6vgDT4L','2021-10-05 12:11:25.675748','read write',1,26,'2021-10-05 02:11:25.676753','2021-10-05 02:11:25.676753',NULL,NULL),(3,'K1BefE3UEBKbEjBs0uQPTQpQue6CwV','2021-10-05 12:14:53.339788','read write',1,27,'2021-10-05 02:14:53.340788','2021-10-05 02:14:53.340788',NULL,NULL),(4,'aIiqfey7sKhML98vDzZbGkVI99I0bT','2021-10-05 12:20:38.812530','read write',1,27,'2021-10-05 02:20:38.813534','2021-10-05 02:20:38.813534',NULL,NULL),(5,'O0eGu2QLLtIhM85C9GBbvikiYY6uoM','2021-10-05 12:26:02.839439','read write',1,27,'2021-10-05 02:26:02.840440','2021-10-05 02:26:02.840440',NULL,NULL),(6,'7TAn5P1K8CfGs6YsMUPaUujoRRJuO3','2021-10-05 13:06:15.770924','read write',1,26,'2021-10-05 03:06:15.770924','2021-10-05 03:06:15.770924',NULL,NULL),(7,'VXaAMinNJCYdPLGitvkCZSALb5vRxs','2021-10-05 13:06:52.725215','read write',1,25,'2021-10-05 03:06:52.726215','2021-10-05 03:06:52.726215',NULL,NULL),(8,'tawGaniSlpCSZYPjNLvVu6cA4FSdec','2021-10-05 13:10:19.651164','read write',1,26,'2021-10-05 03:10:19.652164','2021-10-05 03:10:19.652164',NULL,NULL),(9,'AfP3Yy6ieSbwnJUqH71AmVWuq36HvE','2021-10-05 14:09:29.530078','read write',1,27,'2021-10-05 04:09:29.531077','2021-10-05 04:09:29.531077',NULL,NULL),(10,'ZLjk6t4PDwwoompguqXysSDMJ5gLrL','2021-10-05 14:28:04.162124','read write',1,26,'2021-10-05 04:28:04.164123','2021-10-05 04:28:04.164123',NULL,NULL),(11,'Qbiv5dIWQLF7qn7JVlPS07seEcUrny','2021-10-05 14:29:35.500172','read write',1,27,'2021-10-05 04:29:35.501172','2021-10-05 04:29:35.501172',NULL,NULL),(12,'u4KawDkqqchHTARfIQdOb62vK4ALCa','2021-10-05 14:48:04.272816','read write',1,26,'2021-10-05 04:48:04.273815','2021-10-05 04:48:04.273815',NULL,NULL),(13,'RBaazqMmcfYNXEQRnmtxnGRukkYApK','2021-10-05 14:49:21.150571','read write',1,27,'2021-10-05 04:49:21.151570','2021-10-05 04:49:21.151570',NULL,NULL),(14,'sgblPVVlR64m8fLFXHvzBgf1cYEU7x','2021-10-05 14:50:33.123899','read write',1,26,'2021-10-05 04:50:33.124900','2021-10-05 04:50:33.124900',NULL,NULL),(15,'lOybQmcGYUcqXQKD8qhblM2CS1izDW','2021-10-05 23:17:48.117954','read write',1,27,'2021-10-05 13:17:48.118954','2021-10-05 13:17:48.119952',NULL,NULL),(16,'ujlXldyl4c0BmymasRJgQbJfxzABLN','2021-10-06 00:51:34.215702','read write',1,26,'2021-10-05 14:51:34.216705','2021-10-05 14:51:34.216705',NULL,NULL),(17,'o862V679CvGazPClCPJyUIF5hdGTa1','2021-10-06 18:37:27.509272','read write',1,26,'2021-10-06 08:37:27.510271','2021-10-06 08:37:27.510271',NULL,NULL),(18,'VgTyYFdKXtbDw6jgtUxIlfY2mBXkb9','2021-10-06 18:50:00.938107','read write',1,26,'2021-10-06 08:50:00.939090','2021-10-06 08:50:00.939090',NULL,NULL),(19,'LeIm9wacLWiWsYAXXW4gLiuX7HA0jg','2021-10-06 23:33:44.923426','read write',1,26,'2021-10-06 13:33:44.926420','2021-10-06 13:33:44.926420',NULL,NULL),(20,'zHjyR8spnn9sRY1gHALgzO8Ba1Yzdo','2021-10-07 00:43:49.148188','read write',1,26,'2021-10-06 14:43:49.149188','2021-10-06 14:43:49.149188',NULL,NULL),(21,'gHw0vCXPQ99Cf6fyXhiqMAmO3debui','2021-10-07 13:17:23.207103','read write',1,26,'2021-10-07 03:17:23.208102','2021-10-07 03:17:23.208102',NULL,NULL),(22,'EYz5BpdiTA6ss70UIPuatUci07XsPr','2021-10-07 17:57:53.786135','read write',1,25,'2021-10-07 07:57:53.789153','2021-10-07 07:57:53.789153',NULL,NULL),(23,'ESpBnVGRpMMJTP9Zwo8DnZhg0AdtE2','2021-10-07 17:58:57.931929','read write',1,27,'2021-10-07 07:58:57.931929','2021-10-07 07:58:57.931929',NULL,NULL),(24,'dI5EhfXz6V2OlKzYG4hpeeoAJvuxoR','2021-10-07 18:00:35.262766','read write',1,25,'2021-10-07 08:00:35.263766','2021-10-07 08:00:35.263766',NULL,NULL),(25,'vz70JNv7F0zFkotSVUxcZnnj4APJk1','2021-10-09 00:34:03.755113','read write',1,25,'2021-10-08 14:34:03.758112','2021-10-08 14:34:03.758112',NULL,NULL),(26,'R2FDG9xjKsc7SPL7ROuEztGE4BCUI3','2021-10-15 02:44:16.911512','read write',1,25,'2021-10-14 16:44:16.913511','2021-10-14 16:44:16.913511',NULL,NULL),(27,'BwV2sSK0MzYD4E1IENMbivhlzJ519d','2021-10-16 15:31:17.293469','read write',1,1,'2021-10-16 05:31:17.293469','2021-10-16 05:31:17.293469',NULL,NULL),(28,'loll3NcLhZJpOA7nWs5NKQocBrb1oe','2021-12-21 01:53:08.909168','read write',1,30,'2021-12-20 15:53:08.910169','2021-12-20 15:53:08.910169',NULL,NULL),(29,'Pqi7Z1oyNRQOEHf6uthzeKRnBrvw6N','2021-12-21 02:48:10.226066','read write',1,30,'2021-12-20 16:48:10.227065','2021-12-20 16:48:10.227065',NULL,NULL),(30,'yGUG4ydHMbwV9KEwY4x6zVqJm5zO0O','2021-12-21 03:25:41.138492','read write',1,30,'2021-12-20 17:25:41.139492','2021-12-20 17:25:41.139492',NULL,NULL),(31,'FBKlLSyfBnBi2gRkeogpVxBBW6UvWJ','2021-12-21 03:26:28.999511','read write',1,32,'2021-12-20 17:26:28.999511','2021-12-20 17:26:28.999511',NULL,NULL),(32,'wQ7l7iMmjxKUuRKv8p9zCuFnwk1L9B','2021-12-21 03:34:58.936018','read write',1,27,'2021-12-20 17:34:58.937018','2021-12-20 17:34:58.937018',NULL,NULL),(33,'YHXw5AXyCXI1KpgwiENRXsWZ6VmCcl','2021-12-21 03:39:31.939119','read write',1,28,'2021-12-20 17:39:31.939119','2021-12-20 17:39:31.939119',NULL,NULL),(34,'Nr732YVQbqm7MptMksSl8ERcl4nBJM','2021-12-21 03:45:50.321128','read write',1,32,'2021-12-20 17:45:50.322132','2021-12-20 17:45:50.322132',NULL,NULL),(35,'iNx6Om0PrhQu9oKiK4AfbvzjucvZBv','2021-12-21 03:59:16.237027','read write',1,32,'2021-12-20 17:59:16.238028','2021-12-20 17:59:16.238028',NULL,NULL),(36,'AIyctlBRH1znHYWatzytsMui57oS04','2021-12-21 04:05:39.893765','read write',1,32,'2021-12-20 18:05:39.894770','2021-12-20 18:05:39.894770',NULL,NULL),(37,'fxTNubO4dLIDaQgYLcJ3EOcNm4rpHH','2021-12-21 04:16:18.370399','read write',1,30,'2021-12-20 18:16:18.371401','2021-12-20 18:16:18.371401',NULL,NULL),(38,'Lg57Q9DIIiQRQwRJ65opglXEaOJKwG','2022-02-20 01:52:35.135349','read write',1,30,'2022-02-19 15:52:35.136349','2022-02-19 15:52:35.136349',NULL,NULL),(39,'WD0ss5jwGXLLR5GGWLfFSNUFN98RsT','2022-02-20 01:54:01.367897','read write',1,30,'2022-02-19 15:54:01.368898','2022-02-19 15:54:01.369898',NULL,NULL),(40,'oVPxmf0BvjnEJu3MOHqNCqO9xrT4GS','2022-02-21 00:40:49.814238','read write',1,1,'2022-02-20 14:40:49.815245','2022-02-20 14:40:49.815245',NULL,NULL),(41,'DU1G5gL2TSuIf6vj7Qfx0cTUndNfd6','2022-02-21 00:42:36.001876','read write',1,26,'2022-02-20 14:42:36.002878','2022-02-20 14:42:36.002878',NULL,NULL),(42,'5PaGFR6haE16hFWbj854bJmia1f8Ey','2022-02-21 00:54:50.373427','read write',1,27,'2022-02-20 14:54:50.374428','2022-02-20 14:54:50.374428',NULL,NULL),(43,'MB1GcoGkGaeJRwCLuvMjAlRJbn5h2e','2022-02-21 00:55:52.784763','read write',1,28,'2022-02-20 14:55:52.785764','2022-02-20 14:55:52.785764',NULL,NULL),(44,'wOKnP1ounz126rWDuxPdWlXPsIoeJf','2022-02-21 00:56:19.155304','read write',1,26,'2022-02-20 14:56:19.155803','2022-02-20 14:56:19.155803',NULL,NULL),(45,'CfekNi7ZCO7Mfn8rTpk9ljcREFkeV5','2022-02-21 00:59:49.435013','read write',1,26,'2022-02-20 14:59:49.436014','2022-02-20 14:59:49.436014',NULL,NULL),(46,'gYrskl5VR6n4HAxu8p91O2ZbismG0I','2022-02-21 01:07:08.685059','read write',1,31,'2022-02-20 15:07:08.685556','2022-02-20 15:07:08.685556',NULL,NULL),(47,'CWZc5yUiAJsVUyPBfqSUsYbcs5Efau','2022-02-21 01:08:18.770581','read write',1,29,'2022-02-20 15:08:18.771081','2022-02-20 15:08:18.771081',NULL,NULL),(48,'EU1DI3I4pwYkDxjYZwMI348WiM4klb','2022-02-21 01:08:31.961935','read write',1,27,'2022-02-20 15:08:31.962436','2022-02-20 15:08:31.962436',NULL,NULL),(49,'nahe58xgmoEzVpnnHiodG3i0Oqo4b0','2022-02-21 01:09:35.646109','read write',1,26,'2022-02-20 15:09:35.646609','2022-02-20 15:09:35.646609',NULL,NULL),(50,'bIMTOQ8qMzxWngdMdnbnv1mxSbYVxk','2022-02-21 01:10:48.662412','read write',1,26,'2022-02-20 15:10:48.662912','2022-02-20 15:10:48.662912',NULL,NULL),(51,'gTxKejrNogsjZrY57J5jXSyqHPJJ9U','2022-02-21 01:21:15.309657','read write',1,33,'2022-02-20 15:21:15.310658','2022-02-20 15:21:15.310658',NULL,NULL),(52,'hUefpsrwoO7m59bJD7hZlzvzXCzxoX','2022-02-21 01:23:16.891091','read write',1,27,'2022-02-20 15:23:16.891593','2022-02-20 15:23:16.891593',NULL,NULL),(53,'2tsiI9Drl8m99oSIKh1kO9uHbmpKXr','2022-02-21 01:23:52.731260','read write',1,28,'2022-02-20 15:23:52.731762','2022-02-20 15:23:52.731762',NULL,NULL),(54,'qc7xiVS74BcVyAfWkIK1wLvte4ZJfe','2022-02-21 01:24:16.698774','read write',1,1,'2022-02-20 15:24:16.699775','2022-02-20 15:24:16.699775',NULL,NULL),(55,'KTBGgwMfr7qHu4XhQ39gKs2UZBpzAk','2022-02-21 01:24:26.318366','read write',1,1,'2022-02-20 15:24:26.318867','2022-02-20 15:24:26.318867',NULL,NULL),(56,'G11IVGbNjQoZstnVbDgDsJb68BIMwo','2022-02-21 01:25:19.536001','read write',1,33,'2022-02-20 15:25:19.536501','2022-02-20 15:25:19.536501',NULL,NULL),(57,'AnhjsG6ONN0KHupgSOae9mTHuJWvsx','2022-02-21 01:27:06.284784','read write',1,33,'2022-02-20 15:27:06.285285','2022-02-20 15:27:06.285285',NULL,NULL),(58,'SZgpb4C97THAIUAvU8FpJflXzrtYCx','2022-02-21 01:35:56.816163','read write',1,27,'2022-02-20 15:35:56.817164','2022-02-20 15:35:56.817164',NULL,NULL),(59,'UaVUXQKXzr1pouUnOJR5J0v5YdfFfY','2022-02-21 01:36:21.051062','read write',1,28,'2022-02-20 15:36:21.052064','2022-02-20 15:36:21.052064',NULL,NULL),(60,'O4UJarviioM9cqf2JFpR1hnsKccXmK','2022-02-21 01:37:20.993584','read write',1,33,'2022-02-20 15:37:20.994586','2022-02-20 15:37:20.994586',NULL,NULL),(61,'bFhsunxS57UhvB74ZQmDEMeQPjxIrA','2022-02-21 01:39:04.064381','read write',1,33,'2022-02-20 15:39:04.065380','2022-02-20 15:39:04.065380',NULL,NULL),(62,'IBnNvelAscspVfbniW5xSZBld1Grqc','2022-02-25 23:25:45.575447','read write',1,26,'2022-02-25 13:25:45.576449','2022-02-25 13:25:45.576449',NULL,NULL),(63,'6tZqYF1uMHVv4MlRMHXlEqnn0f8mXN','2022-02-25 23:28:27.516633','read write',1,26,'2022-02-25 13:28:27.518135','2022-02-25 13:28:27.518135',NULL,NULL),(64,'bBQM0qgVjziHWsqii71K0AUgvquWLZ','2022-02-25 23:33:28.814679','read write',1,26,'2022-02-25 13:33:28.815680','2022-02-25 13:33:28.815680',NULL,NULL),(65,'9e1vSQcGp3FEkvKhpG9aSw0Gr8mvrp','2022-02-25 23:38:45.470897','read write',1,27,'2022-02-25 13:38:45.471900','2022-02-25 13:38:45.471900',NULL,NULL),(66,'UBbfeBo2ft16DUqLeUJ7dLgVV7WYJ5','2022-02-25 23:39:35.552472','read write',1,25,'2022-02-25 13:39:35.552973','2022-02-25 13:39:35.552973',NULL,NULL),(67,'SxBCZYZAQFOPAx3km87DiZOgd5Pr0m','2022-02-25 23:42:46.921121','read write',1,26,'2022-02-25 13:42:46.922122','2022-02-25 13:42:46.922122',NULL,NULL),(68,'OyaFMH2RPQqP2TfNXrNkDP7rXlJ8sz','2022-02-26 00:04:00.456969','read write',1,34,'2022-02-25 14:04:00.457469','2022-02-25 14:04:00.457469',NULL,NULL),(69,'Ae1TKwahUA8OmG2NyfqOIqZcTGE668','2022-02-26 00:05:30.511803','read write',1,25,'2022-02-25 14:05:30.512304','2022-02-25 14:05:30.512804',NULL,NULL),(70,'HI50T5PNAHyq89bsEHibicJCxWBygZ','2022-02-26 00:06:06.611549','read write',1,27,'2022-02-25 14:06:06.612550','2022-02-25 14:06:06.612550',NULL,NULL),(71,'Ep7ML61K4vdft7P2XJaFumtrUBt9Bg','2022-02-26 00:07:03.338660','read write',1,28,'2022-02-25 14:07:03.339160','2022-02-25 14:07:03.339160',NULL,NULL),(72,'vFLD3BedkPgYuBGiOPgk3AVkjZFDqS','2022-02-26 00:07:38.377798','read write',1,34,'2022-02-25 14:07:38.378300','2022-02-25 14:07:38.378300',NULL,NULL),(73,'RHAI9ciLtkCBeIJP0v84WyEJvWIxK3','2022-02-26 00:41:50.602881','read write',1,26,'2022-02-25 14:41:50.603882','2022-02-25 14:41:50.603882',NULL,NULL),(74,'QXCwKP9FPDIOJtHetkQiK46djx1g33','2022-02-26 00:44:58.699301','read write',1,28,'2022-02-25 14:44:58.699802','2022-02-25 14:44:58.699802',NULL,NULL),(75,'TWHiFmWGIX4f6OLN0k27ucdmxtmM9P','2022-02-26 00:45:49.922023','read write',1,26,'2022-02-25 14:45:49.923023','2022-02-25 14:45:49.923023',NULL,NULL),(76,'owlxm3ZaiX08vGQq5dqqHWNwG41qXE','2022-02-26 00:49:16.319468','read write',1,28,'2022-02-25 14:49:16.319970','2022-02-25 14:49:16.319970',NULL,NULL),(77,'37qxsthvrJFcNY1qS9eTkxFDiNdnpK','2022-02-26 00:57:13.791732','read write',1,28,'2022-02-25 14:57:13.792733','2022-02-25 14:57:13.792733',NULL,NULL),(78,'agFCT12lO8bc32aTVd4zWnodiPJe0L','2022-02-26 01:05:55.711769','read write',1,26,'2022-02-25 15:05:55.712768','2022-02-25 15:05:55.712768',NULL,NULL),(79,'tuckuXJONr1FflGjCmRICxtF0rL8Pm','2022-02-26 01:06:45.805344','read write',1,28,'2022-02-25 15:06:45.805843','2022-02-25 15:06:45.805843',NULL,NULL),(80,'mIQT1914kUB4J3lS6nNG3v5XEagbmX','2022-02-26 01:07:13.108260','read write',1,26,'2022-02-25 15:07:13.109261','2022-02-25 15:07:13.109261',NULL,NULL),(81,'8vmBQLzZn2VaYpTFJMiQoBPduIpZ7q','2022-02-26 01:07:51.467458','read write',1,28,'2022-02-25 15:07:51.467958','2022-02-25 15:07:51.467958',NULL,NULL),(82,'kuVQNo08MNQKCxd0l33YGhMSVl2TsF','2022-02-26 01:08:24.420872','read write',1,26,'2022-02-25 15:08:24.421372','2022-02-25 15:08:24.421372',NULL,NULL),(83,'1lY1j0kBNAtLpqHETr1cYskAXfRqYV','2022-02-26 01:09:13.284989','read write',1,28,'2022-02-25 15:09:13.285490','2022-02-25 15:09:13.285490',NULL,NULL),(84,'tTqPgSvBuOa5dkF4mLlZvuZubjUJXQ','2022-02-26 01:09:38.034967','read write',1,33,'2022-02-25 15:09:38.035468','2022-02-25 15:09:38.035967',NULL,NULL),(85,'44Jf260pH7Oa1urEJNcNHSG9KpSijt','2022-02-26 01:10:10.488278','read write',1,28,'2022-02-25 15:10:10.489278','2022-02-25 15:10:10.489278',NULL,NULL),(86,'pjGyzZFtuTpxfWVvgY9nXsQ5ontbqM','2022-02-26 01:10:51.252947','read write',1,33,'2022-02-25 15:10:51.253948','2022-02-25 15:10:51.253948',NULL,NULL),(87,'ezkcXqb8SZq29nMYKSJfoVTHPHcuxH','2022-02-26 01:12:54.375559','read write',1,28,'2022-02-25 15:12:54.376560','2022-02-25 15:12:54.376560',NULL,NULL),(88,'Ej85ogR2cIwhW0WO0g6UcYyyq2Pmnw','2022-02-27 22:55:48.079848','read write',1,28,'2022-02-27 12:55:48.082849','2022-02-27 12:55:48.082849',NULL,NULL),(89,'A9Bj7wrH2zqoKv8OCEH19WjxojR6IU','2022-02-27 23:41:06.636253','read write',1,26,'2022-02-27 13:41:06.640257','2022-02-27 13:41:06.640257',NULL,NULL),(90,'HPRrO9BFfiidGiHle59Lz8Yl5ZNEqm','2022-02-27 23:42:14.486386','read write',1,27,'2022-02-27 13:42:14.486886','2022-02-27 13:42:14.486886',NULL,NULL),(91,'oqvnMfph9Q4EvoQGNdFTswE1plfJwB','2022-02-27 23:44:39.373020','read write',1,26,'2022-02-27 13:44:39.373521','2022-02-27 13:44:39.373521',NULL,NULL),(92,'XFeHcfEK7CJ7tNhKs8jtr3MpyhIwSE','2022-03-09 23:24:54.557829','read write',1,35,'2022-03-09 13:24:54.558830','2022-03-09 13:24:54.559831',NULL,NULL),(93,'ZbUecGz50PeUBlXhNsaDWKyVw3yhOi','2022-03-10 00:20:57.920857','read write',1,26,'2022-03-09 14:20:57.926862','2022-03-09 14:20:57.926862',NULL,NULL),(94,'KuILme4SbJAaoQS7dmx2j1HLnlH5gF','2022-03-31 23:31:00.840194','read write',1,26,'2022-03-31 13:31:00.841195','2022-03-31 13:31:00.841195',NULL,NULL),(95,'pv3U8HNpiDJm6inJFJY3r6atpAbjcU','2022-04-01 00:06:09.617550','read write',1,28,'2022-03-31 14:06:09.618550','2022-03-31 14:06:09.618550',NULL,NULL),(96,'pTZZJsNTVEtXEObNJLtOsePHQ1mF4A','2022-04-01 00:18:03.487544','read write',1,26,'2022-03-31 14:18:03.488544','2022-03-31 14:18:03.488544',NULL,NULL),(97,'tFndLKELkqWaQ7jkIzlTVSs80RBdFl','2022-04-17 17:37:10.295922','read write',1,1,'2022-04-17 07:37:10.296924','2022-04-17 07:37:10.296924',NULL,NULL),(98,'22AeZMxquVZToGhhw8GY4R5PtKyLYs','2022-05-08 12:37:29.072203','read write',1,36,'2022-05-08 02:37:29.073200','2022-05-08 02:37:29.073200',NULL,NULL),(99,'XfRYzbBwlFzFVM2dCZT6aaFgBpqvAe','2022-05-08 18:00:43.388707','read write',1,36,'2022-05-08 08:00:43.391210','2022-05-08 08:00:43.391210',NULL,NULL),(100,'Ue6aPWF6MOM6IppDRaUa3X0dKe24M3','2022-05-08 18:09:58.854431','read write',1,36,'2022-05-08 08:09:58.855429','2022-05-08 08:09:58.855429',NULL,NULL),(101,'R1dHUiEB0vK95uSvkQiNTrwIdNWD8J','2022-05-08 18:14:28.830400','read write',1,26,'2022-05-08 08:14:28.830900','2022-05-08 08:14:28.830900',NULL,NULL),(102,'gfMB2luzKDCR8e9cNZ0imLTth2GnHC','2022-05-15 19:30:20.629091','read write',1,26,'2022-05-15 09:30:20.630091','2022-05-15 09:30:20.630091',NULL,NULL),(103,'vNbVn7hNnAhcoQVcMHkD8EOg49znRs','2022-05-15 22:36:56.220341','read write',1,26,'2022-05-15 12:36:56.227846','2022-05-15 12:36:56.227846',NULL,NULL),(104,'J2WD1yey1WJxaDpg2nIABJ6eMrhcVF','2022-05-21 22:22:30.569493','read write',1,36,'2022-05-21 12:22:30.571995','2022-05-21 12:22:30.572496',NULL,NULL),(105,'AuzvkwVJa3CbrVrp0ujR1JmIio7Xa9','2022-05-21 22:23:09.423155','read write',1,28,'2022-05-21 12:23:09.423654','2022-05-21 12:23:09.423654',NULL,NULL),(106,'LJf1aIe4n5wyiKkmKcWd9MWrzmwkfL','2022-05-21 22:23:41.893728','read write',1,25,'2022-05-21 12:23:41.894730','2022-05-21 12:23:41.894730',NULL,NULL),(107,'QydVMjbkyx8TwN2vaAL1LpEc6DyaEQ','2022-05-21 22:24:13.668943','read write',1,27,'2022-05-21 12:24:13.669443','2022-05-21 12:24:13.669443',NULL,NULL),(108,'HrFgHxLEW4NkA4l82lv4D5MekeCEJ5','2022-05-21 22:24:42.723758','read write',1,36,'2022-05-21 12:24:42.724760','2022-05-21 12:24:42.724760',NULL,NULL),(109,'6qm9qaJHbIj7Tw04l4how7vXslJXz1','2022-05-21 22:36:17.198750','read write',1,27,'2022-05-21 12:36:17.199751','2022-05-21 12:36:17.199751',NULL,NULL),(110,'VbYyRRyvLz5XHcx6NbWrglzTOKED8u','2022-05-21 22:57:43.979127','read write',1,26,'2022-05-21 12:57:43.979628','2022-05-21 12:57:43.979628',NULL,NULL),(111,'2XXhVjkv46GYzIRHFPNaC286Vmj5Da','2022-05-22 22:07:01.704722','read write',1,1,'2022-05-22 12:07:01.705723','2022-05-22 12:07:01.705723',NULL,NULL),(112,'XYqMLtV8XdSsj8Ir5Hc5rBoIy5Vxon','2022-05-22 22:07:46.349729','read write',1,25,'2022-05-22 12:07:46.350732','2022-05-22 12:07:46.350732',NULL,NULL),(113,'ddkB4HPyuFShpO2EDiH6oiOkOQMX4P','2022-05-22 22:13:29.032014','read write',1,31,'2022-05-22 12:13:29.033017','2022-05-22 12:13:29.033017',NULL,NULL),(114,'5n9XmlBLuqZtiyjEAPLAnoJjcIq1Uh','2022-05-22 22:14:30.823759','read write',1,32,'2022-05-22 12:14:30.823759','2022-05-22 12:14:30.823759',NULL,NULL),(115,'N2Y44ahazDcxhTEEYN4rf61GgFRrKH','2022-05-22 22:15:01.579876','read write',1,30,'2022-05-22 12:15:01.580878','2022-05-22 12:15:01.580878',NULL,NULL),(116,'XD2TqWF05XCpc3Ov8Vz9ACXkviS1kp','2022-05-22 22:15:24.320863','read write',1,29,'2022-05-22 12:15:24.321866','2022-05-22 12:15:24.321866',NULL,NULL),(117,'cKUrBgqGCcPc4MDCyN8uQotsQcZNto','2022-05-22 22:16:10.591448','read write',1,36,'2022-05-22 12:16:10.592449','2022-05-22 12:16:10.592449',NULL,NULL),(118,'yiOxkwxJFUjlPGG5rPdVHEP2yuV3Oo','2022-05-22 22:17:20.701054','read write',1,26,'2022-05-22 12:17:20.702054','2022-05-22 12:17:20.702054',NULL,NULL),(119,'COpt4mbYSPKHTuyz2fCHKO57Fmh2R2','2022-05-22 22:21:25.562168','read write',1,27,'2022-05-22 12:21:25.563170','2022-05-22 12:21:25.563170',NULL,NULL),(120,'Djqezvxz46GTdEAjTWFfrnmo6oiHdC','2022-05-22 22:22:36.257661','read write',1,36,'2022-05-22 12:22:36.257661','2022-05-22 12:22:36.257661',NULL,NULL),(121,'8cr7q34Tk0HnfufBgAdDbQTDlP6Tsv','2022-05-22 22:27:00.444010','read write',1,29,'2022-05-22 12:27:00.445011','2022-05-22 12:27:00.445011',NULL,NULL),(122,'6dPE6IWUGeSMxGosHixdyQqF4gKJXW','2022-05-22 22:28:01.726047','read write',1,28,'2022-05-22 12:28:01.727049','2022-05-22 12:28:01.727049',NULL,NULL),(123,'Xe6xmkceiDhHyOs0LWSUbfMzKESWVJ','2022-05-22 22:28:26.476399','read write',1,28,'2022-05-22 12:28:26.476399','2022-05-22 12:28:26.476399',NULL,NULL),(124,'t6Pl729e3yiyVZQHABiCwjH55A1beB','2022-05-22 22:28:41.976814','read write',1,27,'2022-05-22 12:28:41.977816','2022-05-22 12:28:41.977816',NULL,NULL),(125,'HIVCOXgryvAUiczCw2Ph2qZqLEyCpA','2022-05-22 22:29:16.905439','read write',1,36,'2022-05-22 12:29:16.905439','2022-05-22 12:29:16.905439',NULL,NULL),(126,'3zrI6OgM8vw6YMv8I18ARlwmnqo9tq','2022-05-22 22:44:23.051671','read write',1,27,'2022-05-22 12:44:23.052672','2022-05-22 12:44:23.052672',NULL,NULL),(127,'1Lx2VrgdBhcXaN9iAtEUKKqc671yb1','2022-05-22 22:44:57.498180','read write',1,36,'2022-05-22 12:44:57.499182','2022-05-22 12:44:57.499182',NULL,NULL),(128,'5r2kRL4DBVGE9AzIVcKqgH9tGhaJUJ','2022-05-30 23:37:32.595061','read write',1,36,'2022-05-30 13:37:32.596564','2022-05-30 13:37:32.596564',NULL,NULL),(129,'IDNLE06x2TwA4JyuWgeV8M6Qd5QIPa','2022-05-30 23:54:31.656434','read write',1,27,'2022-05-30 13:54:31.656935','2022-05-30 13:54:31.656935',NULL,NULL),(130,'c8ABMdRHg1pBBRHs9uXo5k69Ccboug','2022-05-30 23:55:22.609932','read write',1,29,'2022-05-30 13:55:22.610933','2022-05-30 13:55:22.610933',NULL,NULL),(131,'5JySFKJBVWG5axzOQdUoYf2pOa5AJf','2022-05-30 23:55:36.780629','read write',1,30,'2022-05-30 13:55:36.781630','2022-05-30 13:55:36.781630',NULL,NULL),(132,'XobZsujDwSuM9hAQlPTym19RdzMGa0','2022-05-30 23:56:17.520610','read write',1,31,'2022-05-30 13:56:17.521112','2022-05-30 13:56:17.521112',NULL,NULL),(133,'pT6vB82fjwpyM29AVrJiz0FmCwvq15','2022-05-30 23:56:49.210738','read write',1,37,'2022-05-30 13:56:49.211238','2022-05-30 13:56:49.211238',NULL,NULL),(134,'cyJ6c26gFceoANJmp1bfyMk1TMrlUo','2022-05-30 23:57:35.043256','read write',1,32,'2022-05-30 13:57:35.044256','2022-05-30 13:57:35.044760',NULL,NULL),(135,'gvpyciDf1UJQUt1YPXrzv5rwtVzpKX','2022-05-30 23:58:21.085622','read write',1,30,'2022-05-30 13:58:21.086622','2022-05-30 13:58:21.086622',NULL,NULL),(136,'b6G55MKs32vtqFFiQFRqZcBVohK1bS','2022-05-31 00:03:07.172498','read write',1,28,'2022-05-30 14:03:07.173499','2022-05-30 14:03:07.173499',NULL,NULL),(137,'F3GhJHKNTfSpzYb4IU5WpFouTlUllk','2022-05-31 00:04:14.061987','read write',1,27,'2022-05-30 14:04:14.062987','2022-05-30 14:04:14.062987',NULL,NULL),(138,'H184FRhiqqnu6sKUZXqDh9PDD1D0Qt','2022-05-31 00:04:56.966203','read write',1,30,'2022-05-30 14:04:56.967704','2022-05-30 14:04:56.967704',NULL,NULL),(139,'OW2o172hUmTlkNZILjDG3KnwhwbXum','2022-05-31 00:06:38.331654','read write',1,27,'2022-05-30 14:06:38.332655','2022-05-30 14:06:38.332655',NULL,NULL),(140,'UhUq5AyADTTgQVGZLxma4C76M7KtCK','2022-05-31 00:08:28.536209','read write',1,30,'2022-05-30 14:08:28.537706','2022-05-30 14:08:28.538207',NULL,NULL),(141,'HrioZxlUajyGP3Ntb2Yq1KzAObIJdW','2022-05-31 00:10:35.368509','read write',1,36,'2022-05-30 14:10:35.371012','2022-05-30 14:10:35.371012',NULL,NULL),(142,'doAW7EIvaMJ5uVbcn6YrmuSHYQRiEC','2022-05-31 00:12:45.566106','read write',1,33,'2022-05-30 14:12:45.567107','2022-05-30 14:12:45.567107',NULL,NULL),(143,'P8y9qLei5JeLSm3TmcfJ0D3hvmj2I1','2022-05-31 00:15:51.900654','read write',1,35,'2022-05-30 14:15:51.901154','2022-05-30 14:15:51.901154',NULL,NULL),(144,'wWuGSjqsleS8SCk1Tor8NdI70McbdZ','2022-05-31 00:17:29.840021','read write',1,28,'2022-05-30 14:17:29.841021','2022-05-30 14:17:29.841021',NULL,NULL),(145,'f7dsLjvv91fkDcYScbH3cTR4B2mk4l','2022-05-31 00:18:32.385169','read write',1,26,'2022-05-30 14:18:32.385670','2022-05-30 14:18:32.385670',NULL,NULL),(146,'4xGkIUmNF2SAkDZHkBx9bQuPTNzWZk','2022-05-31 00:19:40.928073','read write',1,28,'2022-05-30 14:19:40.928574','2022-05-30 14:19:40.928574',NULL,NULL),(147,'2tNgwXjDLgfnXNtYX3pqmFBdCMpb0V','2022-05-31 00:23:22.504975','read write',1,36,'2022-05-30 14:23:22.505477','2022-05-30 14:23:22.505477',NULL,NULL),(148,'6cH4XdLknChQ2Q8wkOwAoCQ1QQVad6','2022-05-31 00:25:36.016299','read write',1,36,'2022-05-30 14:25:36.016801','2022-05-30 14:25:36.016801',NULL,NULL),(149,'NfGMag7eQhBssV0lWNq5c8X2hHwnfT','2022-05-31 00:26:29.531888','read write',1,29,'2022-05-30 14:26:29.532389','2022-05-30 14:26:29.532389',NULL,NULL),(150,'PHCap4Fg0IJZ7RWJYoGDFuwz44jf3p','2022-05-31 00:26:44.345335','read write',1,30,'2022-05-30 14:26:44.345836','2022-05-30 14:26:44.345836',NULL,NULL),(151,'b81EboDh3tzMyWd3uof7kXrQjX0UOt','2022-05-31 00:27:03.692552','read write',1,28,'2022-05-30 14:27:03.693053','2022-05-30 14:27:03.693053',NULL,NULL),(152,'fq8Ymlw7Y0S1YfD1tDsLZc0UWhq9Xj','2022-05-31 16:54:53.885712','read write',1,1,'2022-05-31 06:54:53.886712','2022-05-31 06:54:53.887213',NULL,NULL),(153,'V9bZmP1WVuvkBIzpFf3e2UevVJ15cR','2022-05-31 17:00:40.147323','read write',1,36,'2022-05-31 07:00:40.147824','2022-05-31 07:00:40.147824',NULL,NULL),(154,'IH5rBwIGTFF3LW7lCnI0tUcwh1faWh','2022-05-31 17:06:32.589228','read write',1,27,'2022-05-31 07:06:32.590228','2022-05-31 07:06:32.590228',NULL,NULL),(155,'4chqI8PLJtekDxSVDJV6RsEjLCw4ga','2022-05-31 17:07:31.277377','read write',1,28,'2022-05-31 07:07:31.278879','2022-05-31 07:07:31.278879',NULL,NULL),(156,'IGvkJultv2iAP2ZxBX6PgINQfM5XOe','2022-05-31 17:08:04.359994','read write',1,36,'2022-05-31 07:08:04.360996','2022-05-31 07:08:04.360996',NULL,NULL),(157,'me3wOHT2lXKHc8rn16Aks5vnHei7hj','2022-05-31 17:09:13.886972','read write',1,28,'2022-05-31 07:09:13.887973','2022-05-31 07:09:13.887973',NULL,NULL),(158,'bM4aNcBevDspSQAAQEJ26nCUlEJSdD','2022-05-31 17:12:35.795856','read write',1,36,'2022-05-31 07:12:35.796358','2022-05-31 07:12:35.796358',NULL,NULL),(159,'bNKQGn6V1fLDryJEsi10mgPQdQQUDI','2022-05-31 17:15:09.516351','read write',1,28,'2022-05-31 07:15:09.517353','2022-05-31 07:15:09.517353',NULL,NULL),(160,'ARZaBtVDeoPYRqLrkKkFrepU13Ks4l','2022-05-31 17:15:25.338814','read write',1,36,'2022-05-31 07:15:25.339815','2022-05-31 07:15:25.339815',NULL,NULL),(161,'KJdphiq7WdxrJYDG2kXw33jJohUlyz','2022-05-31 17:21:14.580683','read write',1,38,'2022-05-31 07:21:14.582186','2022-05-31 07:21:14.582186',NULL,NULL),(162,'qJCSKi04thQUuaNwBL41X05nyZgLvH','2022-05-31 17:27:47.964128','read write',1,36,'2022-05-31 07:27:47.965629','2022-05-31 07:27:47.965629',NULL,NULL),(163,'Q2nSGeRNThDehqB3F0zeMQMS1pdtqo','2022-05-31 17:47:04.113218','read write',1,26,'2022-05-31 07:47:04.114219','2022-05-31 07:47:04.114219',NULL,NULL),(164,'cIITZQidqLtOdAeOCtUqWod93PaEIu','2022-05-31 17:48:50.428097','read write',1,38,'2022-05-31 07:48:50.428597','2022-05-31 07:48:50.428597',NULL,NULL),(165,'xjXlRuf0IxhVrlbUDMNVWTMATeszKC','2022-05-31 17:52:10.296118','read write',1,26,'2022-05-31 07:52:10.296622','2022-05-31 07:52:10.296622',NULL,NULL),(166,'xbqYx2EXQHsnEWLGatJdgSvGJEEBpL','2022-05-31 17:54:35.175899','read write',1,28,'2022-05-31 07:54:35.176398','2022-05-31 07:54:35.176398',NULL,NULL),(167,'bM4asnImdGglCyv7mUUjz8MLSG9mf0','2022-05-31 18:07:44.030984','read write',1,36,'2022-05-31 08:07:44.031985','2022-05-31 08:07:44.031985',NULL,NULL),(168,'FveYpbHfkEaMPHEOdN4HCphlBBd7Ia','2022-05-31 18:10:24.675371','read write',1,28,'2022-05-31 08:10:24.675871','2022-05-31 08:10:24.675871',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_uris` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_user_id_79829054_fk_abaShip_user_id` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_application_user_id_79829054_fk_abaShip_user_id` FOREIGN KEY (`user_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'fGB8Dw4LisdjAjNUdWhL0Howw25DZ39LiRdTUTro','','confidential','password','TVZDBuqShhQXxwkrQW6aextygWGIFHX4RjIJWgdo9MOKIJI1xCGWrNz3bWbaV5oaYFgcp3hiI8krwOBqWEmP3zEW5FkEoxsFBse39ozudGaxL7o08UIcRdSGU99puoSW','abshipapp',1,0,'2021-10-04 16:13:25.148046','2021-10-04 16:13:25.148046','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `claims` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_abaShip_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_abaShip_user_id` FOREIGN KEY (`user_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_abaShip_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_abaShip_user_id` FOREIGN KEY (`user_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refreshtoken_user_id_da837fce_fk_abaShip_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refreshtoken_user_id_da837fce_fk_abaShip_user_id` FOREIGN KEY (`user_id`) REFERENCES `abaship_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'QkZmGCY4quOgUwacp0YNoJfenQzvO9',1,1,26,'2021-10-04 16:14:58.320264','2021-10-04 16:14:58.320264',NULL),(2,'auYnoyGQngl5Qha0MTrZSgJtjBS5q3',2,1,26,'2021-10-05 02:11:25.688750','2021-10-05 02:11:25.688750',NULL),(3,'5x942eNqOjkg7nUppuTLaLKVbYCN5m',3,1,27,'2021-10-05 02:14:53.344787','2021-10-05 02:14:53.344787',NULL),(4,'qd0GpA39OeUbnLlO1u8iQVrI07p8aA',4,1,27,'2021-10-05 02:20:38.817664','2021-10-05 02:20:38.817664',NULL),(5,'Q75BmHd3c0cCyDINBxbvEh1bAW4Itu',5,1,27,'2021-10-05 02:26:02.843809','2021-10-05 02:26:02.843809',NULL),(6,'GgUY2TfVIaTDtc44IgMitVcbZqOKY3',6,1,26,'2021-10-05 03:06:15.774920','2021-10-05 03:06:15.774920',NULL),(7,'IYGX9EXKEDYD7mxxgb8s31oNdKYwFB',7,1,25,'2021-10-05 03:06:52.728215','2021-10-05 03:06:52.728215',NULL),(8,'xZaKKeyzdNMn6TTVaGuIDsHa6kFpPU',8,1,26,'2021-10-05 03:10:19.654726','2021-10-05 03:10:19.654726',NULL),(9,'1gjxPcfjBL527w9xcVKtU6ZI9DyoDt',9,1,27,'2021-10-05 04:09:29.534071','2021-10-05 04:09:29.534071',NULL),(10,'QXqmYNbXMUrELXm5KJtORZtYGUm6Qi',10,1,26,'2021-10-05 04:28:04.170120','2021-10-05 04:28:04.170120',NULL),(11,'nTSVzAHKb7OlXOQfuHoju18abrk6kV',11,1,27,'2021-10-05 04:29:35.503170','2021-10-05 04:29:35.503170',NULL),(12,'xpXhDVa6W3UrNflK6qUzWuFKf46gUb',12,1,26,'2021-10-05 04:48:04.277811','2021-10-05 04:48:04.277811',NULL),(13,'mHUXBgJGwsLxNau7GAZaPBKvcdbpw8',13,1,27,'2021-10-05 04:49:21.153569','2021-10-05 04:49:21.153569',NULL),(14,'ORV08hqIw47QrSEYCIVPl5FGLFVI1a',14,1,26,'2021-10-05 04:50:33.126897','2021-10-05 04:50:33.126897',NULL),(15,'MUe1OIup1xca4StBGZaZXpprCTx6QD',15,1,27,'2021-10-05 13:17:48.138944','2021-10-05 13:17:48.139943',NULL),(16,'QNXmvMcARovIzM0cWRT91XkjmLKKLY',16,1,26,'2021-10-05 14:51:34.220700','2021-10-05 14:51:34.220700',NULL),(17,'MHCBya1inOUDoSkSqKkRffc5Vm2ErN',17,1,26,'2021-10-06 08:37:27.523265','2021-10-06 08:37:27.523265',NULL),(18,'z2COy8sOmj5lz5Zl3FkxoLcIhnjdZr',18,1,26,'2021-10-06 08:50:00.942087','2021-10-06 08:50:00.942087',NULL),(19,'8oljYOgFgcGw0V26QsHDlGojIYIPjg',19,1,26,'2021-10-06 13:33:44.940414','2021-10-06 13:33:44.940414',NULL),(20,'qibJlp5O5H9MRtCi8oJNI1qZzjtbgz',20,1,26,'2021-10-06 14:43:49.157184','2021-10-06 14:43:49.157184',NULL),(21,'rVpmXzNcov3jkXXpQcrccYVLf7kO1r',21,1,26,'2021-10-07 03:17:23.217097','2021-10-07 03:17:23.217097',NULL),(22,'YixfK2Jshn1hDw0uhnaiKTBg50OBlx',22,1,25,'2021-10-07 07:57:53.799900','2021-10-07 07:57:53.799900',NULL),(23,'6Cvco3N5xqfQOXBJPoai65FKExiFLm',23,1,27,'2021-10-07 07:58:57.935234','2021-10-07 07:58:57.935234',NULL),(24,'gK2it0RzZfD6eZooJpHe7ViJHGrTAI',24,1,25,'2021-10-07 08:00:35.266765','2021-10-07 08:00:35.266765',NULL),(25,'LyHLVnlTuWG1jbpZEGBn0PnHOYit8a',25,1,25,'2021-10-08 14:34:03.774101','2021-10-08 14:34:03.774101',NULL),(26,'rm6JF8juCc7mPwqwxhKnVF4EOz7hrw',26,1,25,'2021-10-14 16:44:17.147768','2021-10-14 16:44:17.147768',NULL),(27,'3s3g87y3MJg1Kdh7ZtZRmzySGI9B9e',27,1,1,'2021-10-16 05:31:17.299464','2021-10-16 05:31:17.299464',NULL),(28,'LkkF2R8ftUa2vvowd54ki6Se0CDFMc',28,1,30,'2021-12-20 15:53:08.914359','2021-12-20 15:53:08.914359',NULL),(29,'3g5I2uep39SyPqJumYPYLSgSchXAjq',29,1,30,'2021-12-20 16:48:10.231063','2021-12-20 16:48:10.231063',NULL),(30,'zJvwJY2hkmCDl09CjEE2rt3tkeauxR',30,1,30,'2021-12-20 17:25:41.142356','2021-12-20 17:25:41.142356',NULL),(31,'ALsL8naPBMFQSIkyzk8BMMf7xFd3yP',31,1,32,'2021-12-20 17:26:29.001404','2021-12-20 17:26:29.001404',NULL),(32,'I8FcutTH6X4gkRM8vKHRZJDKo0dy1m',32,1,27,'2021-12-20 17:34:58.939710','2021-12-20 17:34:58.939710',NULL),(33,'7Qg9j84AwS1DxYqK0ur3CYBwoUmehJ',33,1,28,'2021-12-20 17:39:31.942117','2021-12-20 17:39:31.942117',NULL),(34,'4wW1lesWybuaAS4Bp0t5sfFKSu0Xvr',34,1,32,'2021-12-20 17:45:50.325447','2021-12-20 17:45:50.325447',NULL),(35,'6YwV2lesQtiRYVdZj0qXwMKoODPo26',35,1,32,'2021-12-20 17:59:16.241080','2021-12-20 17:59:16.241080',NULL),(36,'hT3tTtIwjrYyldALpAemPxrBQhM1dH',36,1,32,'2021-12-20 18:05:39.896764','2021-12-20 18:05:39.896764',NULL),(37,'F8uVfzP82nbDuuZyk8QZo8givHHKBR',37,1,30,'2021-12-20 18:16:18.373400','2021-12-20 18:16:18.374396',NULL),(38,'Pl8xZGNs0TWGVPYkkYr2AQdKYhFI31',38,1,30,'2022-02-19 15:52:35.168753','2022-02-19 15:52:35.168753',NULL),(39,'eUtjIa3jfg3k3BWDjDS59hDKhP1Q5j',39,1,30,'2022-02-19 15:54:01.372896','2022-02-19 15:54:01.372896',NULL),(40,'vfxXDHLpc9Q3r9yBSUpNb1OFtOpf9T',40,1,1,'2022-02-20 14:40:49.982357','2022-02-20 14:40:49.982357',NULL),(41,'kWtF6SKFAWABbGT7WZeB7Dtaf9nq8t',41,1,26,'2022-02-20 14:42:36.024393','2022-02-20 14:42:36.024393',NULL),(42,'cJKiXiH8qrDoZizsZhFu2fO6dLwMvJ',42,1,27,'2022-02-20 14:54:50.416957','2022-02-20 14:54:50.417460',NULL),(43,'CWLvpOtLVpTeZj8dg0DDwQbMa6YuyB',43,1,28,'2022-02-20 14:55:52.802775','2022-02-20 14:55:52.802775',NULL),(44,'km0XNawo7rv1x6IviQbMa5YpPCUjZE',44,1,26,'2022-02-20 14:56:19.180308','2022-02-20 14:56:19.180810',NULL),(45,'VGj9g3o2KB4zScINUQ08ATLHfyYPUZ',45,1,26,'2022-02-20 14:59:49.457528','2022-02-20 14:59:49.457528',NULL),(46,'ihYaDqo46VgzAMQAuj218uDq9D0g9J',46,1,31,'2022-02-20 15:07:09.141529','2022-02-20 15:07:09.141529',NULL),(47,'Z4NNsN1QlvpZZd7KFyCBtReSUZGcFv',47,1,29,'2022-02-20 15:08:18.804577','2022-02-20 15:08:18.804577',NULL),(48,'HGkw01GUWz8qbhvPLA5licO8YWx2Fi',48,1,27,'2022-02-20 15:08:31.971443','2022-02-20 15:08:31.971443',NULL),(49,'xPynGvrVXM5HUKQVEXh7doafdQNWPR',49,1,26,'2022-02-20 15:09:35.663615','2022-02-20 15:09:35.663615',NULL),(50,'cOT8zLUuMhLk3aindPTZkJQ1AxaEat',50,1,26,'2022-02-20 15:10:49.213136','2022-02-20 15:10:49.213637',NULL),(51,'SC6ZNIJuVl3ZkizFA3VczfFRfGCvfl',51,1,33,'2022-02-20 15:21:15.393717','2022-02-20 15:21:15.393717',NULL),(52,'whto9RdYtSZ9iLfckY77gu8Xbnr8wg',52,1,27,'2022-02-20 15:23:16.920613','2022-02-20 15:23:16.920613',NULL),(53,'sshhFYrSBPdgRvMnVnaz93VVTyIcLQ',53,1,28,'2022-02-20 15:23:52.769310','2022-02-20 15:23:52.769310',NULL),(54,'g8c3JHxh8nDHyDlOhKCxLwKnXnkDLs',54,1,1,'2022-02-20 15:24:16.712784','2022-02-20 15:24:16.712784',NULL),(55,'7ojSnTyDdjA4EqdEfpFoYHE4jp6D4C',55,1,1,'2022-02-20 15:24:26.355882','2022-02-20 15:24:26.355882',NULL),(56,'wjmyiFSUD5ds3Qkw1r1oZxGpZabDNw',56,1,33,'2022-02-20 15:25:21.174245','2022-02-20 15:25:21.174746',NULL),(57,'O5RH865iEW1WwDtOHIPqlMvtbJZkm1',57,1,33,'2022-02-20 15:27:06.328814','2022-02-20 15:27:06.328814',NULL),(58,'hCMZ4es7GOQRcePJcerOetK70X8HhJ',58,1,27,'2022-02-20 15:35:56.925240','2022-02-20 15:35:56.925240',NULL),(59,'pufS3oteMgYfG10NdiTyD088a8M5se',59,1,28,'2022-02-20 15:36:21.197947','2022-02-20 15:36:21.197947',NULL),(60,'5fW32sppjylIjGrVdV2vRpI5vZmF2W',60,1,33,'2022-02-20 15:37:21.111845','2022-02-20 15:37:21.111845',NULL),(61,'BKaxP6cR48ZYZKLnvQtwMSO1KtFqdS',61,1,33,'2022-02-20 15:39:04.404072','2022-02-20 15:39:04.404072',NULL),(62,'mMjaV7QPrD0V13Dnag9FqrRNrWo5e6',62,1,26,'2022-02-25 13:25:46.055007','2022-02-25 13:25:46.055007',NULL),(63,'kcElzNy5ZOnFP4ydHtREkSwf646e44',63,1,26,'2022-02-25 13:28:27.531918','2022-02-25 13:28:27.531918',NULL),(64,'r8s00FMcKRlPJ512rK2a1pJwC7qGPM',64,1,26,'2022-02-25 13:33:28.843199','2022-02-25 13:33:28.843199',NULL),(65,'ZFhF4mXEQfIqTIEmXgCUkObCnnpjJY',65,1,27,'2022-02-25 13:38:45.489410','2022-02-25 13:38:45.489911',NULL),(66,'b2r3dOWPvvol3idA4rN39XsaL3ao3W',66,1,25,'2022-02-25 13:39:35.957452','2022-02-25 13:39:35.957952',NULL),(67,'Lv8f71fHFfb4DSiIyI7QSQoO1j2sgd',67,1,26,'2022-02-25 13:42:46.943137','2022-02-25 13:42:46.943137',NULL),(68,'WLTmVP0gHLwWB7vvUx03KVm9pCrzqw',68,1,34,'2022-02-25 14:04:00.697844','2022-02-25 14:04:00.697844',NULL),(69,'dP7SctK3sfyPdPmkzodSaqrUrHYYiC',69,1,25,'2022-02-25 14:05:30.548354','2022-02-25 14:05:30.548354',NULL),(70,'3eo9tAzmZ4D1EfqBgHGCvk4gtUxPd7',70,1,27,'2022-02-25 14:06:06.661585','2022-02-25 14:06:06.661585',NULL),(71,'3UotLcg4KUX7G6D8glymNenFmHbTUg',71,1,28,'2022-02-25 14:07:04.299200','2022-02-25 14:07:04.299200',NULL),(72,'0uY1X9BDCHNJdAeqN5ynNWRBQEfRKa',72,1,34,'2022-02-25 14:07:38.397313','2022-02-25 14:07:38.397313',NULL),(73,'zVFyt2kQJDEqb0OnzKkeVAIuH8Mic0',73,1,26,'2022-02-25 14:41:50.719463','2022-02-25 14:41:50.719463',NULL),(74,'zy8GUbeXjD8TBMd3ma4RYJyRlTAElI',74,1,28,'2022-02-25 14:44:58.723845','2022-02-25 14:44:58.723845',NULL),(75,'BK0AUhACy8U71np23DX6xRBliJhePN',75,1,26,'2022-02-25 14:45:50.202245','2022-02-25 14:45:50.202245',NULL),(76,'GEKeYs8SOOn5vIqtJOot9sjtEKNYm3',76,1,28,'2022-02-25 14:49:16.365467','2022-02-25 14:49:16.365467',NULL),(77,'Yt0lRwBbJ1QMM7N7ho7GK2jxhr82t7',77,1,28,'2022-02-25 14:57:13.833376','2022-02-25 14:57:13.833376',NULL),(78,'TmDHqVcitqOUHXGHPvbV7NhmEwREzh',78,1,26,'2022-02-25 15:05:55.745791','2022-02-25 15:05:55.745791',NULL),(79,'VnBuvOjA4qOUyJODT3YgURuapzFuyJ',79,1,28,'2022-02-25 15:06:45.846670','2022-02-25 15:06:45.846670',NULL),(80,'dDJMWL6JUw0n3O9XefvH77QHElLBku',80,1,26,'2022-02-25 15:07:13.325914','2022-02-25 15:07:13.326415',NULL),(81,'fEupScnanR8aJnAOrvKLvMHM01PwfJ',81,1,28,'2022-02-25 15:07:52.698944','2022-02-25 15:07:52.698944',NULL),(82,'67ncDzmbJ0R2oLIjaK1k1MLqsV8ELK',82,1,26,'2022-02-25 15:08:24.462206','2022-02-25 15:08:24.462206',NULL),(83,'ttgdE2hjr9igdkyp2kqZyI5auVAQ2a',83,1,28,'2022-02-25 15:09:13.686272','2022-02-25 15:09:13.686272',NULL),(84,'3BiBonbon08aag8LFJJJvk0c0Z8PXo',84,1,33,'2022-02-25 15:09:38.176891','2022-02-25 15:09:38.176891',NULL),(85,'4cyqq6AjWqW6OcjsPocSPFJGe1JRTL',85,1,28,'2022-02-25 15:10:10.666904','2022-02-25 15:10:10.667404',NULL),(86,'KIb2loRwOflDkfEgLawxNMFlnbkS74',86,1,33,'2022-02-25 15:10:51.502586','2022-02-25 15:10:51.502586',NULL),(87,'zzGcr1fXs2jsC4ExiTmQTJtYqpLevx',87,1,28,'2022-02-25 15:12:55.245380','2022-02-25 15:12:55.245380',NULL),(88,'yCinmft9r9QoBawKuvnS8uRz3HderI',88,1,28,'2022-02-27 12:55:48.243912','2022-02-27 12:55:48.243912',NULL),(89,'7f3ULuVSOLGENw492aoJjIEfR1STKy',89,1,26,'2022-02-27 13:41:06.682274','2022-02-27 13:41:06.682274',NULL),(90,'o9ym9wvICdf5L1XbZ7oMge46fH6RnK',90,1,27,'2022-02-27 13:42:14.515405','2022-02-27 13:42:14.515405',NULL),(91,'9qvyLtixGjc5GSv9dTe6FQNkUNMtjv',91,1,26,'2022-02-27 13:44:39.390032','2022-02-27 13:44:39.390032',NULL),(92,'fr2b9jDJw6ig3kJR9rCj0CdPwo7L5m',92,1,35,'2022-03-09 13:24:55.990389','2022-03-09 13:24:55.991390',NULL),(93,'CAobXLh3x8pwQrbwMGCuZxscMHbjhH',93,1,26,'2022-03-09 14:20:58.058321','2022-03-09 14:20:58.058321',NULL),(94,'N27rG3sBRZVxRgHqovhriDDOLFRaxN',94,1,26,'2022-03-31 13:31:04.402689','2022-03-31 13:31:04.402689',NULL),(95,'S1jFsGFGAgA949F0qJZcunINCefc9N',95,1,28,'2022-03-31 14:06:09.669588','2022-03-31 14:06:09.669588',NULL),(96,'34xYVvS7sJAybgtKbYKirlUQKwjJkV',96,1,26,'2022-03-31 14:18:03.529431','2022-03-31 14:18:03.529431',NULL),(97,'1AMLVjT9eivx2TBs7ejJHBMY6EzRsc',97,1,1,'2022-04-17 07:37:10.971386','2022-04-17 07:37:10.972387',NULL),(98,'BOcxmgYqOL69fikFlXGcQy7mXEryX1',98,1,36,'2022-05-08 02:37:29.175822','2022-05-08 02:37:29.175822',NULL),(99,'arwczJPmmApPEaeFjEElt6Qv6ZwKSm',99,1,36,'2022-05-08 08:00:43.490713','2022-05-08 08:00:43.490713',NULL),(100,'x3q8pL1OeR3f9HpmkedVO86eSZ8vyR',100,1,36,'2022-05-08 08:09:58.903939','2022-05-08 08:09:58.903939',NULL),(101,'ue715aNTrPNRxR6Rh53LQfwH1rz6Jg',101,1,26,'2022-05-08 08:14:29.042046','2022-05-08 08:14:29.042046',NULL),(102,'DBMpXSXPo8V1y6PODfOCaA3dVbduBi',102,1,26,'2022-05-15 09:30:21.244401','2022-05-15 09:30:21.244401',NULL),(103,'47lsaGWyGoLCCF2jy0ENWpi320zhA2',103,1,26,'2022-05-15 12:36:56.244343','2022-05-15 12:36:56.244343',NULL),(104,'vFvdqzTwiLwksm3fX2ixf4ORN5nDqn',104,1,36,'2022-05-21 12:22:30.982275','2022-05-21 12:22:30.982275',NULL),(105,'1OXjNKOzRihPPdfvLRH6V75PTjkNcs',105,1,28,'2022-05-21 12:23:09.435162','2022-05-21 12:23:09.435162',NULL),(106,'YQap4Kapp1AYFoHR8L2m9J9RVdQumv',106,1,25,'2022-05-21 12:23:42.179683','2022-05-21 12:23:42.180184',NULL),(107,'cX9TIblHXOMCvJMtgQxoJ2re4Crumc',107,1,27,'2022-05-21 12:24:13.694962','2022-05-21 12:24:13.694962',NULL),(108,'yHCf0IrJ9LPiThCKhh5Gu8oFyzFQji',108,1,36,'2022-05-21 12:24:43.062801','2022-05-21 12:24:43.062801',NULL),(109,'uivC98MosQQ6gICbdYYXKNR4DyNDnr',109,1,27,'2022-05-21 12:36:17.224770','2022-05-21 12:36:17.224770',NULL),(110,'osdG7LmpYyxfMepeBd4Je4PSz5pbZ3',110,1,26,'2022-05-21 12:57:44.036672','2022-05-21 12:57:44.036672',NULL),(111,'fwRuVsCTWt2BWyTxQ0qakLQlKdqhg3',111,1,1,'2022-05-22 12:07:01.899863','2022-05-22 12:07:01.899863',NULL),(112,'nk7cdAu7HNScnbyW4GPjzbKlh7VTkW',112,1,25,'2022-05-22 12:07:46.376970','2022-05-22 12:07:46.376970',NULL),(113,'ZHt1oUj1FZ6rE7TiLNmnBkphj2hvOU',113,1,31,'2022-05-22 12:13:29.091788','2022-05-22 12:13:29.091788',NULL),(114,'D1EJPq2Cvs8YUONF6gXoqLfeHaTdoP',114,1,32,'2022-05-22 12:14:30.839772','2022-05-22 12:14:30.839772',NULL),(115,'4LdEomLyYyHpmPhadts2lHJqQjaYIF',115,1,30,'2022-05-22 12:15:01.610899','2022-05-22 12:15:01.610899',NULL),(116,'Mw40mk7ica5MJF7miMJL0c1HmmSMMt',116,1,29,'2022-05-22 12:15:24.366965','2022-05-22 12:15:24.366965',NULL),(117,'xIICpuhIb0WPqfJqf5gO58L9IItWd9',117,1,36,'2022-05-22 12:16:10.610437','2022-05-22 12:16:10.610437',NULL),(118,'LSp71dg18XWmXZepGoHYV7IETVtwlN',118,1,26,'2022-05-22 12:17:20.711058','2022-05-22 12:17:20.712065',NULL),(119,'HydLMRXgWPDuIVM0XxKHNuaooLi9pI',119,1,27,'2022-05-22 12:21:25.593234','2022-05-22 12:21:25.593234',NULL),(120,'S5ewXphLtXTbbmincwLkqjtdFK9HcF',120,1,36,'2022-05-22 12:22:36.447800','2022-05-22 12:22:36.447800',NULL),(121,'gxjAaXuQk8cfpDz5z1ado79kSIgfrY',121,1,29,'2022-05-22 12:27:00.495150','2022-05-22 12:27:00.495150',NULL),(122,'nJV4hFZ5CMGljkAHqIqUgxKuPhaHJL',122,1,28,'2022-05-22 12:28:01.773081','2022-05-22 12:28:01.773081',NULL),(123,'kGEoJMVbckoluqnNsnIu7G25w2HRwj',123,1,28,'2022-05-22 12:28:26.496318','2022-05-22 12:28:26.497319',NULL),(124,'GDP7kfsqRSeQhIAPALQ0Qe3yxPQtDQ',124,1,27,'2022-05-22 12:28:42.008445','2022-05-22 12:28:42.009467',NULL),(125,'60V8YaDLtO1u7PdLbzCrHi1nnd69V3',125,1,36,'2022-05-22 12:29:17.945815','2022-05-22 12:29:17.945815',NULL),(126,'CbWaSmuO2Fi1r1XyYFQhFj6k2qCCD4',126,1,27,'2022-05-22 12:44:23.282777','2022-05-22 12:44:23.282777',NULL),(127,'vnhTptdkMCwEcLxS2QTTZE5g65GPeh',127,1,36,'2022-05-22 12:44:57.993797','2022-05-22 12:44:57.993797',NULL),(128,'JGCJCsMwlZr5CosfJPoW2nWediOu0m',128,1,36,'2022-05-30 13:37:33.379255','2022-05-30 13:37:33.379255',NULL),(129,'sU3J7vQCXKDoVmqdsKe8rJWiAnXhMP',129,1,27,'2022-05-30 13:54:32.040339','2022-05-30 13:54:32.040339',NULL),(130,'3M7cyOyPENarUWDMSBRxwBl5khDXxF',130,1,29,'2022-05-30 13:55:22.632448','2022-05-30 13:55:22.632947',NULL),(131,'xvq5uHeEb3AGS5sQTNfucLjfCVsAls',131,1,30,'2022-05-30 13:55:36.822159','2022-05-30 13:55:36.822159',NULL),(132,'8FDxTNnT3HIXDFUjGQXok66GadxKN9',132,1,31,'2022-05-30 13:56:17.535243','2022-05-30 13:56:17.535243',NULL),(133,'PUVHKjiplt342cqNCiDvOiibGdOlUw',133,1,37,'2022-05-30 13:56:49.335612','2022-05-30 13:56:49.335612',NULL),(134,'N2trP0LvLeWd99Qy7BxHIzizqWzcVs',134,1,32,'2022-05-30 13:57:36.208537','2022-05-30 13:57:36.208537',NULL),(135,'2ZLnxZVQYJG9POHtz7IqPspXFlxPkh',135,1,30,'2022-05-30 13:58:21.127153','2022-05-30 13:58:21.127153',NULL),(136,'2id5oFB6TuSVB9AVKVsaQBniTXQBRf',136,1,28,'2022-05-30 14:03:07.208500','2022-05-30 14:03:07.208500',NULL),(137,'Dfbtz8pgmn8OjXKzW3skitQs8W4M3N',137,1,27,'2022-05-30 14:04:14.090613','2022-05-30 14:04:14.090613',NULL),(138,'SyhlkYenIa4yHqdtkD9q6fH7h4Zlrz',138,1,30,'2022-05-30 14:04:57.289298','2022-05-30 14:04:57.289298',NULL),(139,'R2BeovGg66aPnGk1eMkLUJhwYP4aY9',139,1,27,'2022-05-30 14:06:38.605180','2022-05-30 14:06:38.605180',NULL),(140,'aQ0nokZS5J9MMAB2PYhey7p0MAnkU2',140,1,30,'2022-05-30 14:08:28.645151','2022-05-30 14:08:28.645151',NULL),(141,'rrwtzMQuax30GD5j07422pyzvpWrVM',141,1,36,'2022-05-30 14:10:35.403035','2022-05-30 14:10:35.403035',NULL),(142,'Jp50CFFtHcQp4dqeENzUoUCuimYLm2',142,1,33,'2022-05-30 14:12:45.597134','2022-05-30 14:12:45.597134',NULL),(143,'ZcCb6AJO3r9Yh3ZNWI1cC9Sap9Iii4',143,1,35,'2022-05-30 14:15:51.946686','2022-05-30 14:15:51.947187',NULL),(144,'Pp46DBA6RYxTqRIQFKsQS6ZhaRx4jL',144,1,28,'2022-05-30 14:17:29.943940','2022-05-30 14:17:29.943940',NULL),(145,'1t7TDtYK6PLwJariLEUT76cY6wvoDV',145,1,26,'2022-05-30 14:18:32.432035','2022-05-30 14:18:32.432035',NULL),(146,'vYe273tNRmSV6AD0mOFU6nW8r8Vfem',146,1,28,'2022-05-30 14:19:41.233820','2022-05-30 14:19:41.233820',NULL),(147,'IyqULwWQ5n0m7Pv7fi6gN1cBe65ouI',147,1,36,'2022-05-30 14:23:22.762613','2022-05-30 14:23:22.762613',NULL),(148,'RHmM3Fk1BT8xmDkCWQhOvkrtOD713Q',148,1,36,'2022-05-30 14:25:36.067737','2022-05-30 14:25:36.067737',NULL),(149,'KJJgw8roX7ftdYzVuFvEM2LIPtp9i7',149,1,29,'2022-05-30 14:26:29.548878','2022-05-30 14:26:29.548878',NULL),(150,'nhlvGAGLw0czZTCEgo0EuydqfshURg',150,1,30,'2022-05-30 14:26:44.486335','2022-05-30 14:26:44.486335',NULL),(151,'ppC5fUltrJ0lDgn0bGQITdlRIwHQMw',151,1,28,'2022-05-30 14:27:04.060999','2022-05-30 14:27:04.060999',NULL),(152,'F5XtdAbvyrQepPJF5znCgqw9fDXdlM',152,1,1,'2022-05-31 06:54:54.188929','2022-05-31 06:54:54.188929',NULL),(153,'Ytk2OaxND1RkGzLi4S9WVYx2GHiRPw',153,1,36,'2022-05-31 07:00:40.171346','2022-05-31 07:00:40.171346',NULL),(154,'MkHaj2CgakFH1qEHUbbxjx0FbItyDn',154,1,27,'2022-05-31 07:06:32.623259','2022-05-31 07:06:32.623759',NULL),(155,'qHltXZZRIGNlEzFwoDNVOdDLbR7Nsv',155,1,28,'2022-05-31 07:07:31.303117','2022-05-31 07:07:31.303117',NULL),(156,'1wIZljs1Ep08Xxyi0gvnXsgvas1k4y',156,1,36,'2022-05-31 07:08:04.945383','2022-05-31 07:08:04.945383',NULL),(157,'NcUtJhMSF6fnGbBGqmEwCvykp6AeaL',157,1,28,'2022-05-31 07:09:13.904488','2022-05-31 07:09:13.904488',NULL),(158,'tQ5PEhHk3kr2LklWMWm6XFmZwdVJ20',158,1,36,'2022-05-31 07:12:35.826884','2022-05-31 07:12:35.826884',NULL),(159,'YWarVTQLaRW96wjQwGNNZ4cCbJQTwc',159,1,28,'2022-05-31 07:15:09.911199','2022-05-31 07:15:09.911199',NULL),(160,'qZliaD66E5e5HwU9WOWu154dLnKoa4',160,1,36,'2022-05-31 07:15:25.372845','2022-05-31 07:15:25.372845',NULL),(161,'IF8eLDPNcEPUZQSw7zpiVUpPXS3N3h',161,1,38,'2022-05-31 07:21:14.753827','2022-05-31 07:21:14.753827',NULL),(162,'tQN7Orn3v9VVjN94jB9TwNu8ESL1CP',162,1,36,'2022-05-31 07:27:47.986647','2022-05-31 07:27:47.986647',NULL),(163,'o3V4ECDWif2h6e4XF1hCxVC2ifaadQ',163,1,26,'2022-05-31 07:47:04.225315','2022-05-31 07:47:04.225315',NULL),(164,'T73kqrBteL2ZRfbGOe3ngc59yU3cOd',164,1,38,'2022-05-31 07:48:50.583860','2022-05-31 07:48:50.583860',NULL),(165,'IdnXFU3pEawfXy0pqv6RZ41Ye0qvtZ',165,1,26,'2022-05-31 07:52:10.793990','2022-05-31 07:52:10.793990',NULL),(166,'1PhCTI0pU954FcHkEcoIQSn4bWTfx2',166,1,28,'2022-05-31 07:54:35.360046','2022-05-31 07:54:35.360046',NULL),(167,'fG5B07Pyt4nlgXZDjfLCIgwR1ezErY',167,1,36,'2022-05-31 08:07:44.052499','2022-05-31 08:07:44.052499',NULL),(168,'O0ifcFpDslekjFIQFaa6DVQrtj2xs5',168,1,28,'2022-05-31 08:10:24.957572','2022-05-31 08:10:24.957572',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'abashipdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-13 20:23:57
