-- MySQL dump 10.13  Distrib 5.1.69, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: qol_dev
-- ------------------------------------------------------
-- Server version	5.1.69

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
-- Table structure for table `House1_activities`
--

DROP TABLE IF EXISTS `House1_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `House1_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `activity` text NOT NULL,
  `since` datetime NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118506 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `House1_activities`
--

LOCK TABLES `House1_activities` WRITE;
/*!40000 ALTER TABLE `House1_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `House1_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `House1_data`
--

DROP TABLE IF EXISTS `House1_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `House1_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` datetime NOT NULL,
  `house_id` text NOT NULL,
  `sensor_id` varchar(64) DEFAULT NULL,
  `data` varchar(16) NOT NULL,
  `sensor_event_id` int(11) NOT NULL,
  `Battery` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54595 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `House1_data`
--

LOCK TABLES `House1_data` WRITE;
/*!40000 ALTER TABLE `House1_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `House1_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `House1_sensor`
--

DROP TABLE IF EXISTS `House1_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `House1_sensor` (
  `sensor_id` varchar(64) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `House1_sensor`
--

LOCK TABLES `House1_sensor` WRITE;
/*!40000 ALTER TABLE `House1_sensor` DISABLE KEYS */;
INSERT INTO `House1_sensor` VALUES ('A1','mouvement','Salle de bain'),('A2','mouvement','salon'),('A3','mouvement','chambre'),('A4','mouvement','toilettes'),('E7C30','ouverture','porte d entrÃ©e');
/*!40000 ALTER TABLE `House1_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `House2_activities`
--

DROP TABLE IF EXISTS `House2_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `House2_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `activity` text NOT NULL,
  `since` datetime NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125219 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `House2_activities`
--

LOCK TABLES `House2_activities` WRITE;
/*!40000 ALTER TABLE `House2_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `House2_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `House2_data`
--

DROP TABLE IF EXISTS `House2_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `House2_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` datetime NOT NULL,
  `house_id` text NOT NULL,
  `sensor_id` varchar(64) DEFAULT NULL,
  `data` varchar(16) NOT NULL,
  `sensor_event_id` int(11) NOT NULL,
  `Battery` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=789 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `House2_data`
--

LOCK TABLES `House2_data` WRITE;
/*!40000 ALTER TABLE `House2_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `House2_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `House2_sensor`
--

DROP TABLE IF EXISTS `House2_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `House2_sensor` (
  `sensor_id` varchar(64) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `House2_sensor`
--

LOCK TABLES `House2_sensor` WRITE;
/*!40000 ALTER TABLE `House2_sensor` DISABLE KEYS */;
/*!40000 ALTER TABLE `House2_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab_data`
--

DROP TABLE IF EXISTS `Lab_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` datetime NOT NULL,
  `house_id` text NOT NULL,
  `sensor_id` varchar(5) NOT NULL,
  `data` varchar(16) NOT NULL,
  `sensor_event_id` int(11) NOT NULL,
  `Battery` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8210 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab_data`
--

LOCK TABLES `Lab_data` WRITE;
/*!40000 ALTER TABLE `Lab_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lab_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab_sensor`
--

DROP TABLE IF EXISTS `Lab_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab_sensor` (
  `sensor_id` varchar(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab_sensor`
--

LOCK TABLES `Lab_sensor` WRITE;
/*!40000 ALTER TABLE `Lab_sensor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lab_sensor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-10 14:12:53
