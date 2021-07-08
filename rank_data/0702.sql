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
INSERT INTO `rank_table` VALUES ('나로',119,1185,4,4,1159),('나워',16,154,35,35,149),('다크나이트',32,316,24,24,314),('데벤',37,369,21,21,363),('데슬',28,275,30,30,270),('듀블',200,1992,1,1,1964),('루미',33,327,22,22,323),('메르',39,381,20,20,377),('메카',18,176,34,34,172),('미하일',6,59,43,43,58),('바이퍼',39,383,19,19,377),('배메',13,122,37,37,120),('보마',22,216,33,33,216),('불독',112,1117,5,5,1127),('블래',11,105,41,41,103),('비숍',129,1283,3,3,1254),('섀도어',85,843,8,8,840),('소마',32,313,26,26,309),('스커',12,117,38,38,116),('신궁',12,114,39,39,113),('썬콜',89,888,7,7,866),('아델',137,1367,2,2,1327),('아란',48,471,17,17,467),('아크',80,795,9,10,779),('에반',45,440,18,18,433),('엔버',79,785,11,11,768),('와헌',14,138,36,36,138),('윈브',58,579,16,16,573),('은월',80,793,10,9,785),('일리움',8,76,42,42,76),('제논',32,315,25,23,314),('제로',61,600,14,14,595),('카데나',28,278,29,29,276),('카이저',25,248,32,32,244),('카인',5,42,44,44,40),('캐슈',63,620,13,13,617),('캡틴',12,113,40,40,109),('키네',31,307,27,27,306),('팔라딘',32,317,23,25,311),('패파',91,908,6,6,900),('팬텀',66,652,12,12,647),('플위',31,305,28,28,301),('호영',27,269,31,31,257),('히어로',60,598,15,15,585);
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

-- Dump completed on 2021-07-02 13:17:59
