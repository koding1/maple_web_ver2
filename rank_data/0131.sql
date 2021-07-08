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
INSERT INTO `rank_table` VALUES ('나로',72,718,4,4,718),('나워',10,91,36,36,91),('다크나이트',22,210,24,24,210),('데벤',25,244,21,20,244),('데슬',20,192,28,28,192),('듀블',117,1160,1,1,1152),('루미',20,197,26,26,197),('메르',25,245,20,21,242),('메카',11,103,34,33,103),('미하일',4,31,43,43,30),('바이퍼',33,320,17,17,319),('배메',8,73,38,38,73),('보마',15,146,31,31,146),('불독',87,864,2,2,862),('블래',7,68,39,39,68),('비숍',78,770,3,3,764),('섀도어',56,551,5,5,550),('소마',20,192,27,27,192),('스커',8,77,37,37,77),('신궁',7,63,40,40,63),('썬콜',43,420,12,12,420),('아델',47,463,9,9,461),('아란',32,310,18,18,308),('아크',46,451,10,10,449),('에반',27,266,19,19,266),('엔버',50,490,7,7,488),('와헌',10,96,35,35,96),('윈브',38,375,15,15,374),('은월',53,520,6,6,517),('일리움',5,40,42,42,40),('제논',23,227,22,22,227),('제로',41,406,13,13,405),('카데나',18,172,30,30,172),('카이저',15,144,32,32,143),('캐슈',40,398,14,14,396),('캡틴',7,62,41,41,61),('키네',19,181,29,29,181),('팔라딘',20,197,25,25,197),('패파',49,488,8,8,482),('팬텀',45,440,11,11,437),('플위',23,221,23,23,221),('호영',11,104,33,34,102),('히어로',35,346,16,16,344);
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

-- Dump completed on 2021-01-31 13:10:55
