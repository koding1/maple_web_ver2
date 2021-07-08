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
INSERT INTO `rank_table` VALUES ('나로',74,737,4,4,718),('나워',10,95,36,36,91),('다크나이트',22,211,24,24,210),('데벤',25,249,21,21,244),('데슬',20,196,28,28,192),('듀블',122,1211,1,1,1160),('루미',21,201,25,26,197),('메르',26,252,20,20,245),('메카',11,107,34,34,103),('미하일',4,33,43,43,31),('바이퍼',32,319,17,17,320),('배메',8,75,38,38,73),('보마',15,147,31,31,146),('불독',89,886,2,2,864),('블래',7,68,39,39,68),('비숍',80,792,3,3,770),('섀도어',57,561,5,5,551),('소마',20,197,27,27,192),('스커',8,78,37,37,77),('신궁',7,65,40,40,63),('썬콜',43,426,12,12,420),('아델',50,493,9,9,463),('아란',32,316,18,18,310),('아크',47,469,10,10,451),('에반',28,274,19,19,266),('엔버',51,503,7,7,490),('와헌',10,99,35,35,96),('윈브',39,380,15,15,375),('은월',54,536,6,6,520),('일리움',5,42,42,42,40),('제논',24,232,22,22,227),('제로',42,418,13,13,406),('카데나',18,176,30,30,172),('카이저',15,146,32,32,144),('캐슈',41,408,14,14,398),('캡틴',7,63,41,41,62),('키네',19,186,29,29,181),('팔라딘',21,200,26,25,197),('패파',51,502,8,8,488),('팬텀',46,451,11,11,440),('플위',23,226,23,23,221),('호영',11,108,33,33,104),('히어로',36,355,16,16,346);
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

-- Dump completed on 2021-02-06  7:00:40
