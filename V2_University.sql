CREATE DATABASE  IF NOT EXISTS `university` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `university`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: university
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `assistant_manager`
--

DROP TABLE IF EXISTS `assistant_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistant_manager` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `second_name` varchar(25) NOT NULL,
  `personal_id` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `Sex` varchar(25) NOT NULL,
  `student` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studen_id_idx` (`student`),
  CONSTRAINT `manager_id` FOREIGN KEY (`id`) REFERENCES `student` (`manager`),
  CONSTRAINT `stud_id` FOREIGN KEY (`student`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistant_manager`
--

LOCK TABLES `assistant_manager` WRITE;
/*!40000 ALTER TABLE `assistant_manager` DISABLE KEYS */;
INSERT INTO `assistant_manager` VALUES (1,'jumber','gogichaishvili','4324324fsf','rewewrew@gmail.com','gldani 2 mikro','2038-01-19','Male',1),(2,'vefxia','lomia','4324324fsf','rewewrew@gmail.com','gldani IV mikro','2038-01-19','Male',2),(3,'arsena','marabdeli','4324324fsf','rewewrew@gmail.com','gldani IV mikro','2038-01-19','Male',3),(4,'vaxoie','gorgasala','EFGR3245','assistant@gmail.com','VAKE','1990-01-01','Male',4);
/*!40000 ALTER TABLE `assistant_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `num_of_courses` varchar(25) NOT NULL,
  `subject` int DEFAULT NULL,
  `st` int DEFAULT NULL,
  `lecturer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_course_subject_id` (`subject`),
  KEY `stud_id_idx` (`st`),
  KEY `idx_course_lecturer_id` (`lecturer_id`),
  CONSTRAINT `student` FOREIGN KEY (`st`) REFERENCES `student` (`id`),
  CONSTRAINT `sub-id` FOREIGN KEY (`subject`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'first',1,1,1),(2,'second',2,2,2),(3,'third',3,3,3),(4,'fourth',4,4,4);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(50) NOT NULL,
  `Academic_Degree` varchar(50) NOT NULL,
  `course_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id_idx` (`course_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Computer Science','Bachelor',1,1),(2,'Computer Science','Bachelor',NULL,NULL),(3,'Computer Science','Master',NULL,NULL),(4,'Biology','Master',2,2),(5,'Biology','Bachelor',NULL,NULL),(6,'Physics','Bachelor',3,3),(7,'Medicine','Bachelor',4,4),(8,'Medicine','Master',NULL,NULL);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lection`
--

DROP TABLE IF EXISTS `lection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timetable` datetime DEFAULT NULL,
  `st_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id_idx` (`st_id`),
  KEY `subjektishka_idx` (`subject_id`),
  KEY `time_idx` (`timetable`),
  CONSTRAINT `studentishka` FOREIGN KEY (`st_id`) REFERENCES `student` (`id`),
  CONSTRAINT `subjektishka` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  CONSTRAINT `time` FOREIGN KEY (`timetable`) REFERENCES `timetable` (`subject_time`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lection`
--

LOCK TABLES `lection` WRITE;
/*!40000 ALTER TABLE `lection` DISABLE KEYS */;
INSERT INTO `lection` VALUES (1,'2038-01-19 03:14:07',1,1),(2,'2030-01-19 03:14:07',2,2),(3,'2020-01-19 03:14:07',3,3),(4,'2025-01-19 03:14:07',4,4);
/*!40000 ALTER TABLE `lection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `second_name` varchar(25) NOT NULL,
  `personal_id` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Sex` varchar(25) NOT NULL,
  `account_number` varchar(25) NOT NULL,
  `rank_Position` varchar(25) NOT NULL,
  `sub_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_id_idx` (`sub_id`),
  KEY `mana_id_idx` (`manager_id`),
  KEY `student_id_idx` (`student_id`),
  CONSTRAINT `course` FOREIGN KEY (`id`) REFERENCES `course` (`id`),
  CONSTRAINT `mana_id` FOREIGN KEY (`manager_id`) REFERENCES `assistant_manager` (`id`),
  CONSTRAINT `studen_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `subj_id` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer`
--

LOCK TABLES `lecturer` WRITE;
/*!40000 ALTER TABLE `lecturer` DISABLE KEYS */;
INSERT INTO `lecturer` VALUES (1,'lika','sixarulia','2432432ldfsdf','dfdsf.sweeft@gmail.com','taamrashvili 13','2038-01-19','Female','GE23TBC3432432432','Asssistant',1,1,1),(2,'luka','kutaladze','2432432ldfs23df','dfdsf.sweeft@gmail.com','taamrashvili 13','2045-01-19','male','GE23TBC3432432432','Asssistant',2,2,2),(3,'nugo','sikharulidze','2432432ldfs23df','dfdsf.sweeft@gmail.com','taamrashvili 13','2055-01-19','male','GE23TBC3432432432','Asssistant',3,3,3);
/*!40000 ALTER TABLE `lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturer_not_mandatory_info`
--

DROP TABLE IF EXISTS `lecturer_not_mandatory_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturer_not_mandatory_info` (
  `id` int DEFAULT NULL,
  `second_address` varchar(25) DEFAULT NULL,
  `apartment_address` varchar(25) DEFAULT NULL,
  KEY `lect_id_idx` (`id`),
  CONSTRAINT `lect_id` FOREIGN KEY (`id`) REFERENCES `lecturer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer_not_mandatory_info`
--

LOCK TABLES `lecturer_not_mandatory_info` WRITE;
/*!40000 ALTER TABLE `lecturer_not_mandatory_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `lecturer_not_mandatory_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `personal_id` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `manager` int DEFAULT NULL,
  `faculty_id` int DEFAULT NULL,
  `subj_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_id_idx` (`faculty_id`),
  KEY `subject_id_idx` (`subj_id`),
  KEY `cours_id_idx` (`course_id`),
  KEY `idx_student_manger` (`manager`),
  CONSTRAINT `cours_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`),
  CONSTRAINT `man` FOREIGN KEY (`manager`) REFERENCES `assistant_manager` (`id`),
  CONSTRAINT `sub_id` FOREIGN KEY (`subj_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Otar','basiladze','1312314','dsada@gmail.com','gldani','1500-05-10','man',1,1,2,1),(2,'asmati','metreveli','sfsf123242','ertrtert@gmail.com','gldanis II mikro','1990-01-19','Male',2,1,2,1),(3,'Dato','Tsanava','sfsf123242','ertrtert@gmail.com','gldanis II mikro','1290-01-19','Male',3,3,3,2),(4,'esma','xachaturian','sfsf123242','ertrtert@gmail.com','gldanis II mikro','1090-01-19','Male',4,3,3,2);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_not_mandatory_info`
--

DROP TABLE IF EXISTS `student_not_mandatory_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_not_mandatory_info` (
  `person_id` int DEFAULT NULL,
  `second_addres` varchar(50) DEFAULT NULL,
  `apartment_address` varchar(50) DEFAULT NULL,
  KEY `student_id_idx` (`person_id`),
  CONSTRAINT `id` FOREIGN KEY (`person_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_not_mandatory_info`
--

LOCK TABLES `student_not_mandatory_info` WRITE;
/*!40000 ALTER TABLE `student_not_mandatory_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_not_mandatory_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(50) DEFAULT NULL,
  `lecturer_id` int DEFAULT NULL,
  `stude` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lector _idx` (`lecturer_id`),
  KEY `studentishka_idx` (`stude`),
  KEY `idx_subject_course_id` (`course_id`),
  CONSTRAINT `kursishka` FOREIGN KEY (`course_id`) REFERENCES `subject` (`id`),
  CONSTRAINT `lector ` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturer` (`id`),
  CONSTRAINT `studentshik` FOREIGN KEY (`stude`) REFERENCES `student` (`id`),
  CONSTRAINT `subject_id` FOREIGN KEY (`id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'Informatics',1,1,1),(2,'Python',1,2,2),(3,'Anathomy',2,3,3),(4,'Patanathomy',3,4,4);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject_id` int DEFAULT NULL,
  `lection_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `subject_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_name_idx` (`subject_id`),
  KEY `lection_name_idx` (`lection_id`),
  KEY `student_identification_idx` (`student_id`),
  KEY `idx_timetable_subject_time` (`subject_time`),
  CONSTRAINT `lection_name` FOREIGN KEY (`lection_id`) REFERENCES `lection` (`id`),
  CONSTRAINT `start_time` FOREIGN KEY (`subject_time`) REFERENCES `lection` (`timetable`),
  CONSTRAINT `student_identification` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `subject_name` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
INSERT INTO `timetable` VALUES (1,1,1,1,'2038-01-19 03:14:07'),(2,2,2,2,'2035-04-29 03:14:07'),(3,3,3,3,'2039-11-29 03:14:07'),(4,4,4,4,'2089-10-20 03:14:07');
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-06 10:20:27
