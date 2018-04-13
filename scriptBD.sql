CREATE DATABASE  IF NOT EXISTS `gobiernoCABA` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;
USE `gobiernoCABA`;
-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: gobiernoCABA
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.17.10.1

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
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL AUTO_INCREMENT,
  `nombreEstado` varchar(45) CHARACTER SET utf8 NOT NULL,
  `idPais` int(11) NOT NULL,
  PRIMARY KEY (`idEstado`),
  KEY `idPaisFK_idx` (`idPais`),
  CONSTRAINT `idPaisFK` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Buenos Aires',1),(2,'Cordoba',1),(3,'Salta',1),(4,'Corrientes',1),(5,'Artigas',2),(6,'Durazno',2),(7,'Colonia',2),(8,'Montevideo',2),(9,'Paysandu',2),(10,'Chiapas',3),(11,'Ciudad de Mexico',3),(12,'Morelos',3),(13,'Arizona',4),(14,'Texas',4),(15,'California',4),(16,'Nebraska',4),(17,'Bretaña',5),(18,'Normandia',5),(19,'Occitania',5),(20,'Basilicata',6),(21,'Lacio',6);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadoCivil`
--

DROP TABLE IF EXISTS `estadoCivil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadoCivil` (
  `idEstadoCivil` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(25) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idEstadoCivil`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadoCivil`
--

LOCK TABLES `estadoCivil` WRITE;
/*!40000 ALTER TABLE `estadoCivil` DISABLE KEYS */;
INSERT INTO `estadoCivil` VALUES (1,'Soltero/a'),(2,'Comprometido/a'),(3,'Casado/a'),(4,'Divorciado/a'),(5,'Viudo/a');
/*!40000 ALTER TABLE `estadoCivil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudio`
--

DROP TABLE IF EXISTS `estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudio` (
  `idEstudio` int(11) NOT NULL AUTO_INCREMENT,
  `casaEstudios` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nivel` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `especialidad` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecDesde` date NOT NULL,
  `fecHasta` date NOT NULL,
  `idPostulante` int(11) NOT NULL,
  PRIMARY KEY (`idEstudio`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudio`
--

LOCK TABLES `estudio` WRITE;
/*!40000 ALTER TABLE `estudio` DISABLE KEYS */;
INSERT INTO `estudio` VALUES (29,'asfafs','asfafs','asfsaf','2018-04-10','2018-04-06',14),(30,'asfafs','asfafs','asfsaf','2018-04-10','2018-04-06',15),(31,'asfafs','asfafs','asfsaf','2018-04-10','2018-04-06',16),(34,'asfafs','asfafs','asfsaf','2018-04-10','2018-04-06',19),(35,'asfafs','asfafs','asfsaf','2018-04-10','2018-04-06',20),(36,'asfafs','asfafs','asfsaf','2018-04-10','2018-04-06',21),(37,'Unlam','licenciatura','matemÃ¡tica','2000-03-03','2018-05-03',22),(38,'UNLaM','licenciatura','matemÃ¡tica','2000-03-03','2018-04-12',23),(39,'asffsa','asf','fas','2018-04-03','2018-04-14',26),(40,'asfsafsfa','asfsfafsa','fsasafsaf','2018-04-10','2018-04-14',27),(41,'asfsafsfa','asfsfafsa','fsasafsaf','2018-04-10','2018-04-14',27);
/*!40000 ALTER TABLE `estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expLaboral`
--

DROP TABLE IF EXISTS `expLaboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expLaboral` (
  `idExpLaboral` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `actividad` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `puesto` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nivel` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `pais` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecDesde` date NOT NULL,
  `fecHasta` date NOT NULL,
  `area` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `pCargo` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `pReferencia` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `idPostulante` int(11) NOT NULL,
  PRIMARY KEY (`idExpLaboral`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expLaboral`
--

LOCK TABLES `expLaboral` WRITE;
/*!40000 ALTER TABLE `expLaboral` DISABLE KEYS */;
INSERT INTO `expLaboral` VALUES (10,'qrwrw','qwrrqw','asfsfa','asffsa','afsfsa','2018-04-04','2018-04-21','','sfasaf','asffas','asffsa',14),(11,'qrwrw','qwrrqw','asfsfa','asffsa','afsfsa','2018-04-04','2018-04-21','','sfasaf','asffas','asffsa',15),(12,'qrwrw','qwrrqw','asfsfa','asffsa','afsfsa','2018-04-04','2018-04-21','','sfasaf','asffas','asffsa',16),(14,'qrwrw','qwrrqw','asfsfa','asffsa','afsfsa','2018-04-04','2018-04-21','','sfasaf','asffas','asffsa',19),(15,'north data','informatica','secretaria','top top','Argentina','2000-03-03','2018-03-03','ventas','compra venta de unidades','100','Sandrito',22),(16,'north data','comercio','secretaria','top top','Argentina','2018-05-03','2018-04-12','comercial','','2','Sandrito',23);
/*!40000 ALTER TABLE `expLaboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma`
--

DROP TABLE IF EXISTS `idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idioma` (
  `idIdioma` int(11) NOT NULL AUTO_INCREMENT,
  `idNombreIdioma` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `oral` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `escrito` varchar(15) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `idPostulante` int(11) NOT NULL,
  PRIMARY KEY (`idIdioma`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma`
--

LOCK TABLES `idioma` WRITE;
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
INSERT INTO `idioma` VALUES (8,'4','Intermedio','Avanzado',15),(9,'4','Intermedio','Avanzado',16),(12,'0','0','0',25);
/*!40000 ALTER TABLE `idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listaIdiomas`
--

DROP TABLE IF EXISTS `listaIdiomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listaIdiomas` (
  `idListaIdioma` int(11) NOT NULL AUTO_INCREMENT,
  `nombreIdioma` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`idListaIdioma`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listaIdiomas`
--

LOCK TABLES `listaIdiomas` WRITE;
/*!40000 ALTER TABLE `listaIdiomas` DISABLE KEYS */;
INSERT INTO `listaIdiomas` VALUES (1,'Ingles'),(2,'Frances'),(3,'Italiano'),(4,'Japones'),(5,'Chino');
/*!40000 ALTER TABLE `listaIdiomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `idPais` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePais` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Argentina'),(2,'Uruguay'),(3,'Mexico'),(4,'Estados Unidos'),(5,'Francia'),(6,'Italia');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postulante`
--

DROP TABLE IF EXISTS `postulante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postulante` (
  `idPostulante` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `sexo` varchar(10) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `idEstadoCivil` int(11) NOT NULL,
  `dni` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fijo` varchar(20) CHARACTER SET utf8 NOT NULL,
  `idPais` int(3) NOT NULL,
  `idEstado` int(3) NOT NULL,
  `ciudad` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `calle` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `metas` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idPostulante`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postulante`
--

LOCK TABLES `postulante` WRITE;
/*!40000 ALTER TABLE `postulante` DISABLE KEYS */;
INSERT INTO `postulante` VALUES (16,'Sandro','Dezerio','Masculino',2,'asfsaf','asfasf','asffas',2,5,'Ramos MejÃ­a','wqrqwr','Ã±Ã±asfasf'),(22,'Mi Nombre','Mi Apellido','Femenino',5,'123456789','147852369','123456',2,7,'Alguna Ciudad','Alguna Calle','AlgÃºn tÃ­lde loco.'),(23,'lili','ya','Femenino',3,'123123123','123123123','123123',1,1,'Ramos Mejia','Serrano 814','todas'),(24,'sfaasf','safsfa','Masculino',3,'fsasfa','asf','sfa',1,2,'sfafsa','fasasf','fasfasfsafsaasfasf'),(25,'sfaasf','safsfa','Masculino',3,'fsasfa','asf','sfa',1,2,'sfafsa','fasasf','fasfasfsafsaasfasf'),(26,'sfaasf','safsfa','Masculino',3,'fsasfa','asf','sfa',1,2,'sfafsa','fasasf','fasfasfsafsaasfasf'),(27,'aaaa','ssafsfa','Femenino',3,'1224','124214','125251',2,8,'asffsa','asffsa','asffsafsafsafsa');
/*!40000 ALTER TABLE `postulante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-12 23:26:37
