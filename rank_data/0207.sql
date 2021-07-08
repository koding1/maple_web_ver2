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
INSERT INTO `rank_table` VALUES ('나로',74,739,4,4,737),('나워',10,95,36,36,95),('다크나이트',22,211,24,24,211),('데벤',26,250,21,21,249),('데슬',20,196,28,28,196),('듀블',123,1220,1,1,1211),('루미',21,203,25,25,201),('메르',26,253,20,20,252),('메카',11,107,34,34,107),('미하일',4,33,43,43,33),('바이퍼',32,318,17,17,319),('배메',8,77,38,38,75),('보마',15,148,31,31,147),('불독',90,895,2,2,886),('블래',7,68,39,39,68),('비숍',79,789,3,3,792),('섀도어',57,562,5,5,561),('소마',21,201,27,27,197),('스커',8,78,37,37,78),('신궁',7,65,40,40,65),('썬콜',43,428,12,12,426),('아델',50,495,9,9,493),('아란',32,318,18,18,316),('아크',48,472,10,10,469),('에반',28,277,19,19,274),('엔버',51,506,7,7,503),('와헌',11,100,35,35,99),('윈브',39,384,15,15,380),('은월',54,539,6,6,536),('일리움',5,42,42,42,42),('제논',24,234,22,22,232),('제로',43,420,13,13,418),('카데나',18,176,30,30,176),('카이저',15,146,32,32,146),('캐슈',41,408,14,14,408),('캡틴',7,65,41,41,63),('키네',19,188,29,29,186),('팔라딘',21,201,26,26,200),('패파',51,505,8,8,502),('팬텀',46,455,11,11,451),('플위',23,226,23,23,226),('호영',12,110,33,33,108),('히어로',36,359,16,16,355);
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

-- Dump completed on 2021-02-07 12:59:03
