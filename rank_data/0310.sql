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
INSERT INTO `rank_table` VALUES ('나로',81,807,4,4,792),('나워',11,107,35,36,104),('다크나이트',24,238,24,24,230),('데벤',27,268,21,21,265),('데슬',22,213,28,28,208),('듀블',145,1446,1,1,1398),('루미',22,218,26,25,216),('메르',29,282,20,20,275),('메카',13,123,34,34,116),('미하일',4,36,43,43,36),('바이퍼',33,322,19,18,324),('배메',9,80,38,38,78),('보마',17,165,32,32,162),('불독',93,927,2,2,907),('블래',8,73,40,40,73),('비숍',92,913,3,3,885),('섀도어',62,617,6,6,601),('소마',22,217,27,27,210),('스커',9,83,37,37,83),('신궁',8,70,41,41,69),('썬콜',52,516,11,11,503),('아델',66,656,5,5,604),('아란',35,342,17,17,335),('아크',54,534,10,10,518),('에반',33,323,18,19,311),('엔버',57,561,9,9,549),('와헌',11,106,36,35,105),('윈브',42,415,15,15,408),('은월',60,594,7,7,584),('일리움',5,49,42,42,46),('제논',26,251,22,22,248),('제로',46,458,14,14,451),('카데나',21,206,30,30,200),('카이저',17,168,31,31,165),('카인',1,6,44,44,4),('캐슈',47,462,13,13,453),('캡틴',8,78,39,39,77),('키네',22,213,29,29,208),('팔라딘',23,221,25,26,215),('패파',59,584,8,8,566),('팬텀',50,497,12,12,483),('플위',25,246,23,23,245),('호영',15,143,33,33,136),('히어로',42,412,16,16,397);
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

-- Dump completed on 2021-03-10 12:59:48
