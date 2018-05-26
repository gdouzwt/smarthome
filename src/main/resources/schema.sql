-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: smarthome
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `device_id` varchar(128) CHARACTER SET latin1 NOT NULL,
  `device_name` varchar(45) CHARACTER SET latin1 NOT NULL,
  `category` varchar(45) CHARACTER SET latin1 NOT NULL,
  `zone` varchar(45) CHARACTER SET latin1 NOT NULL,
  `state` int(11) DEFAULT NULL,
  `description` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`device_id`),
  UNIQUE KEY `device_id_UNIQUE` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES ('grapeln-iphone','iphone','communication','tianjin',1,'working fun'),('wentao','android','communication','zhanjian',2,'awesome');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices_options`
--

DROP TABLE IF EXISTS `devices_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices_options` (
  `option_id` int(11) NOT NULL,
  `device_id` varchar(45) DEFAULT NULL,
  `devices_options` json DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices_options`
--

LOCK TABLES `devices_options` WRITE;
/*!40000 ALTER TABLE `devices_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `devices_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electricity`
--

DROP TABLE IF EXISTS `electricity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `electricity` (
  `measurement_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`measurement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electricity`
--

LOCK TABLES `electricity` WRITE;
/*!40000 ALTER TABLE `electricity` DISABLE KEYS */;
/*!40000 ALTER TABLE `electricity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `functionalities`
--

DROP TABLE IF EXISTS `functionalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `functionalities` (
  `func_id` int(11) NOT NULL,
  `func_name` varchar(45) DEFAULT NULL,
  `func_category` varchar(45) DEFAULT NULL,
  `func_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`func_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `functionalities`
--

LOCK TABLES `functionalities` WRITE;
/*!40000 ALTER TABLE `functionalities` DISABLE KEYS */;
/*!40000 ALTER TABLE `functionalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `humidity`
--

DROP TABLE IF EXISTS `humidity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `humidity` (
  `measurement_id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_id` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `value_int` int(11) DEFAULT NULL,
  PRIMARY KEY (`measurement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `humidity`
--

LOCK TABLES `humidity` WRITE;
/*!40000 ALTER TABLE `humidity` DISABLE KEYS */;
/*!40000 ALTER TABLE `humidity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `illumination`
--

DROP TABLE IF EXISTS `illumination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `illumination` (
  `measurement_id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_id` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `value_int` int(11) DEFAULT NULL,
  PRIMARY KEY (`measurement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `illumination`
--

LOCK TABLES `illumination` WRITE;
/*!40000 ALTER TABLE `illumination` DISABLE KEYS */;
/*!40000 ALTER TABLE `illumination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informations`
--

DROP TABLE IF EXISTS `informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informations` (
  `info_id` int(11) NOT NULL,
  `info_category` varchar(45) NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informations`
--

LOCK TABLES `informations` WRITE;
/*!40000 ALTER TABLE `informations` DISABLE KEYS */;
/*!40000 ALTER TABLE `informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motion_detection`
--

DROP TABLE IF EXISTS `motion_detection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motion_detection` (
  `event_id` int(11) NOT NULL,
  `motion_state` varchar(45) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `motion_detectioncol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motion_detection`
--

LOCK TABLES `motion_detection` WRITE;
/*!40000 ALTER TABLE `motion_detection` DISABLE KEYS */;
/*!40000 ALTER TABLE `motion_detection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(45) CHARACTER SET latin1 NOT NULL,
  `description` varchar(145) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules` (
  `rule_id` int(11) NOT NULL,
  `rule_name` varchar(45) DEFAULT NULL,
  `rule_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scenarios`
--

DROP TABLE IF EXISTS `scenarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scenarios` (
  `scenario_id` int(11) NOT NULL,
  `scenario_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`scenario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenarios`
--

LOCK TABLES `scenarios` WRITE;
/*!40000 ALTER TABLE `scenarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `scenarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temperature`
--

DROP TABLE IF EXISTS `temperature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temperature` (
  `measurement_id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_id` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `value_int` int(11) DEFAULT NULL,
  PRIMARY KEY (`measurement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temperature`
--

LOCK TABLES `temperature` WRITE;
/*!40000 ALTER TABLE `temperature` DISABLE KEYS */;
INSERT INTO `temperature` VALUES (1,'28-000005677a29','2018-05-02','10:39:02',1525228700,'28.5',28500),(2,'28-000006634695','2018-05-02','10:39:02',1525228700,'29.25',29250),(3,'28-0000052a80f2','2018-05-02','10:39:02',1525228700,'29.312',29312),(4,'28-000005677a29','2018-05-02','11:25:26',1525231500,'29.0',29000),(5,'28-000006634695','2018-05-02','11:25:26',1525231500,'29.437',29437),(6,'28-0000052a80f2','2018-05-02','11:25:26',1525231500,'29.5',29500),(7,'28-000005677a29','2018-05-02','12:44:08',1525236200,'30.312',30312),(8,'28-000006634695','2018-05-02','12:44:08',1525236200,'30.187',30187),(9,'28-0000052a80f2','2018-05-02','12:44:08',1525236200,'30.25',30250);
/*!40000 ALTER TABLE `temperature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_user_role_role1_idx` (`role_id`),
  CONSTRAINT `fk_user_role_role1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) CHARACTER SET latin1 NOT NULL,
  `password` varchar(45) CHARACTER SET latin1 NOT NULL,
  `email` varchar(45) CHARACTER SET latin1 NOT NULL,
  `avatar` varchar(120) CHARACTER SET latin1 NOT NULL DEFAULT '"avatar/default.png"',
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `id_UNIQUE` (`user_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  CONSTRAINT `fk_user_user_role` FOREIGN KEY (`user_id`) REFERENCES `user_role` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-25 17:18:21
