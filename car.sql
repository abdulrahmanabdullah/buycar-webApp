-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: car
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `customer_id` int(11) NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'aa','bb','d@ex',123,'cash'),(2,'javaNrd','javaGeek','javaNrd@javaNrd.com',44454,'cash'),(3,'adf','ffff','te@te.com',3433,'cashed'),(4,'ccc','xxx','fdadf',548,'xdaf'),(5,'tt','ee','dfae',956,'visa'),(6,'hanno','we','canDo',5852,'visa'),(7,'fasde','naif','kdfj',78,'cash'),(8,'com','net','net@net.com',5421,'cash'),(9,'wqw','jjj','int@Integer.com',1130,'visa'),(10,'tt','yy','xx',44152,'visa'),(11,'ad','few','cvzcv',1456478,'cxvasdfgf'),(12,'fasd','cvz','dfge',658,'dfsa'),(13,'wer','kdfj','zvckjfds',852,'visa'),(14,'wer','adz','kadsjfew',8965,'adfs'),(15,'qer','java','java',12365,'java'),(16,'zcx','java','java',8521,'java'),(18,'test1','test2','test1@test1.com',89653,'visa'),(19,'test2','test2','test2@com',569,'dfas'),(20,'test3','test3','test3@test3.com',456,'visa'),(21,'test4','test4','test4@com',456,'cash'),(22,'test5','test5','test5',565,'visa'),(23,'test6','test6','test6@test6.com',123,'visa'),(24,'test7','test7','test7',528,'visa'),(25,'test8','test8','test8',125,'cash'),(26,'test9','test9','test9',456,'master card'),(27,'test10','test10','test10',856,'master card'),(28,'test11','test11','test11',741,'vias'),(29,'test12','test12','test12',852,'visa'),(30,'test13','test13','test13',452,'visa'),(31,'test14','test14','test14',412,'master card'),(33,'test15','test15','test15',101,'cash'),(34,'test16','test16','test16',676,'master card'),(35,'test17','test17','test17',856,'cash'),(36,'test18','test18','test18',520,'master card'),(37,'test19','test19','test19',450,'cash'),(38,'test120','test20','test20',256,'cash'),(39,'test21','test21','test21',789,'visa'),(40,'test22','test22','test22',5252,'cash'),(41,'ttest23','test32','test23',225,'visa'),(42,'test24','test24','test24',252,'visa'),(43,'test25','test25','test25',562,'visa'),(44,'test26','test26','test26',2252,'visa'),(45,'test27','test28','test28',8827,'cash'),(46,'test28','test28','test28',252,'visa'),(47,'test29','test29','test29',568,'master'),(48,'test30','test0','test30',325,'visa'),(49,'test31','test31','test31',856,'master card'),(50,'test32','test32','test32',5852,'adfs'),(51,'test33','test33','test33',562,'master card'),(52,'test34','test34','test34',5698,'visa'),(53,'test35','test35','test35',569,'vi'),(54,'test36','test3','test36',556,'cahs'),(55,'test37','test39','test37',5698,'visa'),(56,'test38','test38','test38',5336,'cash'),(57,'test39','test39','test39',5236,'cash'),(58,'test40','test40','test40',2563,'visa'),(59,'test43','teest34','test43',565,'visa'),(60,'test45','test45','test45',568,'5852'),(61,'test48','test48','test48',5669,'visa'),(66,'test50','test50','test50',5225,'master card'),(68,'test70','test70','test',452,'master card'),(69,'test72','test28','test',5623,'master card'),(70,'test77','test88','test58',5265,'visa'),(71,'asdf','sdaf','sdfa',8552,'visa'),(72,'test80','test80','test80',5236,'visa'),(73,'fasd','dfasd','asdf',856,'master card'),(74,'dfa','dfas','sdfas',5225,'fasd'),(78,'kasjdkldjk','kjkasldj ','kjkajds akdj',8552,'dasjk asd'),(80,'afsd asdf','asdf dsf','ekrjw',1236,'master card'),(81,'asdf','asdf','dsfa',8855,'asfdasd'),(82,'asdfa','sdfas','safdas asdf',5225,'adsf '),(83,'asdf','asdf','asdf',852,'fasdf'),(84,'askdj','asdkfj','asdkfj',5454245,'asd'),(85,'afsdf','asdf','asdf',852,'asdf'),(86,'asdf','asdf','adsfa',8555,'adsf'),(87,'asdf','dsaf','asdf',7555,'fasd'),(88,'fas','asdf','sdfda',8855,'asdf'),(89,'asdfa','asdf','asdf',88559,'sadf'),(90,'adfadf','asdfas','asdfa',5265,'visa'),(91,'Abdulrahman','Abdullah','nfs056@gmail.com',540882677,'Visa');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoCar`
--

DROP TABLE IF EXISTS `infoCar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoCar` (
  `id` int(11) NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `cylinder` int(11) DEFAULT NULL,
  `date_order` timestamp NULL DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `infoCar_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `info` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoCar`
--

LOCK TABLES `infoCar` WRITE;
/*!40000 ALTER TABLE `infoCar` DISABLE KEYS */;
INSERT INTO `infoCar` VALUES (0,'2015','white',4,6,NULL,1),(1,'2015','white',4,6,NULL,1),(2,'2016','Black',4,6,NULL,1),(3,'2000','gray',8,6,'2017-05-15 21:00:00',2),(5,'200','b',4,6,'2021-02-01 21:00:00',61),(6,'200','b',4,6,'2021-02-01 21:00:00',89),(7,'2010','red',8,8,'2017-05-23 21:00:00',18),(8,'2000','green',4,6,'2017-05-23 21:00:00',66),(9,'2000','blue',4,8,'2017-05-24 09:24:00',70),(10,'555','grow',10,12,'2017-05-24 09:36:00',71),(11,'2017','white',4,6,'2017-05-25 09:28:00',73),(15,'2111','red',4,6,'2017-05-25 10:36:00',85),(18,'2015','white',5,6,'2017-05-28 21:55:00',91),(21,'2015','sadf',6,6,'2017-05-25 10:50:00',89),(88,'2014','yellow',10,12,'2017-05-26 08:31:00',90);
/*!40000 ALTER TABLE `infoCar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-01  1:30:30
