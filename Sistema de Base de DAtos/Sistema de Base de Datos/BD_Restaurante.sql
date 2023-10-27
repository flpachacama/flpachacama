-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_restaurante
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_nombre` varchar(60) NOT NULL,
  `cat_descripcion` varchar(45) NOT NULL,
  `cat_encargado` varchar(45) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Bebidas','Bebidas sin alcohol','Pedro'),(2,'Plato fuerte','Plato central ','Juan'),(3,'Entrada','Aperitivo','Kevin'),(4,'Postre','Dulces','Pedro'),(5,'Cocteles','Bebidas Alcoholicas','Juan'),(6,'Ensaladas','Legumbres','Kevin'),(7,'Guarniciones','Adicional','Pedro');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingrediente`
--

DROP TABLE IF EXISTS `ingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingrediente` (
  `ing_id` int NOT NULL AUTO_INCREMENT,
  `ing_nombre` varchar(60) NOT NULL,
  `ing_unidad` varchar(45) NOT NULL,
  `ing_stock` float NOT NULL,
  PRIMARY KEY (`ing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingrediente`
--

LOCK TABLES `ingrediente` WRITE;
/*!40000 ALTER TABLE `ingrediente` DISABLE KEYS */;
INSERT INTO `ingrediente` VALUES (1,'Sal','kg',80),(2,'Azucar','kg',50),(3,'Leche','L',10),(4,'Arroz','kg',10),(5,'Tomate','lb',20),(6,'Cebolla','lb',10),(7,'Pimiento','lb',5),(8,'Col','lb',15),(9,'Pollo','lb',20),(10,'Carne','lb',24),(11,'Pescado','lb',18),(12,'Huevos','Unid',30),(13,'Chocolate','gr',25),(14,'Camarones','lb',16),(15,'Naranja','kg',17),(16,'Comino','gr',30),(17,'Ajo','Unid',10),(18,'Fideos','lb',100),(19,'Papa','lb',100),(20,'Aceite','L',10),(21,'Yuca','lb',10),(22,'Harina','lb',30),(23,'Limon','Und',50),(24,'Mantequilla','kg',32),(25,'Lechuga','kg',15),(26,'Fresas','kg',20),(27,'Albaca','lb',5),(28,'Quesos','lb',18),(29,'Agua','L',100),(30,'Embutidos','lb',14),(31,'Cerveza','L',50),(32,'Vino','L',30),(33,'Tequilo','L',40);
/*!40000 ALTER TABLE `ingrediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plato`
--

DROP TABLE IF EXISTS `plato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plato` (
  `plt_id` int NOT NULL,
  `cat_id` int DEFAULT NULL,
  `PLA_NOMBRE` varchar(45) NOT NULL,
  `PLA_DESCRIPCION` varchar(60) NOT NULL,
  `PLA_DIFICULTAD` varchar(5) NOT NULL,
  `PLA_PRECIO` float NOT NULL,
  `PLA_FOTO` longblob,
  PRIMARY KEY (`plt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plato`
--

LOCK TABLES `plato` WRITE;
/*!40000 ALTER TABLE `plato` DISABLE KEYS */;
/*!40000 ALTER TABLE `plato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plato_ingrediente`
--

DROP TABLE IF EXISTS `plato_ingrediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plato_ingrediente` (
  `ing_id` int NOT NULL,
  `plt_id` int NOT NULL,
  `cantidad` float NOT NULL,
  PRIMARY KEY (`ing_id`,`plt_id`),
  KEY `plt_id_idx` (`plt_id`),
  CONSTRAINT `ing_id` FOREIGN KEY (`ing_id`) REFERENCES `ingrediente` (`ing_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `plt_id` FOREIGN KEY (`plt_id`) REFERENCES `plato` (`plt_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plato_ingrediente`
--

LOCK TABLES `plato_ingrediente` WRITE;
/*!40000 ALTER TABLE `plato_ingrediente` DISABLE KEYS */;
/*!40000 ALTER TABLE `plato_ingrediente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-28 13:01:11
