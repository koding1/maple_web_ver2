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
INSERT INTO `rank_table` VALUES ('나로',79,787,4,4,774),('나워',11,103,36,36,101),('다크나이트',23,227,24,24,222),('데벤',27,263,21,21,260),('데슬',21,207,28,28,205),('듀블',139,1382,1,1,1332),('루미',22,215,25,25,212),('메르',28,273,20,20,270),('메카',12,116,34,34,113),('미하일',4,36,43,43,35),('바이퍼',33,321,18,18,320),('배메',8,78,38,38,77),('보마',17,161,32,31,158),('불독',92,916,2,2,924),('블래',8,73,40,40,70),('비숍',88,872,3,3,848),('섀도어',60,597,5,5,585),('소마',22,210,27,27,206),('스커',9,83,37,37,80),('신궁',7,67,41,41,66),('썬콜',50,490,11,12,461),('아델',60,595,6,7,564),('아란',34,333,17,17,325),('아크',52,514,10,10,504),('에반',31,308,19,19,299),('엔버',55,547,9,9,540),('와헌',11,104,35,35,104),('윈브',41,407,15,15,396),('은월',58,579,7,6,569),('일리움',5,45,42,42,45),('제논',25,247,22,22,242),('제로',45,443,14,13,440),('카데나',20,199,30,30,194),('카이저',17,163,31,32,157),('카인',1,4,44,44,0),('캐슈',46,452,13,14,440),('캡틴',8,77,39,39,75),('키네',21,204,29,29,198),('팔라딘',22,215,26,26,211),('패파',57,563,8,8,546),('팬텀',49,481,12,11,472),('플위',25,240,23,23,235),('호영',14,134,33,33,123),('히어로',40,394,16,16,388);
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

-- Dump completed on 2021-02-27  9:13:00
