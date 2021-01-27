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
  PRIMARY KEY (`job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank_table`
--

LOCK TABLES `rank_table` WRITE;
/*!40000 ALTER TABLE `rank_table` DISABLE KEYS */;
INSERT INTO `rank_table` VALUES ('나로',72,711,4,4),('나워',9,81,36,36),('다크나이트',21,201,24,24),('데벤',25,240,21,20),('데슬',20,191,26,27),('듀블',113,1121,1,1),('루미',20,191,27,26),('메르',25,241,20,21),('메카',10,91,34,34),('미하일',4,30,43,43),('바이퍼',32,311,17,17),('배메',8,71,38,38),('보마',15,141,31,31),('불독',85,841,2,2),('블래',7,61,40,40),('비숍',76,750,3,3),('섀도어',55,541,5,5),('소마',19,181,28,28),('스커',8,71,37,37),('신궁',7,61,39,39),('썬콜',41,401,12,12),('아델',45,441,9,11),('아란',31,301,18,18),('아크',44,431,10,10),('에반',27,261,19,19),('엔버',48,471,7,7),('와헌',10,91,33,33),('윈브',37,361,15,15),('은월',52,511,6,6),('일리움',4,31,42,42),('제논',23,221,22,22),('제로',40,391,13,13),('카데나',17,161,30,30),('카이저',15,141,32,32),('캐슈',39,381,14,14),('캡틴',6,51,41,41),('키네',18,171,29,29),('팔라딘',20,191,25,25),('패파',47,461,8,8),('팬텀',44,430,11,9),('플위',22,211,23,23),('호영',10,91,35,35),('히어로',34,331,16,16);
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

-- Dump completed on 2021-01-26 13:58:41
