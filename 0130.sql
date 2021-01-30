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
INSERT INTO `rank_table` VALUES ('나로',72,718,4,4,711),('나워',10,91,36,36,91),('다크나이트',22,210,24,24,210),('데벤',25,244,20,20,241),('데슬',20,192,28,27,191),('듀블',116,1152,1,1,1151),('루미',20,197,26,28,191),('메르',25,242,21,21,241),('메카',11,103,33,33,101),('미하일',4,30,43,43,30),('바이퍼',32,319,17,17,311),('배메',8,73,38,38,71),('보마',15,146,31,31,141),('불독',87,862,2,2,861),('블래',7,68,39,40,61),('비숍',77,764,3,3,761),('섀도어',56,550,5,5,550),('소마',20,192,27,26,191),('스커',8,77,37,37,71),('신궁',7,63,40,39,61),('썬콜',43,420,12,12,420),('아델',47,461,9,9,461),('아란',31,308,18,18,301),('아크',45,449,10,10,441),('에반',27,266,19,19,261),('엔버',49,488,7,7,481),('와헌',10,96,35,35,91),('윈브',38,374,15,15,371),('은월',52,517,6,6,511),('일리움',5,40,42,42,40),('제논',23,227,22,22,221),('제로',41,405,13,13,401),('카데나',18,172,30,30,171),('카이저',15,143,32,32,141),('캐슈',40,396,14,14,391),('캡틴',7,61,41,41,61),('키네',19,181,29,29,181),('팔라딘',20,197,25,25,191),('패파',49,482,8,8,481),('팬텀',44,437,11,11,431),('플위',23,221,23,23,221),('호영',11,102,34,34,101),('히어로',35,344,16,16,341);
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

-- Dump completed on 2021-01-30 14:10:18
