-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: dinghy
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Current Database: `dinghy`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dinghy` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dinghy`;

--
-- Table structure for table `benchmark`
--

DROP TABLE IF EXISTS `benchmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benchmark` (
  `size` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `trials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benchmark`
--

LOCK TABLES `benchmark` WRITE;
/*!40000 ALTER TABLE `benchmark` DISABLE KEYS */;
INSERT INTO `benchmark` VALUES (3,782302,400),(5,780592,400),(7,780264,400),(9,780341,400),(11,790010,400),(13,791180,400),(15,791850,400),(17,791620,400),(19,791769,400),(21,801571,400),(23,801899,400),(25,803255,400),(27,802433,400),(29,804716,400),(31,804074,400),(33,806976,400),(35,807293,400),(37,806919,400),(39,806147,400),(41,808089,400),(43,819977,400),(45,821056,400),(47,822440,400),(49,824795,400),(51,825692,400);
/*!40000 ALTER TABLE `benchmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dinghytimes`
--

DROP TABLE IF EXISTS `dinghytimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dinghytimes` (
  `size` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `trials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinghytimes`
--

LOCK TABLES `dinghytimes` WRITE;
/*!40000 ALTER TABLE `dinghytimes` DISABLE KEYS */;
INSERT INTO `dinghytimes` VALUES (3,1057966,1621),(5,964589,1621),(7,936084,1621),(9,924541,1621),(11,927658,1621),(13,928157,1621),(15,939783,1621),(17,948419,1621),(19,960228,1621),(21,975000,1621),(23,986745,1621),(25,1001846,1621),(27,1015438,1621),(29,1030651,1621),(31,1046851,1621),(33,1061440,1621),(35,1076627,1621),(37,1092556,1621),(39,1106721,1621),(41,1122479,1621),(43,1136842,1621),(45,1156466,1621),(47,1170001,1621),(49,1187698,1621),(51,1202922,1621);
/*!40000 ALTER TABLE `dinghytimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rafttimes`
--

DROP TABLE IF EXISTS `rafttimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rafttimes` (
  `size` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `trials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rafttimes`
--

LOCK TABLES `rafttimes` WRITE;
/*!40000 ALTER TABLE `rafttimes` DISABLE KEYS */;
INSERT INTO `rafttimes` VALUES (3,1216420,1906),(5,1117308,1906),(7,1080989,1906),(9,1079022,1906),(11,1083937,1906),(13,1095992,1906),(15,1106219,1906),(17,1122288,1906),(19,1139928,1906),(21,1156956,1906),(23,1172411,1906),(25,1193219,1906),(27,1209051,1906),(29,1229147,1906),(31,1247552,1906),(33,1263200,1906),(35,1284367,1906),(37,1302321,1906),(39,1320634,1906),(41,1340949,1906),(43,1359794,1906),(45,1377397,1906),(47,1396307,1906),(49,1413741,1906),(51,1434859,1906);
/*!40000 ALTER TABLE `rafttimes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-12 17:32:20
