-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: smsproj
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `idSection` int(11) NOT NULL AUTO_INCREMENT,
  `idRoom` int(11) NOT NULL,
  `idTime` int(11) NOT NULL,
  `idCourse` int(11) NOT NULL,
  `idStaff` int(11) NOT NULL,
  PRIMARY KEY (`idSection`),
  UNIQUE KEY `UQroom2Time` (`idRoom`,`idTime`),
  UNIQUE KEY `UQtime2staff` (`idTime`,`idStaff`),
  KEY `CourseID_idx` (`idCourse`),
  KEY `TimeID2_idx` (`idTime`),
  KEY `StaffID2_idx` (`idStaff`),
  KEY `RoomID_idx` (`idRoom`),
  CONSTRAINT `RoomID` FOREIGN KEY (`idRoom`) REFERENCES `room` (`roomNo`),
  CONSTRAINT `StaffID` FOREIGN KEY (`idStaff`) REFERENCES `staff` (`idStaff`),
  CONSTRAINT `TimeID` FOREIGN KEY (`idTime`) REFERENCES `time` (`idtime`),
  CONSTRAINT `courseID2` FOREIGN KEY (`idCourse`) REFERENCES `course` (`idCourse`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (301,1100,1,20201,16004),(302,1100,2,20201,16004),(303,1105,1,20203,16001),(308,1100,3,20201,16001),(309,1104,1,20202,16002),(311,1104,3,20202,16002);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05 13:24:16
