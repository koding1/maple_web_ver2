-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: rank_db
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
-- Table structure for table `rank_table`
--

DROP TABLE IF EXISTS `rank_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank_table` (
  `job` varchar(255) NOT NULL,
  `page` int(10) DEFAULT NULL,
  `char_cnt` int(10) DEFAULT NULL,
  `now_rank` int(10) DEFAULT NULL,
  `ex_rank` int(10) DEFAULT NULL,
  `ex_char_cnt` int(10) DEFAULT NULL,
  PRIMARY KEY (`job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank_table`
--

LOCK TABLES `rank_table` WRITE;
/*!40000 ALTER TABLE `rank_table` DISABLE KEYS */;
INSERT INTO `rank_table` VALUES ('나로',78,774,4,4,739),('나워',11,101,36,36,95),('다크나이트',23,222,24,24,211),('데벤',27,260,21,21,250),('데슬',21,205,28,28,196),('듀블',134,1332,1,1,1220),('루미',22,212,25,25,203),('메르',28,270,20,20,253),('메카',12,113,34,34,107),('미하일',4,35,43,43,33),('바이퍼',33,320,18,17,318),('배메',8,77,38,38,77),('보마',16,158,31,31,148),('불독',93,924,2,2,895),('블래',8,70,40,39,68),('비숍',85,848,3,3,789),('섀도어',59,585,5,5,562),('소마',21,206,27,27,201),('스커',9,80,37,37,78),('신궁',7,66,41,40,65),('썬콜',47,461,12,12,428),('아델',57,564,7,9,495),('아란',33,325,17,18,318),('아크',51,504,10,10,472),('에반',30,299,19,19,277),('엔버',55,540,9,7,506),('와헌',11,104,35,35,100),('윈브',40,396,15,15,384),('은월',57,569,6,6,539),('일리움',5,45,42,42,42),('제논',25,242,22,22,234),('제로',45,440,13,13,420),('카데나',20,194,30,30,176),('카이저',16,157,32,32,146),('캐슈',45,440,14,14,408),('캡틴',8,75,39,41,65),('키네',20,198,29,29,188),('팔라딘',22,211,26,26,201),('패파',55,546,8,8,505),('팬텀',48,472,11,11,455),('플위',24,235,23,23,226),('호영',13,123,33,33,110),('히어로',39,388,16,16,359);
/*!40000 ALTER TABLE `rank_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-21 10:21:31
