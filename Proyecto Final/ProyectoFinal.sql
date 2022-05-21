-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: dbtiendaropa
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `idarticulo` int NOT NULL AUTO_INCREMENT,
  `fk_idtipo_prenda` varchar(20) NOT NULL,
  `fk_idmarca` varchar(20) DEFAULT NULL,
  `fk_idmodelo` varchar(20) DEFAULT NULL,
  `fk_idTallas` varchar(20) DEFAULT NULL,
  `fk_idmaterial` varchar(12) DEFAULT NULL,
  `precio` decimal(10,0) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`idarticulo`),
  KEY `fk_prenda_tipo_prenda1_idx` (`fk_idtipo_prenda`),
  KEY `fk_Articulo_marca1_idx` (`fk_idmarca`),
  KEY `fk_Articulo_Tallas1_idx` (`fk_idTallas`),
  KEY `fk_Articulo_modelo1_idx` (`fk_idmodelo`),
  KEY `fk_Articulo_material1_idx` (`fk_idmaterial`),
  CONSTRAINT `fk_Articulo_marca1` FOREIGN KEY (`fk_idmarca`) REFERENCES `marca` (`idmarca`),
  CONSTRAINT `fk_Articulo_material1` FOREIGN KEY (`fk_idmaterial`) REFERENCES `material` (`idmaterial`),
  CONSTRAINT `fk_Articulo_modelo1` FOREIGN KEY (`fk_idmodelo`) REFERENCES `modelo` (`idmodelo`),
  CONSTRAINT `fk_Articulo_Tallas1` FOREIGN KEY (`fk_idTallas`) REFERENCES `tallas` (`idTallas`),
  CONSTRAINT `fk_prenda_tipo_prenda1` FOREIGN KEY (`fk_idtipo_prenda`) REFERENCES `tipo_prenda` (`idtipo_prenda`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (1,'TIP001','MC001','MOD001','T001',NULL,120,NULL,17),(2,'TIP001','MC001','MOD001','T002',NULL,120,NULL,23),(3,'TIP001','MC001','MOD001','T003',NULL,120,NULL,20),(4,'TIP001','MC001','MOD001','T004',NULL,120,NULL,23),(5,'TIP001','MC001','MOD002','T001',NULL,95,NULL,57),(6,'TIP001','MC001','MOD002','T002',NULL,95,NULL,23),(7,'TIP001','MC001','MOD002','T003',NULL,95,NULL,36),(8,'TIP001','MC001','MOD002','T004',NULL,95,NULL,43),(9,'TIP001','MC002','MOD001','T001',NULL,110,NULL,47),(10,'TIP001','MC002','MOD001','T002',NULL,110,NULL,38),(11,'TIP001','MC002','MOD001','T003',NULL,110,NULL,38),(12,'TIP001','MC002','MOD001','T004',NULL,110,NULL,13),(13,'TIP001','MC002','MOD002','T001',NULL,85,NULL,15),(14,'TIP001','MC002','MOD002','T002',NULL,85,NULL,25),(15,'TIP001','MC002','MOD002','T003',NULL,85,NULL,30),(16,'TIP001','MC002','MOD002','T004',NULL,85,NULL,8),(17,'TIP001','MC002','MOD003','T001',NULL,95,NULL,21),(18,'TIP001','MC002','MOD003','T002',NULL,95,NULL,15),(19,'TIP001','MC002','MOD003','T003',NULL,95,NULL,8),(20,'TIP001','MC002','MOD003','T004',NULL,95,NULL,11),(21,'TIP001','MC002','MOD004','T001',NULL,65,NULL,25),(22,'TIP001','MC002','MOD004','T002',NULL,65,NULL,6),(23,'TIP001','MC002','MOD004','T003',NULL,65,NULL,9),(24,'TIP001','MC002','MOD004','T004',NULL,65,NULL,5),(25,'TIP001','MC003','MOD001','T001',NULL,150,NULL,20),(26,'TIP001','MC003','MOD001','T002',NULL,150,NULL,10),(27,'TIP001','MC003','MOD001','T003',NULL,150,NULL,15),(28,'TIP001','MC003','MOD001','T004',NULL,150,NULL,12),(29,'TIP001','MC003','MOD002','T001',NULL,120,NULL,19),(30,'TIP001','MC003','MOD002','T002',NULL,120,NULL,29),(31,'TIP001','MC003','MOD002','T003',NULL,120,NULL,30),(32,'TIP001','MC003','MOD002','T004',NULL,120,NULL,24),(33,'TIP001','MC003','MOD003','T001',NULL,160,NULL,19),(34,'TIP001','MC003','MOD003','T002',NULL,160,NULL,30),(35,'TIP001','MC003','MOD003','T003',NULL,160,NULL,24),(36,'TIP001','MC003','MOD003','T004',NULL,160,NULL,15),(37,'TIP001','MC003','MOD004','T001',NULL,95,NULL,19),(38,'TIP001','MC003','MOD004','T002',NULL,95,NULL,10),(39,'TIP001','MC003','MOD004','T003',NULL,95,NULL,15),(40,'TIP001','MC003','MOD004','T004',NULL,95,NULL,10),(41,'TIP001','MC004',NULL,'T001',NULL,55,NULL,15),(42,'TIP001','MC004',NULL,'T002',NULL,55,NULL,10),(43,'TIP001','MC004',NULL,'T003',NULL,55,NULL,8),(44,'TIP001','MC004',NULL,'T004',NULL,55,NULL,20),(45,'TIP001','MC005',NULL,'T001',NULL,95,NULL,15),(46,'TIP001','MC005',NULL,'T002',NULL,95,NULL,17),(47,'TIP001','MC005',NULL,'T003',NULL,95,NULL,20),(48,'TIP001','MC005',NULL,'T004',NULL,95,NULL,10),(49,'TIP002','MC001',NULL,NULL,NULL,75,NULL,20),(50,'TIP002',NULL,'MOD010',NULL,'MAT001',55,NULL,24),(51,'TIP002',NULL,'MOD011',NULL,'MAT001',38,NULL,29),(52,'TIP002',NULL,'MOD010',NULL,'MAT002',45,NULL,32),(53,'TIP002',NULL,'MOD012',NULL,'MAT002',20,NULL,22),(54,'TIP003',NULL,'MOD005','T001',NULL,240,NULL,25),(55,'TIP003',NULL,'MOD005','T002',NULL,240,NULL,25),(56,'TIP003',NULL,'MOD005','T003',NULL,240,NULL,25),(57,'TIP003',NULL,'MOD005','T004',NULL,240,NULL,23),(58,'TIP003',NULL,'MOD009','T001',NULL,260,NULL,27),(59,'TIP003',NULL,'MOD009','T002',NULL,260,NULL,19),(60,'TIP003',NULL,'MOD009','T003',NULL,260,NULL,22),(61,'TIP003',NULL,'MOD009','T004',NULL,260,NULL,25),(62,'TIP003',NULL,'MOD006','T001',NULL,280,NULL,17),(63,'TIP003',NULL,'MOD006','T002',NULL,280,NULL,30),(64,'TIP003',NULL,'MOD006','T003',NULL,280,NULL,31),(65,'TIP003',NULL,'MOD006','T004',NULL,280,NULL,37),(66,'TIP003',NULL,'MOD007','T001',NULL,220,NULL,15),(67,'TIP003',NULL,'MOD007','T002',NULL,220,NULL,25),(68,'TIP003',NULL,'MOD007','T003',NULL,220,NULL,26),(69,'TIP003',NULL,'MOD007','T004',NULL,220,NULL,30),(70,'TIP003',NULL,'MOD008','T001',NULL,150,NULL,20),(71,'TIP003',NULL,'MOD008','T002',NULL,150,NULL,25),(72,'TIP003',NULL,'MOD008','T003',NULL,150,NULL,33),(73,'TIP003',NULL,'MOD008','T004',NULL,150,NULL,29),(74,'TIP005',NULL,NULL,'T001',NULL,50,'VESTIR GELGADA',24),(75,'TIP005',NULL,NULL,'T002',NULL,50,'VESTIR GELGADA',15),(76,'TIP005',NULL,NULL,'T003',NULL,50,'VESTIR GELGADA',30),(77,'TIP005',NULL,NULL,'T004',NULL,50,'VESTIR GELGADA',10),(78,'TIP005',NULL,NULL,'T001',NULL,65,'GRUESA COLOR ENTERO',25),(79,'TIP005',NULL,NULL,'T002',NULL,65,'GRUESA COLOR ENTERO',20),(80,'TIP005',NULL,NULL,'T003',NULL,65,'GRUESA COLOR ENTERO',32),(81,'TIP005',NULL,NULL,'T004',NULL,65,'GRUESA COLOR ENTERO',15),(82,'TIP005',NULL,NULL,'T001',NULL,75,'CLASICO CON DISEÑO',25),(83,'TIP005',NULL,NULL,'T002',NULL,75,'CLASICO CON DISEÑO',30),(84,'TIP005',NULL,NULL,'T003',NULL,75,'CLASICO CON DISEÑO',15),(85,'TIP005',NULL,NULL,'T004',NULL,75,'CLASICO CON DISEÑO',26),(86,'TIP005',NULL,NULL,'T001',NULL,95,'IMPORTADA',25),(87,'TIP005',NULL,NULL,'T002',NULL,95,'IMPORTADA',28),(88,'TIP005',NULL,NULL,'T003',NULL,95,'IMPORTADA',36),(89,'TIP005',NULL,NULL,'T004',NULL,95,'IMPORTADA',26),(90,'TIP005',NULL,NULL,'T001',NULL,130,'CON FORRO',35),(91,'TIP005',NULL,NULL,'T002',NULL,130,'CON FORRO',23),(92,'TIP005',NULL,NULL,'T003',NULL,130,'CON FORRO',35),(93,'TIP005',NULL,NULL,'T004',NULL,130,'CON FORRO',20),(94,'TIP006',NULL,NULL,'T001',NULL,280,'CON CAPUCHA',25),(95,'TIP006',NULL,NULL,'T002',NULL,280,'CON CAPUCHA',35),(96,'TIP006',NULL,NULL,'T003',NULL,280,'CON CAPUCHA',26),(97,'TIP006',NULL,NULL,'T004',NULL,280,'CON CAPUCHA',17),(98,'TIP006',NULL,NULL,'T001',NULL,300,'CON BOTONES',19),(99,'TIP006',NULL,NULL,'T002',NULL,300,'CON BOTONES',33),(100,'TIP006',NULL,NULL,'T003',NULL,300,'CON BOTONES',26),(101,'TIP006',NULL,NULL,'T004',NULL,300,'CON BOTONES',30),(102,'TIP006',NULL,NULL,'T001',NULL,420,'LARGO MASCULINO',20),(103,'TIP006',NULL,NULL,'T002',NULL,420,'LARGO MASCULINO',36),(104,'TIP006',NULL,NULL,'T003',NULL,420,'LARGO MASCULINO',40),(105,'TIP006',NULL,NULL,'T004',NULL,420,'LARGO MASCULINO',27),(106,'TIP006',NULL,NULL,'T001',NULL,380,'ALPACA',24),(107,'TIP006',NULL,NULL,'T002',NULL,380,'ALPACA',35),(108,'TIP006',NULL,NULL,'T003',NULL,380,'ALPACA',29),(109,'TIP006',NULL,NULL,'T004',NULL,380,'ALPACA',15),(110,'TIP006',NULL,NULL,'T001',NULL,260,'PAÑO BEBE',30),(111,'TIP006',NULL,NULL,'T002',NULL,260,'PAÑO BEBE',20),(112,'TIP006',NULL,NULL,'T003',NULL,260,'PAÑO BEBE',15),(113,'TIP006',NULL,NULL,'T004',NULL,260,'PAÑO BEBE',26),(114,'TIP006',NULL,NULL,'T001',NULL,460,'LARGO FEMENINO',34),(115,'TIP006',NULL,NULL,'T002',NULL,460,'LARGO FEMENINO',40),(116,'TIP006',NULL,NULL,'T003',NULL,460,'LARGO FEMENINO',25),(117,'TIP006',NULL,NULL,'T004',NULL,460,'LARGO FEMENINO',27),(118,'TIP007',NULL,NULL,NULL,NULL,45,'SOLA',90),(119,'TIP007',NULL,NULL,NULL,NULL,55,'CAJA',50),(120,'TIP008',NULL,'MOD004','T001','MAT003',75,NULL,35),(121,'TIP008',NULL,'MOD004','T002','MAT003',75,NULL,25),(122,'TIP008',NULL,'MOD004','T003','MAT003',75,NULL,29),(123,'TIP008',NULL,'MOD004','T004','MAT003',75,NULL,28),(124,'TIP008',NULL,'MOD013','T001','MAT003',55,NULL,15),(125,'TIP008',NULL,'MOD013','T002','MAT003',55,NULL,30),(126,'TIP008',NULL,'MOD013','T003','MAT003',55,NULL,28),(127,'TIP008',NULL,'MOD013','T004','MAT003',55,NULL,20),(128,'TIP008',NULL,NULL,'T001','MAT004',68,NULL,35),(129,'TIP008',NULL,NULL,'T002','MAT004',68,NULL,30),(130,'TIP008',NULL,NULL,'T003','MAT004',68,NULL,25),(131,'TIP008',NULL,NULL,'T004','MAT004',68,NULL,20),(132,'TIP009',NULL,NULL,NULL,'MAT001',140,NULL,20),(133,'TIP010',NULL,NULL,NULL,'MAT001',140,NULL,25),(134,'TIP011',NULL,'MOD014','T005',NULL,130,NULL,20),(135,'TIP011',NULL,'MOD014','T006',NULL,130,NULL,15),(136,'TIP011',NULL,'MOD014','T007',NULL,130,NULL,16),(137,'TIP011',NULL,'MOD002','T005',NULL,85,NULL,20),(138,'TIP011',NULL,'MOD002','T006',NULL,85,NULL,15),(139,'TIP011',NULL,'MOD002','T007',NULL,85,NULL,35),(140,'TIP011',NULL,'MOD001','T005',NULL,125,NULL,30),(141,'TIP011',NULL,'MOD001','T006',NULL,125,NULL,23),(142,'TIP011',NULL,'MOD001','T007',NULL,125,NULL,20),(143,'TIP012',NULL,'MOD010',NULL,NULL,75,NULL,25),(144,'TIP012',NULL,'MOD011',NULL,NULL,45,NULL,15),(145,'TIP013',NULL,'MOD010',NULL,NULL,55,NULL,30),(146,'TIP013',NULL,'MOD011',NULL,NULL,35,NULL,25),(147,'TIP014',NULL,NULL,NULL,NULL,25,'NACIONAL',30),(148,'TIP014',NULL,NULL,NULL,NULL,35,'IMPORTADO',35),(149,'TIP004',NULL,NULL,'T001',NULL,180,'DRILL SANJERIZADO',30),(150,'TIP004',NULL,NULL,'T002',NULL,180,'DRILL SANJERIZADO',25),(151,'TIP004',NULL,NULL,'T003',NULL,180,'DRILL SANJERIZADO',15),(152,'TIP004',NULL,NULL,'T004',NULL,180,'DRILL SANJERIZADO',28),(153,'TIP004',NULL,NULL,'T001',NULL,230,'TELA IMPERMEABLE',18),(154,'TIP004',NULL,NULL,'T002',NULL,230,'TELA IMPERMEABLE',35),(155,'TIP004',NULL,NULL,'T003',NULL,230,'TELA IMPERMEABLE',30),(156,'TIP004',NULL,NULL,'T004',NULL,230,'TELA IMPERMEABLE',24),(157,'TIP004',NULL,'MOD010','T001','MAT002',220,NULL,25),(158,'TIP004',NULL,'MOD010','T002','MAT002',220,NULL,30),(159,'TIP004',NULL,'MOD010','T003','MAT002',220,NULL,15),(160,'TIP004',NULL,'MOD010','T004','MAT002',220,NULL,20),(161,'TIP001','MC001','MOD001','T001',NULL,130,NULL,20);
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boleta`
--

DROP TABLE IF EXISTS `boleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boleta` (
  `Num_boleta` varchar(20) NOT NULL,
  `fecha_bol` datetime NOT NULL,
  `Total_b` double NOT NULL,
  PRIMARY KEY (`Num_boleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleta`
--

LOCK TABLES `boleta` WRITE;
/*!40000 ALTER TABLE `boleta` DISABLE KEYS */;
INSERT INTO `boleta` VALUES ('B','2022-05-15 19:55:36',790),('B0001','2022-05-17 11:11:02',0),('B00010','2022-05-19 08:58:41',0),('B00011','2022-05-19 18:32:32',0),('B00012','2022-05-19 19:07:41',0),('B00013','2022-05-19 19:25:29',0),('B00014','2022-05-20 18:41:41',975),('B00015','2022-05-21 00:18:45',0),('B00016','2022-05-21 00:54:10',1200),('B00017','2022-05-21 01:41:28',355),('B00018','2022-05-21 01:49:51',0),('B00019','2022-05-21 02:02:37',2580),('B0002','2022-05-17 11:23:50',0),('B00020','2022-05-21 02:19:11',0),('B00021','2022-05-21 02:21:50',0),('B00022','2022-05-21 11:30:26',340),('B00023','2022-05-21 11:34:14',0),('B00024','2022-05-21 15:06:27',1240),('B00025','2022-05-21 15:10:13',0),('B0003','2022-05-17 12:08:37',0),('B0004','2022-05-18 09:06:13',350),('B0005','2022-05-18 09:49:08',0),('B0006','2022-05-18 10:05:33',0),('B0007','2022-05-18 10:16:08',0),('B0008','2022-05-18 10:18:46',0),('B0009','2022-05-18 10:27:55',0);
/*!40000 ALTER TABLE `boleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `fk_DNI` varchar(8) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_Cliente_persona1_idx` (`fk_DNI`),
  CONSTRAINT `fk_Cliente_persona1` FOREIGN KEY (`fk_DNI`) REFERENCES `persona` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (19,'54562595'),(8,'54782625'),(1,'61251548'),(12,'65124895'),(13,'65214589'),(7,'65254517'),(3,'68412514'),(6,'69521459'),(20,'70601797'),(21,'71251459'),(2,'72153658'),(11,'75124869'),(5,'75216489'),(18,'75216489'),(17,'76596512'),(4,'78452159'),(9,'81254159'),(14,'82153651'),(15,'84252166'),(16,'84652515'),(10,'89521547');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_medidas`
--

DROP TABLE IF EXISTS `cliente_medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_medidas` (
  `idCleinteM` varchar(45) NOT NULL,
  `fk_id_cliente` int NOT NULL,
  `fk_idMedidasaco` varchar(12) NOT NULL,
  `fk_idmedidapantalon` varchar(12) NOT NULL,
  PRIMARY KEY (`idCleinteM`),
  KEY `fk_Cliente_Medidas_Cliente1_idx` (`fk_id_cliente`),
  KEY `fk_Cliente_Medidas_Medidasaco1_idx` (`fk_idMedidasaco`),
  KEY `fk_Cliente_Medidas_medidapantalon1_idx` (`fk_idmedidapantalon`),
  CONSTRAINT `fk_Cliente_Medidas_Cliente1` FOREIGN KEY (`fk_id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `fk_Cliente_Medidas_medidapantalon1` FOREIGN KEY (`fk_idmedidapantalon`) REFERENCES `medidapantalon` (`idmedidapantalon`),
  CONSTRAINT `fk_Cliente_Medidas_Medidasaco1` FOREIGN KEY (`fk_idMedidasaco`) REFERENCES `medidasaco` (`idMedidasaco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_medidas`
--

LOCK TABLES `cliente_medidas` WRITE;
/*!40000 ALTER TABLE `cliente_medidas` DISABLE KEYS */;
INSERT INTO `cliente_medidas` VALUES ('MCLI001',1,'MES001','MEP001'),('MCLI002',2,'MES002','MEP001'),('MCLI003',3,'MES003','MEP003'),('MCLI004',4,'MES004','MEP004'),('MCLI005',10,'MES005','MEP005'),('MCLI006',11,'MES006','MEP006'),('MCLI007',14,'MES007','MEP007'),('MCLI008',15,'MES008','MEP008'),('MCLI009',20,'MES009','MEP009');
/*!40000 ALTER TABLE `cliente_medidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante`
--

DROP TABLE IF EXISTS `comprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprobante` (
  `idComprobante` int NOT NULL AUTO_INCREMENT,
  `fk_id_cliente` int DEFAULT NULL,
  `fk_Num_boleta` varchar(20) DEFAULT NULL,
  `fk_Num_factura` varchar(20) DEFAULT NULL,
  `costo` double DEFAULT NULL,
  PRIMARY KEY (`idComprobante`),
  KEY `fk_Comprobante_boleta1_idx` (`fk_Num_boleta`),
  KEY `fk_Comprobante_factura1_idx` (`fk_Num_factura`),
  KEY `fk_id_cliente_Cliente1` (`fk_id_cliente`),
  CONSTRAINT `fk_Comprobante_boleta1` FOREIGN KEY (`fk_Num_boleta`) REFERENCES `boleta` (`Num_boleta`),
  CONSTRAINT `fk_Comprobante_factura1` FOREIGN KEY (`fk_Num_factura`) REFERENCES `factura` (`Num_factura`),
  CONSTRAINT `fk_id_cliente_Cliente1` FOREIGN KEY (`fk_id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante`
--

LOCK TABLES `comprobante` WRITE;
/*!40000 ALTER TABLE `comprobante` DISABLE KEYS */;
INSERT INTO `comprobante` VALUES (1,NULL,'B','F',1010),(2,NULL,'B','F',835),(3,NULL,'B','F',2955),(4,1,'B0004','F',350),(5,3,'B','F0005',470),(6,2,'B','F0006',930),(7,3,'B','F0007',230),(8,5,'B','F0008',470),(9,7,'B','F0009',220),(10,1,'B','F00010',758),(11,NULL,'B','F',2160),(12,2,'B','F00012',2920),(13,4,'B','F00013',2425),(14,9,'B00014','F',975),(15,10,'B','F00015',1060),(16,11,'B00016','F',1200),(17,12,'B00017','F',355),(18,13,'B','F00018',1020),(19,14,'B00019','F',2580),(20,15,'B','F00020',580),(21,16,'B','F00021',240),(22,17,'B00022','F',340),(23,19,'B','F00023',440),(24,20,'B00024','F',1240),(25,21,'B','F00025',790);
/*!40000 ALTER TABLE `comprobante` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `crear_boleta_factura` AFTER INSERT ON `comprobante` FOR EACH ROW begin
	insert into boleta (Num_boleta,fecha_bol,total_b)
	values(concat("B000",new.idcomprobante),now(),0);
	insert into factura (num_factura,fecha_fact,subtotal,IGV,total)
	values(concat("F000",new.idcomprobante),now(),0,0,0);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_bol_fac` BEFORE UPDATE ON `comprobante` FOR EACH ROW begin
	declare igvc, totalf double;
    set igvc = new.costo*0.18;
    set totalf = new.costo+igvc;
	if old.fk_Num_boleta != new.fk_Num_boleta THEN
		update boleta set total_b=new.costo where num_boleta=new.fk_Num_boleta;
	else
		if old.fk_Num_factura != new.fk_Num_factura THEN
		update factura 
        set subtotal=new.costo,
        igv=igvc,
        total=totalf
        where Num_factura=new.fk_Num_factura;
		END if;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `acosto_bol_fac` BEFORE UPDATE ON `comprobante` FOR EACH ROW begin
declare igvc, totalf double;
set igvc = new.costo*0.18;
set totalf = new.costo+igvc;
if old.costo != new.costo THEN
update boleta set total_b=new.costo where num_boleta=new.fk_Num_boleta;
update factura
set subtotal=new.costo,
igv=igvc,
total=totalf
where Num_factura=new.fk_Num_factura;
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `Num_factura` varchar(20) NOT NULL,
  `fecha_fact` datetime NOT NULL,
  `subtotal` double NOT NULL,
  `IGV` double NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`Num_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES ('F','2022-05-15 19:55:36',790,142.2,932.2),('F0001','2022-05-17 11:11:02',0,0,0),('F00010','2022-05-19 08:58:41',758,136.44,894.44),('F00011','2022-05-19 18:32:32',0,0,0),('F00012','2022-05-19 19:07:41',2920,525.6,3445.6),('F00013','2022-05-19 19:25:29',2425,436.5,2861.5),('F00014','2022-05-20 18:41:41',0,0,0),('F00015','2022-05-21 00:18:45',1060,190.79999999999998,1250.8),('F00016','2022-05-21 00:54:10',0,0,0),('F00017','2022-05-21 01:41:28',0,0,0),('F00018','2022-05-21 01:49:51',1020,183.6,1203.6),('F00019','2022-05-21 02:02:37',0,0,0),('F0002','2022-05-17 11:23:50',0,0,0),('F00020','2022-05-21 02:19:11',580,104.39999999999999,684.4),('F00021','2022-05-21 02:21:50',240,43.199999999999996,283.2),('F00022','2022-05-21 11:30:26',0,0,0),('F00023','2022-05-21 11:34:14',440,79.2,519.2),('F00024','2022-05-21 15:06:27',0,0,0),('F00025','2022-05-21 15:10:13',790,142.2,932.2),('F0003','2022-05-17 12:08:37',0,0,0),('F0004','2022-05-18 09:06:13',0,0,0),('F0005','2022-05-18 09:49:08',470,84.6,554.6),('F0006','2022-05-18 10:05:33',930,167.4,1097.4),('F0007','2022-05-18 10:16:08',230,41.4,271.4),('F0008','2022-05-18 10:18:46',470,84.6,554.6),('F0009','2022-05-18 10:27:55',220,39.6,259.6);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `idmarca` varchar(20) NOT NULL,
  `marca` varchar(45) NOT NULL,
  PRIMARY KEY (`idmarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES ('MC001','DONATELI'),('MC002','PAOLO MALDINI'),('MC003','JON JOLDEN'),('MC004','CHARLES'),('MC005','CARLOS BONOMI');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca_tela`
--

DROP TABLE IF EXISTS `marca_tela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca_tela` (
  `idmarca_tela` varchar(12) NOT NULL,
  `marca` varchar(45) NOT NULL,
  PRIMARY KEY (`idmarca_tela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca_tela`
--

LOCK TABLES `marca_tela` WRITE;
/*!40000 ALTER TABLE `marca_tela` DISABLE KEYS */;
INSERT INTO `marca_tela` VALUES ('MTA001','CASIMIR'),('MTA002','LANILLA'),('MTA003','CARDIFF'),('MTA004','BARRINTON');
/*!40000 ALTER TABLE `marca_tela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `idmaterial` varchar(12) NOT NULL,
  `material` varchar(45) NOT NULL,
  PRIMARY KEY (`idmaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES ('MAT001','CUERO'),('MAT002','CUERINA'),('MAT003','LANA'),('MAT004','HILO');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medidapantalon`
--

DROP TABLE IF EXISTS `medidapantalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medidapantalon` (
  `idmedidapantalon` varchar(12) NOT NULL,
  `cintura` double NOT NULL,
  `cadera` double NOT NULL,
  `muslo` double NOT NULL,
  `rodilla` double NOT NULL,
  `boca` double NOT NULL,
  `jareta` double NOT NULL,
  `largo` double NOT NULL,
  PRIMARY KEY (`idmedidapantalon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medidapantalon`
--

LOCK TABLES `medidapantalon` WRITE;
/*!40000 ALTER TABLE `medidapantalon` DISABLE KEYS */;
INSERT INTO `medidapantalon` VALUES ('MEP001',98,108,33,28,21.5,29,97),('MEP002',84,95,28,22,17,26.5,85),('MEP003',96,108,38,25,21,28,95),('MEP004',98,108,33,28,21.5,29,97),('MEP005',99,107,35,26,22,28,95),('MEP006',98,105,34,25,21,30,94),('MEP007',84,95,30,30,20,27.5,89),('MEP008',99,107,35,27,22,30,96),('MEP009',99,105,35,29,22,30,95);
/*!40000 ALTER TABLE `medidapantalon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medidasaco`
--

DROP TABLE IF EXISTS `medidasaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medidasaco` (
  `idMedidasaco` varchar(12) NOT NULL,
  `cintura` double NOT NULL,
  `cadera` double NOT NULL,
  `espalda` double NOT NULL,
  `talle` double NOT NULL,
  `hombro` double NOT NULL,
  `manga` double NOT NULL,
  `largo` double NOT NULL,
  `pecho` varchar(10) DEFAULT NULL,
  `busto` varchar(10) DEFAULT NULL,
  `separacion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idMedidasaco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medidasaco`
--

LOCK TABLES `medidasaco` WRITE;
/*!40000 ALTER TABLE `medidasaco` DISABLE KEYS */;
INSERT INTO `medidasaco` VALUES ('MES001',104,43,44,14,63,77,104,'106','',''),('MES002',102,109,39,45,11,59,63,'109','',''),('MES003',90,102,38,40,12,56,29.72,'','98','19'),('MES004',89,100,39,40,11,57,32,'','99','20'),('MES005',103,110,40,44,13,60,65,'110','',''),('MES006',104,110,39,45,15,59,66,'111','',''),('MES007',90,105,38,45,11,60,65,'','99','22'),('MES008',105,111,40.5,45.5,13,62,65,'112','',''),('MES009',106,110,39,14,14,60,64,'112','','');
/*!40000 ALTER TABLE `medidasaco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo`
--

DROP TABLE IF EXISTS `modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo` (
  `idmodelo` varchar(20) NOT NULL,
  `nom_modelo` varchar(45) NOT NULL,
  PRIMARY KEY (`idmodelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo`
--

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` VALUES ('MOD001','SLIM FIT'),('MOD002','CLASICO'),('MOD003','PREMIUM'),('MOD004','COLOR ENTERO'),('MOD005','CORDUROY'),('MOD006','WAFER'),('MOD007','CORDUROY IMPORTADO'),('MOD008','DEPORTIVO'),('MOD009','PIEL DE DURAZNO'),('MOD010','DE VESTIR'),('MOD011','SPORT'),('MOD012','DE CUERO'),('MOD013','CON DISEÑO'),('MOD014','DRILL');
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_tela`
--

DROP TABLE IF EXISTS `modelo_tela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_tela` (
  `idmodelo_tela` varchar(12) NOT NULL,
  `nombre_modelo` varchar(45) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `metros` decimal(10,0) NOT NULL,
  `fk_idmarca_tela` varchar(12) NOT NULL,
  PRIMARY KEY (`idmodelo_tela`),
  KEY `fk_modelo_tela_marca_tela1_idx` (`fk_idmarca_tela`),
  CONSTRAINT `fk_modelo_tela_marca_tela1` FOREIGN KEY (`fk_idmarca_tela`) REFERENCES `marca_tela` (`idmarca_tela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_tela`
--

LOCK TABLES `modelo_tela` WRITE;
/*!40000 ALTER TABLE `modelo_tela` DISABLE KEYS */;
INSERT INTO `modelo_tela` VALUES ('MOT001','GOLD COLOR ENTERO',480,100,'MTA001'),('MOT002','GOLD RAYAS',550,150,'MTA001'),('MOT003','SUPER 100',600,118,'MTA001'),('MOT004','MANCHESTER',650,160,'MTA001'),('MOT005','BARTON',600,130,'MTA001'),('MOT006','TACTO EN LANA',680,88,'MTA001'),('MOT007','GOLD',580,102,'MTA002'),('MOT008','BARRINTON',750,110,'MTA002'),('MOT009','CARDIFF',620,128,'MTA003'),('MOT010','RICHWOOL',950,196,'MTA004'),('MOT011','SUPER 100',1200,247,'MTA004'),('MOT012','SUPER 120',1200,298,'MTA004');
/*!40000 ALTER TABLE `modelo_tela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `DNI` varchar(8) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido_p` varchar(45) NOT NULL,
  `apellido_m` varchar(45) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fk_idtipo_persona` int NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `fk_persona_tipo_persona1_idx` (`fk_idtipo_persona`),
  CONSTRAINT `fk_persona_tipo_persona1` FOREIGN KEY (`fk_idtipo_persona`) REFERENCES `tipo_persona` (`idtipo_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES ('31654898','JUAQUIN','ESPINOZA','TOLEDO','AV. CONFRATERNIDAD','','juaquin123@gmail.com',2),('54562595','DANILO','MARCHENA ','MELGAREJO','LOS OLIVOS','942156255','',1),('54782625','ROSA','MELGAREJO','TORRES','AV. GAMARRA','','rosaT1@gmail.com',1),('61251232','MARIA','CORPUS','MACEDO','AV. UNIVERSITARIA','','maria125@gmail.com',2),('61251548','JEANFRANCO','MORENO','CACHA','MALECON NORTE','915256318','',1),('63156425','LIDA','PEREZ','TOLENTINO','AV. MANCO CAPAC','921089251','lidaP_15@gmail.com',2),('65124895','ANTONI','MACEDO','VILLACORTA','JR. LAS MANZANAS ','943021568','antomacedo10@gmail.com',1),('65214589','YESSICA','MONTOYA','CABRERA','AV. LOS PINOS','943211568','',1),('65254517','VERONICA','TAHUA','RENJIFO','','975846652','vero145@gmail.com',1),('68412514','PABLO','SANCHEZ','PAJUELO','AV. AGUSTIN GAMARRA','943050207','',1),('69521459','MONICA','CASTILLO','QUISPE','','921546658','monicac12@gmail.com',1),('70256518','ERNESTO','RODRIGUEZ','LUCERO','LOS GIRASOLES','','ernesto_corp@gmail.com',2),('70601797','LUIS','GARRO','TOORES','AV. ATUSPARIA','942156255','',1),('71251459','JHON','PACHAS','MONTOYA','JR. LOS MOLINOS','945126258','',1),('71289258','YANET','MORENO','CACHA','MALECON NORTE','921589512','confecionesYL@gmail.com',1),('72153658','JUAN','MACEDO','VILCA','AV. SOCRATES','925678989','',1),('75124869','WALTER','GONZALES','TORRES','JR. HONORES ','943025152','',1),('75216489','DANILO','MELGAREJO','ALVINO','AV. LOS PORTALES','','danimel5@gmail.com',1),('75425416','MARIBEL','TORRES','TOLENTINO','VILON ALTO','912514589','maribel123@gmail.com',1),('76596512','CRISTIAN','PEREZ','CARRION','PATAY','925145865','cpre@gmail.com',1),('78452159','MATEO','SALAZAR','VILLACORTA','','925678989','mateo310@gmail.com',1),('81254159','LUCERO','PEREZ','CARBAJAL','JR. MOLINA N° 302','945213651','lucero315@gmail.com',1),('82153651','LIZ','PRINICPE','TORRES','AV. LOS GIRASOLES','943025152','lizprinicpe10@gmail.com',1),('84252166','YONY','GUERRERO','LOPEZ','AV. LOS JARDINES N°25','943251658','yony215@gmail.com',1),('84652515','KARY','ESPINOZA','QUISPE','JR. LAS FLORES N° 145','942512566','',1),('89521547','HEREMY','TOLENTINO','SANCHEZ','AV. LOS PORTALES','945126521','heremy125@gmail.com',1);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `Razon_social` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `pag_web` varchar(100) DEFAULT NULL,
  `fk_idRepresentante` int NOT NULL,
  PRIMARY KEY (`idProveedor`),
  KEY `fk_Proveedor_Representante1_idx` (`fk_idRepresentante`),
  CONSTRAINT `fk_Proveedor_Representante1` FOREIGN KEY (`fk_idRepresentante`) REFERENCES `representante` (`idRepresentante`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'TEXCORP','AV. EL SOL 1197','978256512','www.texcorp.pe',1),(2,'BROMSUNP','AV. LAS ORQUIDEAS 585','945621589','',2),(3,'DONATELY','AV. PROLONGACION 1197','978256512','www.donatelli.pe',3),(4,'LAVALLIERE','CA. LOS PINOS 181','947599558','',4);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante`
--

DROP TABLE IF EXISTS `representante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `representante` (
  `idRepresentante` int NOT NULL,
  `RUC` varchar(45) NOT NULL,
  `fk_DNI` varchar(8) NOT NULL,
  PRIMARY KEY (`idRepresentante`),
  KEY `fk_Representante_persona1_idx` (`fk_DNI`),
  CONSTRAINT `fk_Representante_persona1` FOREIGN KEY (`fk_DNI`) REFERENCES `persona` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante`
--

LOCK TABLES `representante` WRITE;
/*!40000 ALTER TABLE `representante` DISABLE KEYS */;
INSERT INTO `representante` VALUES (1,'15214814781','31654898'),(2,'25365485214','63156425'),(3,'38962132515','70256518'),(4,'15268545845','61251232');
/*!40000 ALTER TABLE `representante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suministro`
--

DROP TABLE IF EXISTS `suministro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suministro` (
  `idSuministro` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `precio_s` double NOT NULL,
  `Cantidad` int NOT NULL,
  `fk_idProveedor` int NOT NULL,
  `fk_idarticulo` int DEFAULT NULL,
  `fk_idmodelo_tela` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idSuministro`),
  KEY `fk_Suministro_Proveedor1_idx` (`fk_idProveedor`),
  KEY `fk_Suministro_prenda1_idx` (`fk_idarticulo`),
  KEY `fk_Suministro_modelo_tela1_idx` (`fk_idmodelo_tela`),
  CONSTRAINT `fk_Suministro_modelo_tela1` FOREIGN KEY (`fk_idmodelo_tela`) REFERENCES `modelo_tela` (`idmodelo_tela`),
  CONSTRAINT `fk_Suministro_prenda1` FOREIGN KEY (`fk_idarticulo`) REFERENCES `articulo` (`idarticulo`),
  CONSTRAINT `fk_Suministro_Proveedor1` FOREIGN KEY (`fk_idProveedor`) REFERENCES `proveedor` (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suministro`
--

LOCK TABLES `suministro` WRITE;
/*!40000 ALTER TABLE `suministro` DISABLE KEYS */;
INSERT INTO `suministro` VALUES (1,'2022-05-14',100,5,3,3,NULL),(2,'2022-05-21',100,5,3,2,NULL),(3,'2022-05-21',80,10,3,5,NULL),(4,'2022-05-21',80,15,3,8,NULL),(5,'2022-05-03',100,2,3,1,NULL),(6,'2022-05-12',6,8,1,NULL,'MOT001'),(7,'2022-05-09',100,5,3,1,NULL);
/*!40000 ALTER TABLE `suministro` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_suministro` AFTER INSERT ON `suministro` FOR EACH ROW begin
	declare tela_temp , stock_temp int;
    set stock_temp = (select stock from articulo where new.fk_idarticulo = idarticulo)+new.cantidad;
    set tela_temp = (select metros from modelo_tela where new.fk_idmodelo_tela = idmodelo_tela)+new.cantidad;
    if(new.cantidad>=0) then
		update modelo_tela set metros = tela_temp where new.fk_idmodelo_tela = idmodelo_tela;
        update articulo set stock = stock_temp where new.fk_idarticulo = idarticulo;
    else
		signal sqlstate '45000' set message_text = 'cantidad erronea';
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tallas`
--

DROP TABLE IF EXISTS `tallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tallas` (
  `idTallas` varchar(20) NOT NULL,
  `talla` varchar(5) NOT NULL,
  PRIMARY KEY (`idTallas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tallas`
--

LOCK TABLES `tallas` WRITE;
/*!40000 ALTER TABLE `tallas` DISABLE KEYS */;
INSERT INTO `tallas` VALUES ('T001','S'),('T002','M'),('T003','L'),('T004','XL'),('T005','28'),('T006','30'),('T007','32');
/*!40000 ALTER TABLE `tallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_persona`
--

DROP TABLE IF EXISTS `tipo_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_persona` (
  `idtipo_persona` int NOT NULL,
  `tipo_persona` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_persona`
--

LOCK TABLES `tipo_persona` WRITE;
/*!40000 ALTER TABLE `tipo_persona` DISABLE KEYS */;
INSERT INTO `tipo_persona` VALUES (1,'NATURAL'),(2,'JURIDICO');
/*!40000 ALTER TABLE `tipo_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_prenda`
--

DROP TABLE IF EXISTS `tipo_prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_prenda` (
  `idtipo_prenda` varchar(20) NOT NULL,
  `tipo_prenda` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo_prenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_prenda`
--

LOCK TABLES `tipo_prenda` WRITE;
/*!40000 ALTER TABLE `tipo_prenda` DISABLE KEYS */;
INSERT INTO `tipo_prenda` VALUES ('TIP001','CAMISAS'),('TIP002','CORREAS'),('TIP003','BLAZER'),('TIP004','CASACAS'),('TIP005','CHOMPAS'),('TIP006','ABRIGOS'),('TIP007','CORBATAS'),('TIP008','CHALECO'),('TIP009','MALETIN'),('TIP010','MORRAL'),('TIP011','PANTALONES'),('TIP012','RELOG'),('TIP013','BILLETERA'),('TIP014','TIRANTES');
/*!40000 ALTER TABLE `tipo_prenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `persona_DNI` varchar(8) NOT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fk_usuario_persona1_idx` (`persona_DNI`),
  CONSTRAINT `fk_usuario_persona1` FOREIGN KEY (`persona_DNI`) REFERENCES `persona` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'vendedor','janet123','71289258'),(2,'ayudante','1234','75425416');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_camisamod`
--

DROP TABLE IF EXISTS `v_camisamod`;
/*!50001 DROP VIEW IF EXISTS `v_camisamod`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_camisamod` AS SELECT 
 1 AS `idarticulo`,
 1 AS `tipo_prenda`,
 1 AS `marca`,
 1 AS `talla`,
 1 AS `precio`,
 1 AS `stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_camisas`
--

DROP TABLE IF EXISTS `v_camisas`;
/*!50001 DROP VIEW IF EXISTS `v_camisas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_camisas` AS SELECT 
 1 AS `idarticulo`,
 1 AS `tipo_prenda`,
 1 AS `marca`,
 1 AS `nom_modelo`,
 1 AS `talla`,
 1 AS `precio`,
 1 AS `stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_clientes`
--

DROP TABLE IF EXISTS `v_clientes`;
/*!50001 DROP VIEW IF EXISTS `v_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_clientes` AS SELECT 
 1 AS `id_cliente`,
 1 AS `DNI`,
 1 AS `Clientes`,
 1 AS `telefono`,
 1 AS `email`,
 1 AS `direccion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_correa`
--

DROP TABLE IF EXISTS `v_correa`;
/*!50001 DROP VIEW IF EXISTS `v_correa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_correa` AS SELECT 
 1 AS `idarticulo`,
 1 AS `tipo_prenda`,
 1 AS `material`,
 1 AS `nom_modelo`,
 1 AS `precio`,
 1 AS `stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_medcli`
--

DROP TABLE IF EXISTS `v_medcli`;
/*!50001 DROP VIEW IF EXISTS `v_medcli`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_medcli` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre`,
 1 AS `apellido_p`,
 1 AS `apellido_m`,
 1 AS `telefono`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_medidascliente`
--

DROP TABLE IF EXISTS `v_medidascliente`;
/*!50001 DROP VIEW IF EXISTS `v_medidascliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_medidascliente` AS SELECT 
 1 AS `idCleinteM`,
 1 AS `id_cliente`,
 1 AS `DNI`,
 1 AS `Clientes`,
 1 AS `telefono`,
 1 AS `email`,
 1 AS `direccion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_modelotela`
--

DROP TABLE IF EXISTS `v_modelotela`;
/*!50001 DROP VIEW IF EXISTS `v_modelotela`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_modelotela` AS SELECT 
 1 AS `idmodelo_tela`,
 1 AS `marca`,
 1 AS `nombre_modelo`,
 1 AS `precio`,
 1 AS `metros`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_per`
--

DROP TABLE IF EXISTS `v_per`;
/*!50001 DROP VIEW IF EXISTS `v_per`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_per` AS SELECT 
 1 AS `id_cliente`,
 1 AS `DNI`,
 1 AS `Clientes`,
 1 AS `telefono`,
 1 AS `email`,
 1 AS `direccion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_percli`
--

DROP TABLE IF EXISTS `v_percli`;
/*!50001 DROP VIEW IF EXISTS `v_percli`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_percli` AS SELECT 
 1 AS `DNI`,
 1 AS `nombre`,
 1 AS `apellido_p`,
 1 AS `apellido_m`,
 1 AS `telefono`,
 1 AS `tipo_persona`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_productos`
--

DROP TABLE IF EXISTS `v_productos`;
/*!50001 DROP VIEW IF EXISTS `v_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_productos` AS SELECT 
 1 AS `idarticulo`,
 1 AS `tipo_prenda`,
 1 AS `marca`,
 1 AS `nom_modelo`,
 1 AS `talla`,
 1 AS `material`,
 1 AS `descripcion`,
 1 AS `precio`,
 1 AS `stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_rep`
--

DROP TABLE IF EXISTS `v_rep`;
/*!50001 DROP VIEW IF EXISTS `v_rep`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_rep` AS SELECT 
 1 AS `idRepresentante`,
 1 AS `RUC`,
 1 AS `DNI`,
 1 AS `nombre`,
 1 AS `Apellidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_repre`
--

DROP TABLE IF EXISTS `v_repre`;
/*!50001 DROP VIEW IF EXISTS `v_repre`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_repre` AS SELECT 
 1 AS `DNI`,
 1 AS `nombre`,
 1 AS `apellido_p`,
 1 AS `apellido_m`,
 1 AS `tipo_persona`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `venta_confec`
--

DROP TABLE IF EXISTS `venta_confec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_confec` (
  `idventa_confec` int NOT NULL AUTO_INCREMENT,
  `fk_idmodelo_tela` varchar(12) NOT NULL,
  `fk_idComprobante` int NOT NULL,
  `tela_gastada` double NOT NULL,
  `fk_idCleinteM` varchar(45) NOT NULL,
  `cantidad` int DEFAULT NULL,
  `costo` double DEFAULT NULL,
  `canxcos` double DEFAULT NULL,
  PRIMARY KEY (`idventa_confec`),
  KEY `fk_venta_confec_Comprobante1_idx` (`fk_idComprobante`),
  KEY `fk_venta_confec_Cliente_Medidas1_idx` (`fk_idCleinteM`),
  KEY `fk_idmodelo_tela_modelo_tela1` (`fk_idmodelo_tela`),
  CONSTRAINT `fk_idmodelo_tela_modelo_tela1` FOREIGN KEY (`fk_idmodelo_tela`) REFERENCES `modelo_tela` (`idmodelo_tela`),
  CONSTRAINT `fk_venta_confec_Cliente_Medidas1` FOREIGN KEY (`fk_idCleinteM`) REFERENCES `cliente_medidas` (`idCleinteM`),
  CONSTRAINT `fk_venta_confec_Comprobante1` FOREIGN KEY (`fk_idComprobante`) REFERENCES `comprobante` (`idComprobante`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_confec`
--

LOCK TABLES `venta_confec` WRITE;
/*!40000 ALTER TABLE `venta_confec` DISABLE KEYS */;
INSERT INTO `venta_confec` VALUES (1,'MOT001',10,4,'MCLI001',1,480,480),(2,'MOT011',11,2,'MCLI004',1,1200,1200),(3,'MOT001',11,2,'MCLI004',2,480,960),(4,'MOT010',12,2,'MCLI002',1,950,950),(5,'MOT007',12,2,'MCLI002',1,580,580),(6,'MOT011',12,1,'MCLI002',1,1200,1200),(7,'MOT008',13,2,'MCLI004',1,750,750),(8,'MOT007',15,2,'MCLI005',1,580,580),(9,'MOT001',15,2,'MCLI005',1,480,480),(10,'MOT012',16,2,'MCLI006',1,1200,1200),(11,'MOT010',19,2,'MCLI007',2,950,1900),(12,'MOT007',20,2,'MCLI008',1,580,580),(13,'MOT009',24,2,'MCLI009',2,620,1240);
/*!40000 ALTER TABLE `venta_confec` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_medidaprecio` AFTER INSERT ON `venta_confec` FOR EACH ROW begin
	declare tela_gast_temp int;
    declare total,igv,totalf double;
    set tela_gast_temp = (select metros from modelo_tela where new.fk_idmodelo_tela = idmodelo_tela)-new.tela_gastada;
    set total = new.costo*new.cantidad; 
    set totalf = (select costo from comprobante where idcomprobante=new.fk_idComprobante)+total;
    if(tela_gast_temp>=0) then
		update modelo_tela set metros = tela_gast_temp where idmodelo_tela=new.fk_idmodelo_tela;
        update comprobante set comprobante.costo=totalf where idcomprobante=new.fk_idComprobante;
    else
		signal sqlstate '45000' set message_text = 'Tela Insuficiente';
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `venta_prenda`
--

DROP TABLE IF EXISTS `venta_prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_prenda` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fk_idComprobante` int NOT NULL,
  `fk_idarticulo` int NOT NULL,
  `Cantidad` int NOT NULL,
  `costo` double NOT NULL,
  `caxcos` double DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `fk_Comprobante_has_Prenda_Comprobante1_idx` (`fk_idComprobante`),
  KEY `fk_venta_prenda_prenda1_idx` (`fk_idarticulo`),
  CONSTRAINT `fk_Comprobante_has_Prenda_Comprobante1` FOREIGN KEY (`fk_idComprobante`) REFERENCES `comprobante` (`idComprobante`),
  CONSTRAINT `fk_venta_prenda_prenda1` FOREIGN KEY (`fk_idarticulo`) REFERENCES `articulo` (`idarticulo`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_prenda`
--

LOCK TABLES `venta_prenda` WRITE;
/*!40000 ALTER TABLE `venta_prenda` DISABLE KEYS */;
INSERT INTO `venta_prenda` VALUES (1,3,1,1,120,120),(2,3,12,2,110,220),(3,3,22,3,65,195),(4,3,8,2,95,190),(5,4,11,2,110,220),(6,4,91,1,130,130),(7,5,9,2,110,220),(8,5,50,1,55,55),(9,5,80,3,65,195),(10,6,7,2,95,190),(11,6,64,1,280,280),(12,6,116,1,460,460),(13,7,8,2,95,190),(14,7,53,2,20,40),(15,8,6,2,95,190),(16,8,62,1,280,280),(17,9,10,2,110,220),(18,10,2,2,120,240),(19,10,51,1,38,38),(20,12,6,2,95,190),(21,13,106,1,380,380),(22,13,17,1,95,95),(23,14,98,1,300,300),(24,14,5,1,95,95),(25,17,136,2,130,260),(26,17,8,1,95,95),(27,18,114,1,460,460),(28,18,62,2,280,560),(29,21,1,2,120,240),(30,22,6,2,95,190),(31,22,53,1,20,20),(32,22,91,1,130,130),(33,23,141,2,125,250),(34,23,87,2,95,190),(35,25,7,2,95,190),(36,25,99,2,300,600);
/*!40000 ALTER TABLE `venta_prenda` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_stockprecio` AFTER INSERT ON `venta_prenda` FOR EACH ROW begin
	declare stock_temp int;
    declare total, totalf double;
    set stock_temp = (select stock from articulo where new.fk_idarticulo=idarticulo)-new.cantidad;
    set total = new.cantidad * new.costo; 
    set totalf = (select costo from comprobante where idcomprobante=new.fk_idComprobante)+total;
    if(stock_temp>=0) then
		update articulo set stock = stock_temp where idarticulo=new.fk_idarticulo;
        update comprobante set costo=totalf where idcomprobante=new.fk_idComprobante;
    else
		signal sqlstate '45000' set message_text = 'Stock Insuficiente';
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_stockpreciod` AFTER DELETE ON `venta_prenda` FOR EACH ROW begin
declare stock_temp int;
declare total, totalf double;
set stock_temp = (select stock from articulo where old.fk_idarticulo=idarticulo)+old.cantidad;
set total = old.cantidad * old.costo;
set totalf = (select costo from comprobante where idcomprobante=old.fk_idComprobante)-total;
if(stock_temp>=0) then
update articulo set stock = stock_temp where idarticulo=old.fk_idarticulo;
update comprobante set costo=totalf where idcomprobante=old.fk_idComprobante;
else
signal sqlstate '45000' set message_text = 'Stock Insuficiente';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'dbtiendaropa'
--

--
-- Dumping routines for database 'dbtiendaropa'
--
/*!50003 DROP FUNCTION IF EXISTS `f_metromin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_metromin`() RETURNS int
    DETERMINISTIC
begin
declare numpel int;
select count(metros) into numpel
from modelo_tela
where metros <10;
return numpel;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `f_stockmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_stockmin`() RETURNS int
    DETERMINISTIC
begin
declare numpel int;
select count(stock) into numpel
from articulo
where stock <10;
return numpel;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_comprobante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_comprobante`()
begin
insert into comprobante(fk_Num_boleta,fk_Num_factura,costo) values ("B","F",0);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteCli` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteCli`(in idr int)
begin
delete from clientes where id_cliente=idr;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteMarc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteMarc`(in idt varchar(20))
begin
delete from marca where idmarca=idt;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteMate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteMate`(in idm varchar(20))
begin
delete from material where idmaterial=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteModel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteModel`(in idm varchar(20))
begin
delete from modelo where idmodelo=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteModTe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteModTe`(in idm varchar(12))
begin
delete from modelo_tela where idmodelo_tela=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteMp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteMp`(in idm varchar(12))
begin
delete from medidapantalon where idmedidapantalon=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteMs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteMs`(in idm varchar(12))
begin
delete from medidasaco where idMedidasaco=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteMte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteMte`(in idm varchar(12))
begin
delete from marca_tela where idmarca_tela=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deletePer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deletePer`(in idn varchar(8))
begin
delete from persona where DNI=idn;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deletePro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deletePro`(in idr int)
begin
delete from proveedor where idProveedor=idr;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteRep` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteRep`(in idr int)
begin
delete from representante where idRepresentante=idr;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteTall` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteTall`(in idt varchar(10))
begin
delete from tallas where idTallas=idt;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteTipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteTipo`(in idt varchar(20))
begin
delete from tipo_prenda where idtipo_prenda=idt;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_deleteTp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_deleteTp`(in idp int)
begin
delete from tipo_persona where idtipo_persona=idp;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertCli` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertCli`(in cli int, in dn varchar (8))
begin
insert into cliente(id_cliente,fk_DNI) values (cli,dn);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertMarc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertMarc`(in idm varchar(20), in marc varchar (45))
begin
insert into marca(idmarca,marca) values (idm,marc);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertMate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertMate`(in idm varchar(12), in mater varchar (45))
begin
insert into material(idmaterial,material) values (idm,mater);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertMclt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertMclt`(in idc varchar(45),in fc int, in fmp varchar(12),in fms varchar(12))
begin 
insert into cliente_medidas(idCleinteM,fk_id_cliente,fk_idMedidasaco,fk_idmedidapantalon) values(idc,fc,fmp,fms);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertModel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertModel`(in idm varchar(20), in model varchar (45))
begin
insert into modelo(idmodelo,nom_modelo) values (idm,model);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertModTe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertModTe`(in idm varchar(12), in modte varchar (45), in prec decimal, in met decimal, in mart varchar (12))
begin
insert into modelo_tela(idmodelo_tela,nombre_modelo,precio,metros,fk_idmarca_tela) values (idm,modte,prec,met,mart);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertMp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertMp`(in idm varchar(12), in cin double, in cad double, in mus double, in ro double, in bo double,
in ja double, in la double)
begin
insert into medidapantalon(idmedidapantalon,cintura,cadera,muslo,rodilla,boca,jareta,largo) values (idm,cin,cad,mus,ro,bo,ja,la);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertMs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertMs`(in idm varchar(12),in ct double, in cd double, in esp double, in t double, in h double, in mg double,
in lg double,in p varchar (10),in b varchar(10), in s varchar(10))
begin 
insert into medidasaco(idMedidasaco,pecho,cintura,cadera,espalda,talle,hombro,manga,largo,busto,separacion) values (idm,p,ct,cd,esp,t,h,mg,lg,b,s);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertMte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertMte`(in idm varchar(12), in mtela varchar (45))
begin
insert into marca_tela(idmarca_tela,marca) values (idm,mtela);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertPer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertPer`(in idn varchar(8), in nom varchar(45),in apep varchar(45),in apem varchar(45),in drec varchar(45), in tel varchar(9),
in ema varchar(45), in tp int)
begin
insert into persona(DNI,nombre,apellido_p,apellido_m,direccion,telefono,email,fk_idtipo_persona) values (idn,nom,apep,apem,drec,tel,ema,tp);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertPro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertPro`(in idr int, in rs varchar(45),in dr varchar(45),in tel varchar (9),in pw varchar (100), in rep int)
begin
insert into proveedor(idProveedor,Razon_social,Direccion,Telefono,pag_web,fk_idRepresentante) values (idr,rs,dr,tel,pw,rep);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertRep` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertRep`(in idr int, in rc varchar(45),in dn varchar(8))
begin
insert into representante(idRepresentante,RUC,fk_DNI) values (idr,rc,dn);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertTall` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertTall`(in idt varchar(10), in tall varchar (5))
begin
insert into tallas(idTallas,talla) values (idt,tall);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertTipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertTipo`(in idt varchar(20), in pren varchar (45))
begin
insert into tipo_prenda(idtipo_prenda,tipo_prenda) values (idt,pren);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insertTp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insertTp`(in idp int, in tipo varchar(45))
begin
insert into tipo_persona(idtipo_persona,tipo_persona) values (idp,tipo);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateCli` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateCli`(in cli int, in dn varchar (8))
begin
update cliente set fk_DNI=dn
where id_cliente=cli;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateMarc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateMarc`(in idt varchar(20), in mar varchar (45))
begin
update marca set marca=mar
where idmarca=idt;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateMate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateMate`(in idm varchar(12), in mat varchar (45))
begin
update material set material=mat
where idmaterial=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateModel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateModel`(in idm varchar(20), in model varchar (45))
begin
update modelo set nom_modelo=model
where idmodelo=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateModTe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateModTe`(in idm varchar(12), in modte varchar (45), in prec decimal, in met decimal, in mart varchar (12))
begin
update modelo_tela set nombre_modelo=modte,precio=prec, metros=met,fk_idmarca_tela=mart
where idmodelo_tela=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateMp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateMp`(in idm varchar(12), in cin double, in cad double, in mus double, in ro double, in bo double,
in ja double, in la double)
begin
update medidapantalon set cintura=cin,cadera=cad,muslo=mus,rodilla=ro,boca=bo,jareta=ja,largo=la
where idmedidapantalon=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateMs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateMs`(in idm varchar(12),in ct double, in cd double, in esp double, in t double, in h double, in mg double,
in lg double,in p varchar (10),in b varchar(10), in s varchar(10))
begin
update medidasaco set cintura=ct,cadera=cd,espalda=esp,talle=t,hombro=h,manga=mg,largo=lg,pecho=p,busto=b,separacion=s
where idMedidasaco=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateMte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateMte`(in idm varchar(12), in mtela varchar (45))
begin
update marca_tela set marca=mtela
where idmarca_tela=idm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updatePer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updatePer`(in idn varchar(8), in nom varchar(45),in apep varchar(45),in apem varchar(45),in drec varchar(45), in tel varchar(9),
in ema varchar(45), in tp int)
begin
update persona set DNI=idn, nombre=nom, apellido_p=apep, apellido_m=apem,direccion=drec,telefono=tel,email=ema,fk_idtipo_persona=tp
where DNI=idn;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updatePro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updatePro`(in idr int, in rs varchar(45),in dr varchar(45),in tel varchar (9),in pw varchar (100), in rep int)
begin
update proveedor set Razon_social=rs,Direccion=dr,Telefono=tel,pag_web=pw,fk_idRepresentante=rep
where idProveedor=idr;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateRep` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateRep`(in idr int, in rc varchar(45),in dn varchar(8))
begin
update representante set RUC=rc, fk_DNI=dn
where idRepresentante=idr;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateTall` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateTall`(in idt varchar(10), in tall varchar (5))
begin
update tallas set talla=tall
where idTallas=idt;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateTipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateTipo`(in idt varchar(20), in pren varchar (45))
begin
update tipo_prenda set tipo_prenda=pren
where idtipo_prenda=idt;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_updateTp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_updateTp`(in idp int, in tipo varchar(45))
begin
update tipo_persona set tipo_persona=tipo
where idtipo_persona=idp;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verconfec` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verconfec`(in comp int)
begin
	select fk_idcomprobante, fk_idCleinteM,ma.marca,m.nombre_modelo,tela_gastada,cantidad,costo,canxcos
	from venta_confec vc
    inner join modelo_tela m on vc.fk_idmodelo_tela=m.idmodelo_tela
    inner join marca_tela ma on ma.idmarca_tela=m.fk_idmarca_tela
	where fk_idComprobante=comp;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventa`(in comp int)
begin
	select fk_idcomprobante, tp.tipo_prenda,m.marca,mo.nom_modelo,ml.material,t.talla,a.descripcion,Cantidad, costo,caxcos
	from venta_prenda vp
	left join articulo a on vp.fk_idarticulo=a.idarticulo
	left join tipo_prenda tp on a.fk_idtipo_prenda=tp.idtipo_prenda
	left join marca m on a.fk_idmarca=m.idmarca
	left join modelo mo on a.fk_idmodelo=mo.idmodelo
	left join tallas t on a.fk_idtallas=t.idtallas
	left join material ml on a.fk_idmaterial=ml.idmaterial
	where fk_idComprobante=comp;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventaB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventaB`(in comp int)
begin
	
	select fk_idcomprobante,b.Num_boleta,b.fecha_bol,b.Total_b,cl.id_cliente,concat(p.nombre," ",p.apellido_p," ",p.apellido_m) as Clientes,
    p.DNI,p.direccion,p.telefono,p.email,a.idarticulo,
    tp.tipo_prenda,concat_ws(" ", m.marca, mo.nom_modelo,ml.material,a.descripcion) as articulo
    ,t.talla,vp.Cantidad, vp.costo,vp.caxcos
	from venta_prenda vp
	left join comprobante c on vp.fk_idcomprobante=c.idcomprobante
    left join boleta b on c.fk_Num_boleta=b.Num_boleta
    left join articulo a on vp.fk_idarticulo=a.idarticulo
    left join tipo_prenda tp on a.fk_idtipo_prenda=tp.idtipo_prenda
    left join marca m on a.fk_idmarca=m.idmarca
    left join modelo mo on a.fk_idmodelo=mo.idmodelo
    left join tallas t on a.fk_idtallas=t.idtallas
    left join material ml on a.fk_idmaterial=ml.idmaterial
    left join cliente cl on c.fk_id_cliente=cl.id_cliente
    left join persona p on cl.fk_DNI=p.DNI
	where fk_idComprobante=comp;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventaBcon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventaBcon`(in comp int)
begin
	select fk_idcomprobante,b.Num_boleta,b.fecha_bol,cl.id_cliente,concat(p.nombre," ",p.apellido_p," ",p.apellido_m) as Clientes,
    p.DNI,p.direccion,p.telefono,p.email,mt.idmodelo_tela,
    concat_ws(" ", mr.marca,mt.nombre_modelo) as Tela
    ,vp.Cantidad, vp.costo,vp.canxcos,b.Total_b
	from venta_confec vp
	inner join comprobante c on vp.fk_idcomprobante=c.idcomprobante
    inner join modelo_tela mt on vp.fk_idmodelo_tela=mt.idmodelo_tela
    inner join marca_tela mr on mt.fk_idmarca_tela=mr.idmarca_tela
    inner join boleta b on c.fk_Num_boleta=b.Num_boleta
    inner join cliente cl on c.fk_id_cliente=cl.id_cliente
    inner join persona p on cl.fk_DNI=p.DNI
	where fk_idComprobante=comp;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventaF` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventaF`(in comp int)
begin
	
	select fk_idcomprobante,f.Num_factura,f.fecha_fact,f.subtotal,f.IGV,f.total, cl.id_cliente,concat(p.nombre," ",p.apellido_p," ",p.apellido_m) as Clientes,
    p.DNI,p.direccion,p.telefono,p.email,a.idarticulo,
    tp.tipo_prenda,concat_ws(" ", m.marca, mo.nom_modelo,ml.material,a.descripcion) as articulo
    ,t.talla,vp.Cantidad, vp.costo,round(vp.caxcos*0.18,2) AS igvIndi ,vp.caxcos,f.subtotal,f.IGV,f.total
	from venta_prenda vp
	left join comprobante c on vp.fk_idcomprobante=c.idcomprobante
    left join factura f on c.fk_Num_factura=f.Num_factura
    left join articulo a on vp.fk_idarticulo=a.idarticulo
    left join tipo_prenda tp on a.fk_idtipo_prenda=tp.idtipo_prenda
    left join marca m on a.fk_idmarca=m.idmarca
    left join modelo mo on a.fk_idmodelo=mo.idmodelo
    left join tallas t on a.fk_idtallas=t.idtallas
    left join material ml on a.fk_idmaterial=ml.idmaterial
    left join cliente cl on c.fk_id_cliente=cl.id_cliente
    left join persona p on cl.fk_DNI=p.DNI
	where fk_idComprobante=comp;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventaFac` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventaFac`(in comp int)
begin
	select fk_idcomprobante,f.Num_factura,f.fecha_fact,f.subtotal,f.IGV,f.total, concat(p.nombre," ",p.apellido_p," ",p.apellido_m) as Clientes,
    p.DNI,p.direccion,p.telefono,p.email,
    tp.tipo_prenda,m.marca,mo.nom_modelo,ml.material,t.talla,a.descripcion,vp.Cantidad, vp.costo,vp.caxcos
	from venta_prenda vp
	left join comprobante c on vp.fk_idcomprobante=c.idcomprobante
    left join factura f on c.fk_Num_factura=f.Num_factura
    left join articulo a on vp.fk_idarticulo=a.idarticulo
    left join tipo_prenda tp on a.fk_idtipo_prenda=tp.idtipo_prenda
    left join marca m on a.fk_idmarca=m.idmarca
    left join modelo mo on a.fk_idmodelo=mo.idmodelo
    left join tallas t on a.fk_idtallas=t.idtallas
    left join material ml on a.fk_idmaterial=ml.idmaterial
    left join cliente cl on c.fk_id_cliente=cl.id_cliente
    left join persona p on cl.fk_DNI=p.DNI
	where fk_idComprobante=comp;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventaFactu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventaFactu`(in comp int)
begin
	select fk_idcomprobante,f.Num_factura,f.fecha_fact,f.subtotal,f.IGV,f.total, cl.id_cliente,concat(p.nombre," ",p.apellido_p," ",p.apellido_m) as Clientes,
    p.DNI,p.direccion,p.telefono,p.email,
    tp.tipo_prenda,m.marca,mo.nom_modelo,ml.material,t.talla,a.descripcion,vp.Cantidad, vp.costo,vp.caxcos
	from venta_prenda vp
	left join comprobante c on vp.fk_idcomprobante=c.idcomprobante
    left join factura f on c.fk_Num_factura=f.Num_factura
    left join articulo a on vp.fk_idarticulo=a.idarticulo
    left join tipo_prenda tp on a.fk_idtipo_prenda=tp.idtipo_prenda
    left join marca m on a.fk_idmarca=m.idmarca
    left join modelo mo on a.fk_idmodelo=mo.idmodelo
    left join tallas t on a.fk_idtallas=t.idtallas
    left join material ml on a.fk_idmaterial=ml.idmaterial
    left join cliente cl on c.fk_id_cliente=cl.id_cliente
    left join persona p on cl.fk_DNI=p.DNI
	where fk_idComprobante=comp;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventaFactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventaFactura`(in comp int)
begin
	select fk_idcomprobante,f.Num_factura,f.fecha_fact,f.subtotal,f.IGV,f.total, cl.id_cliente,concat(p.nombre," ",p.apellido_p," ",p.apellido_m) as Clientes,
    p.DNI,p.direccion,p.telefono,p.email,
    tp.tipo_prenda,concat_ws(" ", m.marca, mo.nom_modelo,ml.material,a.descripcion) as articulo
    ,t.talla,vp.Cantidad, vp.costo,vp.caxcos
	from venta_prenda vp
	left join comprobante c on vp.fk_idcomprobante=c.idcomprobante
    left join factura f on c.fk_Num_factura=f.Num_factura
    left join articulo a on vp.fk_idarticulo=a.idarticulo
    left join tipo_prenda tp on a.fk_idtipo_prenda=tp.idtipo_prenda
    left join marca m on a.fk_idmarca=m.idmarca
    left join modelo mo on a.fk_idmodelo=mo.idmodelo
    left join tallas t on a.fk_idtallas=t.idtallas
    left join material ml on a.fk_idmaterial=ml.idmaterial
    left join cliente cl on c.fk_id_cliente=cl.id_cliente
    left join persona p on cl.fk_DNI=p.DNI
	where fk_idComprobante=comp;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventaFacturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventaFacturas`(in comp int)
begin
	select fk_idcomprobante,f.Num_factura,f.fecha_fact,f.subtotal,f.IGV,f.total, cl.id_cliente,concat(p.nombre," ",p.apellido_p," ",p.apellido_m) as Clientes,
    p.DNI,p.direccion,p.telefono,p.email,a.idarticulo,
    tp.tipo_prenda,concat_ws(" ", m.marca, mo.nom_modelo,ml.material,a.descripcion) as articulo
    ,t.talla,vp.Cantidad, vp.costo,vp.caxcos
	from venta_prenda vp
	left join comprobante c on vp.fk_idcomprobante=c.idcomprobante
    left join factura f on c.fk_Num_factura=f.Num_factura
    left join articulo a on vp.fk_idarticulo=a.idarticulo
    left join tipo_prenda tp on a.fk_idtipo_prenda=tp.idtipo_prenda
    left join marca m on a.fk_idmarca=m.idmarca
    left join modelo mo on a.fk_idmodelo=mo.idmodelo
    left join tallas t on a.fk_idtallas=t.idtallas
    left join material ml on a.fk_idmaterial=ml.idmaterial
    left join cliente cl on c.fk_id_cliente=cl.id_cliente
    left join persona p on cl.fk_DNI=p.DNI
	where fk_idComprobante=comp;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventaFacturas2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventaFacturas2`(in comp int)
begin
	
	select fk_idcomprobante,f.Num_factura,f.fecha_fact,f.subtotal,f.IGV,f.total, cl.id_cliente,concat(p.nombre," ",p.apellido_p," ",p.apellido_m) as Clientes,
    p.DNI,p.direccion,p.telefono,p.email,a.idarticulo,
    tp.tipo_prenda,concat_ws(" ", m.marca, mo.nom_modelo,ml.material,a.descripcion) as articulo
    ,t.talla,vp.Cantidad, vp.costo,round(vp.caxcos*0.18,2) AS IGV ,vp.caxcos,f.subtotal,f.IGV,f.total
	from venta_prenda vp
	left join comprobante c on vp.fk_idcomprobante=c.idcomprobante
    left join factura f on c.fk_Num_factura=f.Num_factura
    left join articulo a on vp.fk_idarticulo=a.idarticulo
    left join tipo_prenda tp on a.fk_idtipo_prenda=tp.idtipo_prenda
    left join marca m on a.fk_idmarca=m.idmarca
    left join modelo mo on a.fk_idmodelo=mo.idmodelo
    left join tallas t on a.fk_idtallas=t.idtallas
    left join material ml on a.fk_idmaterial=ml.idmaterial
    left join cliente cl on c.fk_id_cliente=cl.id_cliente
    left join persona p on cl.fk_DNI=p.DNI
	where fk_idComprobante=comp;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventaFcon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventaFcon`(in comp int)
begin
	select fk_idcomprobante,f.Num_factura,f.fecha_fact,cl.id_cliente,concat(p.nombre," ",p.apellido_p," ",p.apellido_m) as Clientes,
    p.DNI,p.direccion,p.telefono,p.email,mt.idmodelo_tela,
    concat_ws(" ", mr.marca,mt.nombre_modelo) as Tela
    ,vp.Cantidad, vp.costo,round(vp.canxcos*0.18,2) AS igvIndi ,vp.canxcos,f.subtotal,round(f.IGV,2) as IGV,f.total
	from venta_confec vp
	inner join comprobante c on vp.fk_idcomprobante=c.idcomprobante
    inner join modelo_tela mt on vp.fk_idmodelo_tela=mt.idmodelo_tela
    inner join marca_tela mr on mt.fk_idmarca_tela=mr.idmarca_tela
    inner join factura f on c.fk_Num_factura=f.Num_factura
    inner join cliente cl on c.fk_id_cliente=cl.id_cliente
    inner join persona p on cl.fk_DNI=p.DNI
	where fk_idComprobante=comp;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventaho` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventaho`(in fecha varchar(15))
begin
select trim(trailing ' F' from trim(leading 'B ' from concat_ws(" ",b.num_boleta, f.num_factura))) as emision,
concat(p.nombre," ",p.apellido_p," ",p.apellido_m) as Clientes,
concat_ws(" ", ma.marca, mt.nombre_modelo)
as tela,vc.tela_gastada,vc.Cantidad, vc.costo,vc.canxcos
from venta_confec vc
left join comprobante c on vc.fk_idComprobante=c.idcomprobante
left join boleta b on c.fk_Num_boleta=b.Num_boleta
left join factura f on c.fk_Num_factura=f.Num_factura
left join modelo_tela mt on vc.fk_idmodelo_tela=mt.idmodelo_tela
left join marca_tela ma on mt.fk_idmarca_tela=ma.idmarca_tela
left join cliente cl on c.fk_id_cliente=cl.id_cliente
left join persona p on cl.fk_DNI=p.DNI
where date(b.fecha_bol) or date(f.fecha_fact)=fecha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_verventahoy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_verventahoy`(in fecha date)
begin
select trim(trailing ' F' from trim(leading 'B ' from concat_ws(" ",b.num_boleta, f.num_factura))) as emision,
concat(p.nombre," ",p.apellido_p," ",p.apellido_m) as Clientes,
concat_ws(" ", tp.tipo_prenda, m.marca, mo.nom_modelo,ml.material,a.descripcion)
as articulo,t.talla,Cantidad, vp.costo,vp.caxcos
from venta_prenda vp
left join comprobante c on vp.fk_idcomprobante=c.idcomprobante
left join boleta b on c.fk_Num_boleta=b.Num_boleta
left join factura f on c.fk_Num_factura=f.Num_factura
left join articulo a on vp.fk_idarticulo=a.idarticulo
left join tipo_prenda tp on a.fk_idtipo_prenda=tp.idtipo_prenda
left join marca m on a.fk_idmarca=m.idmarca
left join modelo mo on a.fk_idmodelo=mo.idmodelo
left join tallas t on a.fk_idtallas=t.idtallas
left join material ml on a.fk_idmaterial=ml.idmaterial
left join cliente cl on c.fk_id_cliente=cl.id_cliente
left join persona p on cl.fk_DNI=p.DNI
where date(b.fecha_bol) or date (f.fecha_fact)=fecha;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_camisamod`
--

/*!50001 DROP VIEW IF EXISTS `v_camisamod`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_camisamod` AS select `a`.`idarticulo` AS `idarticulo`,`tp`.`tipo_prenda` AS `tipo_prenda`,`m`.`marca` AS `marca`,`t`.`talla` AS `talla`,`a`.`precio` AS `precio`,`a`.`stock` AS `stock` from (((`articulo` `a` join `tipo_prenda` `tp` on((`a`.`fk_idtipo_prenda` = `tp`.`idtipo_prenda`))) join `tallas` `t` on((`t`.`idTallas` = `a`.`fk_idTallas`))) join `marca` `m` on((`m`.`idmarca` = `a`.`fk_idmarca`))) order by `a`.`idarticulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_camisas`
--

/*!50001 DROP VIEW IF EXISTS `v_camisas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_camisas` AS select `a`.`idarticulo` AS `idarticulo`,`tp`.`tipo_prenda` AS `tipo_prenda`,`m`.`marca` AS `marca`,`mdo`.`nom_modelo` AS `nom_modelo`,`t`.`talla` AS `talla`,`a`.`precio` AS `precio`,`a`.`stock` AS `stock` from ((((`articulo` `a` join `tipo_prenda` `tp` on((`a`.`fk_idtipo_prenda` = `tp`.`idtipo_prenda`))) join `tallas` `t` on((`t`.`idTallas` = `a`.`fk_idTallas`))) join `marca` `m` on((`m`.`idmarca` = `a`.`fk_idmarca`))) join `modelo` `mdo` on((`mdo`.`idmodelo` = `a`.`fk_idmodelo`))) order by `a`.`idarticulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_clientes`
--

/*!50001 DROP VIEW IF EXISTS `v_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_clientes` AS select `c`.`id_cliente` AS `id_cliente`,`p`.`DNI` AS `DNI`,concat(`p`.`nombre`,' ',`p`.`apellido_p`,' ',`p`.`apellido_m`) AS `Clientes`,`p`.`telefono` AS `telefono`,`p`.`email` AS `email`,`p`.`direccion` AS `direccion` from (`cliente` `c` join `persona` `p` on((`p`.`DNI` = `c`.`fk_DNI`))) group by `c`.`id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_correa`
--

/*!50001 DROP VIEW IF EXISTS `v_correa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_correa` AS select `a`.`idarticulo` AS `idarticulo`,`tp`.`tipo_prenda` AS `tipo_prenda`,`m`.`material` AS `material`,`mo`.`nom_modelo` AS `nom_modelo`,`a`.`precio` AS `precio`,`a`.`stock` AS `stock` from (((`articulo` `a` join `tipo_prenda` `tp` on((`a`.`fk_idtipo_prenda` = `tp`.`idtipo_prenda`))) join `material` `m` on((`m`.`idmaterial` = `a`.`fk_idmaterial`))) join `modelo` `mo` on((`mo`.`idmodelo` = `a`.`fk_idmodelo`))) where (`tp`.`idtipo_prenda` = 'TIP002') order by `a`.`idarticulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_medcli`
--

/*!50001 DROP VIEW IF EXISTS `v_medcli`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_medcli` AS select `c`.`id_cliente` AS `id_cliente`,`p`.`nombre` AS `nombre`,`p`.`apellido_p` AS `apellido_p`,`p`.`apellido_m` AS `apellido_m`,`p`.`telefono` AS `telefono` from (`cliente` `c` join `persona` `p` on((`c`.`fk_DNI` = `p`.`DNI`))) group by `c`.`id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_medidascliente`
--

/*!50001 DROP VIEW IF EXISTS `v_medidascliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_medidascliente` AS select `cm`.`idCleinteM` AS `idCleinteM`,`cl`.`id_cliente` AS `id_cliente`,`p`.`DNI` AS `DNI`,concat(`p`.`nombre`,' ',`p`.`apellido_p`,' ',`p`.`apellido_m`) AS `Clientes`,`p`.`telefono` AS `telefono`,`p`.`email` AS `email`,`p`.`direccion` AS `direccion` from ((`cliente_medidas` `cm` join `cliente` `cl` on((`cl`.`id_cliente` = `cm`.`fk_id_cliente`))) join `persona` `p` on((`p`.`DNI` = `cl`.`fk_DNI`))) group by `cm`.`idCleinteM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_modelotela`
--

/*!50001 DROP VIEW IF EXISTS `v_modelotela`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_modelotela` AS select `mt`.`idmodelo_tela` AS `idmodelo_tela`,`a`.`marca` AS `marca`,`mt`.`nombre_modelo` AS `nombre_modelo`,`mt`.`precio` AS `precio`,`mt`.`metros` AS `metros` from (`modelo_tela` `mt` join `marca_tela` `a` on((`a`.`idmarca_tela` = `mt`.`fk_idmarca_tela`))) group by `mt`.`idmodelo_tela` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_per`
--

/*!50001 DROP VIEW IF EXISTS `v_per`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_per` AS select `c`.`id_cliente` AS `id_cliente`,`p`.`DNI` AS `DNI`,concat(`p`.`nombre`,' ',`p`.`apellido_p`,' ',`p`.`apellido_m`) AS `Clientes`,`p`.`telefono` AS `telefono`,`p`.`email` AS `email`,`p`.`direccion` AS `direccion` from (`cliente` `c` join `persona` `p` on((`p`.`DNI` = `c`.`fk_DNI`))) group by `c`.`id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_percli`
--

/*!50001 DROP VIEW IF EXISTS `v_percli`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_percli` AS select `p`.`DNI` AS `DNI`,`p`.`nombre` AS `nombre`,`p`.`apellido_p` AS `apellido_p`,`p`.`apellido_m` AS `apellido_m`,`p`.`telefono` AS `telefono`,`t`.`tipo_persona` AS `tipo_persona` from (`persona` `p` join `tipo_persona` `t` on((`t`.`idtipo_persona` = `p`.`fk_idtipo_persona`))) group by `p`.`DNI` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_productos`
--

/*!50001 DROP VIEW IF EXISTS `v_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_productos` AS select `a`.`idarticulo` AS `idarticulo`,`tp`.`tipo_prenda` AS `tipo_prenda`,`m`.`marca` AS `marca`,`mo`.`nom_modelo` AS `nom_modelo`,`t`.`talla` AS `talla`,`ml`.`material` AS `material`,`a`.`descripcion` AS `descripcion`,`a`.`precio` AS `precio`,`a`.`stock` AS `stock` from (((((`articulo` `a` left join `tipo_prenda` `tp` on((`a`.`fk_idtipo_prenda` = `tp`.`idtipo_prenda`))) left join `marca` `m` on((`a`.`fk_idmarca` = `m`.`idmarca`))) left join `modelo` `mo` on((`a`.`fk_idmodelo` = `mo`.`idmodelo`))) left join `tallas` `t` on((`a`.`fk_idTallas` = `t`.`idTallas`))) left join `material` `ml` on((`a`.`fk_idmaterial` = `ml`.`idmaterial`))) group by `a`.`idarticulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_rep`
--

/*!50001 DROP VIEW IF EXISTS `v_rep`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_rep` AS select `r`.`idRepresentante` AS `idRepresentante`,`r`.`RUC` AS `RUC`,`p`.`DNI` AS `DNI`,`p`.`nombre` AS `nombre`,concat(`p`.`apellido_p`,' ',`p`.`apellido_m`) AS `Apellidos` from (`representante` `r` join `persona` `p` on((`p`.`DNI` = `r`.`fk_DNI`))) group by `r`.`idRepresentante` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_repre`
--

/*!50001 DROP VIEW IF EXISTS `v_repre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_repre` AS select `p`.`DNI` AS `DNI`,`p`.`nombre` AS `nombre`,`p`.`apellido_p` AS `apellido_p`,`p`.`apellido_m` AS `apellido_m`,`t`.`tipo_persona` AS `tipo_persona` from (`persona` `p` join `tipo_persona` `t` on((`t`.`idtipo_persona` = `p`.`fk_idtipo_persona`))) group by `p`.`DNI` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-21 15:30:42
