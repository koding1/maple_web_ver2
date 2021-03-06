-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: test_db
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
-- Table structure for table `210807_table`
--

DROP TABLE IF EXISTS `210807_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `210807_table` (
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
-- Dumping data for table `210807_table`
--

LOCK TABLES `210807_table` WRITE;
/*!40000 ALTER TABLE `210807_table` DISABLE KEYS */;
INSERT INTO `210807_table` VALUES ('나로',130,1298,4,4,1185),('나워',17,167,35,35,154),('다크나이트',34,335,24,24,316),('데벤',40,395,20,21,369),('데슬',30,296,31,30,275),('듀블',215,2140,1,1,1992),('루미',37,362,22,22,327),('메르',41,403,19,20,381),('메카',20,195,34,34,176),('미하일',7,65,43,43,59),('바이퍼',40,393,21,19,383),('배메',13,127,37,37,122),('보마',23,225,33,33,216),('불독',115,1144,5,5,1117),('블래',11,108,41,41,105),('비숍',136,1355,3,3,1283),('섀도어',89,889,8,8,843),('소마',34,335,25,26,313),('스커',13,121,39,38,117),('신궁',13,123,38,39,114),('썬콜',100,997,6,7,888),('아델',159,1581,2,2,1367),('아란',50,494,17,17,471),('아크',86,855,9,9,795),('에반',48,476,18,18,440),('엔버',83,829,11,11,785),('와헌',15,146,36,36,138),('윈브',62,618,16,16,579),('은월',84,834,10,10,793),('일리움',9,87,42,42,76),('제논',34,333,26,25,315),('제로',64,639,15,14,600),('카데나',30,299,30,29,278),('카이저',27,267,32,32,248),('카인',7,62,44,44,42),('캐슈',66,654,13,13,620),('캡틴',12,118,40,40,113),('키네',34,333,27,27,307),('팔라딘',35,340,23,23,317),('패파',99,985,7,6,908),('팬텀',70,693,12,12,652),('플위',33,324,29,28,305),('호영',34,330,28,31,269),('히어로',65,646,14,15,598);
/*!40000 ALTER TABLE `210807_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-07 13:15:57
