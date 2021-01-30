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
INSERT INTO `rank_table` VALUES ('나로',72,711,4,4,711),('나워',10,90,36,36,90),('다크나이트',21,201,24,24,201),('데벤',25,241,20,20,241),('데슬',20,191,27,27,191),('듀블',115,1141,1,1,1140),('루미',20,191,28,28,191),('메르',25,241,21,21,241),('메카',11,101,33,33,101),('미하일',4,30,43,43,30),('바이퍼',32,311,17,17,311),('배메',8,71,38,38,71),('보마',15,141,31,31,141),('불독',86,851,2,2,851),('블래',7,61,40,40,61),('비숍',77,761,3,3,751),('섀도어',55,541,5,5,541),('소마',20,191,26,26,191),('스커',8,71,37,37,71),('신궁',7,61,39,39,61),('썬콜',42,411,12,12,411),('아델',46,451,9,9,451),('아란',31,301,18,18,301),('아크',46,450,10,10,441),('에반',27,261,19,19,261),('엔버',49,481,7,7,481),('와헌',10,91,35,35,91),('윈브',38,371,15,15,371),('은월',52,511,6,6,511),('일리움',5,40,42,42,31),('제논',23,221,22,22,221),('제로',41,401,13,13,401),('카데나',18,171,30,30,161),('카이저',15,141,32,32,141),('캐슈',40,391,14,14,391),('캡틴',7,60,41,41,60),('키네',19,181,29,29,181),('팔라딘',20,191,25,25,191),('패파',48,471,8,8,471),('팬텀',44,431,11,11,431),('플위',23,220,23,23,211),('호영',11,101,34,34,100),('히어로',35,341,16,16,340);
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

-- Dump completed on 2021-01-29 14:37:37
