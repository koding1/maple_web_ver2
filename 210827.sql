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
INSERT INTO `rank_table` VALUES ('나로',133,1326,4,4,1298),('나워',17,169,35,35,167),('다크나이트',35,343,26,24,335),('데벤',40,398,21,20,395),('데슬',31,301,31,31,296),('듀블',221,2202,1,1,2140),('루미',38,375,22,22,362),('메르',42,412,19,19,403),('메카',21,202,34,34,195),('미하일',7,66,44,43,65),('바이퍼',41,407,20,21,393),('배메',13,128,37,37,127),('보마',23,229,33,33,225),('불독',114,1136,5,5,1144),('블래',12,112,41,41,108),('비숍',140,1395,3,3,1355),('섀도어',92,911,8,8,889),('소마',36,351,24,25,335),('스커',13,123,40,39,121),('신궁',13,123,39,38,123),('썬콜',105,1043,6,6,997),('아델',169,1680,2,2,1581),('아란',50,498,17,17,494),('아크',88,879,9,9,855),('에반',49,484,18,18,476),('엔버',86,853,10,11,829),('와헌',16,150,36,36,146),('윈브',63,629,16,16,618),('은월',86,852,11,10,834),('일리움',9,89,42,42,87),('제논',34,337,28,26,333),('제로',66,654,15,15,639),('카데나',31,302,30,30,299),('카이저',28,275,32,32,267),('카인',7,68,43,44,62),('캐슈',67,669,13,13,654),('캡틴',13,125,38,40,118),('키네',35,345,25,27,333),('팔라딘',34,339,27,23,340),('패파',102,1014,7,7,985),('팬텀',72,717,12,12,693),('플위',33,329,29,29,324),('호영',37,361,23,28,330),('히어로',67,664,14,14,646);
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

-- Dump completed on 2021-08-20 13:03:18
