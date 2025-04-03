-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: sqlproject
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
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent` (
  `agent_id` int NOT NULL,
  `agent_name` varchar(40) NOT NULL,
  `agent_number` varchar(100) NOT NULL,
  `agent_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (1,'William Alvarado','-4932','kellywanda@bradley.com'),(2,'Kelly Fitzgerald','753429085','bobby33@turner-burton.info'),(3,'Terry George','(892)284-9832x10207','robin65@erickson.net'),(4,'Dennis Fry','4692847677','anthonyrusso@yahoo.com'),(5,'Angela Jones','660-893-6014x56394','yateskeith@gonzales-jackson.com'),(6,'Raymond Carpenter','001-949-343-5194x53716','arroyoashley@yahoo.com'),(7,'Amy Carter','+1-346-892-7111x422','pattersonlinda@gmail.com'),(8,'Vickie Singh','018-848-4566x640','dlynch@yahoo.com'),(9,'David Turner','+1-087-975-8931x0661','gardnertracy@jones-valdez.com'),(10,'Kim Bradley','716.899.9387x096','pbolton@gmail.com'),(11,'Emily Mcmahon','163-239-8791x94051','petersonrobin@hotmail.com'),(12,'Diana Bond','9836627112','uarcher@gmail.com'),(13,'Matthew Bailey','001-008-675-4315x5356','lspencer@gmail.com'),(14,'Elizabeth Johnson','397-403-0963x585','brian43@hotmail.com'),(15,'Sarah Hubbard','(894)313-8176x48266','christopherroy@hall-walton.com'),(16,'Katelyn Berry','001-469-543-3809x46201','littlekurt@jones.net'),(17,'Sandra Bradley','+1-009-441-2035x5740','melissa17@gmail.com'),(18,'Michael Baldwin','251-322-7391','wcummings@robinson-green.com'),(19,'Daniel Porter','001-400-167-0911x8432','jeffrey10@gmail.com'),(20,'Renee Clark','226-510-4826x0529','nberger@johnson.com'),(21,'Susan Garcia','+1-048-640-3595x9465','kimberlywyatt@green.biz'),(22,'John Chan','(439)880-4556x0121','julie43@yahoo.com'),(23,'Cheryl Moses','919.260.8161x081','webersherry@thompson.com'),(24,'Bradley Reynolds','+1-943-852-8376x9817','kathleen17@dawson-mueller.org'),(25,'Tracy Robinson','359-638-6152x24111','amandasmith@gmail.com'),(26,'Robert Cox','857.000.4322x88255','jenniferpaul@mann-patterson.org'),(27,'Whitney Cunningham','483-466-8119','heathergonzales@wiggins.com'),(28,'Christopher Holden','148.393.3476x807','dharvey@thomas-sheppard.com'),(29,'William Mcpherson','027.137.6324x36654','krystalpadilla@potts.com'),(30,'Matthew Lopez','(828)574-0867x173','iclark@silva.net');
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-03 11:57:24
