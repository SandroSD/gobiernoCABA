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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudio`
--

LOCK TABLES `estudio` WRITE;
/*!40000 ALTER TABLE `estudio` DISABLE KEYS */;
INSERT INTO `estudio` VALUES (53,'Estudios','Nivel','Especialidad','2018-04-17','2018-04-18',39);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expLaboral`
--

LOCK TABLES `expLaboral` WRITE;
/*!40000 ALTER TABLE `expLaboral` DISABLE KEYS */;
INSERT INTO `expLaboral` VALUES (28,'Union Personal','Analista y Programador','Programador Web','Junior','Argentina','2017-06-22','2018-03-13','Desarrollos Especiales','Scripts BASH.\r\nDesarrollo MÃ³dulos PHP con MySQL.','0','1',39),(29,'Empresa 2','Actividad 2','Puesto 2','Nivel 2','Pais 2','2018-04-02','2018-04-03','Area 2','DescripciÃ³n 2','0','0',39);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma`
--

LOCK TABLES `idioma` WRITE;
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
INSERT INTO `idioma` VALUES (55,'1','Intermedio','Avanzado',39),(56,'2','Bajo','Avanzado',39),(57,'4','Intermedio','Avanzado',39);
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
  `idEstado` int(3) NOT NULL,
  `ciudad` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `calle` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `metas` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idPostulante`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postulante`
--

LOCK TABLES `postulante` WRITE;
/*!40000 ALTER TABLE `postulante` DISABLE KEYS */;
INSERT INTO `postulante` VALUES (39,'Sandro','Dezerio','Masculino',1,'35946018','1560215944','46561121',1,'Ramos Mejia','Serrano 814','Muchos Objetivos');
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

-- Dump completed on 2018-04-16  9:24:38
