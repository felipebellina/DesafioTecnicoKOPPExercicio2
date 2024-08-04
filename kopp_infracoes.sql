-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: kopp_infracoes
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `infracao`
--

DROP TABLE IF EXISTS `infracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infracao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_infracao` datetime DEFAULT NULL,
  `equipamento` varchar(50) DEFAULT NULL,
  `velocidade_permitida` int DEFAULT NULL,
  `velocidade_medida` int DEFAULT NULL,
  `valida` tinyint(1) DEFAULT NULL,
  `remessa_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_infracao_remessa_idx` (`remessa_id`),
  CONSTRAINT `fk_infracao_remessa` FOREIGN KEY (`remessa_id`) REFERENCES `remessa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=742 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infracao`
--

LOCK TABLES `infracao` WRITE;
/*!40000 ALTER TABLE `infracao` DISABLE KEYS */;
INSERT INTO `infracao` VALUES (62,'2023-08-02 15:00:00','Radar 6',60,88,1,14),(63,'2023-08-02 16:00:00','Radar 7',50,62,1,15),(64,'2023-08-02 17:00:00','Radar 8',70,78,1,16),(65,'2023-08-03 10:00:00','Radar 1',60,76,1,17),(66,'2023-08-03 11:00:00','Radar 2',60,81,0,18),(67,'2023-08-03 12:00:00','Radar 3',70,91,1,19),(85,'2023-08-05 14:00:00','Radar 5',60,69,0,13),(86,'2023-08-05 15:00:00','Radar 6',60,84,1,14),(87,'2023-08-05 16:00:00','Radar 7',50,60,1,15),(88,'2023-08-05 17:00:00','Radar 8',70,75,1,16),(89,'2023-08-06 10:00:00','Radar 1',60,78,1,17),(90,'2023-08-06 11:00:00','Radar 2',60,82,0,18),(91,'2023-08-06 12:00:00','Radar 3',70,95,1,19),(109,'2023-08-08 14:00:00','Radar 5',60,72,0,13),(110,'2023-08-08 15:00:00','Radar 6',60,88,1,14),(111,'2023-08-08 16:00:00','Radar 7',50,62,1,15),(112,'2023-08-08 17:00:00','Radar 8',70,78,1,16),(113,'2023-08-09 10:00:00','Radar 1',60,76,1,17),(114,'2023-08-09 11:00:00','Radar 2',60,81,0,18),(115,'2023-08-09 12:00:00','Radar 3',70,91,1,19),(133,'2023-08-11 14:00:00','Radar 5',60,69,0,13),(134,'2023-08-11 15:00:00','Radar 6',60,84,1,14),(135,'2023-08-11 16:00:00','Radar 7',50,60,1,15),(136,'2023-08-11 17:00:00','Radar 8',70,75,1,16),(137,'2023-08-12 10:00:00','Radar 1',60,78,1,17),(138,'2023-08-12 11:00:00','Radar 2',60,82,0,18),(139,'2023-08-12 12:00:00','Radar 3',70,95,1,19),(157,'2023-08-14 14:00:00','Radar 5',60,72,0,13),(158,'2023-08-14 15:00:00','Radar 6',60,88,1,14),(159,'2023-08-14 16:00:00','Radar 7',50,62,1,15),(160,'2023-08-14 17:00:00','Radar 8',70,78,1,16),(161,'2023-08-15 10:00:00','Radar 1',60,76,1,17),(162,'2023-08-15 11:00:00','Radar 2',60,81,0,18),(163,'2023-08-15 12:00:00','Radar 3',70,91,1,19),(181,'2023-08-17 14:00:00','Radar 5',60,69,0,13),(182,'2023-08-17 15:00:00','Radar 6',60,84,1,14),(183,'2023-08-17 16:00:00','Radar 7',50,60,1,15),(184,'2023-08-17 17:00:00','Radar 8',70,75,1,16),(185,'2023-08-18 10:00:00','Radar 1',60,78,1,17),(186,'2023-08-18 11:00:00','Radar 2',60,82,0,18),(187,'2023-08-18 12:00:00','Radar 3',70,95,1,19),(205,'2023-08-20 14:00:00','Radar 5',60,72,0,13),(206,'2023-08-20 15:00:00','Radar 6',60,88,1,14),(207,'2023-08-20 16:00:00','Radar 7',50,62,1,15),(208,'2023-08-20 17:00:00','Radar 8',70,78,1,16),(209,'2023-08-21 10:00:00','Radar 1',60,76,1,17),(210,'2023-08-21 11:00:00','Radar 2',60,81,0,18),(211,'2023-08-21 12:00:00','Radar 3',70,91,1,19),(229,'2023-08-23 14:00:00','Radar 5',60,69,0,13),(230,'2023-08-23 15:00:00','Radar 6',60,84,1,14),(231,'2023-08-23 16:00:00','Radar 7',50,60,1,15),(232,'2023-08-23 17:00:00','Radar 8',70,75,1,16),(233,'2023-08-24 10:00:00','Radar 1',60,78,1,17),(234,'2023-08-24 11:00:00','Radar 2',60,82,0,18),(235,'2023-08-24 12:00:00','Radar 3',70,95,1,19),(263,'2023-08-28 14:00:00','Radar 5',60,75,0,13),(264,'2023-08-28 15:00:00','Radar 6',60,90,1,14),(265,'2023-08-28 16:00:00','Radar 7',50,66,1,15),(266,'2023-08-28 17:00:00','Radar 8',70,78,1,16),(267,'2023-08-29 10:00:00','Radar 1',60,82,1,17),(268,'2023-08-29 11:00:00','Radar 2',60,86,0,18),(269,'2023-08-29 12:00:00','Radar 3',70,95,1,19),(287,'2023-08-31 14:00:00','Radar 5',60,78,0,13),(288,'2023-08-31 15:00:00','Radar 6',60,93,1,14),(289,'2023-08-31 16:00:00','Radar 7',50,69,1,15),(290,'2023-08-31 17:00:00','Radar 8',70,81,1,16),(291,'2023-09-01 10:00:00','Radar 1',60,85,1,17),(292,'2023-09-01 11:00:00','Radar 2',60,89,0,18),(293,'2023-09-01 12:00:00','Radar 3',70,98,1,19),(311,'2023-09-03 14:00:00','Radar 5',60,81,0,13),(312,'2023-09-03 15:00:00','Radar 6',60,96,1,14),(313,'2023-09-03 16:00:00','Radar 7',50,72,1,15),(314,'2023-09-03 17:00:00','Radar 8',70,84,1,16),(315,'2023-09-04 10:00:00','Radar 1',60,88,1,17),(316,'2023-09-04 11:00:00','Radar 2',60,92,0,18),(317,'2023-09-04 12:00:00','Radar 3',70,101,1,19),(335,'2023-09-06 14:00:00','Radar 5',60,84,0,13),(336,'2023-09-06 15:00:00','Radar 6',60,99,1,14),(337,'2023-09-06 16:00:00','Radar 7',50,75,1,15),(338,'2023-09-06 17:00:00','Radar 8',70,87,1,16),(339,'2023-09-07 10:00:00','Radar 1',60,91,1,17),(340,'2023-09-07 11:00:00','Radar 2',60,95,0,18),(341,'2023-09-07 12:00:00','Radar 3',70,104,1,19),(381,'2023-09-07 17:00:00','Radar 1',40,80,1,13),(382,'2023-09-07 17:00:00','Radar 1',40,80,1,14),(383,'2023-09-07 17:00:00','Radar 1',40,80,1,15),(384,'2023-09-07 17:00:00','Radar 1',40,80,1,16),(385,'2023-09-07 17:00:00','Radar 1',40,80,1,17),(386,'2023-09-07 17:00:00','Radar 1',40,80,1,18),(387,'2023-09-07 17:00:00','Radar 1',40,80,1,19),(442,'2024-08-04 14:54:00','Radar 1',60,70,1,1),(443,'2024-08-04 14:55:00','Radar 2',60,80,0,2),(444,'2024-08-04 14:56:00','Radar 3',60,90,1,3),(445,'2024-08-04 14:57:00','Radar 4',60,100,0,4),(446,'2024-08-04 14:58:00','Radar 5',60,65,1,5),(447,'2024-08-04 14:59:00','Radar 6',60,75,0,6),(448,'2024-08-04 15:00:00','Radar 7',60,85,1,7),(449,'2024-08-04 15:01:00','Radar 8',60,95,0,8),(450,'2024-08-04 15:02:00','Radar 1',60,70,1,9),(451,'2024-08-04 15:03:00','Radar 2',60,80,0,10),(452,'2024-08-04 15:04:00','Radar 3',60,90,1,11),(453,'2024-08-04 15:05:00','Radar 4',60,100,0,12),(454,'2024-08-04 15:06:00','Radar 5',60,65,1,13),(455,'2024-08-04 15:07:00','Radar 6',60,75,0,14),(456,'2024-08-04 15:08:00','Radar 7',60,85,1,15),(457,'2024-08-04 15:09:00','Radar 8',60,95,0,16),(458,'2024-08-04 15:10:00','Radar 1',60,70,1,17),(459,'2024-08-04 15:11:00','Radar 2',60,80,0,18),(460,'2024-08-04 15:12:00','Radar 3',60,90,1,19),(461,'2024-08-04 15:13:00','Radar 4',60,100,0,20),(462,'2024-08-04 15:14:00','Radar 5',60,65,1,21),(463,'2024-08-04 15:15:00','Radar 6',60,75,0,22),(464,'2024-08-04 15:16:00','Radar 7',60,85,1,23),(465,'2024-08-04 15:17:00','Radar 8',60,95,0,24),(466,'2024-08-04 15:18:00','Radar 1',60,70,1,1),(467,'2024-08-04 15:19:00','Radar 2',60,80,0,2),(468,'2024-08-04 15:20:00','Radar 3',60,90,1,3),(469,'2024-08-04 15:21:00','Radar 4',60,100,0,4),(470,'2024-08-04 15:22:00','Radar 5',60,65,1,5),(471,'2024-08-04 15:23:00','Radar 6',60,75,0,6),(472,'2024-08-04 15:24:00','Radar 7',60,85,1,7),(473,'2024-08-04 15:25:00','Radar 8',60,95,0,8),(474,'2024-08-04 15:26:00','Radar 1',60,70,1,9),(475,'2024-08-04 15:27:00','Radar 2',60,80,0,10),(476,'2024-08-04 15:28:00','Radar 3',60,90,1,11),(477,'2024-08-04 15:29:00','Radar 4',60,100,0,12),(478,'2024-08-04 15:30:00','Radar 5',60,65,1,13),(479,'2024-08-04 15:31:00','Radar 6',60,75,0,14),(480,'2024-08-04 15:32:00','Radar 7',60,85,1,15),(481,'2024-08-04 15:33:00','Radar 8',60,95,0,16),(482,'2024-08-04 15:34:00','Radar 1',60,70,1,17),(483,'2024-08-04 15:35:00','Radar 2',60,80,0,18),(484,'2024-08-04 15:36:00','Radar 3',60,90,1,19),(485,'2024-08-04 15:37:00','Radar 4',60,100,0,20),(486,'2024-08-04 15:38:00','Radar 5',60,65,1,21),(487,'2024-08-04 15:39:00','Radar 6',60,75,0,22),(488,'2024-08-04 15:40:00','Radar 7',60,85,1,23),(489,'2024-08-04 15:41:00','Radar 8',60,95,0,24),(490,'2024-08-04 15:42:00','Radar 1',60,70,1,1),(491,'2024-08-04 15:43:00','Radar 2',60,80,0,2),(492,'2024-08-04 15:44:00','Radar 3',60,90,1,3),(493,'2024-08-04 15:45:00','Radar 4',60,100,0,4),(494,'2024-08-04 15:46:00','Radar 5',60,65,1,5),(495,'2024-08-04 15:47:00','Radar 6',60,75,0,6),(496,'2024-08-04 15:48:00','Radar 7',60,85,1,7),(497,'2024-08-04 15:49:00','Radar 8',60,95,0,8),(498,'2024-08-04 15:50:00','Radar 1',60,70,1,9),(499,'2024-08-04 15:51:00','Radar 2',60,80,0,10),(500,'2024-08-04 15:52:00','Radar 3',60,90,1,11),(501,'2024-08-04 15:53:00','Radar 4',60,100,0,12),(502,'2024-08-04 15:54:00','Radar 5',60,65,1,13),(503,'2024-08-04 15:55:00','Radar 6',60,75,0,14),(504,'2024-08-04 15:56:00','Radar 7',60,85,1,15),(505,'2024-08-04 15:57:00','Radar 8',60,95,0,16),(506,'2024-08-04 15:58:00','Radar 1',60,70,1,17),(507,'2024-08-04 15:59:00','Radar 2',60,80,0,18),(508,'2024-08-04 16:00:00','Radar 3',60,90,1,19),(509,'2024-08-04 16:01:00','Radar 4',60,100,0,20),(510,'2024-08-04 16:02:00','Radar 5',60,65,1,21),(511,'2024-08-04 16:03:00','Radar 6',60,75,0,22),(512,'2024-08-04 16:04:00','Radar 7',60,85,1,23),(513,'2024-08-04 16:05:00','Radar 8',60,95,0,24),(514,'2024-08-04 16:06:00','Radar 1',60,70,1,1),(515,'2024-08-04 16:07:00','Radar 2',60,80,0,2),(516,'2024-08-04 16:08:00','Radar 3',60,90,1,3),(517,'2024-08-04 16:09:00','Radar 4',60,100,0,4),(518,'2024-08-04 16:10:00','Radar 5',60,65,1,5),(519,'2024-08-04 16:11:00','Radar 6',60,75,0,6),(520,'2024-08-04 16:12:00','Radar 7',60,85,1,7),(521,'2024-08-04 16:13:00','Radar 8',60,95,0,8),(522,'2024-08-04 16:14:00','Radar 1',60,70,1,9),(523,'2024-08-04 16:15:00','Radar 2',60,80,0,10),(524,'2024-08-04 16:16:00','Radar 3',60,90,1,11),(525,'2024-08-04 16:17:00','Radar 4',60,100,0,12),(526,'2024-08-04 16:18:00','Radar 5',60,65,1,13),(527,'2024-08-04 16:19:00','Radar 6',60,75,0,14),(528,'2024-08-04 16:20:00','Radar 7',60,85,1,15),(529,'2024-08-04 16:21:00','Radar 8',60,95,0,16),(530,'2024-08-04 16:22:00','Radar 1',60,70,1,17),(531,'2024-08-04 16:23:00','Radar 2',60,80,0,18),(532,'2024-08-04 16:24:00','Radar 3',60,90,1,19),(533,'2024-08-04 16:25:00','Radar 4',60,100,0,20),(534,'2024-08-04 16:26:00','Radar 5',60,65,1,21),(535,'2024-08-04 16:27:00','Radar 6',60,75,0,22),(536,'2024-08-04 16:28:00','Radar 7',60,85,1,23),(537,'2024-08-04 16:29:00','Radar 8',60,95,0,24),(538,'2024-08-04 14:54:00','Radar 1',60,70,1,1),(539,'2024-08-04 14:55:00','Radar 2',60,80,1,2),(540,'2024-08-04 14:56:00','Radar 3',60,90,1,3),(541,'2024-08-04 14:57:00','Radar 4',60,100,1,4),(542,'2024-08-04 14:58:00','Radar 5',60,65,1,5),(543,'2024-08-04 14:59:00','Radar 6',60,75,1,6),(544,'2024-08-04 15:00:00','Radar 7',60,85,1,7),(545,'2024-08-04 15:01:00','Radar 8',60,95,1,8),(546,'2024-08-04 15:02:00','Radar 1',60,70,1,9),(547,'2024-08-04 15:03:00','Radar 2',60,80,1,10),(548,'2024-08-04 15:04:00','Radar 3',60,90,1,11),(549,'2024-08-04 15:05:00','Radar 4',60,100,1,12),(550,'2024-08-04 15:06:00','Radar 5',60,65,1,13),(551,'2024-08-04 15:07:00','Radar 6',60,75,1,14),(552,'2024-08-04 15:08:00','Radar 7',60,85,1,15),(553,'2024-08-04 15:09:00','Radar 8',60,95,1,16),(554,'2024-08-04 15:10:00','Radar 1',60,70,1,17),(555,'2024-08-04 15:11:00','Radar 2',60,80,1,18),(556,'2024-08-04 15:12:00','Radar 3',60,90,1,19),(557,'2024-08-04 15:13:00','Radar 4',60,100,1,20),(558,'2024-08-04 15:14:00','Radar 5',60,65,1,21),(559,'2024-08-04 15:15:00','Radar 6',60,75,1,22),(560,'2024-08-04 15:16:00','Radar 7',60,85,1,23),(561,'2024-08-04 15:17:00','Radar 8',60,95,0,24),(562,'2024-08-04 15:18:00','Radar 1',60,70,1,1),(563,'2024-08-04 15:19:00','Radar 2',60,80,0,2),(564,'2024-08-04 15:20:00','Radar 3',60,90,1,3),(565,'2024-08-04 15:21:00','Radar 4',60,100,0,4),(566,'2024-08-04 15:22:00','Radar 5',60,65,1,5),(567,'2024-08-04 15:23:00','Radar 6',60,75,0,6),(568,'2024-08-04 15:24:00','Radar 7',60,85,1,7),(569,'2024-08-04 15:25:00','Radar 8',60,95,0,8),(570,'2024-08-04 15:26:00','Radar 1',60,70,1,9),(571,'2024-08-04 15:27:00','Radar 2',60,80,0,10),(572,'2024-08-04 15:28:00','Radar 3',60,90,1,11),(573,'2024-08-04 15:29:00','Radar 4',60,100,0,12),(574,'2024-08-04 15:30:00','Radar 5',60,65,1,13),(575,'2024-08-04 15:31:00','Radar 6',60,75,0,14),(576,'2024-08-04 15:32:00','Radar 7',60,85,1,15),(577,'2024-08-04 15:33:00','Radar 8',60,95,0,16),(578,'2024-08-04 15:34:00','Radar 1',60,70,1,17),(579,'2024-08-04 15:35:00','Radar 2',60,80,0,18),(580,'2024-08-04 15:36:00','Radar 3',60,90,1,19),(581,'2024-08-04 15:37:00','Radar 4',60,100,0,20),(582,'2024-08-04 15:38:00','Radar 5',60,65,1,21),(583,'2024-08-04 15:39:00','Radar 6',60,75,0,22),(584,'2024-08-04 15:40:00','Radar 7',60,85,1,23),(585,'2024-08-04 15:41:00','Radar 8',60,95,0,24),(586,'2024-08-04 15:42:00','Radar 1',60,70,1,1),(587,'2024-08-04 15:43:00','Radar 2',60,80,0,2),(588,'2024-08-04 15:44:00','Radar 3',60,90,1,3),(589,'2024-08-04 15:45:00','Radar 4',60,100,0,4),(590,'2024-08-04 15:46:00','Radar 5',60,65,1,5),(591,'2024-08-04 15:47:00','Radar 6',60,75,0,6),(592,'2024-08-04 15:48:00','Radar 7',60,85,1,7),(593,'2024-08-04 15:49:00','Radar 8',60,95,0,8),(594,'2024-08-04 15:50:00','Radar 1',60,70,1,9),(595,'2024-08-04 15:51:00','Radar 2',60,80,0,10),(596,'2024-08-04 15:52:00','Radar 3',60,90,1,11),(597,'2024-08-04 15:53:00','Radar 4',60,100,0,12),(598,'2024-08-04 15:54:00','Radar 5',60,65,1,13),(599,'2024-08-04 15:55:00','Radar 6',60,75,0,14),(600,'2024-08-04 15:56:00','Radar 7',60,85,1,15),(601,'2024-08-04 15:57:00','Radar 8',60,95,0,16),(602,'2024-08-04 15:58:00','Radar 1',60,70,1,17),(603,'2024-08-04 15:59:00','Radar 2',60,80,0,18),(604,'2024-08-04 16:00:00','Radar 3',60,90,1,19),(605,'2024-08-04 16:01:00','Radar 4',60,100,0,20),(606,'2024-08-04 16:02:00','Radar 5',60,65,1,21),(607,'2024-08-04 16:03:00','Radar 6',60,75,0,22),(608,'2024-08-04 16:04:00','Radar 7',60,85,1,23),(609,'2024-08-04 16:05:00','Radar 8',60,95,0,24),(610,'2024-08-04 16:06:00','Radar 1',60,70,1,1),(611,'2024-08-04 16:07:00','Radar 2',60,80,0,2),(612,'2024-08-04 16:08:00','Radar 3',60,90,1,3),(613,'2024-08-04 16:09:00','Radar 4',60,100,0,4),(614,'2024-08-04 16:10:00','Radar 5',60,65,1,5),(615,'2024-08-04 16:11:00','Radar 6',60,75,0,6),(616,'2024-08-04 16:12:00','Radar 7',60,85,1,7),(617,'2024-08-04 16:13:00','Radar 8',60,95,0,8),(618,'2024-08-04 16:14:00','Radar 1',60,70,1,9),(619,'2024-08-04 16:15:00','Radar 2',60,80,0,10),(620,'2024-08-04 16:16:00','Radar 3',60,90,1,11),(621,'2024-08-04 16:17:00','Radar 4',60,100,0,12),(622,'2024-08-04 16:18:00','Radar 5',60,65,1,13),(623,'2024-08-04 16:19:00','Radar 6',60,75,0,14),(624,'2024-08-04 16:20:00','Radar 7',60,85,1,15),(625,'2024-08-04 16:21:00','Radar 8',60,95,0,16),(626,'2024-08-04 16:22:00','Radar 1',60,70,1,17),(627,'2024-08-04 16:23:00','Radar 2',60,80,0,18),(628,'2024-08-04 16:24:00','Radar 3',60,90,1,19),(629,'2024-08-04 16:25:00','Radar 4',60,100,0,20),(630,'2024-08-04 16:26:00','Radar 5',60,65,1,21),(631,'2024-08-04 16:27:00','Radar 6',60,75,0,22),(632,'2024-08-04 16:28:00','Radar 7',60,85,1,23),(633,'2024-08-04 16:29:00','Radar 8',60,95,0,24),(634,'2024-08-04 14:54:00','Radar 1',60,70,1,1),(635,'2024-08-04 14:55:00','Radar 2',60,80,1,2),(636,'2024-08-04 14:56:00','Radar 3',60,90,1,3),(637,'2024-08-04 14:57:00','Radar 4',60,100,1,4),(638,'2024-08-04 14:58:00','Radar 5',60,65,1,5),(639,'2024-08-04 14:59:00','Radar 6',60,75,1,6),(640,'2024-08-04 15:00:00','Radar 7',60,85,1,7),(641,'2024-08-04 15:01:00','Radar 8',60,95,1,8),(642,'2024-08-04 15:02:00','Radar 1',60,70,1,9),(643,'2024-08-04 15:03:00','Radar 2',60,80,1,10),(644,'2024-08-04 15:04:00','Radar 3',60,90,1,11),(645,'2024-08-04 15:05:00','Radar 4',60,100,1,12),(646,'2024-08-04 15:06:00','Radar 5',60,65,1,13),(647,'2024-08-04 15:07:00','Radar 6',60,75,1,14),(648,'2024-08-04 15:08:00','Radar 7',60,85,1,15),(649,'2024-08-04 15:09:00','Radar 8',60,95,1,16),(650,'2024-08-04 15:10:00','Radar 1',60,70,1,17),(651,'2024-08-04 15:11:00','Radar 2',60,80,1,18),(652,'2024-08-04 15:12:00','Radar 3',60,90,1,19),(653,'2024-08-04 15:13:00','Radar 4',60,100,1,20),(654,'2024-08-04 15:14:00','Radar 5',60,65,1,21),(655,'2024-08-04 15:15:00','Radar 6',60,75,1,22),(656,'2024-08-04 15:16:00','Radar 7',60,85,1,23),(657,'2024-08-04 15:17:00','Radar 8',60,95,1,24),(658,'2024-08-04 15:18:00','Radar 1',60,70,1,1),(659,'2024-08-04 15:19:00','Radar 2',60,80,0,2),(660,'2024-08-04 15:20:00','Radar 3',60,90,1,3),(661,'2024-08-04 15:21:00','Radar 4',60,100,0,4),(662,'2024-08-04 15:22:00','Radar 5',60,65,1,5),(663,'2024-08-04 15:23:00','Radar 6',60,75,0,6),(664,'2024-08-04 15:24:00','Radar 7',60,85,1,7),(665,'2024-08-04 15:25:00','Radar 8',60,95,0,8),(666,'2024-08-04 15:26:00','Radar 1',60,70,1,9),(667,'2024-08-04 15:27:00','Radar 2',60,80,0,10),(668,'2024-08-04 15:28:00','Radar 3',60,90,1,11),(669,'2024-08-04 15:29:00','Radar 4',60,100,0,12),(670,'2024-08-04 15:30:00','Radar 5',60,65,1,13),(671,'2024-08-04 15:31:00','Radar 6',60,75,0,14),(672,'2024-08-04 15:32:00','Radar 7',60,85,1,15),(673,'2024-08-04 15:33:00','Radar 8',60,95,0,16),(674,'2024-08-04 15:34:00','Radar 1',60,70,1,17),(675,'2024-08-04 15:35:00','Radar 2',60,80,0,18),(676,'2024-08-04 15:36:00','Radar 3',60,90,1,19),(677,'2024-08-04 15:37:00','Radar 4',60,100,0,20),(678,'2024-08-04 15:38:00','Radar 5',60,65,1,21),(679,'2024-08-04 15:39:00','Radar 6',60,75,0,22),(680,'2024-08-04 15:40:00','Radar 7',60,85,1,23),(681,'2024-08-04 15:41:00','Radar 8',60,95,0,24),(682,'2024-08-04 15:42:00','Radar 1',60,70,1,1),(683,'2024-08-04 15:43:00','Radar 2',60,80,0,2),(684,'2024-08-04 15:44:00','Radar 3',60,90,1,3),(685,'2024-08-04 15:45:00','Radar 4',60,100,0,4),(686,'2024-08-04 15:46:00','Radar 5',60,65,1,5),(687,'2024-08-04 15:47:00','Radar 6',60,75,0,6),(688,'2024-08-04 15:48:00','Radar 7',60,85,1,7),(689,'2024-08-04 15:49:00','Radar 8',60,95,0,8),(690,'2024-08-04 15:50:00','Radar 1',60,70,1,9),(691,'2024-08-04 15:51:00','Radar 2',60,80,0,10),(692,'2024-08-04 15:52:00','Radar 3',60,90,1,11),(693,'2024-08-04 15:53:00','Radar 4',60,100,0,12),(694,'2024-08-04 15:54:00','Radar 5',60,65,1,13),(695,'2024-08-04 15:55:00','Radar 6',60,75,0,14),(696,'2024-08-04 15:56:00','Radar 7',60,85,1,15),(697,'2024-08-04 15:57:00','Radar 8',60,95,0,16),(698,'2024-08-04 15:58:00','Radar 1',60,70,1,17),(699,'2024-08-04 15:59:00','Radar 2',60,80,0,18),(700,'2024-08-04 16:00:00','Radar 3',60,90,1,19),(701,'2024-08-04 16:01:00','Radar 4',60,100,0,20),(702,'2024-08-04 16:02:00','Radar 5',60,65,1,21),(703,'2024-08-04 16:03:00','Radar 6',60,75,0,22),(704,'2024-08-04 16:04:00','Radar 7',60,85,1,23),(705,'2024-08-04 16:05:00','Radar 8',60,95,0,24),(706,'2024-08-04 16:06:00','Radar 1',60,70,1,1),(707,'2024-08-04 16:07:00','Radar 2',60,80,0,2),(708,'2024-08-04 16:08:00','Radar 3',60,90,1,3),(709,'2024-08-04 16:09:00','Radar 4',60,100,0,4),(710,'2024-08-04 16:10:00','Radar 5',60,65,1,5),(711,'2024-08-04 16:11:00','Radar 6',60,75,0,6),(712,'2024-08-04 16:12:00','Radar 7',60,85,1,7),(713,'2024-08-04 16:13:00','Radar 8',60,95,0,8),(714,'2024-08-04 16:14:00','Radar 1',60,70,1,9),(715,'2024-08-04 16:15:00','Radar 2',60,80,0,10),(716,'2024-08-04 16:16:00','Radar 3',60,90,1,11),(717,'2024-08-04 16:17:00','Radar 4',60,100,0,12),(718,'2024-08-04 16:18:00','Radar 5',60,65,1,13),(719,'2024-08-04 16:19:00','Radar 6',60,75,0,14),(720,'2024-08-04 16:20:00','Radar 7',60,85,1,15),(721,'2024-08-04 16:21:00','Radar 8',60,95,0,16),(722,'2024-08-04 16:22:00','Radar 1',60,70,1,17),(723,'2024-08-04 16:23:00','Radar 2',60,80,0,18),(724,'2024-08-04 16:24:00','Radar 3',60,90,1,19),(725,'2024-08-04 16:25:00','Radar 4',60,100,0,20),(726,'2024-08-04 16:26:00','Radar 5',60,65,1,21),(727,'2024-08-04 16:27:00','Radar 6',60,75,0,22),(728,'2024-08-04 16:28:00','Radar 7',60,85,1,23),(729,'2024-08-04 16:29:00','Radar 8',60,95,0,24),(730,'2024-08-04 16:26:00','Radar 5',60,65,0,24),(731,'2024-08-04 16:27:00','Radar 6',60,75,0,24),(732,'2024-08-04 16:28:00','Radar 7',60,85,0,24),(733,'2024-08-04 16:29:00','Radar 8',60,95,0,24),(734,'2024-08-04 16:26:00','Radar 5',60,65,0,24),(735,'2024-08-04 16:27:00','Radar 6',60,75,0,24),(736,'2024-08-04 16:28:00','Radar 7',60,85,0,24),(737,'2024-08-04 16:29:00','Radar 8',60,95,0,24),(738,'2024-08-04 16:26:00','Radar 5',60,65,1,24),(739,'2024-08-04 16:27:00','Radar 6',60,75,1,24),(740,'2024-08-04 16:28:00','Radar 7',60,85,1,24),(741,'2024-08-04 16:29:00','Radar 8',60,95,1,24);
/*!40000 ALTER TABLE `infracao` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `antes_de_inserir` AFTER INSERT ON `infracao` FOR EACH ROW BEGIN
  DECLARE nova_contagem INT;
    
    SELECT COUNT(remessa_id) INTO nova_contagem FROM infracao
    where remessa_id = new.remessa_id;
    
    UPDATE remessa
    SET total_infracoes = nova_contagem
    where id = new.remessa_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `depois_excluir` AFTER DELETE ON `infracao` FOR EACH ROW BEGIN
    DECLARE nova_contagem INT;
    
    SELECT COUNT(remessa_id) INTO nova_contagem FROM infracao
    where remessa_id = old.remessa_id;
    
    UPDATE remessa
    SET total_infracoes = nova_contagem
    where id = old.remessa_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `remessa`
--

DROP TABLE IF EXISTS `remessa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remessa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `situacao` enum('Criada','Expedida','Aceita','Não Aceita') DEFAULT NULL,
  `total_infracoes` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remessa`
--

LOCK TABLES `remessa` WRITE;
/*!40000 ALTER TABLE `remessa` DISABLE KEYS */;
INSERT INTO `remessa` VALUES (1,'Criada',12),(2,'Expedida',12),(3,'Aceita',12),(4,'Não Aceita',12),(5,'Criada',12),(6,'Expedida',12),(7,'Aceita',12),(8,'Não Aceita',12),(9,'Criada',12),(10,'Expedida',12),(11,'Aceita',12),(12,'Não Aceita',12),(13,'Criada',24),(14,'Expedida',25),(15,'Aceita',25),(16,'Não Aceita',25),(17,'Criada',25),(18,'Expedida',25),(19,'Aceita',25),(20,'Não Aceita',12),(21,'Criada',12),(22,'Expedida',12),(23,'Aceita',12),(24,'Não Aceita',24);
/*!40000 ALTER TABLE `remessa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'kopp_infracoes'
--

--
-- Dumping routines for database 'kopp_infracoes'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-04 13:30:52
