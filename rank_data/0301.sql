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
INSERT INTO `rank_table` VALUES ('나로',80,792,4,4,787),('나워',11,104,36,36,103),('다크나이트',24,230,24,24,227),('데벤',27,265,21,21,263),('데슬',21,208,28,28,207),('듀블',140,1398,1,1,1382),('루미',22,216,25,25,215),('메르',28,275,20,20,273),('메카',12,116,34,34,116),('미하일',4,36,43,43,36),('바이퍼',33,324,18,18,321),('배메',8,78,38,38,78),('보마',17,162,32,32,161),('불독',91,907,2,2,916),('블래',8,73,40,40,73),('비숍',89,885,3,3,872),('섀도어',61,601,6,5,597),('소마',22,210,27,27,210),('스커',9,83,37,37,83),('신궁',7,69,41,41,67),('썬콜',51,503,11,11,490),('아델',61,604,5,6,595),('아란',34,335,17,17,333),('아크',52,518,10,10,514),('에반',32,311,19,19,308),('엔버',55,549,9,9,547),('와헌',11,105,35,35,104),('윈브',41,408,15,15,407),('은월',59,584,7,7,579),('일리움',5,46,42,42,45),('제논',25,248,22,22,247),('제로',46,451,14,14,443),('카데나',21,200,30,30,199),('카이저',17,165,31,31,163),('카인',1,4,44,44,4),('캐슈',46,453,13,13,452),('캡틴',8,77,39,39,77),('키네',21,208,29,29,204),('팔라딘',22,215,26,26,215),('패파',57,566,8,8,563),('팬텀',49,483,12,12,481),('플위',25,245,23,23,240),('호영',14,136,33,33,134),('히어로',40,397,16,16,394);
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

-- Dump completed on 2021-03-01 11:07:13
