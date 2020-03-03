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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `idCourse` int(11) NOT NULL AUTO_INCREMENT,
  `subjCourse` varchar(4) NOT NULL,
  `nameCourse` varchar(45) NOT NULL,
  PRIMARY KEY (`idCourse`)
) ENGINE=InnoDB AUTO_INCREMENT=20206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (20201,'MATH','ALGEBRA 1'),(20202,'MATH','ALGEBRA 2'),(20203,'CHEM','CHEMISTRY'),(20204,'CHEM','CHEMISTRY 2'),(20205,'GYM','HEALTH AND FITNESS');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feestudent`
--

DROP TABLE IF EXISTS `feestudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feestudent` (
  `idFEE` int(11) NOT NULL AUTO_INCREMENT,
  `Balance` double NOT NULL,
  `idStudent` int(11) NOT NULL,
  PRIMARY KEY (`idFEE`),
  KEY `StudentIDC_idx` (`idStudent`),
  CONSTRAINT `StudentIDC` FOREIGN KEY (`idStudent`) REFERENCES `student` (`idSTUDENT`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feestudent`
--

LOCK TABLES `feestudent` WRITE;
/*!40000 ALTER TABLE `feestudent` DISABLE KEYS */;
INSERT INTO `feestudent` VALUES (1,1000.12,160801),(2,0,160803),(3,0,160800),(4,67,160807),(5,486,160805),(6,0,160802),(7,0,160804),(8,127.5,160806);
/*!40000 ALTER TABLE `feestudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regstudent`
--

DROP TABLE IF EXISTS `regstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regstudent` (
  `idStudent` int(11) NOT NULL,
  `idSection` int(11) NOT NULL,
  PRIMARY KEY (`idStudent`,`idSection`),
  KEY `StudentID_idx` (`idStudent`),
  KEY `SectionID_idx` (`idSection`),
  CONSTRAINT `SectionID` FOREIGN KEY (`idSection`) REFERENCES `sections` (`idSection`),
  CONSTRAINT `StudentID` FOREIGN KEY (`idStudent`) REFERENCES `student` (`idSTUDENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regstudent`
--

LOCK TABLES `regstudent` WRITE;
/*!40000 ALTER TABLE `regstudent` DISABLE KEYS */;
INSERT INTO `regstudent` VALUES (160800,301),(160800,308);
/*!40000 ALTER TABLE `regstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `roomNo` int(11) NOT NULL AUTO_INCREMENT,
  `typeRoom` varchar(45) NOT NULL,
  PRIMARY KEY (`roomNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1100,'Standard'),(1101,'Standard'),(1102,'Standard'),(1103,'Standard'),(1104,'Standard'),(1105,'LAB'),(1107,'Computer Lab'),(2100,'Lecture Hall');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarystaff`
--

DROP TABLE IF EXISTS `salarystaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salarystaff` (
  `idSalary` int(11) NOT NULL AUTO_INCREMENT,
  `titleStaff` varchar(45) NOT NULL,
  `payStaff` double NOT NULL,
  PRIMARY KEY (`idSalary`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarystaff`
--

LOCK TABLES `salarystaff` WRITE;
/*!40000 ALTER TABLE `salarystaff` DISABLE KEYS */;
INSERT INTO `salarystaff` VALUES (1,'Teacher',4500.5),(2,'Teacher 5+Exp',5400),(3,'Teacher 10+exp',6200.52),(4,'Coordinator',6800.23);
/*!40000 ALTER TABLE `salarystaff` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `idStaff` int(11) NOT NULL AUTO_INCREMENT,
  `nameLast` varchar(45) NOT NULL,
  `nameFirst` varchar(45) NOT NULL,
  `idSalary` int(11) NOT NULL,
  PRIMARY KEY (`idStaff`),
  KEY `payid_idx` (`idSalary`),
  CONSTRAINT `payid` FOREIGN KEY (`idSalary`) REFERENCES `salarystaff` (`idSalary`)
) ENGINE=InnoDB AUTO_INCREMENT=16005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (16000,'Walter','White',3),(16001,'Pinkman','Jesse',1),(16002,'Reves','Keanue',4),(16004,'Fowler','Amy',2);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `idSTUDENT` int(11) NOT NULL AUTO_INCREMENT,
  `nameLast` varchar(45) NOT NULL,
  `nameFirst` varchar(45) NOT NULL,
  PRIMARY KEY (`idSTUDENT`)
) ENGINE=InnoDB AUTO_INCREMENT=160808 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (160800,'Mena','Janet'),(160801,'Roy','Carl'),(160802,'Johnson','Rufus'),(160803,'Parson','Melinda'),(160804,'Young','Flor'),(160805,'Scott','Jane'),(160806,'Hunt','Darvin'),(160807,'Booker','Michael');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time` (
  `idtime` int(11) NOT NULL AUTO_INCREMENT,
  `timeStart` time NOT NULL,
  `timeEnd` time NOT NULL,
  PRIMARY KEY (`idtime`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES (1,'08:30:00','09:50:00'),(2,'10:00:00','11:20:00'),(3,'11:30:00','12:50:00');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'smsproj'
--

--
-- Dumping routines for database 'smsproj'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-03 14:40:40
