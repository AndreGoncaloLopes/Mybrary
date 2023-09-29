-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: eu-cdbr-west-02.cleardb.net    Database: heroku_9a2668fd1a8c301
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `acabamento_exterior`
--

DROP TABLE IF EXISTS `acabamento_exterior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acabamento_exterior` (
  `id_acabamento` int(11) NOT NULL AUTO_INCREMENT,
  `acabamento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_acabamento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acabamento_exterior`
--

LOCK TABLES `acabamento_exterior` WRITE;
/*!40000 ALTER TABLE `acabamento_exterior` DISABLE KEYS */;
INSERT INTO `acabamento_exterior` VALUES (1,'Alisado'),(2,'Brunido'),(3,'Engobado'),(4,'Grosseiro');
/*!40000 ALTER TABLE `acabamento_exterior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amostra`
--

DROP TABLE IF EXISTS `amostra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amostra` (
  `id_amostra` int(11) NOT NULL AUTO_INCREMENT,
  `descrição` varchar(500) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `cronologia` int(11) DEFAULT NULL,
  `século` varchar(45) DEFAULT NULL,
  `x` varchar(45) DEFAULT NULL,
  `y` varchar(45) DEFAULT NULL,
  `z` varchar(45) DEFAULT NULL,
  `intervenção` int(11) NOT NULL,
  `sondagem` int(11) NOT NULL,
  `UE` int(11) NOT NULL,
  `material` int(11) NOT NULL,
  PRIMARY KEY (`id_amostra`),
  KEY `fk_Amostra_Tipo_idx` (`tipo`),
  KEY `fk_Amostra_Cronologia_idx` (`cronologia`),
  KEY `fk_Amostra_Intervenção_idx` (`intervenção`),
  KEY `fk_Amostra_Sondagem _idx` (`sondagem`),
  KEY `fk_Amostra_UE_idx` (`UE`),
  KEY `fk_Amostra_Material_idx` (`material`),
  CONSTRAINT `fk_Amostra_Cronologia` FOREIGN KEY (`cronologia`) REFERENCES `cronologia` (`id_cronologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Amostra_Intervenção` FOREIGN KEY (`intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Amostra_Material` FOREIGN KEY (`material`) REFERENCES `material_tabela` (`id_material`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Amostra_Sondagem ` FOREIGN KEY (`sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Amostra_Tipo` FOREIGN KEY (`tipo`) REFERENCES `material_amostra` (`id_material`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Amostra_UE` FOREIGN KEY (`UE`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amostra`
--

LOCK TABLES `amostra` WRITE;
/*!40000 ALTER TABLE `amostra` DISABLE KEYS */;
INSERT INTO `amostra` VALUES (51,'Amostra ',NULL,NULL,'','','','',161,661,5871,2181),(61,'MDDS\nAmostra para análise de depósito interior de parede/bojo\n\nFossa 3\n2023.0130\n',11,NULL,'','','','',161,661,5871,2191),(71,'MDDS\nAmostra para análise de depósito interior de parede/bojo\nFossa 3 \n2023.0131',11,NULL,'','','','',161,661,5871,2201),(81,'MDDS \nAmostra para análise de depósito interior de parede/bojo\nFossa 9\n2023.0135',11,NULL,'','','','',161,731,5981,2211),(91,'MDDS \nAmostra para análise de depósito interior de parede/bojo \nFossa 10\n2023.0138',11,NULL,'','','','',161,741,6001,2221),(101,'MDDS \nAmostra para análise de depósito interior de parede/bojo \nFossa 10\n2023.0139',11,NULL,'','','','',161,741,6001,2231),(111,'MDDS\nAmostra de fundo de peça',NULL,NULL,'','','','',211,511,4791,2251),(121,'MDDS\nAmostra de fundo de peça',NULL,NULL,'','','','',211,511,4791,2241);
/*!40000 ALTER TABLE `amostra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aparelho`
--

DROP TABLE IF EXISTS `aparelho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aparelho` (
  `id_aparelho` int(11) NOT NULL AUTO_INCREMENT,
  `aparelho` varchar(100) NOT NULL,
  PRIMARY KEY (`id_aparelho`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aparelho`
--

LOCK TABLES `aparelho` WRITE;
/*!40000 ALTER TABLE `aparelho` DISABLE KEYS */;
INSERT INTO `aparelho` VALUES (1,'Alvenaria de Tijolo'),(2,'Alvenaria irregular'),(3,'Alvenaria Mista'),(4,'Alvenaria Regular'),(5,'Alvenaria Seca'),(6,'Cantaria'),(7,'Opus caementicium'),(8,'Opus incertum'),(9,'Opus quadratum'),(10,'Silharia'),(11,'Tabique'),(12,'Taipa'),(13,'Taipa fasquio'),(21,'Betão e tijolo'),(31,'Tijoleira'),(41,'Betão e PVC'),(51,'Pedra e argamassa'),(61,'Terra batida'),(71,'Paralelo'),(81,'PVC'),(91,'Opus'),(101,'Opus signinum'),(111,'Telha');
/*!40000 ALTER TABLE `aparelho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caracterização`
--

DROP TABLE IF EXISTS `caracterização`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caracterização` (
  `id_caracterização` int(11) NOT NULL AUTO_INCREMENT,
  `caracterização` varchar(100) NOT NULL,
  PRIMARY KEY (`id_caracterização`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracterização`
--

LOCK TABLES `caracterização` WRITE;
/*!40000 ALTER TABLE `caracterização` DISABLE KEYS */;
INSERT INTO `caracterização` VALUES (1,'Sedimentar'),(2,'Construtiva'),(3,'Interface Negativo'),(4,'Interface Positivo');
/*!40000 ALTER TABLE `caracterização` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Aguada'),(2,'Azulejo'),(3,'Bracarense'),(4,'Castreja'),(5,'Cinzenta'),(6,'Cinzenta Fina'),(7,'Cinzenta Tardia'),(8,'Comum'),(9,'Comum Fina'),(10,'Comum Grosseira'),(11,'Engobe Branco'),(12,'Engobe Vermelho'),(13,'Faiança'),(14,'Grés'),(15,'Paredes Finas'),(16,'Porcelana'),(17,'Sigillata'),(18,'Vidrada'),(19,'Casca de Ovo'),(21,'Material de Construção');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cerâmica`
--

DROP TABLE IF EXISTS `cerâmica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cerâmica` (
  `id_cerâmica` int(11) NOT NULL AUTO_INCREMENT,
  `descrição` varchar(500) DEFAULT NULL,
  `fragmentos` varchar(100) DEFAULT NULL,
  `peça` int(11) DEFAULT NULL,
  `forma` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `cronologia` int(11) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `tipologia` int(11) DEFAULT NULL,
  `cozedura` int(11) DEFAULT NULL,
  `século` varchar(100) DEFAULT NULL,
  `data` varchar(100) DEFAULT NULL,
  `pintada` varchar(45) DEFAULT NULL,
  `decoração` varchar(500) DEFAULT NULL,
  `exterior` int(11) DEFAULT NULL,
  `interior` int(11) DEFAULT NULL,
  `x` varchar(45) DEFAULT NULL,
  `y` varchar(45) DEFAULT NULL,
  `z` varchar(45) DEFAULT NULL,
  `intervenção` int(11) NOT NULL,
  `sondagem` int(11) NOT NULL,
  `UE` int(11) NOT NULL,
  `material` int(11) NOT NULL,
  PRIMARY KEY (`id_cerâmica`),
  KEY `fk_Ceramica_Peça_idx` (`peça`),
  KEY `fk_Ceramica_Forma_idx` (`forma`),
  KEY `fk_Ceramica_Estado_idx` (`estado`),
  KEY `fk_Ceramica_Cronologia_idx` (`cronologia`),
  KEY `fk_Ceramica_Categoria_idx` (`categoria`),
  KEY `fk_Ceramica_Tipologia_idx` (`tipologia`),
  KEY `fk_Ceramica_Cozedura_idx` (`cozedura`),
  KEY `fk_Ceramica_exterior_idx` (`exterior`),
  KEY `fk_Ceramica_Intervenção_idx` (`intervenção`),
  KEY `fk_Ceramica_Sondagem_idx` (`sondagem`),
  KEY `fk_Ceramica_UE_idx` (`UE`),
  KEY `fk_Ceramica_Material_idx` (`material`),
  KEY `fk_Ceramica_Interior_idx` (`interior`),
  CONSTRAINT `fk_Ceramica_Categoria` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_Cozedura` FOREIGN KEY (`cozedura`) REFERENCES `cozedura` (`id_cozedura`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_Cronologia` FOREIGN KEY (`cronologia`) REFERENCES `cronologia` (`id_cronologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_Estado` FOREIGN KEY (`estado`) REFERENCES `conservação` (`id_conservação`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_Forma` FOREIGN KEY (`forma`) REFERENCES `forma_cerâmica` (`id_forma`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_Interior` FOREIGN KEY (`interior`) REFERENCES `acabamento_exterior` (`id_acabamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_Intervenção` FOREIGN KEY (`intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_Material` FOREIGN KEY (`material`) REFERENCES `material_tabela` (`id_material`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_Peça` FOREIGN KEY (`peça`) REFERENCES `peça` (`id_peça`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_Sondagem` FOREIGN KEY (`sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_Tipologia` FOREIGN KEY (`tipologia`) REFERENCES `tipologia_cerâmica` (`id_tipologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_UE` FOREIGN KEY (`UE`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ceramica_exterior` FOREIGN KEY (`exterior`) REFERENCES `acabamento_exterior` (`id_acabamento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerâmica`
--

LOCK TABLES `cerâmica` WRITE;
/*!40000 ALTER TABLE `cerâmica` DISABLE KEYS */;
INSERT INTO `cerâmica` VALUES (141,'Tijolo e tegula','2',NULL,1,2,10,21,NULL,NULL,'','','Não','',NULL,NULL,'','','',131,201,1121,201),(151,'','',NULL,NULL,2,10,21,NULL,NULL,'','','Não','',NULL,NULL,'','','',131,201,1141,211),(161,'Romano?','2',NULL,NULL,NULL,5,21,NULL,NULL,'','','Não','',NULL,NULL,'','','',131,201,1181,221),(171,'','3',NULL,NULL,2,10,21,NULL,1,'','','Não','',NULL,NULL,'','','',131,201,1201,231),(181,'','2',NULL,NULL,2,2,21,NULL,1,'','','Não','',NULL,NULL,'','','',131,201,1081,241),(191,'','1',NULL,3,2,8,18,NULL,1,'','','Não','',NULL,NULL,'','','',131,201,1081,251),(201,'','1',NULL,NULL,2,10,21,NULL,1,'','','Não','',NULL,NULL,'','','',131,201,1081,261),(211,'','5',NULL,8,2,4,4,NULL,2,'','','Não','',NULL,NULL,'','','',111,161,971,271),(221,'','2',NULL,3,2,4,4,NULL,2,'','','Não','',NULL,NULL,'','','',111,161,971,281),(231,'','1',NULL,12,2,4,4,NULL,2,'','','Não','',NULL,NULL,'','','',111,161,971,291),(441,'','1',NULL,7,2,8,8,NULL,1,'','','Não','',NULL,NULL,'','','',101,131,801,501),(451,'','1',NULL,8,2,8,8,NULL,1,'','','Não','',NULL,NULL,'','','',101,131,801,511),(461,'','1',NULL,8,2,8,13,NULL,1,'','','Sim','',NULL,NULL,'','','',101,131,801,521),(471,'','1',411,13,1,8,13,NULL,1,'','','Sim','',NULL,NULL,'','','',101,131,801,531),(481,'','2',NULL,21,2,2,8,NULL,1,'','','Não','',NULL,NULL,'','','',101,131,821,581),(491,'','1',NULL,3,2,2,18,NULL,1,'','','Não','',NULL,NULL,'','','',101,131,821,591),(501,'','1',NULL,3,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',101,131,821,601),(511,'','1',NULL,8,2,8,8,NULL,1,'','','Não','Não',NULL,NULL,'','','',101,131,831,611),(521,'','1',NULL,8,2,NULL,13,NULL,1,'','','Sim','',NULL,NULL,'','','',101,131,831,621),(531,'','2',NULL,8,2,2,8,NULL,1,'','','','',NULL,NULL,'','','',101,131,841,671),(541,'','3',NULL,8,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',101,131,841,681),(551,'','2',NULL,21,2,2,8,NULL,1,'','','','',NULL,NULL,'','','',101,131,851,721),(561,'','1',NULL,3,2,2,8,NULL,NULL,'','','','',NULL,NULL,'','','',101,131,851,731),(571,'','1',NULL,8,2,2,18,NULL,NULL,'','','','',NULL,NULL,'','','',101,131,851,741),(581,'','1',NULL,3,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',101,131,851,751),(591,'','2',NULL,3,3,7,13,NULL,NULL,'XVII/XVIII','','Sim','',NULL,NULL,'','','',101,131,851,771),(601,'','1',NULL,7,2,8,8,NULL,1,'','','Não','',NULL,NULL,'','','',101,131,861,801),(611,'','1',NULL,3,2,8,18,NULL,1,'','','Não','',NULL,NULL,'','','',101,131,851,811),(621,'Troncocónico.\nEste fragmento cola com fragmentos da Fossa 9 (UE 716).','1',491,3,2,3,NULL,NULL,2,'','','Não','',1,1,'','','',161,641,5801,921),(631,'','8',NULL,8,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,641,5801,931),(641,'','5',NULL,8,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,651,5851,951),(651,'','5',NULL,8,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,651,5851,941),(661,'','1',NULL,6,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,661,5871,961),(671,'','2',361,8,2,3,NULL,NULL,2,'','','Não','Decoração plástica',NULL,1,'','','',161,661,5871,971),(681,'','15',NULL,8,2,3,NULL,NULL,NULL,'','','Não','',NULL,NULL,'','','',161,661,5871,981),(691,'','15',NULL,8,2,3,NULL,NULL,NULL,'','','Não','',NULL,NULL,'','','',161,661,5871,991),(701,'Arranque de asa exterior','1',381,4,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,671,5891,1001),(711,'Arranque de asa exterior','1',NULL,4,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,671,5891,1011),(721,'','2',NULL,3,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,671,5891,1021),(731,'','6',NULL,8,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,671,5891,1031),(741,'','1',NULL,1,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,671,5891,1041),(751,'','8',NULL,NULL,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,671,5891,1051),(761,'','1',351,3,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,701,5941,1081),(771,'','1',NULL,3,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,701,5941,1091),(781,'Troncocónico.\nFragmento cola com fragmento da Fossa 1 (UE 702).','1',491,3,2,3,NULL,NULL,2,'','','Não','',1,NULL,'','','',161,731,5981,1111),(791,'','2',NULL,8,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,731,5981,1121),(801,'Apresenta cordão','1',NULL,8,2,3,NULL,NULL,2,'','','Não','Decoração plástica',NULL,NULL,'','','',161,731,5981,1131),(811,'','2',NULL,8,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,741,6001,1141),(821,'','1',NULL,6,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,741,6001,1151),(831,'','1',NULL,8,2,3,NULL,NULL,2,'','','Não','',NULL,NULL,'','','',161,751,6021,1161),(841,'','5',421,NULL,1,2,21,NULL,NULL,'','','','',NULL,NULL,'','','',161,921,7751,1191),(851,'','2',NULL,8,1,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',161,921,7751,1201),(861,'','9',NULL,8,1,8,8,NULL,1,'','','Não','',NULL,NULL,'','','',161,921,7751,1211),(871,'','1',NULL,8,1,2,16,NULL,1,'','','Não','',NULL,NULL,'','','',161,921,7751,1221),(881,'','1',NULL,3,1,2,18,NULL,1,'','','Não','',NULL,NULL,'','','',161,921,7751,1231),(891,'','4',NULL,8,NULL,2,18,NULL,1,'','','Não','',NULL,NULL,'','','',161,921,7751,1241),(901,'','1',NULL,7,2,7,13,NULL,NULL,'Séc XVII-XVIII','','Sim','',NULL,NULL,'','','',161,371,3321,1251),(911,'','2',NULL,1,2,2,8,NULL,1,'','','','',NULL,NULL,'','','',161,331,3161,1261),(921,'','2',NULL,3,1,8,8,NULL,1,'','','','',NULL,NULL,'','','',161,331,3161,1271),(931,'','1',NULL,8,2,8,8,NULL,2,'','','','',NULL,NULL,'','','',161,921,7751,1281),(941,'','2',NULL,8,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',161,331,3161,1291),(951,'','1',NULL,8,2,2,21,NULL,1,'','','','',NULL,NULL,'','','',161,351,3241,1301),(961,'','2',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',161,351,3241,1311),(971,'','1',NULL,8,2,8,13,NULL,1,'','','Não','',NULL,NULL,'','','',161,351,3241,1321),(981,'','2',NULL,3,2,8,8,NULL,2,'','','','',NULL,NULL,'','','',161,301,3151,1331),(991,'','1',NULL,1,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',161,301,3151,1341),(1001,'','1',371,3,2,2,13,NULL,1,'XIX','','Sim','',NULL,NULL,'','','',161,301,3151,1351),(1011,'','1',371,7,2,2,13,NULL,1,'XIX','','Sim','',NULL,NULL,'','','',161,301,3151,1361),(1021,'','1',301,12,2,8,13,NULL,1,'','','Sim','',NULL,NULL,'','','',161,301,3151,1371),(1031,'2 telhas (1 vermelha e 1 beje)','2',NULL,8,2,7,21,NULL,1,'','','Não','',NULL,NULL,'','','',81,71,191,1391),(1041,'','1',NULL,8,2,7,21,NULL,1,'','','','',NULL,NULL,'','','',81,71,271,1401),(1051,'','1',NULL,7,1,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,91,371,1411),(1061,'','1',NULL,8,2,8,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,91,371,1421),(1071,'','1',NULL,3,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,91,371,1431),(1081,'','1',NULL,4,2,8,8,NULL,2,'','','Não','',NULL,NULL,'','','',81,91,381,1461),(1091,'','1',NULL,4,2,8,8,NULL,2,'','','Não','',NULL,NULL,'','','',81,91,381,1451),(1101,'','1',NULL,8,2,8,8,NULL,2,'','','Não','',NULL,NULL,'','','',81,91,381,1471),(1111,'','1',NULL,3,2,8,8,NULL,2,'','','Não','',NULL,NULL,'','','',81,91,381,1481),(1121,'','1',NULL,3,2,2,18,NULL,1,'','','Não','',NULL,NULL,'','','',81,91,381,1491),(1131,'','1',NULL,8,2,2,18,NULL,1,'','','Não','',NULL,NULL,'','','',81,91,371,1501),(1141,'','1',NULL,3,2,8,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,91,371,1511),(1151,'','1',NULL,8,2,8,13,NULL,1,'','','','',NULL,NULL,'','','',81,91,371,1521),(1161,'','1',NULL,8,2,7,13,NULL,1,'XVII-XVIII','','Sim','',NULL,NULL,'','','',81,91,371,1531),(1171,'','2',NULL,8,2,8,21,NULL,1,'','','Não','',NULL,NULL,'','','',81,91,461,1541),(1181,'','1',NULL,1,2,NULL,18,NULL,1,'','','Não','',NULL,NULL,'','','',81,91,461,1551),(1191,'','1',NULL,3,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,91,461,1561),(1201,'Esmalte branco interno, verde no exterior','1',NULL,7,2,7,13,NULL,1,'','','','',NULL,NULL,'','','',81,91,461,1571),(1211,'','1',NULL,8,2,7,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,91,461,1581),(1221,'','2',NULL,6,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,91,461,1591),(1231,'','3',NULL,3,2,8,8,NULL,NULL,'','','','',NULL,NULL,'','','',81,91,461,1601),(1241,'','1',NULL,12,2,NULL,8,NULL,1,'','','','',NULL,NULL,'','','',81,91,461,1611),(1251,'','6',NULL,8,2,NULL,8,NULL,1,'','','Não','',NULL,NULL,'','','',81,91,461,1621),(1261,'','1',NULL,8,NULL,8,8,NULL,NULL,'','','Não','Sim',NULL,NULL,'','','',81,91,461,1631),(1271,'','1',421,NULL,2,8,21,NULL,1,'','','','',NULL,NULL,'','','',81,791,6301,1641),(1281,'','8',NULL,8,2,8,8,NULL,2,'','','','',NULL,NULL,'','','',81,791,6301,1651),(1291,'','2',NULL,3,2,8,8,NULL,2,'','','','',NULL,NULL,'','','',81,791,6301,1661),(1301,'','1',NULL,3,2,8,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,791,6301,1671),(1311,'','1',NULL,7,2,8,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,791,6301,1681),(1321,'','1',NULL,7,2,8,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,791,6301,1691),(1341,'1 fragmento com parede externa com esmalte verde e branco na parte interna','2',NULL,8,2,8,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,791,6301,1711),(1351,'','3',NULL,8,2,7,13,NULL,1,'XVII-XVIII','','Sim','',NULL,NULL,'','','',81,791,6301,1721),(1361,'Referência MDDS:\n\nFossa 3\n2023.0130\nParede com fuligem no interior','',NULL,NULL,NULL,3,NULL,NULL,NULL,'','','','',NULL,NULL,'','','',161,661,5871,1781),(1491,'Tégula com marcas de patas de gato','1',421,NULL,2,10,NULL,NULL,1,'','','','',NULL,NULL,'','','',211,931,7771,2151),(1501,'Tégula com marcas de patas de cão','1',421,NULL,2,10,NULL,NULL,NULL,'','','','',NULL,NULL,'','','',211,931,7771,2141),(1511,'Tégula com marca geométrica','1',421,NULL,2,10,NULL,NULL,1,'','','','',NULL,NULL,'','','',211,931,7771,2161),(1521,'Tégula com marca de oleiro.\n\nEX.OF.NAT\nOficina NAT(ercius)','1',421,NULL,2,10,NULL,NULL,1,'Finais do séc. III inícios do IV ao séc. V','','','Marca',NULL,NULL,'','','',211,931,7771,2171),(1531,'','1',NULL,3,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,791,6311,2261),(1541,'','1',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,791,6311,2271),(1551,'','1',NULL,7,2,NULL,NULL,NULL,2,'','','','',NULL,NULL,'','','',81,791,6311,2281),(1561,'','2',421,NULL,2,8,21,NULL,1,'','','','',NULL,NULL,'','','',81,791,6331,2291),(1571,'Comum','4',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,791,6341,2301),(1581,'','3',NULL,7,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,791,6341,2311),(1591,'','1',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,791,6341,2321),(1601,'','1',NULL,12,2,7,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,791,6341,2331),(1611,'','2',NULL,8,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,791,6341,2341),(1621,'','1',NULL,7,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,791,6341,2351),(1631,'','2',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,791,6351,2371),(1641,'','2',NULL,NULL,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,791,6351,2381),(1651,'','2',NULL,NULL,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,791,6351,2391),(1661,'','1',NULL,8,2,8,13,NULL,1,'','','','',NULL,NULL,'','','',81,791,6351,2401),(1671,'','1',NULL,7,2,8,13,NULL,1,'','','','',NULL,NULL,'','','',81,791,6351,2411),(1681,'','1',421,NULL,2,8,NULL,NULL,1,'','','','',NULL,NULL,'','','',81,791,6371,2421),(1691,'','1',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,791,6371,2431),(1701,'','1',NULL,12,2,8,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,791,6371,2441),(1711,'','2',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,91,6111,2451),(1721,'','1',NULL,7,2,8,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,91,6111,2461),(1731,'','1',NULL,3,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,91,6151,2471),(1741,'','1',NULL,8,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,91,6151,2481),(1751,'Marca de trempe','1',NULL,7,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,91,6151,2491),(1761,'','1',NULL,8,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,91,6151,2501),(1771,'','1',421,NULL,2,2,21,NULL,1,'','','','',NULL,NULL,'','','',81,91,6241,2511),(1781,'','1',NULL,3,2,2,8,NULL,1,'','','','',NULL,NULL,'','','',81,91,6241,2521),(1791,'','1',421,NULL,2,8,NULL,NULL,1,'','','','',NULL,NULL,'','','',81,91,6251,2531),(1801,'','1',NULL,3,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,91,6251,2541),(1811,'','1',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,91,6251,2551),(1821,'','4',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,91,6251,2561),(1831,'','1',NULL,8,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,91,6251,2571),(1841,'','1',NULL,7,2,7,13,NULL,NULL,'','','','',NULL,NULL,'','','',81,881,7781,2611),(1851,'','2',NULL,7,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,881,7781,2621),(1861,'','1',NULL,8,2,NULL,8,NULL,1,'','','','',NULL,NULL,'','','',81,881,7781,2631),(1871,'','1',NULL,8,2,2,8,NULL,1,'','','','Sim',NULL,NULL,'','','',81,881,7781,2641),(1881,'','1',NULL,8,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,881,7781,2651),(1891,'','3',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,881,7781,2661),(1901,'','1',421,NULL,NULL,8,NULL,NULL,NULL,'','','','',NULL,NULL,'','','',81,881,7791,2681),(1911,'','3',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,881,7791,2691),(1921,'','3',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,881,7791,2701),(1931,'','1',NULL,3,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,881,7791,2711),(1941,'','1',NULL,7,2,7,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,881,7791,2721),(1951,'','2',NULL,8,2,2,5,NULL,2,'','','','',NULL,NULL,'','','',81,911,7571,2741),(1961,'','1',NULL,3,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,911,7571,2751),(1971,'','1',NULL,3,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,911,7571,2761),(1981,'','1',NULL,7,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,911,7571,2771),(1991,'','1',NULL,8,2,8,8,NULL,2,'','','','',NULL,NULL,'','','',81,911,7581,2781),(2001,'','',NULL,7,2,8,13,NULL,1,'','','','',NULL,NULL,'','','',81,911,7581,2791),(2011,'','2',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,911,7631,2801),(2021,'','1',NULL,8,2,8,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,911,7631,2811),(2031,'','1',NULL,3,2,8,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,911,7631,2821),(2041,'','1',NULL,8,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,911,7631,2831),(2051,'Paredes queimadas','2',NULL,8,2,5,8,NULL,1,'','','','',NULL,NULL,'','','',81,911,7741,2841),(2061,'','1',NULL,1,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,91,6261,2851),(2071,'','1',NULL,8,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,91,6191,2861),(2081,'Muito arenosa','1',421,NULL,2,5,21,NULL,2,'','','','',NULL,NULL,'','','',81,91,6201,2871),(2091,'','4',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,91,6201,2881),(2101,'','1',NULL,3,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,91,6201,2891),(2111,'','1',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,91,6201,2901),(2121,'','1',NULL,3,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,91,6201,2911),(2131,'','1',NULL,6,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2241,2931),(2141,'','1',NULL,4,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2241,2941),(2151,'','1',NULL,3,2,8,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,261,2241,2951),(2161,'','1',NULL,7,NULL,7,13,NULL,NULL,'XVII/XVIII','','Sim','',NULL,NULL,'','','',81,261,2241,2961),(2171,'Azulejo idêntico ao da sacristia.','1',41,NULL,NULL,7,2,NULL,1,'','','Sim','',NULL,NULL,'','','',81,261,2251,2981),(2181,'','4',NULL,3,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,261,2251,2991),(2191,'','1',NULL,8,1,NULL,8,NULL,1,'','','','',NULL,NULL,'','','',81,261,2251,3001),(2201,'','2',NULL,3,2,8,18,NULL,1,'','','','',NULL,NULL,'','','',81,261,2251,3011),(2211,'','1',NULL,8,2,8,18,NULL,1,'','','','',NULL,NULL,'','','',81,261,2251,3021),(2221,'','1',NULL,3,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2251,3031),(2231,'','1',411,21,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2251,3041),(2241,'','4',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2251,3051),(2251,'','1',411,13,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2251,3061),(2261,'','1',NULL,7,2,2,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,261,2251,3071),(2271,'','4',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2261,3101),(2281,'','1',NULL,3,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2261,3111),(2291,'','1',NULL,12,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2261,3121),(2301,'','1',421,NULL,NULL,8,21,NULL,NULL,'','','','',NULL,NULL,'','','',81,261,2261,3131),(2311,'/','2',NULL,8,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,261,2261,3141),(2321,'','1',NULL,7,2,8,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,261,2261,3151),(2331,'','1',NULL,7,2,7,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,261,2261,3161),(2341,'','1',NULL,3,2,7,13,NULL,1,'XVII - XVIII','','Sim','',NULL,NULL,'','','',81,261,2261,3171),(2351,'','1',NULL,8,2,7,13,NULL,1,'XVII - XVIII','','Sim','',NULL,NULL,'','','',81,261,2261,3181),(2361,'','1',421,NULL,2,8,21,NULL,1,'','','','',NULL,NULL,'','','',81,261,2291,3191),(2371,'','1',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,261,2291,3201),(2381,'','1',NULL,3,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,261,2291,3211),(2391,'','1',NULL,8,2,2,18,NULL,1,'','','','/',NULL,NULL,'','','',81,261,2291,3221),(2401,'','1',NULL,1,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,261,2291,3231),(2411,'Fragmento queimado','1',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2291,3241),(2421,'','1',NULL,3,2,7,13,NULL,1,'XVII - XVIII','','Sim','',NULL,NULL,'','','',81,261,2291,3251),(2431,'Medieval?','21',NULL,8,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2301,3281),(2441,'Medieval ?','13',NULL,8,2,6,5,NULL,2,'','','','Cordão plástico',NULL,NULL,'','','',81,261,2301,3291),(2451,'Medieval?','3',NULL,3,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2301,3301),(2461,'Medieval?','1',NULL,7,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2301,3311),(2471,'','1',NULL,3,2,5,NULL,NULL,1,'','','','Impressa',NULL,NULL,'','','',81,261,2301,3321),(2481,'','3',NULL,8,2,5,8,NULL,1,'\'','','','',NULL,NULL,'','','',81,261,2301,3331),(2491,'','1',NULL,8,2,7,13,NULL,1,'XVII - XVIII','','Sim','',NULL,NULL,'','','',81,261,2301,3341),(2501,'','1',NULL,7,2,5,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2341,3361),(2511,'','1',NULL,3,2,5,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2341,3371),(2521,'','1',421,NULL,2,8,21,NULL,1,'','','','',NULL,NULL,'','','',81,261,2351,3381),(2531,'','1',NULL,8,2,NULL,8,NULL,1,'','','','',NULL,NULL,'','','',81,261,2351,3391),(2541,'','1',NULL,8,2,NULL,13,NULL,1,'XVII-XVIII','','Sim','',NULL,NULL,'','','',81,261,2351,3421),(2551,'','2',NULL,3,2,8,5,NULL,1,'','','','',NULL,NULL,'','','',81,261,2371,3431),(2561,'','1',411,21,2,8,8,NULL,NULL,'','','','',NULL,NULL,'','','',81,261,2371,3441),(2571,'','2',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,261,2371,3451),(2581,'','2',NULL,3,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2371,3461),(2591,'','1',NULL,6,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2371,3471),(2601,'','1',NULL,7,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2371,3481),(2611,'/','1',NULL,8,2,8,5,NULL,2,'','','','Sim',NULL,NULL,'','','',81,261,2371,3491),(2621,'','8',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,261,2371,3501),(2631,'','1',NULL,8,2,8,13,NULL,2,'','','Não','',NULL,NULL,'','','',81,261,2371,3511),(2641,'','2',NULL,8,2,8,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,261,2371,3521),(2651,'','1',NULL,3,2,8,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,261,2371,3531),(2661,'','8',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,1991,3551),(2671,'','2',NULL,3,2,8,8,NULL,2,'','','','',NULL,NULL,'','','',81,111,1991,3561),(2681,'','1',NULL,8,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,111,1991,3571),(2691,'','3',NULL,3,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2001,3581),(2701,'','1',NULL,3,2,8,5,NULL,2,'','','','Sim',NULL,NULL,'','','',81,111,2001,3591),(2711,'','1',NULL,7,2,8,18,NULL,2,'','','','',NULL,NULL,'','','',81,111,2001,3601),(2721,'','1',NULL,8,2,8,18,NULL,1,'','','','',NULL,NULL,'','','',81,111,2001,3611),(2731,'','1',NULL,7,2,7,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,111,2001,3621),(2741,'','1',NULL,3,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,111,2001,3631),(2751,'Idênticos aos da sacristia','4',41,NULL,2,7,2,NULL,1,'','','Sim','',NULL,NULL,'','','',81,111,2031,3641),(2761,'','2',NULL,3,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,111,2031,3651),(2771,'','1',NULL,7,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,111,2031,3661),(2781,'','1',NULL,7,2,2,13,NULL,2,'','','Não','',NULL,NULL,'','','',81,111,2031,3671),(2791,'','1',NULL,6,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2031,3681),(2801,'','1',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2031,3691),(2811,'','1',411,13,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,111,2031,3701),(2821,'','3',NULL,7,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,111,2031,3711),(2831,'/','4',NULL,8,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',81,111,2031,3721),(2841,'','1',NULL,3,2,NULL,18,NULL,1,'','','','',NULL,NULL,'','','',81,111,2031,3731),(2851,'','1',NULL,8,2,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,111,2061,3741),(2861,'','1',NULL,8,2,7,13,NULL,1,'XVII - XVIII','','Sim','',NULL,NULL,'','','',81,111,2061,3751),(2871,'','1',NULL,3,2,7,13,NULL,1,'XVII - XVIII','','Sim','',NULL,NULL,'','','',81,111,2061,3761),(2881,'','10',NULL,8,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2071,3771),(2891,'','1',NULL,3,2,8,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2071,3781),(2911,'','4',NULL,8,2,7,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,111,2071,3801),(2921,'','1',NULL,3,2,7,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,111,2071,3811),(2931,'','2',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',81,111,2071,3821),(2941,'','1',421,NULL,2,8,21,NULL,1,'','','','',NULL,NULL,'','','',81,111,2071,3831),(2951,'Medieval?','4',NULL,3,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2841,3841),(2961,'Medieval?','2',NULL,7,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2841,3851),(2971,'Medieval?','11',NULL,8,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2841,3861),(2981,'Medieval?','15',NULL,8,2,6,5,NULL,2,'/','','','sim',NULL,NULL,'','','',81,111,2841,3871),(2991,'Medieval?','3',NULL,6,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2841,3881),(3001,'','3',NULL,6,2,5,8,NULL,1,'','','','',NULL,NULL,'','','',81,111,2841,3891),(3011,'','1',NULL,3,2,7,13,NULL,1,'XVII - XVIII','','Sim','',NULL,NULL,'','','',81,111,2841,3901),(3021,'Medieval?','2',NULL,3,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2851,3921),(3031,'Medieval?','3',NULL,7,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2851,3931),(3041,'Medieval?','16',NULL,8,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2851,3941),(3051,'Medieval?','6',NULL,8,2,6,5,NULL,2,'','','','Sim',NULL,NULL,'','','',81,111,2851,3951),(3061,'Medieval?','2',NULL,6,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2851,3961),(3071,'Medieval?','5',NULL,8,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2081,3981),(3081,'Medieval?','2',NULL,8,2,6,5,NULL,2,'','','','Sim',NULL,NULL,'','','',81,111,2081,3991),(3091,'Medieval?','1',NULL,6,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,111,2081,4001),(3101,'','2',NULL,8,2,5,8,NULL,1,'','','','',NULL,NULL,'','','',81,111,2081,4011),(3111,'Medieval?','4',NULL,8,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,281,2691,4021),(3121,'','1',NULL,3,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,281,2691,4031),(3131,'','1',NULL,7,2,5,8,NULL,1,'','','','',NULL,NULL,'','','',81,281,2691,4041),(3141,'','1',NULL,3,2,5,8,NULL,1,'','','','',NULL,NULL,'','','',81,281,2691,4051),(3151,'','2',NULL,8,2,7,13,NULL,1,'XVII - XVIII','','Sim','',NULL,NULL,'','','',81,281,2691,4061),(3161,'','1',NULL,3,2,7,13,NULL,1,'XVII - XVIII','','Sim','',NULL,NULL,'','','',81,281,2691,4071),(3171,'Medieval?','1',NULL,3,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,281,2701,4081),(3181,'Medieval?','1',NULL,7,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,281,2701,4091),(3191,'Medieval?','14',NULL,8,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',81,281,2701,4101),(3201,'','3',NULL,8,2,5,8,NULL,1,'','','','',NULL,NULL,'','','',81,281,2701,4111),(3211,'Medieval?','1',NULL,8,2,6,8,NULL,1,'','','','',NULL,NULL,'','','',81,281,2701,4121),(3221,'','2',NULL,3,2,8,18,NULL,1,'','','','',NULL,NULL,'','','',81,281,2691,4131),(3231,'','3',NULL,8,2,8,18,NULL,1,'','','','',NULL,NULL,'','','',81,281,2701,4141),(3241,'','1',NULL,3,2,8,13,NULL,1,'','','Não','',NULL,NULL,'','','',81,281,2701,4151),(3251,'','1',NULL,8,2,8,13,NULL,1,'','','Sim','',NULL,NULL,'','','',81,281,2701,4161),(3261,'','1',421,NULL,2,8,21,NULL,1,'','','','',NULL,NULL,'','','',81,281,2701,4171),(3271,'','1',NULL,3,2,8,8,NULL,1,'','','Sim','',NULL,NULL,'','','',141,211,1301,4191),(3281,'','3',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',141,211,1301,4201),(3291,'Bordo com pega','1',NULL,3,2,NULL,8,NULL,1,'','','','',NULL,NULL,'','','',141,211,1301,4211),(3301,'','1',NULL,1,1,8,8,NULL,NULL,'','','','',NULL,NULL,'','','',141,211,1301,4221),(3311,'','2',NULL,8,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',141,211,1301,4231),(3321,'Cinzenta tardia produção  local.','1',NULL,1,2,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1301,4241),(3331,'Cinzenta tardia produção local','1',NULL,8,2,6,5,NULL,NULL,'IV-VI','','','',NULL,NULL,'','','',141,211,1301,4251),(3341,'','2',NULL,8,2,6,5,NULL,NULL,'IV-VI','','','',NULL,NULL,'','','',141,211,1351,4261),(3351,'','1',NULL,7,2,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1351,4271),(3361,'','1',NULL,3,1,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1351,4281),(3371,'','1',NULL,3,2,10,8,NULL,1,'','','','',NULL,NULL,'','','',141,211,1351,4291),(3381,'','1',NULL,8,2,10,9,NULL,1,'','','','',NULL,NULL,'','','',141,211,1351,4301),(3391,'','1',NULL,8,2,10,9,NULL,1,'','','','',NULL,NULL,'','','',141,211,1351,4311),(3401,'','1',NULL,8,2,10,9,NULL,1,'','','','',NULL,NULL,'','','',141,211,1351,4321),(3411,'','1',NULL,8,2,10,9,NULL,1,'','','','',NULL,NULL,'','','',141,211,1351,4341),(3421,'','1',NULL,8,2,10,9,NULL,1,'','','','',NULL,NULL,'','','',141,211,1351,4331),(3431,'Fragmento queimado','1',NULL,3,3,5,8,NULL,NULL,'','','','',4,NULL,'','','',141,211,1351,4351),(3441,'','1',NULL,8,2,6,5,NULL,2,'IV-VI (?)','','','',NULL,NULL,'','','',141,211,1351,4361),(3451,'','1',201,31,2,8,13,NULL,NULL,'','','Sim','',NULL,NULL,'','','',141,211,1351,4371),(3461,'','1',NULL,8,2,2,18,NULL,1,'','','','',NULL,NULL,'','','',141,211,1351,4381),(3471,'Queimado.  Produção local','1',211,11,2,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1361,4441),(3481,'','1',NULL,4,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',141,211,1361,4451),(3491,'Produção local','1',NULL,1,1,6,5,NULL,2,'','','','',NULL,NULL,'','','',141,211,1361,4461),(3501,'Produção local','2',NULL,3,2,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1361,4471),(3511,'','2',NULL,3,2,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1361,4481),(3521,'','1',NULL,3,2,6,5,NULL,1,'IV-VI','','','Impressa na parte superior do bordo',NULL,NULL,'','','',141,211,1361,4491),(3531,'','4',NULL,7,1,6,5,NULL,1,'IV-VI','','','',NULL,NULL,'','','',141,211,1361,4501),(3541,'','9',NULL,NULL,1,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1361,4511),(3551,'','1',NULL,6,2,6,5,NULL,2,'','','','',NULL,NULL,'','','',141,211,1361,4521),(3561,'Testo?','1',411,21,NULL,5,8,NULL,2,'','','','',NULL,NULL,'','','',141,211,1361,4531),(3571,'','3',NULL,3,2,10,8,NULL,1,'','','','',NULL,NULL,'','','',141,211,1361,4541),(3581,'','1',NULL,1,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',141,211,1361,4551),(3591,'','6',NULL,8,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',141,211,1361,4561),(3601,'','1',NULL,8,1,8,13,NULL,1,'','','Não','',NULL,NULL,'','','',141,211,1361,4571),(3611,'','39',NULL,8,2,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1381,4601),(3621,'','4',NULL,8,2,5,4,NULL,NULL,'IV-VI','','','',1,NULL,'','','',141,211,1381,4611),(3631,'','2',NULL,1,2,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1381,4621),(3641,'','4',NULL,3,2,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1381,4631),(3651,'','1',NULL,4,2,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1381,4641),(3661,'','4',NULL,7,1,6,5,NULL,2,'IV-VI','','','',NULL,NULL,'','','',141,211,1381,4651),(3671,'','12',NULL,8,2,10,8,NULL,1,'IV-VI','','','',NULL,NULL,'','','',141,211,1381,4661),(3681,'','1',NULL,7,2,10,8,NULL,1,'','','','',NULL,NULL,'','','',141,211,1381,4671),(3691,'','2',NULL,3,2,10,8,NULL,1,'','','','',NULL,NULL,'','','',141,211,1381,4681),(3701,'','1',NULL,8,2,10,17,NULL,1,'Alto império ','','','',NULL,NULL,'','','',141,211,1381,4691),(3711,'','1',NULL,8,1,10,17,NULL,1,'Hispânica tardia','','','',NULL,NULL,'','','',141,211,1381,4701),(3721,'','1',NULL,7,2,10,17,NULL,1,'Africana','','','',NULL,NULL,'','','',141,211,1381,4711),(3731,'Anforeta tardia','3',31,8,2,10,17,NULL,1,'','','','',NULL,NULL,'','','',141,211,1381,4721),(3741,'','1',21,8,2,10,8,NULL,1,'','','','',NULL,NULL,'','','',141,211,1351,4731),(3751,'Alto império ','1',NULL,8,2,10,17,NULL,NULL,'','','','',NULL,NULL,'','','',141,211,1361,4741),(3761,'','1',NULL,7,2,4,4,NULL,1,'','','','',NULL,NULL,'','','',141,211,1381,4751),(3841,'Cinzenta tardia de produção local? Alto Medieval','3',NULL,8,1,6,5,NULL,2,'','','','',NULL,NULL,'','','',251,591,5631,4831),(3851,'Produção local - Alto Medieval ','1',NULL,3,1,6,5,NULL,2,'','','','',NULL,NULL,'','','',251,591,5631,4841),(3861,'','1',NULL,1,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',251,591,5631,4851),(3871,'','1',NULL,8,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',251,591,5631,4861),(3881,'','1',NULL,3,1,2,18,NULL,1,'','','','',NULL,NULL,'','','',251,591,5631,4871),(3901,'','1',NULL,7,1,2,18,NULL,1,'','','','',NULL,NULL,'','','',251,631,5711,4911),(3911,'','1',NULL,8,1,8,18,NULL,1,'','','','',NULL,NULL,'','','',251,631,5711,4921),(3921,'','1',NULL,7,1,8,18,NULL,1,'','','','Espiral no fundo interior ',NULL,NULL,'','','',251,631,5711,4931),(3931,'','2',NULL,3,1,2,13,NULL,1,'','','Sim','',NULL,NULL,'','','',251,631,5711,4941),(3951,'','1',NULL,3,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',251,631,5741,4971),(3961,'','3',NULL,8,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',251,631,5741,4981),(3971,'Cinzenta de produção  local.Alto Medieval','1',NULL,8,1,6,5,NULL,2,'','','','',NULL,NULL,'','','',251,631,5741,4991),(3981,'','4',NULL,7,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',251,591,5661,5001),(3991,'','2',NULL,3,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',251,591,5661,5011),(4001,'Paleocristã? \n\nApresenta engobe negro\nAlto Medieval','1',371,7,1,6,7,NULL,1,'','','','',3,3,'','','',251,591,5661,5021),(4011,'','3',NULL,8,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',251,591,5661,5031),(4021,'','1',NULL,1,1,10,7,NULL,1,'','','','',NULL,NULL,'','','',251,591,5661,5041),(4031,'','1',NULL,4,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',251,631,5761,5051),(4041,'','',NULL,3,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',251,631,5761,5061),(4051,'','3',NULL,8,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',251,631,5761,5071),(4061,'','2',NULL,7,1,10,8,NULL,1,'','','','',NULL,NULL,'','','',251,631,5761,5081),(4071,'','1',NULL,3,1,10,9,NULL,1,'','','','',NULL,NULL,'','','',251,631,5761,5091),(4081,'','1',NULL,8,1,10,9,NULL,1,'','','','',NULL,NULL,'','','',251,631,5761,5101),(4091,'','1',NULL,8,1,10,12,NULL,1,'','','','',NULL,NULL,'','','',251,631,5761,5111),(4101,'','3',NULL,8,1,8,8,NULL,1,'','','','',NULL,NULL,'','','',251,631,5761,5121);
/*!40000 ALTER TABLE `cerâmica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificação`
--

DROP TABLE IF EXISTS `classificação`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificação` (
  `id_classificação` int(11) NOT NULL AUTO_INCREMENT,
  `classificação` varchar(100) NOT NULL,
  PRIMARY KEY (`id_classificação`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificação`
--

LOCK TABLES `classificação` WRITE;
/*!40000 ALTER TABLE `classificação` DISABLE KEYS */;
INSERT INTO `classificação` VALUES (1,'Não'),(2,'Imóvel Interesse Municipal'),(3,'Imóvel Interesse Público'),(4,'Monumento Nacional'),(5,'Vias de Classificação'),(6,'Valor Concelhio'),(7,'Zona Especial de Proteção'),(11,'teste'),(21,'ZEP Fonte do Ídolo; Hospital S. Marcos e Palácio do Raio');
/*!40000 ALTER TABLE `classificação` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compacidade`
--

DROP TABLE IF EXISTS `compacidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compacidade` (
  `id_compacidade` int(11) NOT NULL AUTO_INCREMENT,
  `compacidade` varchar(100) NOT NULL,
  PRIMARY KEY (`id_compacidade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compacidade`
--

LOCK TABLES `compacidade` WRITE;
/*!40000 ALTER TABLE `compacidade` DISABLE KEYS */;
INSERT INTO `compacidade` VALUES (1,'Muito compacta'),(2,'Compacta'),(3,'Pouco compacta'),(4,'Móvel'),(5,'Endurecida');
/*!40000 ALTER TABLE `compacidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conservação`
--

DROP TABLE IF EXISTS `conservação`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conservação` (
  `id_conservação` int(11) NOT NULL AUTO_INCREMENT,
  `conservação` varchar(45) NOT NULL,
  PRIMARY KEY (`id_conservação`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conservação`
--

LOCK TABLES `conservação` WRITE;
/*!40000 ALTER TABLE `conservação` DISABLE KEYS */;
INSERT INTO `conservação` VALUES (1,'Bom'),(2,'Razoável'),(3,'Mau');
/*!40000 ALTER TABLE `conservação` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `construtiva`
--

DROP TABLE IF EXISTS `construtiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `construtiva` (
  `id_construtiva` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo_id_tipo` int(11) DEFAULT NULL,
  `Aparelho_id_aparelho` int(11) DEFAULT NULL,
  `comprimento` varchar(100) DEFAULT NULL,
  `largura` varchar(100) DEFAULT NULL,
  `espessura` varchar(100) DEFAULT NULL,
  `Material_id_material` int(11) DEFAULT NULL,
  `descrição` text,
  `interpretação` text,
  `cronologia` int(11) DEFAULT NULL,
  `id_intervenção` int(11) NOT NULL,
  `id_sondagem` int(11) NOT NULL,
  `id_UE` int(11) NOT NULL,
  PRIMARY KEY (`id_construtiva`),
  KEY `fk_Construtiva_Tipo1_idx` (`Tipo_id_tipo`),
  KEY `fk_Construtiva_Aparelho1_idx` (`Aparelho_id_aparelho`),
  KEY `fk_Construtiva_Material1_idx` (`Material_id_material`),
  KEY `fk_Construtiva_Cronologia1_idx` (`cronologia`),
  KEY `fk_Construtiva_Intervenção1_idx` (`id_intervenção`),
  KEY `fk_Construtiva_UE1_idx` (`id_UE`),
  KEY `fk_Construtiva_Sondagem1_idx` (`id_sondagem`),
  CONSTRAINT `fk_Construtiva_Aparelho1` FOREIGN KEY (`Aparelho_id_aparelho`) REFERENCES `aparelho` (`id_aparelho`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Construtiva_Cronologia1` FOREIGN KEY (`cronologia`) REFERENCES `cronologia` (`id_cronologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Construtiva_Intervenção1` FOREIGN KEY (`id_intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Construtiva_Material1` FOREIGN KEY (`Material_id_material`) REFERENCES `material` (`id_material`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Construtiva_Sondagem1` FOREIGN KEY (`id_sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Construtiva_Tipo1` FOREIGN KEY (`Tipo_id_tipo`) REFERENCES `tipo_construtiva` (`id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Construtiva_UE1` FOREIGN KEY (`id_UE`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1761 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `construtiva`
--

LOCK TABLES `construtiva` WRITE;
/*!40000 ALTER TABLE `construtiva` DISABLE KEYS */;
INSERT INTO `construtiva` VALUES (1,18,6,'0.95','0.70','',13,'','Soleira da porta',2,81,71,81),(11,18,6,'1.10','0.58','',13,'','Soleira',2,81,71,91),(21,17,NULL,'','','',6,'','Revestimento sobre alicerce, está localizado',2,81,71,101),(31,31,NULL,'0.70','0.30','',NULL,'','Grelha para escoamento de água.',2,81,71,111),(41,4,NULL,'','','',21,'Tubo localizado no quadrande SE.','Canalização de água',2,81,71,171),(51,2,2,'','','',13,'Alicerce do bloco Este do Mosteiro','Alicerce',7,81,71,211),(61,2,2,'','','',13,'','Alicerce da Igreja',7,81,71,221),(71,41,2,'1.20 (?)','0.80','',13,'Caixa pétrea composta por blocos de granito, de talhe grosseiro e de planta, aparentemente rectangular. Parte da sepultura encontra-se sob o corte Este.','Sepultura',5,81,71,301),(81,51,NULL,'','','',13,'Laje de granito de talhe rudimentar e com dimensões indeterminadas.','Cobertura da sepultura',5,81,71,311),(91,15,2,'','','',13,'Calçada em blocos de granito de corte rudimentar.','Caminho de acesso ao adro.',2,81,71,331),(101,4,NULL,'','','',13,'Caleira que encaminha a água até ao chafariz que se localiza no claustro. Na zona da Sondagem 1 foi restaurada com cimento. com ','Canalização',7,81,71,361),(111,61,2,'','','',13,'Preparação composta por pequenas pedras de granito.','Assentamento do piso.',NULL,81,91,401),(121,2,2,'','','',13,'Alicerce da parede da Capela-mor, orientação E/O','Alicerce',7,81,91,441),(131,2,2,'','','',13,'Alicerce da parede da Igreja, orientação N/S.','Alicerce',7,81,91,451),(141,14,2,'','','',13,'','Parede Sul da Capela-mor',7,81,91,471),(171,71,2,'','','',13,'Conjunto de pedras em granito de grande porte, consolidadas por camada argilosa de coloração castanha. ','Espécie de \"contraforte\" da parede da Capela mor e da Igreja.',7,81,91,561),(181,15,2,'','','',13,'','Pavimento actual ',2,81,111,571),(251,15,NULL,'','','',6,'','Pavimento',2,101,131,771),(261,3,1,'','','',NULL,'','',NULL,101,141,791),(271,101,NULL,'0.86','','',14,'Poste em madeira','Poste',5,101,131,871),(281,121,NULL,'','','',13,'Laje para apoio do poste em madeira (UE 109)','Base',5,101,131,881),(331,15,NULL,'','','',6,'Pavimento em betão e brita com cerca de 20cm de espessura.','Pavimento',2,141,211,1291),(341,4,NULL,'','','',21,'Tubo PVC','Saneamento',2,141,211,1311),(351,4,2,'1.20m','0.80m','',13,'Canalização em pedra de granito de pequena dimensão','Canalização ',8,141,211,1321),(361,17,NULL,'','','',2,'','Revestimento da canalização',8,141,211,1331),(381,15,NULL,'','','',6,'Cimento e brita','Pavimento',2,141,211,1411),(391,17,NULL,'','','',6,'Revestimento em cimento do lintel','Revestimento ',2,141,211,1421),(401,4,NULL,'','','',21,'','Canalização',2,141,211,1431),(411,131,NULL,'','','',6,'Lintel em betão construído aquando a ampliação do edifício num passado recente.','Lintel',2,141,211,1441),(421,4,NULL,'','','',21,'Localiza-se por baixo do lintel (UE 204). No entanto, verifica-se que foi construído \"a posteriori\"','Canalização',2,141,211,1491),(451,NULL,NULL,'','','',NULL,'Igual à UE 213','',NULL,141,211,1561),(461,10,2,'','','',13,'','Muro?',NULL,141,211,1591),(481,15,NULL,'','','',6,'','Pavimento ',2,141,211,1631),(491,141,NULL,'','','',13,'Aterro com pedras de granito ','Aterro',NULL,141,211,1641),(501,4,NULL,'','','',21,'Tubo PVC localizado junto ao corte Este.','Saneamento',2,141,211,1661),(511,4,NULL,'','','',21,'Tubo em PVC localizado junto ao corte Oeste','Saneamento',2,141,211,1671),(521,4,NULL,'','','',51,'Tubo em grés','Saneamento',2,141,211,1691),(531,4,2,'','0.90','',13,'Canalização com orientação NO-SE.','Canalização',7,141,211,1741),(551,17,NULL,'','','',31,'Revestimento ocorrido na reconstrução da canalização UE 312.','Revestimento',2,141,211,1761),(571,15,NULL,'','','',6,'','Pavimento',NULL,141,211,1821),(581,4,NULL,'','','',21,'','Tubos PVC',2,141,211,1841),(591,15,2,'','','',13,'Pavimento contemporâneo à construção do edifício.','Pavimento',8,141,211,1861),(601,91,NULL,'1.80m','0.45m','',13,'Muro em granito sentido SO-NE, com inclusões de material de construção no miolo.','Muro',NULL,141,211,1941),(621,NULL,NULL,'','','',9,'Tijoleira em cerâmica.','Pavimento(?)',NULL,141,211,1961),(651,91,2,'','','',13,'Muro localizado a Oeste. Orientação Norte-Sul. ','Muro limite da antiga cozinha a Oeste. Denominado como Muro 1',NULL,81,111,2141),(661,18,NULL,'','','',13,'Soleira da porta Muro 1','Soleira',NULL,81,111,2161),(691,4,NULL,'','','',NULL,'Canalização composta por caixas em betão e tubos em PVC','Saneamento actual',2,81,111,2201),(701,15,NULL,'','','',13,'Pavimento em paralelo','Pavimento',2,81,261,2211),(711,91,2,'','','',13,'','Muro Oeste da antiga cozinha. Orientação Norte-Sul',NULL,81,261,2221),(721,61,NULL,'','','',1,'','Preparado para assentar paralelo',2,81,261,2231),(731,151,NULL,'','','',13,'Pedra em granito de pequeno porte, está associado a uma camada onde foi detectado espólio de cronologia medieval.','Derrube de antigas estruturas?\n',6,81,261,2401),(741,15,NULL,'','','',13,'Pavimento ','',2,81,281,2421),(751,61,NULL,'','','',1,'','',2,81,281,2431),(761,4,NULL,'','','',21,'Tubos em PVC','Saneamento',2,81,281,2461),(791,121,NULL,'','','',2,'Base de forma quadrangular, em argamassa compactada. Localizada a Oeste do sector.','',NULL,81,281,2531),(801,121,NULL,'','','',2,'Base de forma quadrangular, em pedra de granito e argamassa compactado. Localizada a Este do sector.','Base',NULL,81,281,2541),(811,121,2,'','','',61,'','Base onde arrancava pilar da chaminé',NULL,81,281,2581),(821,15,61,'','','',NULL,'Pequena amostra de terra batida localizada na parte Oeste do sector.','Pavimento (?)',NULL,81,281,2591),(841,161,NULL,'','','',2,'Resto de argamassa','',NULL,81,281,2661),(851,10,2,'2m','0.60m','',13,'Muro denominado como nº 5 com orientação Norte-Sul, paralelo ao Muro 3. Esta construção, entre estes dois muros, formaram uma caleira.','Muro',NULL,81,281,2721),(861,4,NULL,'','','',61,'Fundo da caleira com pendente Sul-Norte','Caleira',NULL,81,281,2741),(871,4,2,'','','',13,'Caleira em granito, com orientação Sul-Norte, e cerca de 4m de comprimento. O seu arranque está adossado à parede Norte do Mosteiro, e o fim embutido no Muro 2, ou seja, no muro Norte da antiga cozinha. Nos primeiros 2m de comprimento, a caleira apresenta uma construção medíocre, composta por duas paredes em pedra miúda. Os restantes 2m apresenta uma construção mais robusta, em pedra de granito de médio porte e argamassa. Também o fundo apresenta duas fases de construção. O percurso inicial da caleira é em argila, sendo nos restantes 2m em granito e argamassa, onde se verifica uma pendente acentuada de Sul para Norte, isto é, em direção ao rio.','Canalização proveniente do interior do Mosteiro, provavelmente do chafariz.',7,81,281,2781),(881,151,NULL,'','','',NULL,'Pedra em granito de pequeno porte, está associado a uma camada onde foi detectado espólio de cronologia medieval.','Derrube de antigas estruturas?',NULL,81,111,2841),(891,151,NULL,'','','',NULL,'Pedra em granito de pequeno porte, está associado a uma camada onde foi detectado espólio de cronologia medieval.','Derrube de antigas estruturas?',NULL,81,111,2851),(901,15,71,'','','',13,'','',2,81,291,2861),(911,61,NULL,'','','',1,'','',2,81,291,2871),(921,13,6,'','','',13,'Padieira de uma das portas de acesso ao Mosteiro.','Padieira',NULL,81,291,2881),(941,4,NULL,'','','',21,'Canalização de água','Canalização',2,81,291,2911),(951,4,NULL,'','','',21,'Tubos para água','Canalização',2,81,291,2931),(961,91,2,'','','',13,'Muro Este da antiga cozinha, denominado como nº3','Muro da antiga cozinha',7,81,291,2971),(971,2,2,'','','',13,'Alicerce da parede Norte do Mosteiro','Alicerce',7,81,291,2991),(981,4,2,'1.4m','0.80m','0.20/0.30m',13,'Caleira com sentido Sul-Norte','Canalização de água proveniente do chafariz',NULL,81,291,3031),(991,4,1,'','','',71,'Caixa quadrangular que recebia tubos em PVC','Caixa de canalização',2,81,291,3081),(1001,15,NULL,'','','',13,'Paralelo','Pavimento',2,161,341,3201),(1011,61,NULL,'','','',1,'Areia','Preparação de pavimento',2,161,341,3211),(1021,91,2,'2m','1m','',13,'Muro com orientação SO_NE','Provável muro de suporte das paredes em tabique',2,201,391,3411),(1031,91,2,'1.40m','0.40m','',13,'Muro com orientação SE_NO.','Provável muro de suporte das paredes em tabique',2,201,391,3421),(1041,4,NULL,'','','',51,'Tubo em grés','Canalização para saneamento',2,201,391,3441),(1051,15,NULL,'','','',14,'Vestígios de pavimento em madeira localizado junto ao corte Oeste e Sul.','Pavimento',2,201,391,3451),(1061,15,6,'','','',13,'Laje em granito. Todo o corredor de acesso à casa, era revestido a lajes de granito. Posteriormente foi revestido a tijoleira. ','Antigo pavimento',2,201,391,3461),(1071,15,NULL,'','','',6,'','Pavimento',2,191,311,3541),(1081,151,NULL,'','','',13,'Aglomerado de pedras, que á posteriori se concluiu serem um pequeno derrube/glomerado de pedras.','',NULL,191,311,3631),(1091,15,101,'','','',NULL,'Apenas visível no corte Norte','Pavimento',10,191,311,3661),(1101,7,6,'','','',13,'Capitel decorado com folhas de acanto','',NULL,191,311,3681),(1121,161,NULL,'','','',2,'Argamassa de cor laranja.','',NULL,191,421,3791),(1131,10,2,'','','',13,'Arranque de muro com cerca de 0.60m de comprimento e 0.4m de largura, localizado no quadrante SE da sondagem, com orientação NO_SE. Tem revestimento de argamassa alaranjada.','Muro',NULL,191,421,3801),(1141,91,2,'','','',13,'Alicerce de muro construído com pedras de granito, com orientação NE_SO. Fará parte da construção do edifício existente.','Alicerce/Muro',8,191,421,3831),(1151,4,NULL,'','','',51,'Tubo de saneamento em grés','Canalização',2,191,431,3871),(1161,121,NULL,'','','',6,'Base para apoio do tubo em grés','Base em cimento',2,191,431,3891),(1171,15,NULL,'','','',13,'','Pavimento do antigo logradouro',2,211,451,3951),(1181,151,NULL,'','','',NULL,'','',NULL,211,451,4001),(1191,151,NULL,'','','',13,'Derrube ou aterro de pedras','Derrube ou aterro de pedras',5,211,451,4011),(1201,15,2,'','','',13,'Pedras em granito, com juntas em argamassa amarela.','Pavimento ',8,211,471,4111),(1211,10,NULL,'','','',NULL,'Muro em pedra de média  dimensão  em granito, com inclusão de argamassa avermelhada.','Muro de divisão de propriedade no logradouro',2,211,471,4121),(1221,17,NULL,'','','',6,'Revestimento em cimento da canalização em grês.','Revestimento',2,211,471,4171),(1231,151,NULL,'','','',13,'','',NULL,211,451,4261),(1241,151,NULL,'','','',13,'','',NULL,211,451,4271),(1251,151,NULL,'','','',13,'','',NULL,211,471,4281),(1271,4,NULL,'','','',21,'','Tubo de saneamento em PVC',2,211,491,4331),(1281,15,NULL,'','','',13,'','Pavimento',2,211,501,4521),(1291,51,NULL,'','','',13,'Pedra de granito de média a grande dimensão','Capeamento da estrutura',NULL,211,501,4551),(1301,4,2,'','','',13,'Estrutura em granito construída com pedras de granito, algumas afeiçoadas. Tem orientação SO-NE','Caleira',8,211,501,4611),(1311,15,NULL,'','','',NULL,'Pequenas pedras de granito e material de construção','Pavimento',NULL,211,501,4661),(1321,15,NULL,'','','',NULL,'Camada muito compacta, composta por pedra miúda e material de construção','',NULL,211,511,4831),(1331,15,NULL,'','','',NULL,'Idêntica à UE 714, localiza-se a Sul e a SO da sondagem.','Pavimento?',NULL,211,511,4841),(1341,61,NULL,'','','',NULL,'Camada argilosa de coloração alaranjada, localizada junto à UE 714','Preparação de pavimento?',NULL,211,511,4851),(1351,171,NULL,'','','',13,'Aglomerado de pedras de granito de pequeno a médio porte, localizado junto ao corte Este da sondagem','',NULL,211,511,4861),(1361,10,2,'2.80','0.80m','',13,'Muro sem alicerce, construído sem argamassas','Muro',NULL,211,551,5061),(1371,161,31,'','','',9,'Tijoleiras embutidas na vertical entre o interface e a estrutura UE 924 ','',NULL,211,551,5191),(1381,10,2,'','','',91,'Continuação do muro da sondagem 11. Orientação SE-NO','Muro',NULL,211,551,5251),(1391,10,5,'','','',91,'Muro 1','Muro com orientação SO_NE',NULL,211,561,5471),(1401,10,5,'','','',91,'Muro 2 com orientação NO-SE','Muro',NULL,211,561,5481),(1411,4,2,'','','',13,'Caleira com orientação NO-SE','Caleira ',NULL,211,601,5561),(1421,4,31,'','','',9,'Funda da caleira com ligeira pendente para NE','Fundo de caleira',NULL,211,601,5571),(1431,91,2,'','','',91,'Muro da sondagem 9','Muro',NULL,211,601,5591),(1441,15,NULL,'','','',6,'','Pavimento',2,251,591,5601),(1451,4,NULL,'','','',6,'Tubo de saneamento revestido com betão','Canalização',2,251,591,5641),(1461,15,NULL,'','','',6,'','Pavimento',2,251,631,5681),(1471,4,NULL,'','','',51,'Tubo de saneamento em grés.','Canalização',2,251,631,5711),(1481,71,2,'','','',13,'Conjunto de pedras em granito de grande porte, consolidadas por camada argilosa de coloração castanha. ','Espécie de \"contraforte\" da parede da Capela mor e da Igreja.',NULL,81,91,6161),(1491,71,2,'','','',13,'Conjunto de pedras em granito de grande porte, consolidadas por camada argilosa de coloração castanha. ','Espécie de \"contraforte\" da parede da Capela mor e da Igreja.',NULL,81,91,6221),(1501,15,NULL,'','','',13,'Paralelo','Pavimento exterior',2,81,791,6301),(1511,7,NULL,'','','',13,'Pedras','',NULL,81,791,6361),(1521,17,111,'','','',9,'','Revestimento dos tubos em  telha ',2,81,791,6411),(1531,181,NULL,'','','',101,'','Tubos e canos para eletricidade e água.',2,81,791,6431),(1541,141,NULL,'','','',9,'Camada de fragmentos de material de construção (telha)','',NULL,81,791,6491),(1551,2,2,'','','',13,'','Alicerce da parede Oste da Capela-mor',7,81,791,6511),(1561,4,NULL,'','','',9,'','Canalização',2,221,521,6551),(1571,5,2,'','','',13,'Capeamento em  pedra de granito','Cobertura da caleira',8,221,801,6681),(1581,4,2,'','','',13,'Canalização construída com pedra de granito de médio a pequeno porte, com cerca de 0.80m de largura máxima. Apresenta orientação Norte-Sul.','Paredes da canalização ',8,221,801,6691),(1591,10,3,'','0.80m','',13,'Muro construído com pedras de médio a grande porte, em granito. Orientação Norte-Sul.','Muro',8,221,801,6701),(1601,10,3,'','','',13,'Muro construído com pedras de médio a grande porte, em granito. Orientação Norte-Sul.','Muro',8,221,811,6821),(1611,5,2,'','','',13,'Pedras de granito de médio a pequeno porte','Cobertura da caleira',8,221,811,6841),(1621,4,2,'','','',13,'Canalização construída com pedra de granito de médio a pequeno porte, com cerca de 0.80m de largura máxima. Apresenta orientação Norte-Sul.','Caleira',8,221,811,6891),(1631,10,3,'','','',13,' Muro construído com pedras de médio a grande porte, em granito. Orientação Norte-Sul.','Muro',NULL,221,821,6941),(1641,5,2,'','','',13,'Capeamento em eras de média dimensão dispostas na horizontal.','Cobertura da caleira',8,221,831,7011),(1651,4,2,'','','',13,'Canalização construída com pedra de granito de médio a pequeno porte, com cerca de 0.80m de largura máxima. Apresenta orientação Norte-Sul.','Canalização/Caleira',8,221,831,7071),(1661,10,3,'','','',13,'Muro construído com pedras de médio a grande porte, em granito. Orientação Norte-Sul.','Muro',8,221,831,7091),(1671,4,1,'','','',9,'Canalização recente. Detetada em corte','Canalização em tijolo tipo  \"burro\"',2,221,831,7101),(1681,91,3,'','','',13,'Muro construído com pedras de médio a grande porte, em granito. Orientação Norte-Sul.','Muro',8,221,841,7151),(1691,5,2,'','','',13,'Capeamento em pedra de granito de média dimensão','Cobertura da caleira/canalização',8,221,841,7161),(1701,4,2,'','','',13,'Canalização construída com pedra de granito de médio a pequeno porte, com cerca de 0.80m de largura máxima. Apresenta orientação Norte-Sul.','Canalização/caleira',8,221,841,7181),(1711,15,NULL,'','','',13,'','Pavimento actual',2,81,901,7511),(1721,15,NULL,'','','',6,'Pavimento em betão, sob camada de brita.','Pavimento',2,81,911,7561),(1731,10,2,'0.60m','0.60m','',13,'Muro em granito, com orientação N-S','',NULL,81,911,7691),(1741,10,2,'','','',13,'Orientação Este/Oeste','',NULL,211,981,8041),(1751,5,NULL,'','','',6,'Cobertura de canalização com orientação N-S, que se identificou na S1 (UE 105)','Cobertura em betão',2,251,631,8551);
/*!40000 ALTER TABLE `construtiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `construtiva_has_inclusões`
--

DROP TABLE IF EXISTS `construtiva_has_inclusões`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `construtiva_has_inclusões` (
  `Construtiva_id_construtiva` int(11) NOT NULL,
  `Inclusões_id_inclusão` int(11) NOT NULL,
  PRIMARY KEY (`Construtiva_id_construtiva`,`Inclusões_id_inclusão`),
  KEY `fk_Construtiva_has_Inclusões_Inclusões1_idx` (`Inclusões_id_inclusão`),
  KEY `fk_Construtiva_has_Inclusões_Construtiva1_idx` (`Construtiva_id_construtiva`),
  CONSTRAINT `fk_Construtiva_has_Inclusões_Construtiva1` FOREIGN KEY (`Construtiva_id_construtiva`) REFERENCES `construtiva` (`id_construtiva`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Construtiva_has_Inclusões_Inclusões1` FOREIGN KEY (`Inclusões_id_inclusão`) REFERENCES `inclusões` (`id_inclusão`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `construtiva_has_inclusões`
--

LOCK TABLES `construtiva_has_inclusões` WRITE;
/*!40000 ALTER TABLE `construtiva_has_inclusões` DISABLE KEYS */;
INSERT INTO `construtiva_has_inclusões` VALUES (601,3),(1311,3),(1321,3),(1331,3),(1381,3),(1391,3),(1401,3),(1541,3),(1741,3),(171,21),(1481,21),(1491,21),(1311,31),(101,41),(141,51),(651,51),(851,51),(871,51),(961,51),(1131,51),(1211,51),(1311,51),(1691,101);
/*!40000 ALTER TABLE `construtiva_has_inclusões` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cozedura`
--

DROP TABLE IF EXISTS `cozedura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cozedura` (
  `id_cozedura` int(11) NOT NULL AUTO_INCREMENT,
  `cozedura` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cozedura`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cozedura`
--

LOCK TABLES `cozedura` WRITE;
/*!40000 ALTER TABLE `cozedura` DISABLE KEYS */;
INSERT INTO `cozedura` VALUES (1,'Oxidante'),(2,'Redutora'),(3,'Mista');
/*!40000 ALTER TABLE `cozedura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronologia`
--

DROP TABLE IF EXISTS `cronologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cronologia` (
  `id_cronologia` int(11) NOT NULL AUTO_INCREMENT,
  `cronologia` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cronologia`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronologia`
--

LOCK TABLES `cronologia` WRITE;
/*!40000 ALTER TABLE `cronologia` DISABLE KEYS */;
INSERT INTO `cronologia` VALUES (1,'Calcolítico'),(2,'Contemporâneo'),(3,'Idade do Bronze'),(4,'Idade do Ferro'),(5,'Indeterminado'),(6,'Medieval'),(7,'Moderno'),(8,'Moderno|Contemporâneo'),(9,'Pré-histórica antiga'),(10,'Romano'),(11,'Suevo-Visigótico');
/*!40000 ALTER TABLE `cronologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diverso`
--

DROP TABLE IF EXISTS `diverso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diverso` (
  `id_diverso` int(11) NOT NULL AUTO_INCREMENT,
  `descrição` varchar(500) DEFAULT NULL,
  `fragmentos` varchar(45) DEFAULT NULL,
  `matéria` int(11) DEFAULT NULL,
  `objeto` int(11) DEFAULT NULL,
  `função` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `cronologia` int(11) DEFAULT NULL,
  `século` varchar(45) DEFAULT NULL,
  `data` varchar(45) DEFAULT NULL,
  `x` varchar(45) DEFAULT NULL,
  `y` varchar(45) DEFAULT NULL,
  `z` varchar(45) DEFAULT NULL,
  `intervenção` int(11) NOT NULL,
  `sondagem` int(11) NOT NULL,
  `UE` int(11) NOT NULL,
  `material` int(11) NOT NULL,
  PRIMARY KEY (`id_diverso`),
  KEY `fk_Diverso_Matéria_idx` (`matéria`),
  KEY `fk_Diverso_Objeto_idx` (`objeto`),
  KEY `fk_Diverso_Função_idx` (`função`),
  KEY `fk_Diverso_Estado_idx` (`estado`),
  KEY `fk_Diverso_Cronologia_idx` (`cronologia`),
  KEY `fk_Diverso_Intervenção_idx` (`intervenção`),
  KEY `fk_Diverso_Sondagem_idx` (`sondagem`),
  KEY `fk_Diverso_UE_idx` (`UE`),
  KEY `fk_Diverso_Material_idx` (`material`),
  CONSTRAINT `fk_Diverso_Cronologia` FOREIGN KEY (`cronologia`) REFERENCES `cronologia` (`id_cronologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Diverso_Estado` FOREIGN KEY (`estado`) REFERENCES `conservação` (`id_conservação`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Diverso_Função` FOREIGN KEY (`função`) REFERENCES `funcionalidade` (`id_funcionalidade`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Diverso_Intervenção` FOREIGN KEY (`intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Diverso_Material` FOREIGN KEY (`material`) REFERENCES `material_tabela` (`id_material`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Diverso_Matéria` FOREIGN KEY (`matéria`) REFERENCES `matéria_prima` (`id_matéria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Diverso_Objeto` FOREIGN KEY (`objeto`) REFERENCES `objeto` (`id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Diverso_Sondagem` FOREIGN KEY (`sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Diverso_UE` FOREIGN KEY (`UE`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diverso`
--

LOCK TABLES `diverso` WRITE;
/*!40000 ALTER TABLE `diverso` DISABLE KEYS */;
INSERT INTO `diverso` VALUES (51,'Sola?','1',11,NULL,NULL,NULL,NULL,'','','','','',101,131,851,761);
/*!40000 ALTER TABLE `diverso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_cerâmica`
--

DROP TABLE IF EXISTS `forma_cerâmica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_cerâmica` (
  `id_forma` int(11) NOT NULL AUTO_INCREMENT,
  `forma` varchar(100) NOT NULL,
  PRIMARY KEY (`id_forma`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_cerâmica`
--

LOCK TABLES `forma_cerâmica` WRITE;
/*!40000 ALTER TABLE `forma_cerâmica` DISABLE KEYS */;
INSERT INTO `forma_cerâmica` VALUES (1,'Asa'),(2,'Bico'),(3,'Bordo'),(4,'Bordo com arranque de asa'),(5,'Bordo e colo'),(6,'Colo'),(7,'Fundo'),(8,'Parede'),(9,'Parede com arranque de asa'),(10,'Pé'),(11,'Perfil completo'),(12,'Fundo'),(13,'Pega'),(21,'Tampa'),(31,'Ficha de jogo');
/*!40000 ALTER TABLE `forma_cerâmica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_metal`
--

DROP TABLE IF EXISTS `forma_metal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_metal` (
  `id_forma` int(11) NOT NULL AUTO_INCREMENT,
  `forma` varchar(100) NOT NULL,
  PRIMARY KEY (`id_forma`),
  UNIQUE KEY `forma_UNIQUE` (`forma`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_metal`
--

LOCK TABLES `forma_metal` WRITE;
/*!40000 ALTER TABLE `forma_metal` DISABLE KEYS */;
INSERT INTO `forma_metal` VALUES (1,'Adaga'),(49,'Agulha'),(2,'Alfinete'),(3,'Anel'),(4,'Aplique'),(5,'Argola'),(6,'Armadilha'),(71,'Aro'),(7,'Asa de sítula'),(8,'BalanÃ§a'),(9,'Botão'),(10,'Bracelete'),(11,'Cabo'),(12,'Cavilha'),(51,'Chapa'),(13,'Chave'),(14,'Chocalho'),(15,'Colchete'),(16,'Colher'),(17,'Conta'),(18,'Cravo'),(19,'Dedal'),(20,'Dobradiça'),(21,'Escória'),(22,'Espada'),(23,'Espeto'),(24,'Faca'),(25,'Fechadura'),(26,'Ferrolho'),(27,'Fíbula'),(61,'Fita'),(28,'Fivela'),(29,'Foice'),(30,'Gancho'),(31,'Grampo'),(32,'Grelha'),(33,'Ideterminado'),(34,'Lâmina'),(35,'Machado'),(36,'Martelo'),(37,'Medalha'),(38,'Medalhão'),(39,'Pente'),(40,'Peso'),(41,'Placa'),(42,'Prego'),(43,'Prumo'),(44,'Punhal'),(45,'Rebite'),(46,'Tacha'),(47,'Tampa'),(48,'Tesoura');
/*!40000 ALTER TABLE `forma_metal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_vidro`
--

DROP TABLE IF EXISTS `forma_vidro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_vidro` (
  `id_forma` int(11) NOT NULL AUTO_INCREMENT,
  `forma` varchar(100) NOT NULL,
  PRIMARY KEY (`id_forma`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_vidro`
--

LOCK TABLES `forma_vidro` WRITE;
/*!40000 ALTER TABLE `forma_vidro` DISABLE KEYS */;
INSERT INTO `forma_vidro` VALUES (1,'Asa'),(2,'Bico'),(3,'Bordo'),(4,'Bordo com arranque de asa'),(5,'Bordo e colo'),(6,'Colo'),(7,'Fundo'),(8,'Parede'),(9,'Parede com arranque de asa'),(10,'Pé'),(11,'Perfil completo'),(12,'Fundo'),(13,'Pega'),(21,'Conta'),(31,'Fragmento ');
/*!40000 ALTER TABLE `forma_vidro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `função_metal`
--

DROP TABLE IF EXISTS `função_metal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `função_metal` (
  `id_função` int(11) NOT NULL AUTO_INCREMENT,
  `função` varchar(100) NOT NULL,
  PRIMARY KEY (`id_função`),
  UNIQUE KEY `função_UNIQUE` (`função`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `função_metal`
--

LOCK TABLES `função_metal` WRITE;
/*!40000 ALTER TABLE `função_metal` DISABLE KEYS */;
INSERT INTO `função_metal` VALUES (1,'Adorno'),(2,'Agrícola'),(3,'Carpintaria'),(4,'Construção'),(5,'Decorativo'),(6,'Doméstico'),(7,'Funerário'),(8,'Indeterminado'),(9,'Militar'),(10,'Pecuária'),(11,'Pesca');
/*!40000 ALTER TABLE `função_metal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `função_vidro`
--

DROP TABLE IF EXISTS `função_vidro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `função_vidro` (
  `id_função` int(11) NOT NULL AUTO_INCREMENT,
  `função` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_função`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `função_vidro`
--

LOCK TABLES `função_vidro` WRITE;
/*!40000 ALTER TABLE `função_vidro` DISABLE KEYS */;
INSERT INTO `função_vidro` VALUES (1,'Adorno'),(2,'Doméstica'),(3,'Culto');
/*!40000 ALTER TABLE `função_vidro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionalidade`
--

DROP TABLE IF EXISTS `funcionalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionalidade` (
  `id_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `funcionalidade` varchar(100) NOT NULL,
  PRIMARY KEY (`id_funcionalidade`),
  UNIQUE KEY `funcionalidade_UNIQUE` (`funcionalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionalidade`
--

LOCK TABLES `funcionalidade` WRITE;
/*!40000 ALTER TABLE `funcionalidade` DISABLE KEYS */;
INSERT INTO `funcionalidade` VALUES (1,'Adorno'),(2,'Culto'),(3,'Escrita'),(4,'Instrumentos'),(5,'Jogos'),(6,'Pesos e medidas'),(7,'Pessoal');
/*!40000 ALTER TABLE `funcionalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inclusões`
--

DROP TABLE IF EXISTS `inclusões`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inclusões` (
  `id_inclusão` int(11) NOT NULL AUTO_INCREMENT,
  `inclusão` varchar(100) NOT NULL,
  PRIMARY KEY (`id_inclusão`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inclusões`
--

LOCK TABLES `inclusões` WRITE;
/*!40000 ALTER TABLE `inclusões` DISABLE KEYS */;
INSERT INTO `inclusões` VALUES (1,'Cerâmica'),(2,'Madeira'),(3,'Materiais de construção'),(11,'Areia'),(21,'Argila'),(31,'Pedra de granito'),(41,'Cimento'),(51,'Argamassa'),(61,'Madeira'),(71,'Lítico'),(81,'Moedas'),(91,'Caricas'),(101,'Raízes'),(111,'Plásticos, sapatos, arames, material de construção recentes'),(121,'Lâmpada'),(131,'Cartucho'),(141,'Embalagens de medicação'),(151,'Carvão'),(161,'Vidro'),(171,'Fauna mamacológica'),(181,'Telha'),(191,'Areão'),(201,'Plástico'),(211,'Panela em ferro'),(221,'Pregos em ferro'),(231,'Capitel'),(241,'Berlinde'),(251,'Esferovite, tecidos, plásticos'),(261,'Ferro'),(271,'Pedra miúda'),(281,'Cinza'),(291,'Pedra afeiçoada'),(301,'Pedra pequeno porte'),(311,'Metal'),(321,'Lítico'),(331,'Fauna osteológica'),(341,'Cal');
/*!40000 ALTER TABLE `inclusões` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interface`
--

DROP TABLE IF EXISTS `interface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interface` (
  `id_interface` int(11) NOT NULL AUTO_INCREMENT,
  `descrição` text,
  `interpretação` text,
  `cronologia` int(11) DEFAULT NULL,
  `id_intervenção` int(11) NOT NULL,
  `id_sondagem` int(11) NOT NULL,
  `id_UE` int(11) NOT NULL,
  PRIMARY KEY (`id_interface`),
  KEY `fk_Interface_Cronologia1_idx` (`cronologia`),
  KEY `fk_Interface_Intervenção1_idx` (`id_intervenção`),
  KEY `fk_Interface_UE1_idx` (`id_UE`),
  KEY `fk_Interface_Sondagem1_idx` (`id_sondagem`),
  CONSTRAINT `fk_Interface_Cronologia1` FOREIGN KEY (`cronologia`) REFERENCES `cronologia` (`id_cronologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Interface_Intervenção1` FOREIGN KEY (`id_intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Interface_Sondagem1` FOREIGN KEY (`id_sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Interface_UE1` FOREIGN KEY (`id_UE`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interface`
--

LOCK TABLES `interface` WRITE;
/*!40000 ALTER TABLE `interface` DISABLE KEYS */;
INSERT INTO `interface` VALUES (11,'Corte para colocar a UE 101','',2,81,71,201),(21,'Vala de fundação do alicerce UE 114','Fundação',7,81,71,231),(31,'Vala','Vala de fundação da UE 113',7,81,71,251),(41,'Vala para construção da calçada','Corte ',2,81,71,341),(51,'Interface de plante linear com orientação  E/O','',NULL,81,91,391),(61,'Interface negativo','Corte para instalação de abastecimento de água.',2,81,91,421),(71,'Interface','vala de fundação do \"contraforte\"',7,81,91,501),(81,'Interface negativo','Corte superior da rocha',5,101,131,891),(101,'Interface negativo localizado a SE','Indeterminado',5,101,131,911),(111,'Orifício semi-circular localizado na parede (rocha) do lado Este','',5,101,131,921),(121,'Orifício semi-circular localizado na parede (rocha) do lado Este','',5,101,131,931),(131,'Orifício semi-circular localizado na parede (rocha) do lado Este','',5,101,131,941),(141,'Orifício semi-circular localizado na parede (rocha) do lado Este','',5,101,131,951),(171,'Interface negativo vertical','Vala para colocação de tubo em PVC (UE 209) localizado a Oeste da sondagem.',2,141,211,1481),(181,'Interface negativo vertical','Vala para colocação de tubo em PVC',2,141,211,1501),(191,'Interface negativo para colocação de tubo em PVC lado Oeste.','Vala',2,141,211,1701),(201,'Interface negativo para colocação de tubo em PVC lado Este.','Vala',2,141,211,1711),(211,'','Vala para colocação de tubo PVC',2,141,211,1891),(221,'Interface negativo de forma circular','Buraco de poste?',NULL,141,211,1901),(231,'Interface negativo vertical','Vala de fundação. Está localizada a Este do Muro 1. ',NULL,81,111,2101),(241,'Interface negativo vertical localizado a Oeste do Muro 1 (Lado exterior da cozinha)','Vala de fundação da parede Norte do Mosteiro.',NULL,81,111,2151),(251,'Interface negativo vertical.','Vala de fundação do alicerce da parede Norte do Mosteiro. Está localizado a Este do Muro 1 (Interior da cozinha).',NULL,81,111,2171),(261,'Interface negativo vertical','Vala para colocação de tubo em PVC',2,81,281,2471),(271,'Interface negativo vertical','Corte para depósito da UE 913',2,81,281,2571),(281,'Interface negativo vertical','',NULL,81,281,2771),(291,'Vala para colocação das guias em granito do pavimento actual','Vala',2,81,291,2891),(301,'Interface negativo ','Vala para colocação de tubos da água',2,81,291,2941),(311,'Interface negativo','Vala da caleira',NULL,81,291,3051),(321,'Interface negativo','Vala de fundação do Muro 4',NULL,81,291,3121),(351,'Interface','Buraco de árvore (?)',2,161,371,3331),(361,'Interface negativo (orientação SO_NE) para colocação de tubo de saneamento','Vala ',2,201,391,3431),(371,'Interface negativo com orientação NE_SO','Vala do muro NO da casa nº 92.',2,201,401,3491),(381,'Interface negativo com orientação NE_SO','Vala de construção do Muro NO da casa nº 92',2,201,411,3521),(391,'Interface negativo de forma circular','Buraco de poste?',NULL,191,311,3591),(401,'Interface negativo junto ao corte Oeste. ','',NULL,191,311,3641),(411,'Interface negativo do Muro UE 210','Vala do muro',NULL,191,421,3841),(421,'interface negativo, orientação NO_SE','Vala para colocação do tubo em grés',2,191,431,3881),(431,'Vala de fundação  do muro UE 306, localizado a Norte do muro','Vala de fundação ',2,211,471,4141),(441,'','Vala para tubo em PVC',2,211,491,4311),(451,'Interface de forma circular ','Buraco de poste?',2,211,491,4361),(461,'Corte vertical localizado a SE da sondagem','',NULL,211,491,4391),(471,'Interface vertical localizado no quadrante NE','',NULL,211,491,4421),(491,'Vala de fundação da estrutura','',NULL,211,501,4561),(511,'Interface negativo vertical','',NULL,211,511,4751),(521,'Interface vertical','Vala para colocação da tijoleira?',NULL,211,541,4961),(531,'Interface negativo vertical, orientação Este-Oeste','',NULL,211,551,5171),(541,'Corte para colocar as tijoleiras? UE 918','',NULL,211,551,5231),(551,'Vala para colocar tubo em grés','Vala',2,211,561,5281),(561,'Interface negativo vertical','Vala de fundação do muro 1',NULL,211,561,5451),(571,'Interface negativo vertical do muro 2','Vala de fundação',NULL,211,561,5461),(581,'Interface negativo vertical','Vala para saneamento',2,251,591,5621),(591,'Interface negativo vertical','Vala para saneamento',2,251,631,5721),(601,'Interface negativo vertical','Vala para tubo em grés que vem da parte Sul do edifício e que foi detectado na sondagem 1.',2,251,631,5731),(611,'Interface negativo vertical no quadrante NE','',NULL,251,631,5751),(641,'Interface negativo de forma circular e fundo plano','Vala de fossa',3,161,641,5841),(651,'Interface negativo de forma circular e fundo plano','Vala de Fossa 2',3,161,651,5861),(661,'Interface negativo de forma circular e paredes e fundo irregular.','Vala da Fossa 3',3,161,661,5881),(671,'Interface negativo de forma circular, com paredes e fundo irregular','Vala da Fossa 4',NULL,161,671,5901),(681,'Interface negativo de forma circular, as paredes são irregulares e o funo plano.','',3,161,691,5931),(691,'Interface negativo de forma circular, paredes rectas e fundo plano.','',3,161,701,5951),(701,'Interface negativo de forma circular, paredes rectas e funo plano','',3,161,711,5971),(711,'Interface de forma circular, paredes e fundo irregular','',3,161,731,5991),(721,'Interface de forma circular com paredes e fundo irregular','',3,161,741,6011),(731,'Interface de forma circular','',3,161,751,6031),(741,'Interface de forma circular','',3,161,761,6051),(751,'Interface negativo a Este da sondagem','',NULL,81,91,6141),(761,'Interface negativo','Vala para colocação de tubos de água',2,81,91,6281),(771,'Interface negativo vertical','Vala da construção do alicerce da parede Oeste da Capela-mor',NULL,81,791,6381),(781,'interface negativo','Vala para colocar os tubos e canos (UE 314)',2,81,791,6441),(791,'Interface negativo vertical','Vala ',NULL,81,791,6481),(801,'Interface vertical','Vala para canalização',2,221,521,6541),(811,'Interface negativo vertical, junto corte Oeste','',2,221,521,6571),(821,'Interface negativo','',NULL,221,521,6591),(831,'Interface negativo ','',NULL,221,521,6601),(841,'Interface negativo junto ao corte Sul','',NULL,221,521,6611),(851,'Interface negativo','',NULL,221,521,6621),(861,'Interface negativo junto ao corte Oeste','',NULL,221,521,6631),(871,'Interface negativo','Vala para caleira',8,221,801,6671),(881,'Interface negativo','Corte para árvore',NULL,221,801,6731),(891,'Interface negativo','',NULL,221,801,6751),(901,'Interface negativo','',NULL,221,801,6761),(911,'Interface negativo','',NULL,221,801,6771),(921,'Interface negativo','',NULL,221,801,6781),(931,'Interface negativo','Vala para caleira',NULL,221,811,6861),(941,'Interface negaivo','Vala de fundação do muro',NULL,221,821,6931),(951,'Interface negativo','Corte indeterminado no quadrante SO',2,221,831,7001),(961,'Interface negativo','',NULL,221,831,7021),(971,'Interface negativo','Buraco de poste?',NULL,221,831,7031),(981,'Interface negativo, orientação NO-SE.','',NULL,221,851,7281),(991,'Interface negativo, com orientação NE-SO','',NULL,221,851,7291),(1001,'Interface negativo','Vala de fundação da casa localizada a Oeste.',NULL,221,851,7341),(1011,'Interface negativo','',NULL,221,861,7381),(1021,'Interface negativo.','Vala de fundação da casa localizada a Oeste',2,221,861,7411),(1031,'Interface negativo','Vala de fundação para construção do edifício localizado a Oeste.',2,221,871,7461),(1041,'','Interface de forma semicircular.',NULL,221,871,7481),(1051,'Vala para caleira que vem do chafariz em direção ao exterior, lado Oeste.','Vala de caleira',8,81,911,7591),(1061,'Interface negativo de forma circular, com paredes inclinadas.','Buraco de poste?',NULL,81,911,7611),(1071,'Interface negativo','Vala de fundação da parede Sul',NULL,81,911,7641),(1081,'Interface negativo semicircular, junto à caleira','',NULL,81,911,7651),(1091,'Interface negativo','Vala para muro UE 1114',NULL,81,911,7681),(1101,'','Vala de fundação para construção muro Sul ',8,81,911,7721),(1111,'Interface negativo','Vala de saque?',NULL,211,961,7891),(1121,'Interface negativo vertical','Possível vala de saque do Muro 1807',NULL,211,981,8031),(1131,'Interface negativo vertical','',NULL,211,1021,8231);
/*!40000 ALTER TABLE `interface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervenção`
--

DROP TABLE IF EXISTS `intervenção`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intervenção` (
  `id_intervenção` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo_id_tipo` int(11) NOT NULL,
  `Classificação_id_classificação` int(11) NOT NULL,
  `Sítio_id_sítio` int(11) NOT NULL,
  `acrónimo` varchar(45) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `Utilizador_id_utilizador` int(11) NOT NULL,
  PRIMARY KEY (`id_intervenção`),
  KEY `fk_Intervenção_Tipo_idx` (`Tipo_id_tipo`),
  KEY `fk_Intervenção_Classificação1_idx` (`Classificação_id_classificação`),
  KEY `fk_Intervenção_Sítio1_idx` (`Sítio_id_sítio`),
  KEY `fk_Intervenção_Utilizador1_idx` (`Utilizador_id_utilizador`),
  CONSTRAINT `fk_Intervenção_Classificação1` FOREIGN KEY (`Classificação_id_classificação`) REFERENCES `classificação` (`id_classificação`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Intervenção_Sítio1` FOREIGN KEY (`Sítio_id_sítio`) REFERENCES `sítio` (`id_sítio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Intervenção_Tipo` FOREIGN KEY (`Tipo_id_tipo`) REFERENCES `tipo` (`id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Intervenção_Utilizador1` FOREIGN KEY (`Utilizador_id_utilizador`) REFERENCES `utilizador` (`id_utilizador`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervenção`
--

LOCK TABLES `intervenção` WRITE;
/*!40000 ALTER TABLE `intervenção` DISABLE KEYS */;
INSERT INTO `intervenção` VALUES (81,2,3,81,'VCMSJC.21','41.773056','-8.846944',1),(101,2,1,101,'BRSV_242-246.21','41.555556','-8.420833',1),(111,1,1,111,'BTAVDDS_6-8.21','41.560556','-8.426944',1),(131,2,1,131,'BRNSET_62.21','41.5575','-8.386944',1),(141,2,7,141,'BLSJ_6-7.21','  41.55',': -8.425',1),(161,2,1,161,'BRIRY_266-268.22','41.551667','-8.432222',1),(191,2,21,191,'BLSTG_10.22','41.548056','- 8.425556',1),(201,2,1,201,'BRSD_90-92.21',' 41.554722','8.413611',1),(211,2,21,211,'BLCA_4-5.21',' 41.548889','- 8.423611',1),(221,2,7,221,'BRBV_14-16.21','41.551667','-8.429444',1),(241,2,1,241,'BRMDG_LT8.22','41.565','-8.396667',1),(251,2,7,251,'BRDDS_56-58.22','  41.550278','-8.428333',1),(271,2,1,261,'BRMDG_LT9.23','  41.565','8.396667',1);
/*!40000 ALTER TABLE `intervenção` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `litico`
--

DROP TABLE IF EXISTS `litico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `litico` (
  `id_litico` int(11) NOT NULL AUTO_INCREMENT,
  `descrição` varchar(500) DEFAULT NULL,
  `fragmentos` varchar(45) DEFAULT NULL,
  `material_litico` int(11) DEFAULT NULL,
  `tipologia` int(11) DEFAULT NULL,
  `comprimento` varchar(45) DEFAULT NULL,
  `largura` varchar(45) DEFAULT NULL,
  `espessura` varchar(45) DEFAULT NULL,
  `cronologia` int(11) DEFAULT NULL,
  `x` varchar(45) DEFAULT NULL,
  `y` varchar(45) DEFAULT NULL,
  `z` varchar(45) DEFAULT NULL,
  `intervenção` int(11) NOT NULL,
  `sondagem` int(11) NOT NULL,
  `UE` int(11) NOT NULL,
  `material` int(11) NOT NULL,
  PRIMARY KEY (`id_litico`),
  KEY `fk_Litico_Material_idx` (`material_litico`),
  KEY `fk_Litico_Tipologia_idx` (`tipologia`),
  KEY `fk_Litico_Cronologia_idx` (`cronologia`),
  KEY `fk_Litico_Intervenção_idx` (`intervenção`),
  KEY `fk_Litico_Sondagem_idx` (`sondagem`),
  KEY `fk_Litico_UE_idx` (`UE`),
  KEY `fk_Litico_Material_idx1` (`material`),
  CONSTRAINT `fk_Litico_Cronologia` FOREIGN KEY (`cronologia`) REFERENCES `cronologia` (`id_cronologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Litico_Intervenção` FOREIGN KEY (`intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Litico_Material` FOREIGN KEY (`material_litico`) REFERENCES `material_litico` (`id_material`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Litico_Material_ID` FOREIGN KEY (`material`) REFERENCES `material_tabela` (`id_material`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Litico_Sondagem` FOREIGN KEY (`sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Litico_Tipologia` FOREIGN KEY (`tipologia`) REFERENCES `tipologia_litico` (`id_tipologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Litico_UE` FOREIGN KEY (`UE`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `litico`
--

LOCK TABLES `litico` WRITE;
/*!40000 ALTER TABLE `litico` DISABLE KEYS */;
INSERT INTO `litico` VALUES (1,'','2',2,51,'','','',7,'','','',101,131,851,781),(11,'','3',2,51,'','','',7,'','','',101,131,851,821),(41,'Esferóide (Fossa 10)','1',4,NULL,'','','',NULL,'','','',161,761,6041,1171),(51,'Núcleo (?) sobre seixo rolado de quartzo','1',8,NULL,'','','',NULL,'','','',161,761,6041,1181),(61,'','1',4,NULL,'','','',NULL,'','','',161,301,3151,1381),(71,'','1',2,61,'','','',5,'','','',81,111,2841,3911),(81,'Amolador?','1',2,2,'','','',5,'','','',81,111,2851,3971),(91,'Seixo rolado (Fossa 10)','1',2,71,'','','',NULL,'','','',161,741,6001,5321),(101,'Lasca (Fossa 10)','1',2,61,'','','',NULL,'','','',161,741,6001,5331);
/*!40000 ALTER TABLE `litico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matéria_prima`
--

DROP TABLE IF EXISTS `matéria_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matéria_prima` (
  `id_matéria` int(11) NOT NULL AUTO_INCREMENT,
  `matéria` varchar(100) NOT NULL,
  PRIMARY KEY (`id_matéria`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matéria_prima`
--

LOCK TABLES `matéria_prima` WRITE;
/*!40000 ALTER TABLE `matéria_prima` DISABLE KEYS */;
INSERT INTO `matéria_prima` VALUES (1,'Bronze'),(2,'Chumbo'),(3,'Cobre'),(4,'Ferro'),(5,'Ouro'),(6,'Prata'),(7,'Zinco'),(8,'Estanho'),(11,'Couro');
/*!40000 ALTER TABLE `matéria_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiais_tipo`
--

DROP TABLE IF EXISTS `materiais_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiais_tipo` (
  `id_material` int(11) NOT NULL AUTO_INCREMENT,
  `material` varchar(100) NOT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiais_tipo`
--

LOCK TABLES `materiais_tipo` WRITE;
/*!40000 ALTER TABLE `materiais_tipo` DISABLE KEYS */;
INSERT INTO `materiais_tipo` VALUES (1,'Cerâmica'),(2,'Lítico'),(3,'Amostra'),(4,'Metal'),(5,'Moeda'),(6,'Objeto Diverso'),(7,'Vidro');
/*!40000 ALTER TABLE `materiais_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id_material` int(11) NOT NULL AUTO_INCREMENT,
  `material` varchar(50) NOT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Areia'),(2,'Argamassa'),(3,'Argila'),(4,'Azulejo'),(5,'Basalto'),(6,'Betão'),(7,'Blocos cimento'),(8,'Calcário'),(9,'Cerâmica'),(10,'Cobre'),(11,'Ferro'),(12,'Gesso'),(13,'Granito'),(14,'Madeira'),(15,'Opus Signinum'),(16,'Xisto'),(17,'Telha'),(21,'PVC'),(31,'Betão, pedra e tijolo'),(41,'Cimento'),(51,'Grés'),(61,'Pedra de granito e argamassa'),(71,'Tijolo e cimento'),(81,'Pedras e tubo em grés'),(91,'Granito e xisto'),(101,'Plástico');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_amostra`
--

DROP TABLE IF EXISTS `material_amostra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_amostra` (
  `id_material` int(11) NOT NULL AUTO_INCREMENT,
  `material` varchar(100) NOT NULL,
  PRIMARY KEY (`id_material`),
  UNIQUE KEY `material_UNIQUE` (`material`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_amostra`
--

LOCK TABLES `material_amostra` WRITE;
/*!40000 ALTER TABLE `material_amostra` DISABLE KEYS */;
INSERT INTO `material_amostra` VALUES (1,'Areia'),(2,'Argamassa'),(3,'Argila'),(4,'Carvão'),(5,'Ferro'),(11,'Fuligem'),(6,'Madeira'),(7,'Metal'),(8,'Pasta de Vidro'),(9,'Sedimento'),(10,'Sementes');
/*!40000 ALTER TABLE `material_amostra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_litico`
--

DROP TABLE IF EXISTS `material_litico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_litico` (
  `id_material` int(11) NOT NULL AUTO_INCREMENT,
  `material` varchar(100) NOT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_litico`
--

LOCK TABLES `material_litico` WRITE;
/*!40000 ALTER TABLE `material_litico` DISABLE KEYS */;
INSERT INTO `material_litico` VALUES (1,'Anfibolito'),(2,'Basalto'),(3,'Calcário'),(4,'Granito'),(5,'Indeterminado'),(6,'Mármore'),(7,'Quartzito'),(8,'Quartzo'),(9,'Xisto'),(11,'Silex');
/*!40000 ALTER TABLE `material_litico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_tabela`
--

DROP TABLE IF EXISTS `material_tabela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_tabela` (
  `id_material` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_material` int(11) NOT NULL,
  `id_UE` int(11) NOT NULL,
  `id_sondagem` int(11) NOT NULL,
  `id_intervenção` int(11) NOT NULL,
  `id_utilizador` int(11) NOT NULL,
  `id_cronologia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_material`),
  KEY `fk_Material_Tabela_UE_idx` (`id_UE`),
  KEY `fk_Material_Tabela_Sondagem_idx` (`id_sondagem`),
  KEY `fk_Material_Tabela_Intervenção_idx` (`id_intervenção`),
  KEY `fk_Material_Tabela_Utilizador_idx` (`id_utilizador`),
  KEY `fk_Material_Tabela_Cronologia_idx` (`id_cronologia`),
  CONSTRAINT `fk_Material_Tabela_Cronologia` FOREIGN KEY (`id_cronologia`) REFERENCES `cronologia` (`id_cronologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Material_Tabela_Intervenção` FOREIGN KEY (`id_intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Material_Tabela_Sondagem` FOREIGN KEY (`id_sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Material_Tabela_UE` FOREIGN KEY (`id_UE`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Material_Tabela_Utilizador` FOREIGN KEY (`id_utilizador`) REFERENCES `utilizador` (`id_utilizador`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5341 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_tabela`
--

LOCK TABLES `material_tabela` WRITE;
/*!40000 ALTER TABLE `material_tabela` DISABLE KEYS */;
INSERT INTO `material_tabela` VALUES (201,1,1121,201,131,1,10),(211,1,1141,201,131,1,10),(221,1,1181,201,131,1,5),(231,1,1201,201,131,1,10),(241,1,1081,201,131,1,2),(251,1,1081,201,131,1,8),(261,1,1081,201,131,1,10),(271,1,971,161,111,1,4),(281,1,971,161,111,1,4),(291,1,971,161,111,1,4),(501,1,801,131,101,1,8),(511,1,801,131,101,1,8),(521,1,801,131,101,1,8),(531,1,801,131,101,1,8),(581,1,821,131,101,1,2),(591,1,821,131,101,1,2),(601,1,821,131,101,1,2),(611,1,831,131,101,1,8),(621,1,831,131,101,1,NULL),(631,4,831,131,101,1,NULL),(671,1,841,131,101,1,2),(681,1,841,131,101,1,2),(711,4,841,131,101,1,NULL),(721,1,851,131,101,1,2),(731,1,851,131,101,1,2),(741,1,851,131,101,1,2),(751,1,851,131,101,1,2),(761,6,851,131,101,1,NULL),(771,1,851,131,101,1,7),(781,2,851,131,101,1,7),(801,1,861,131,101,1,8),(811,1,851,131,101,1,8),(821,2,851,131,101,1,7),(851,5,821,131,101,1,2),(911,7,851,131,101,1,5),(921,1,5801,641,161,1,3),(931,1,5801,641,161,1,3),(941,1,5851,651,161,1,3),(951,1,5851,651,161,1,3),(961,1,5871,661,161,1,3),(971,1,5871,661,161,1,3),(981,1,5871,661,161,1,3),(991,1,5871,661,161,1,3),(1001,1,5891,671,161,1,3),(1011,1,5891,671,161,1,3),(1021,1,5891,671,161,1,3),(1031,1,5891,671,161,1,3),(1041,1,5891,671,161,1,3),(1051,1,5891,671,161,1,3),(1081,1,5941,701,161,1,3),(1091,1,5941,701,161,1,3),(1111,1,5981,731,161,1,3),(1121,1,5981,731,161,1,3),(1131,1,5981,731,161,1,3),(1141,1,6001,741,161,1,3),(1151,1,6001,741,161,1,3),(1161,1,6021,751,161,1,3),(1171,2,6041,761,161,1,NULL),(1181,2,6041,761,161,1,NULL),(1191,1,7751,921,161,1,2),(1201,1,7751,921,161,1,2),(1211,1,7751,921,161,1,8),(1221,1,7751,921,161,1,2),(1231,1,7751,921,161,1,2),(1241,1,7751,921,161,1,2),(1251,1,3321,371,161,1,7),(1261,1,3161,331,161,1,2),(1271,1,3161,331,161,1,8),(1281,1,7751,921,161,1,8),(1291,1,3161,331,161,1,2),(1301,1,3241,351,161,1,2),(1311,1,3241,351,161,1,8),(1321,1,3241,351,161,1,8),(1331,1,3151,301,161,1,8),(1341,1,3151,301,161,1,8),(1351,1,3151,301,161,1,2),(1361,1,3151,301,161,1,2),(1371,1,3151,301,161,1,8),(1381,2,3151,301,161,1,NULL),(1391,1,191,71,81,1,7),(1401,1,271,71,81,1,7),(1411,1,371,91,81,1,2),(1421,1,371,91,81,1,8),(1431,1,371,91,81,1,2),(1441,7,371,91,81,1,2),(1451,1,381,91,81,1,8),(1461,1,381,91,81,1,8),(1471,1,381,91,81,1,8),(1481,1,381,91,81,1,8),(1491,1,381,91,81,1,2),(1501,1,371,91,81,1,2),(1511,1,371,91,81,1,8),(1521,1,371,91,81,1,8),(1531,1,371,91,81,1,7),(1541,1,461,91,81,1,8),(1551,1,461,91,81,1,NULL),(1561,1,461,91,81,1,2),(1571,1,461,91,81,1,7),(1581,1,461,91,81,1,7),(1591,1,461,91,81,1,8),(1601,1,461,91,81,1,8),(1611,1,461,91,81,1,NULL),(1621,1,461,91,81,1,NULL),(1631,1,461,91,81,1,8),(1641,1,6301,791,81,1,8),(1651,1,6301,791,81,1,8),(1661,1,6301,791,81,1,8),(1671,1,6301,791,81,1,8),(1681,1,6301,791,81,1,8),(1691,1,6301,791,81,1,8),(1711,1,6301,791,81,1,8),(1721,1,6301,791,81,1,7),(1781,1,5871,661,161,1,3),(2141,1,7771,931,211,1,10),(2151,1,7771,931,211,1,10),(2161,1,7771,931,211,1,10),(2171,1,7771,931,211,1,10),(2181,3,5871,661,161,1,NULL),(2191,3,5871,661,161,1,NULL),(2201,3,5871,661,161,1,NULL),(2211,3,5981,731,161,1,NULL),(2221,3,6001,741,161,1,NULL),(2231,3,6001,741,161,1,NULL),(2241,3,4791,511,211,1,NULL),(2251,3,4791,511,211,1,NULL),(2261,1,6311,791,81,1,8),(2271,1,6311,791,81,1,8),(2281,1,6311,791,81,1,NULL),(2291,1,6331,791,81,1,8),(2301,1,6341,791,81,1,8),(2311,1,6341,791,81,1,8),(2321,1,6341,791,81,1,8),(2331,1,6341,791,81,1,7),(2341,1,6341,791,81,1,2),(2351,1,6341,791,81,1,2),(2361,4,6341,791,81,1,NULL),(2371,1,6351,791,81,1,8),(2381,1,6351,791,81,1,8),(2391,1,6351,791,81,1,8),(2401,1,6351,791,81,1,8),(2411,1,6351,791,81,1,8),(2421,1,6371,791,81,1,8),(2431,1,6371,791,81,1,8),(2441,1,6371,791,81,1,8),(2451,1,6111,91,81,1,8),(2461,1,6111,91,81,1,8),(2471,1,6151,91,81,1,2),(2481,1,6151,91,81,1,2),(2491,1,6151,91,81,1,2),(2501,1,6151,91,81,1,2),(2511,1,6241,91,81,1,2),(2521,1,6241,91,81,1,2),(2531,1,6251,91,81,1,8),(2541,1,6251,91,81,1,8),(2551,1,6251,91,81,1,8),(2561,1,6251,91,81,1,8),(2571,1,6251,91,81,1,2),(2581,4,7781,881,81,1,NULL),(2601,4,7781,881,81,1,NULL),(2611,1,7781,881,81,1,7),(2621,1,7781,881,81,1,8),(2631,1,7781,881,81,1,NULL),(2641,1,7781,881,81,1,2),(2651,1,7781,881,81,1,2),(2661,1,7781,881,81,1,8),(2671,4,7791,881,81,1,NULL),(2681,1,7791,881,81,1,8),(2691,1,7791,881,81,1,8),(2701,1,7791,881,81,1,8),(2711,1,7791,881,81,1,8),(2721,1,7791,881,81,1,7),(2731,7,7791,881,81,1,5),(2741,1,7571,911,81,1,2),(2751,1,7571,911,81,1,2),(2761,1,7571,911,81,1,2),(2771,1,7571,911,81,1,2),(2781,1,7581,911,81,1,8),(2791,1,7581,911,81,1,8),(2801,1,7631,911,81,1,8),(2811,1,7631,911,81,1,8),(2821,1,7631,911,81,1,8),(2831,1,7631,911,81,1,2),(2841,1,7741,911,81,1,5),(2851,1,6261,91,81,1,8),(2861,1,6191,91,81,1,2),(2871,1,6201,91,81,1,5),(2881,1,6201,91,81,1,8),(2891,1,6201,91,81,1,8),(2901,1,6201,91,81,1,8),(2911,1,6201,91,81,1,2),(2921,4,2241,261,81,1,NULL),(2931,1,2241,261,81,1,8),(2941,1,2241,261,81,1,8),(2951,1,2241,261,81,1,8),(2961,1,2241,261,81,1,7),(2971,4,2251,261,81,1,NULL),(2981,1,2251,261,81,1,7),(2991,1,2251,261,81,1,8),(3001,1,2251,261,81,1,NULL),(3011,1,2251,261,81,1,8),(3021,1,2251,261,81,1,8),(3031,1,2251,261,81,1,8),(3041,1,2251,261,81,1,8),(3051,1,2251,261,81,1,8),(3061,1,2251,261,81,1,8),(3071,1,2251,261,81,1,2),(3081,4,2261,261,81,1,NULL),(3091,7,2261,261,81,1,2),(3101,1,2261,261,81,1,8),(3111,1,2261,261,81,1,8),(3121,1,2261,261,81,1,8),(3131,1,2261,261,81,1,8),(3141,1,2261,261,81,1,2),(3151,1,2261,261,81,1,8),(3161,1,2261,261,81,1,7),(3171,1,2261,261,81,1,7),(3181,1,2261,261,81,1,7),(3191,1,2291,261,81,1,8),(3201,1,2291,261,81,1,8),(3211,1,2291,261,81,1,8),(3221,1,2291,261,81,1,2),(3231,1,2291,261,81,1,2),(3241,1,2291,261,81,1,8),(3251,1,2291,261,81,1,7),(3261,4,2301,261,81,1,NULL),(3271,4,2301,261,81,1,NULL),(3281,1,2301,261,81,1,6),(3291,1,2301,261,81,1,6),(3301,1,2301,261,81,1,6),(3311,1,2301,261,81,1,6),(3321,1,2301,261,81,1,5),(3331,1,2301,261,81,1,5),(3341,1,2301,261,81,1,7),(3351,4,2341,261,81,1,NULL),(3361,1,2341,261,81,1,5),(3371,1,2341,261,81,1,5),(3381,1,2351,261,81,1,8),(3391,1,2351,261,81,1,NULL),(3401,7,2351,261,81,1,8),(3411,7,2351,261,81,1,8),(3421,1,2351,261,81,1,NULL),(3431,1,2371,261,81,1,8),(3441,1,2371,261,81,1,8),(3451,1,2371,261,81,1,8),(3461,1,2371,261,81,1,8),(3471,1,2371,261,81,1,8),(3481,1,2371,261,81,1,8),(3491,1,2371,261,81,1,8),(3501,1,2371,261,81,1,8),(3511,1,2371,261,81,1,8),(3521,1,2371,261,81,1,8),(3531,1,2371,261,81,1,8),(3541,4,1991,111,81,1,NULL),(3551,1,1991,111,81,1,8),(3561,1,1991,111,81,1,8),(3571,1,1991,111,81,1,2),(3581,1,2001,111,81,1,8),(3591,1,2001,111,81,1,8),(3601,1,2001,111,81,1,8),(3611,1,2001,111,81,1,8),(3621,1,2001,111,81,1,7),(3631,1,2001,111,81,1,2),(3641,1,2031,111,81,1,7),(3651,1,2031,111,81,1,2),(3661,1,2031,111,81,1,2),(3671,1,2031,111,81,1,2),(3681,1,2031,111,81,1,8),(3691,1,2031,111,81,1,8),(3701,1,2031,111,81,1,8),(3711,1,2031,111,81,1,2),(3721,1,2031,111,81,1,2),(3731,1,2031,111,81,1,NULL),(3741,1,2061,111,81,1,2),(3751,1,2061,111,81,1,7),(3761,1,2061,111,81,1,7),(3771,1,2071,111,81,1,8),(3781,1,2071,111,81,1,8),(3801,1,2071,111,81,1,7),(3811,1,2071,111,81,1,7),(3821,1,2071,111,81,1,8),(3831,1,2071,111,81,1,8),(3841,1,2841,111,81,1,6),(3851,1,2841,111,81,1,6),(3861,1,2841,111,81,1,6),(3871,1,2841,111,81,1,6),(3881,1,2841,111,81,1,6),(3891,1,2841,111,81,1,5),(3901,1,2841,111,81,1,7),(3911,2,2841,111,81,1,5),(3921,1,2851,111,81,1,6),(3931,1,2851,111,81,1,6),(3941,1,2851,111,81,1,6),(3951,1,2851,111,81,1,6),(3961,1,2851,111,81,1,6),(3971,2,2851,111,81,1,5),(3981,1,2081,111,81,1,6),(3991,1,2081,111,81,1,6),(4001,1,2081,111,81,1,6),(4011,1,2081,111,81,1,5),(4021,1,2691,281,81,1,6),(4031,1,2691,281,81,1,6),(4041,1,2691,281,81,1,5),(4051,1,2691,281,81,1,5),(4061,1,2691,281,81,1,7),(4071,1,2691,281,81,1,7),(4081,1,2701,281,81,1,6),(4091,1,2701,281,81,1,6),(4101,1,2701,281,81,1,6),(4111,1,2701,281,81,1,5),(4121,1,2701,281,81,1,6),(4131,1,2691,281,81,1,8),(4141,1,2701,281,81,1,8),(4151,1,2701,281,81,1,8),(4161,1,2701,281,81,1,8),(4171,1,2701,281,81,1,8),(4181,7,2701,281,81,1,8),(4191,1,1301,211,141,1,8),(4201,1,1301,211,141,1,8),(4211,1,1301,211,141,1,NULL),(4221,1,1301,211,141,1,8),(4231,1,1301,211,141,1,2),(4241,1,1301,211,141,1,6),(4251,1,1301,211,141,1,6),(4261,1,1351,211,141,1,6),(4271,1,1351,211,141,1,6),(4281,1,1351,211,141,1,6),(4291,1,1351,211,141,1,10),(4301,1,1351,211,141,1,10),(4311,1,1351,211,141,1,10),(4321,1,1351,211,141,1,10),(4331,1,1351,211,141,1,10),(4341,1,1351,211,141,1,10),(4351,1,1351,211,141,1,5),(4361,1,1351,211,141,1,6),(4371,1,1351,211,141,1,8),(4381,1,1351,211,141,1,2),(4391,7,1361,211,141,1,5),(4431,7,1361,211,141,1,5),(4441,1,1361,211,141,1,6),(4451,1,1361,211,141,1,6),(4461,1,1361,211,141,1,6),(4471,1,1361,211,141,1,6),(4481,1,1361,211,141,1,6),(4491,1,1361,211,141,1,6),(4501,1,1361,211,141,1,6),(4511,1,1361,211,141,1,6),(4521,1,1361,211,141,1,6),(4531,1,1361,211,141,1,5),(4541,1,1361,211,141,1,10),(4551,1,1361,211,141,1,10),(4561,1,1361,211,141,1,10),(4571,1,1361,211,141,1,8),(4581,7,1381,211,141,1,10),(4591,7,1361,211,141,1,10),(4601,1,1381,211,141,1,6),(4611,1,1381,211,141,1,5),(4621,1,1381,211,141,1,6),(4631,1,1381,211,141,1,6),(4641,1,1381,211,141,1,6),(4651,1,1381,211,141,1,6),(4661,1,1381,211,141,1,10),(4671,1,1381,211,141,1,10),(4681,1,1381,211,141,1,10),(4691,1,1381,211,141,1,10),(4701,1,1381,211,141,1,10),(4711,1,1381,211,141,1,10),(4721,1,1381,211,141,1,10),(4731,1,1351,211,141,1,10),(4741,1,1361,211,141,1,10),(4751,1,1381,211,141,1,4),(4831,1,5631,591,251,1,6),(4841,1,5631,591,251,1,6),(4851,1,5631,591,251,1,10),(4861,1,5631,591,251,1,10),(4871,1,5631,591,251,1,2),(4881,7,5631,591,251,1,2),(4891,7,5631,591,251,1,10),(4911,1,5711,631,251,1,2),(4921,1,5711,631,251,1,8),(4931,1,5711,631,251,1,8),(4941,1,5711,631,251,1,2),(4961,7,5711,631,251,1,2),(4971,1,5741,631,251,1,10),(4981,1,5741,631,251,1,10),(4991,1,5741,631,251,1,6),(5001,1,5661,591,251,1,10),(5011,1,5661,591,251,1,10),(5021,1,5661,591,251,1,6),(5031,1,5661,591,251,1,10),(5041,1,5661,591,251,1,10),(5051,1,5761,631,251,1,10),(5061,1,5761,631,251,1,10),(5071,1,5761,631,251,1,10),(5081,1,5761,631,251,1,10),(5091,1,5761,631,251,1,10),(5101,1,5761,631,251,1,10),(5111,1,5761,631,251,1,10),(5121,1,5761,631,251,1,8),(5131,4,5631,591,251,1,NULL),(5141,4,831,131,101,1,NULL),(5151,4,831,131,101,1,NULL),(5201,4,841,131,101,1,NULL),(5211,4,841,131,101,1,NULL),(5221,4,841,131,101,1,NULL),(5231,4,841,131,101,1,NULL),(5241,4,841,131,101,1,NULL),(5251,4,841,131,101,1,NULL),(5261,4,841,131,101,1,NULL),(5271,4,801,131,101,1,NULL),(5281,5,851,131,101,1,NULL),(5291,4,821,131,101,1,NULL),(5301,4,8581,151,101,1,NULL),(5311,5,8581,151,101,1,NULL),(5321,2,6001,741,161,1,NULL),(5331,2,6001,741,161,1,NULL);
/*!40000 ALTER TABLE `material_tabela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriz`
--

DROP TABLE IF EXISTS `matriz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matriz` (
  `id_matriz` int(11) NOT NULL AUTO_INCREMENT,
  `matriz` varchar(50) NOT NULL,
  PRIMARY KEY (`id_matriz`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriz`
--

LOCK TABLES `matriz` WRITE;
/*!40000 ALTER TABLE `matriz` DISABLE KEYS */;
INSERT INTO `matriz` VALUES (1,'Arenosa'),(2,'Argilosa'),(3,'Limosa'),(4,'Areno argilosa'),(5,'Argilo-arenosa'),(6,'Limo arenosa'),(7,'Areno limosa'),(8,'Limo argilosa'),(9,'Argilo-limosa');
/*!40000 ALTER TABLE `matriz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metal`
--

DROP TABLE IF EXISTS `metal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metal` (
  `id_metal` int(11) NOT NULL AUTO_INCREMENT,
  `descrição` varchar(500) DEFAULT NULL,
  `fragmentos` varchar(45) DEFAULT NULL,
  `matéria` int(11) DEFAULT NULL,
  `tipologia` int(11) DEFAULT NULL,
  `forma` int(11) DEFAULT NULL,
  `função` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `x` varchar(45) DEFAULT NULL,
  `y` varchar(45) DEFAULT NULL,
  `z` varchar(45) DEFAULT NULL,
  `intervenção` int(11) NOT NULL,
  `sondagem` int(11) NOT NULL,
  `UE` int(11) NOT NULL,
  `material` int(11) NOT NULL,
  PRIMARY KEY (`id_metal`),
  KEY `fk_Metal_Matéria_idx` (`matéria`),
  KEY `fk_Metal_Tipologia_idx` (`tipologia`),
  KEY `fk_Metal_Forma_idx` (`forma`),
  KEY `fk_Metal_Função_idx` (`função`),
  KEY `fk_Metal_Estado_idx` (`estado`),
  KEY `fk_Metal_Intervenção_idx` (`intervenção`),
  KEY `fk_Metal_Sondagem_idx` (`sondagem`),
  KEY `fk_Metal_UE_idx` (`UE`),
  KEY `fk_Metal_Material_idx` (`material`),
  CONSTRAINT `fk_Metal_Estado` FOREIGN KEY (`estado`) REFERENCES `conservação` (`id_conservação`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Metal_Forma` FOREIGN KEY (`forma`) REFERENCES `forma_metal` (`id_forma`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Metal_Função` FOREIGN KEY (`função`) REFERENCES `função_metal` (`id_função`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Metal_Intervenção` FOREIGN KEY (`intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Metal_Material` FOREIGN KEY (`material`) REFERENCES `material_tabela` (`id_material`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Metal_Matéria` FOREIGN KEY (`matéria`) REFERENCES `matéria_prima` (`id_matéria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Metal_Sondagem` FOREIGN KEY (`sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Metal_Tipologia` FOREIGN KEY (`tipologia`) REFERENCES `tipologia_metal` (`id_tipologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Metal_UE` FOREIGN KEY (`UE`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metal`
--

LOCK TABLES `metal` WRITE;
/*!40000 ALTER TABLE `metal` DISABLE KEYS */;
INSERT INTO `metal` VALUES (11,'','1',4,NULL,33,NULL,3,'','','',101,131,831,631),(21,'','2',4,NULL,42,NULL,3,'','','',101,131,841,711),(61,'','1',4,NULL,NULL,NULL,2,'','','',81,791,6341,2361),(71,'','1',4,NULL,33,NULL,2,'','','',81,881,7781,2581),(91,'','1',NULL,NULL,21,NULL,2,'','','',81,881,7781,2601),(101,'','2',4,NULL,42,NULL,2,'','','',81,881,7791,2671),(111,'','3',NULL,NULL,42,NULL,NULL,'','','',81,261,2241,2921),(121,'/','2',4,NULL,42,NULL,2,'','','',81,261,2251,2971),(131,'|','2',4,NULL,42,NULL,2,'','','',81,261,2261,3081),(141,'','3',4,NULL,42,NULL,3,'','','',81,261,2301,3261),(151,'/','1',NULL,NULL,21,NULL,2,'','','',81,261,2301,3271),(161,'','2',4,NULL,42,NULL,2,'','','',81,261,2341,3351),(171,'','2',4,NULL,42,NULL,NULL,'','','',81,111,1991,3541),(181,'','2',4,NULL,NULL,NULL,2,'','','',251,591,5631,5131),(191,'','1',4,NULL,51,NULL,2,'','','',101,131,831,5141),(201,'','3',4,NULL,42,NULL,2,'','','',101,131,831,5151),(251,'','1',4,NULL,30,1,2,'','','',101,131,841,5201),(261,'Fragmento ','1',4,NULL,51,NULL,2,'','','',101,131,841,5211),(271,'Fragmento ','1',1,NULL,61,NULL,2,'','','',101,131,841,5221),(281,'','1',1,NULL,9,NULL,2,'','','',101,131,841,5231),(291,'','1',4,NULL,4,NULL,2,'','','',101,131,841,5241),(301,'','1',4,NULL,47,NULL,2,'','','',101,131,841,5251),(311,'','1',4,NULL,71,NULL,2,'','','',101,131,841,5261),(321,'','1',4,NULL,13,6,2,'','','',101,131,801,5271),(331,'','1',1,NULL,9,1,2,'','','',101,131,821,5291),(341,'','1',1,NULL,9,1,2,'','','',101,151,8581,5301);
/*!40000 ALTER TABLE `metal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moeda`
--

DROP TABLE IF EXISTS `moeda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moeda` (
  `id_moeda` int(11) NOT NULL AUTO_INCREMENT,
  `descrição` varchar(500) DEFAULT NULL,
  `fragmentos` varchar(45) DEFAULT NULL,
  `matéria` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `cronologia` int(11) DEFAULT NULL,
  `século` varchar(45) DEFAULT NULL,
  `data` varchar(45) DEFAULT NULL,
  `x` varchar(45) DEFAULT NULL,
  `y` varchar(45) DEFAULT NULL,
  `z` varchar(45) DEFAULT NULL,
  `intervenção` int(11) NOT NULL,
  `sondagem` int(11) NOT NULL,
  `UE` int(11) NOT NULL,
  `material` int(11) NOT NULL,
  PRIMARY KEY (`id_moeda`),
  KEY `fk_Moeda_Matéria_idx` (`matéria`),
  KEY `fk_Moeda_Estado_idx` (`estado`),
  KEY `fk_Moeda_Cronologia_idx` (`cronologia`),
  KEY `fk_Moeda_Intervenção_idx` (`intervenção`),
  KEY `fk_Moeda_Sondagem_idx` (`sondagem`),
  KEY `fk_Moeda_UE_idx` (`UE`),
  KEY `fk_Moeda_Material_idx` (`material`),
  CONSTRAINT `fk_Moeda_Cronologia` FOREIGN KEY (`cronologia`) REFERENCES `cronologia` (`id_cronologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Moeda_Estado` FOREIGN KEY (`estado`) REFERENCES `conservação` (`id_conservação`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Moeda_Intervenção` FOREIGN KEY (`intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Moeda_Material` FOREIGN KEY (`material`) REFERENCES `material_tabela` (`id_material`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Moeda_Matéria` FOREIGN KEY (`matéria`) REFERENCES `matéria_prima` (`id_matéria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Moeda_Sondagem` FOREIGN KEY (`sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Moeda_UE` FOREIGN KEY (`UE`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moeda`
--

LOCK TABLES `moeda` WRITE;
/*!40000 ALTER TABLE `moeda` DISABLE KEYS */;
INSERT INTO `moeda` VALUES (11,'','1',1,2,'',2,'XIX','18??','','','',101,131,821,851),(61,'','6',1,2,'',NULL,'','','','','',101,131,851,5281),(71,'','1',1,2,'',NULL,'','','','','',101,151,8581,5311);
/*!40000 ALTER TABLE `moeda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objeto`
--

DROP TABLE IF EXISTS `objeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objeto` (
  `id_objeto` int(11) NOT NULL AUTO_INCREMENT,
  `objeto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_objeto`),
  UNIQUE KEY `objeto_UNIQUE` (`objeto`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objeto`
--

LOCK TABLES `objeto` WRITE;
/*!40000 ALTER TABLE `objeto` DISABLE KEYS */;
INSERT INTO `objeto` VALUES (1,'Agulha'),(2,'Alfinete'),(3,'Aliança'),(4,'Anel'),(5,'Anforte'),(6,'Anzol'),(7,'Apito'),(8,'Aplique'),(9,'Armadura'),(10,'Asa'),(11,'Botão'),(12,'Bracelete'),(13,'Brinco'),(14,'Cadinho'),(15,'Caixa'),(16,'Cálice'),(17,'Candeia'),(18,'Candelabro'),(19,'Capacete'),(20,'Chave'),(21,'Cinzel'),(22,'Colar'),(23,'Colher'),(24,'Conta'),(25,'Copo'),(26,'Cossoiro'),(27,'Dado'),(28,'Disco'),(29,'Estátua'),(30,'Estatueta'),(32,'Fábula'),(31,'Faca'),(33,'Ficha de jogo'),(34,'Frasco'),(35,'Fuso'),(36,'Lamela'),(37,'Lâmina'),(38,'Lasca'),(39,'Lucerna'),(40,'Mascarão'),(41,'Pinça'),(42,'Placa'),(43,'Ponta de Lança'),(44,'Pulseira'),(45,'Puxador'),(46,'Raspador'),(47,'Seixo'),(48,'Sino'),(61,'Sola'),(49,'Tessela'),(50,'Tinteiro'),(51,'Torque'),(52,'Unguentário');
/*!40000 ALTER TABLE `objeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parte_peça`
--

DROP TABLE IF EXISTS `parte_peça`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parte_peça` (
  `id_parte` int(11) NOT NULL AUTO_INCREMENT,
  `parte` varchar(45) NOT NULL,
  PRIMARY KEY (`id_parte`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parte_peça`
--

LOCK TABLES `parte_peça` WRITE;
/*!40000 ALTER TABLE `parte_peça` DISABLE KEYS */;
INSERT INTO `parte_peça` VALUES (1,'Fragmento'),(2,'Perfil completo');
/*!40000 ALTER TABLE `parte_peça` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peça`
--

DROP TABLE IF EXISTS `peça`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peça` (
  `id_peça` int(11) NOT NULL AUTO_INCREMENT,
  `peça` varchar(100) NOT NULL,
  PRIMARY KEY (`id_peça`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peça`
--

LOCK TABLES `peça` WRITE;
/*!40000 ALTER TABLE `peça` DISABLE KEYS */;
INSERT INTO `peça` VALUES (1,'Alguidar'),(2,'Almofariz'),(11,'Anel'),(21,'Ânfora'),(31,'Anforeta'),(41,'Azulejo'),(51,'Bacia'),(61,'Balde'),(71,'Bilha'),(81,'Bracelete'),(91,'Caçarola'),(101,'Cadinho'),(111,'Candeia'),(121,'Caneca'),(131,'Cano'),(141,'Cântaro'),(151,'Cantil'),(161,'Colher'),(171,'Copo'),(181,'Cossoiro'),(191,'Dollium'),(201,'Ficha de Jogo'),(211,'Frigideira'),(221,'Garrafa'),(231,'Grelha'),(241,'Ídolo'),(251,'Imbrex'),(261,'Indeterminado'),(271,'Jarra'),(281,'Lápide'),(291,'Lucerna'),(301,'Malga'),(311,'Molde'),(321,'Panela'),(331,'Peso'),(341,'Pichel'),(351,'Pote'),(361,'Potinho'),(371,'Prato'),(381,'Púcaro'),(391,'Taça'),(401,'Talha'),(411,'Tampa'),(421,'Telha'),(431,'Tijolo'),(441,'Tinteiro'),(451,'Travessa'),(461,'Tubo'),(471,'Unguentário'),(481,'Urna'),(491,'Vaso'),(501,'Tijoleira'),(511,'Testo');
/*!40000 ALTER TABLE `peça` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sítio`
--

DROP TABLE IF EXISTS `sítio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sítio` (
  `id_sítio` int(11) NOT NULL AUTO_INCREMENT,
  `sítio` varchar(100) NOT NULL,
  PRIMARY KEY (`id_sítio`),
  UNIQUE KEY `sítio_UNIQUE` (`sítio`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sítio`
--

LOCK TABLES `sítio` WRITE;
/*!40000 ALTER TABLE `sítio` DISABLE KEYS */;
INSERT INTO `sítio` VALUES (211,'Largo Carlos Amarante 4-5'),(191,'Largo de Santiago nº 10'),(171,'Largo de Santiago º 10, Braga'),(141,'Largo de São João de Souto nº 6-7'),(81,'Mosteiro de Cabanas - Afife'),(251,'Rua D. Diogo de Sousa nº 56-58 - Braga'),(221,'Rua da Boavista 14 - 16'),(131,'Rua das Nogueiras e Santa Eulália n°62'),(201,'Rua de São Domingos nº 90-92'),(161,'Rua Irmãos Roby nº 266-268'),(261,'Rua Maria Delfina Gomes Lote 9'),(241,'Rua Maria Delfina Gomes_LT 8 -  Braga'),(101,'Rua S. Vicente n° 242-246'),(111,'Travessa Avenida Dr. Artur Soares nº 6-8');
/*!40000 ALTER TABLE `sítio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sedimentar`
--

DROP TABLE IF EXISTS `sedimentar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sedimentar` (
  `id_sedimentar` int(11) NOT NULL AUTO_INCREMENT,
  `cor` varchar(45) DEFAULT NULL,
  `Compacidade_id_compacidade` int(11) DEFAULT NULL,
  `Matriz_id_matriz` int(11) DEFAULT NULL,
  `descrição` text,
  `interpretação` text,
  `cronologia` int(11) DEFAULT NULL,
  `id_intervenção` int(11) NOT NULL,
  `id_sondagem` int(11) NOT NULL,
  `id_UE` int(11) NOT NULL,
  PRIMARY KEY (`id_sedimentar`),
  KEY `fk_Sedimentar_Compacidade1_idx` (`Compacidade_id_compacidade`),
  KEY `fk_Sedimentar_Matriz1_idx` (`Matriz_id_matriz`),
  KEY `fk_Sedimentar_Cronologia1_idx` (`cronologia`),
  KEY `fk_Sedimentar_Intervenção1_idx` (`id_intervenção`),
  KEY `fk_Sedimentar_UE1_idx` (`id_UE`),
  KEY `fk_Sedimentar_Sondagem1_idx` (`id_sondagem`),
  CONSTRAINT `fk_Sedimentar_Compacidade1` FOREIGN KEY (`Compacidade_id_compacidade`) REFERENCES `compacidade` (`id_compacidade`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sedimentar_Cronologia1` FOREIGN KEY (`cronologia`) REFERENCES `cronologia` (`id_cronologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sedimentar_Intervenção1` FOREIGN KEY (`id_intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sedimentar_Matriz1` FOREIGN KEY (`Matriz_id_matriz`) REFERENCES `matriz` (`id_matriz`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sedimentar_Sondagem1` FOREIGN KEY (`id_sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sedimentar_UE1` FOREIGN KEY (`id_UE`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5441 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sedimentar`
--

LOCK TABLES `sedimentar` WRITE;
/*!40000 ALTER TABLE `sedimentar` DISABLE KEYS */;
INSERT INTO `sedimentar` VALUES (31,'Castanho escuro',3,1,'Camada Humosa.','',2,81,71,121),(41,'Castanha acinzentada',3,5,'Preparação para assentamento da laja UE 102','Aterro',2,81,71,131),(51,'Castanha',3,5,'','Aterro',NULL,81,71,141),(61,'Castanha',3,1,'','Aterro',2,81,71,161),(71,'Castanha clara',3,4,'Camada heterogénea','',NULL,81,71,181),(81,'Preta',3,4,'','',NULL,81,71,191),(91,'Castanho',3,4,'UE composta por várias camadas, com pendor Oeste-Este.','Conjunto de várias camadas de terra, com caracteristicas distintas que poderão servido para aterrar metade da área do adro, ou então para rampear o terreno a fim de facilitar o transporte de pedras para a construção da Igreja.',7,81,71,241),(101,'Castanha amarelada',3,4,'','Aterro',NULL,81,71,261),(111,'Preta',3,4,'','',NULL,81,71,271),(121,'Azinzentada',3,2,'Camada com nódulos de arqila de pedras em granito de pequeno calibre.','',NULL,81,71,281),(131,'Preto',3,2,'','Camada de enchimento da Sepultura UE 122',NULL,81,71,291),(141,'Castanho claro',4,1,'Areia para assentar pedra da calçada','Preparação da calçada',2,81,71,351),(151,'Castanho escura',3,1,'Terra humosa de canteiro','',2,81,91,371),(161,'Alaranjada',2,2,'','',NULL,81,91,381),(171,'Amarelada',4,1,'Areia','Areia depositada para assentar tubos, em PVC, de abastecimento de água.',2,81,91,411),(181,'Amarelada',5,1,'Saibro','Rocha',5,81,91,431),(191,'Castanha',2,2,'','Aterro',NULL,81,91,461),(201,'Castanha amarelada',2,4,'Camada heterogénea com saibro e materiais de construção.','Preparado do pavimento',2,81,111,601),(251,'Castanha escura',3,1,'','Antigo soalho?',8,101,131,801),(261,'Castanho escuro',3,1,'Aterro composto por materiais de obra, como argamassas e cal, localizado no quadrante SE.','Aterro',2,101,131,811),(271,'Castanha amarelada',2,1,'Camada de saibro, em certas zonas endurecido.','Pavimento?',8,101,131,821),(281,'Acinzentada',3,7,'','Aterro',NULL,101,131,831),(291,'Castanha',3,7,'','Aterro',NULL,101,131,841),(301,'Castanha',3,1,'','Aterro',NULL,101,131,851),(311,'Castanha',3,3,'Camada de fina espessura, composta maioritariamente composta por madeira.','Madeira',5,101,131,861),(321,'Amarela',NULL,NULL,'Rocha granítica','Rocha ',5,101,131,961),(331,'Castanho escuro',3,6,'Camada de coloração castanha escura, com pendente Oeste-Este. Observou-se cerâmica doméstica de cozedura redutora, enquadrada cronologicamente na Idade do Ferro. Esta UE localiza-se no Castro, bem como nas áreas junto à antiga moradia.','Camada humosa',4,111,161,971),(341,'Castanha',3,1,'Camada heterogénea, composta por terras castanhas escuras e amareladas. Localiza-se na área da antiga habitação.','Aterro',2,111,161,981),(391,'Castanha ',3,4,'','Aterro',NULL,131,201,1081),(401,'',NULL,NULL,'Igual à UE 101','',NULL,131,201,1091),(411,'Castanha',3,4,'','Aterro',NULL,131,201,1101),(421,'',NULL,NULL,'','Rocha granítica',NULL,131,201,1111),(431,'Castanha',3,4,'','Aterro',NULL,131,201,1121),(441,'Amarela',NULL,NULL,'','Saibro',NULL,131,201,1131),(451,'Castanha',3,4,'','Aterro',NULL,131,201,1141),(461,'',NULL,NULL,'Igual à UE 401','Aterro',NULL,131,201,1151),(471,'Castanha',3,4,'','Aterro',NULL,131,201,1161),(481,'',NULL,NULL,'Saibro','Saibro/rocha',NULL,131,201,1171),(491,'Castanha',3,4,'','Aterro',NULL,131,201,1181),(501,'',NULL,NULL,'Saibro','Saibro/rocha',NULL,131,201,1191),(511,'Castanha',3,4,'','Aterro',NULL,131,201,1201),(521,'',NULL,NULL,'Saibro','Saibro/rocha',NULL,131,201,1211),(531,'Castanha clara',3,4,'','Aterro',NULL,131,201,1221),(541,'',NULL,NULL,'Rocha granítica','Rocha granítica',NULL,131,201,1231),(591,'Castanha escura',2,5,'Aterro com inclusões de materiais de construção de cronologia recente e muitas raízes. Esta sondagem localiza-se na área do antigo logradouro.','Aterro',2,141,211,1301),(601,'Amarela',4,1,'Areia','Depósito de fundo da caleira',8,141,211,1341),(611,'Castanho escuro',3,2,'','Aterro',8,141,211,1351),(621,'Castanha',3,1,'','Aterro',8,141,211,1361),(631,'Castanho escuro',3,4,'','Aterro',NULL,141,211,1381),(641,'Castanha amarelada',3,2,'Camada heterogénea com argamassa amarelada, localizada a Oeste da sondagem.','Piso?',NULL,141,211,1391),(651,'Acinzentada',3,5,'','Aterro',NULL,141,211,1401),(661,'Azinzentada',4,1,'Areia','Enchimento da vala para colocação de tubo em PVC (UE203)',2,141,211,1451),(671,'Castanha',NULL,1,'Aterro localizado a Sul do lintel','Aterro ',NULL,141,211,1461),(681,'Castanho escuro',3,1,'Aterro localizado a Norte do lintel','Aterro',NULL,141,211,1471),(691,'Castanha acinzentada',3,5,'Aterro localizado a Sul do lintel (UE 204)','Aterro',NULL,141,211,1511),(701,'Castanha acinzentada',3,5,'Aterro localizado a Norte do lintel (UE 204)','Aterro',NULL,141,211,1521),(711,'Cinzenta',4,1,'Areia','Enchimento da vala (UE208)',2,141,211,1531),(721,'Castanha',3,4,'','Aterro',NULL,141,211,1571),(731,'Castanha',3,4,'','Aterro',NULL,141,211,1581),(741,'Castanha',3,4,'','Não escavada',NULL,141,211,1601),(751,'Castanho escuro',3,4,'Não escavada','',NULL,141,211,1621),(761,'Azinzentada',4,1,'Areia','Enchimento da vala UE 309',NULL,141,211,1651),(771,'Castanha ',3,1,'','Aterro',NULL,141,211,1681),(781,'Castanho escuro',3,1,'Aterro com materiais de construção recentes. Localiza-se a Este da canalização em granito UE 312.','Aterro',2,141,211,1721),(791,'Castanho escuro',3,1,'Aterro com materiais de construção recentes. Localiza-se a Oeste da canalização em granito UE 312.','Aterro',NULL,141,211,1731),(801,'Castanho escuro',3,5,'Camada localizada a Oeste da canalização UE 312.','',NULL,141,211,1771),(811,'Castanho escuro',3,4,'Camada localizada a Este da canalização UE 312','Aterro',NULL,141,211,1781),(821,'Castanho escuro',3,4,'','Aterro',NULL,141,211,1791),(831,'Azinzentada',4,1,'Areia','Enchimento da UE 308',NULL,141,211,1811),(841,'Castanha amarelada',3,1,'','',2,141,211,1831),(851,'Castanha amarelada',3,1,'','Aterro',NULL,141,211,1851),(861,'Castanha amarelada',3,1,'','Nivelamento para assentar pedra UE 405',8,141,211,1871),(871,'Castanha',3,5,'','Aterro',NULL,141,211,1881),(881,'Castanho escuro',3,5,'','Pavimento de obra?',NULL,141,211,1911),(891,'Castanha',3,1,'','Aterro. Camada de abandono, localiza-se sobre muro UE 414',NULL,141,211,1921),(901,'Castanho ',NULL,NULL,'','Aterro',NULL,141,211,1931),(911,'Castanha clara',3,1,'Heterogénea com muita telha. ','Aterro ',2,81,111,1991),(921,'Castanha escura',3,5,'Localiza-se a Oeste do Muro 1','Segundo aterro composto por telhas',2,81,111,2001),(931,'Castanho escuro',2,5,'Localiza-se a Este do Muro 1','Pavimento?',NULL,81,111,2011),(941,'Castanha',2,1,'Heterogénea, saibrosa com inclusões de pedras e muitos fragmentos de telha. Localiza-se a Oeste do Muro. Lado externo da antiga cozinha.','Aterro',2,81,111,2021),(951,'Castanha',3,5,'Heterogénea, com manchas de saibro. Localiza no interior da antiga cozinha.','Aterro',NULL,81,111,2031),(961,'Amarela',3,1,'Argamassa localizada junto ao Muro 1','Argamassa do muro',NULL,81,111,2041),(971,'Amarela',3,5,'Argamassa junto ao alicerce ','Argamassa',NULL,81,111,2051),(981,'Castanha',NULL,NULL,'','',NULL,81,111,2061),(991,'Cinzenta',3,4,'','',NULL,81,111,2071),(1001,'Acinzentada',3,5,'','',NULL,81,111,2081),(1011,'Castanho escuro',3,5,'Localiza-se do lado Oeste do Muro 1.','',NULL,81,111,2091),(1021,'Preta',3,1,'','',NULL,81,111,2111),(1031,'Castanho ',3,5,'','',NULL,81,111,2121),(1051,'Castanha amarelada',2,1,'','Aterro',NULL,81,261,2241),(1061,'Castanho escuro',3,1,'Localiza-se do lado Este do Muro 1','',NULL,81,261,2251),(1071,'Castanha',3,1,'Localiza-se a Oeste do Muro 1','',2,81,261,2261),(1081,'Castanha amarelada',3,5,'Argamassa e pedras','Derrube',NULL,81,261,2271),(1091,'Castanho escuro',1,5,'','Pavimento?',NULL,81,261,2281),(1101,'Castanha muito escura',3,1,'','',NULL,81,261,2291),(1111,'Castanha acinzentada',3,4,'','',NULL,81,261,2301),(1131,'',NULL,NULL,'Pedras em granito de grande porte e seixos. Localiza-se no lado Oeste do Muro 1.','Antigo leito do rio',NULL,81,261,2321),(1141,'Castanho muito escuro',3,2,'','',6,81,261,2331),(1151,'Castanha',2,4,'','Pavimento exterior à cozinha (?)',2,81,261,2341),(1161,'Castanha',3,1,'Composta por muita telha','Aterro',NULL,81,261,2351),(1171,'Castanha clara',3,1,'Com muitas telhas','Aterro',NULL,81,261,2361),(1181,'Cinzenta',3,4,'','',NULL,81,261,2371),(1191,'',NULL,NULL,'Pedra em granito de pequeno porte, está associado a uma camada onde foi detectado espólio de cronologia medieval.\n','Derrube de antigas estruturas?',NULL,81,261,2381),(1201,'Castanho muito escuro',3,2,'','',6,81,261,2391),(1211,'',NULL,NULL,'Pedras em granito de grande porte e seixos. Localiza-se no lado Este do Muro 1.','Antigo leito do rio',NULL,81,261,2411),(1221,'Castanha amarelada',2,1,'','Pavimento (?)',NULL,81,281,2441),(1231,'Castanho escuro',3,1,'Camada heterogénea','Enchimento da vala do tubo em PVC',NULL,81,281,2451),(1241,'Castanha',3,1,'','Aterro',NULL,81,281,2481),(1251,'Castanha',3,1,'','',NULL,81,281,2491),(1261,'Castanha acinzentada',2,5,'Pequena amostra de camada compacta.','Pavimento (?)',NULL,81,281,2501),(1271,'Castanha',3,1,'Pedra de pequeno porte e terra arenosa. Uma das pedras apresenta corte feito com máquina elétrica. ','Aterro',2,81,281,2551),(1281,'Castanho',3,1,'Camada heterogénea','',NULL,81,281,2561),(1291,'Preta',4,1,'Camada preta composta maioritariamente por carvões. Localiza-se no centro das bases de granito e argamassa UE 912 e 917, bem como à mesma cota do pavimento UE 918.','Lareira',NULL,81,281,2601),(1301,'Cinzenta',2,1,'Camada cinzenta, localizada a norte da Base UE 917. Tem características e cotas similares com as UE\'s 608, 910 e 918.','Pavimento (?)',NULL,81,281,2611),(1311,'Castanho escuro',3,1,'','Lareira ?',NULL,81,281,2621),(1321,'Castanha amarelada',2,1,'Camada composta por pedras de granito e argamassa','Aterro',NULL,81,281,2631),(1331,'Castanha',3,1,'','',NULL,81,281,2641),(1341,'Castanho acinzentada',3,1,'Camada acinzentada de fina espessura, onde se registou uma pequena depressão onde se concentrava a maior parte de carvões. Não conseguimos perceber se esta pequena depressão terá feito parte da estrutura da lareira, ou se obteve esta configuração devido a alguma pedra que faria parte da estrutura.','Piso? Base da lareira ?',NULL,81,281,2671),(1351,'Acinzentada',2,1,'','Preparação de pavimento?',NULL,81,281,2681),(1361,'Castanho escura',3,5,'','',NULL,81,281,2691),(1371,'Castanha',3,4,'','Aterro',NULL,81,281,2701),(1381,'Castanha amarelada',3,1,'','Aterro',NULL,81,281,2711),(1391,'Castanha escura',3,4,'Enchimento da caleira UE 930','Enchimento/camada de abandono da caleira',NULL,81,281,2731),(1401,'Amarela',3,1,'Argamassa localizada junto à UE 917','',NULL,81,281,2751),(1411,'Preta',3,2,'','',NULL,81,281,2761),(1421,'Preta',3,1,'','Depósito natural',NULL,81,281,2791),(1431,'',NULL,NULL,'Pedras em granito de pequeno porte.','Antigo leito do rio? Derrube?',NULL,81,281,2801),(1441,'',NULL,NULL,'Pedras em granito de grande porte e seixos. ','Antigo leito do rio',NULL,81,281,2811),(1451,'',NULL,NULL,'Pedras em granito de grande porte e seixos. ','Antigo leito do rio.',NULL,81,111,2821),(1461,'',NULL,NULL,'Pedras em granito de grande porte e seixos. ','Antigo leito do rio',NULL,81,111,2831),(1471,'Castanha',3,1,'Enchimento da vala','Enchimento da vala',2,81,291,2921),(1481,'Castanha',3,1,'','Aterro',2,81,291,2951),(1491,'Castanha',3,1,'Heterogénea com manchas de argamassa','',NULL,81,291,2961),(1501,'Castanha acinzentada',3,2,'','',NULL,81,291,2981),(1511,'',NULL,NULL,'Aterro de pedras de granito reaproveitadas. Observamos um fragmento de mó.','Aterro',NULL,81,291,3001),(1521,'Castanha escura',3,1,'Camada de terra junta com as pedras reaproveitadas (UE 715)','Aterro',NULL,81,291,3011),(1531,'Castanho escuro',3,1,'Enchimento da caleira UE 718.  ','Enchimento que corresponde ao abandono da caleira.',NULL,81,291,3021),(1541,'Castanha muito clara',3,2,'Base em argila','Base da caleira UE 718',NULL,81,291,3041),(1551,'Castanho escuro',3,4,'','',NULL,81,291,3061),(1561,'Castanha',3,1,'Terra humosa (canteiro de flores) localizada no quadrante SO do sector D.','Terra vegetal do canteiro (alargamento do sector)',NULL,81,291,3071),(1571,'Castanha amarelada',3,1,'','',NULL,81,291,3091),(1581,'Castanha ',3,5,'','',NULL,81,291,3101),(1591,'Castanha clara',3,2,'','Enchimento da vala de fundação do Muro 4',NULL,81,291,3111),(1601,'Castanho escuro',3,2,'','',NULL,81,291,3131),(1611,'Castanho escuro',3,1,'','',NULL,81,291,3141),(1621,'Castanha',2,4,'','Aterro',NULL,161,301,3151),(1631,'Castanha',2,4,'','Aterro',NULL,161,331,3161),(1641,'Amarela',NULL,1,'Saibro','Saibro',NULL,161,331,3171),(1651,'Amarela',NULL,1,'','Saibro',NULL,161,301,3181),(1661,'Castanho escuro',3,1,'Terras movimentadas pela máquina giratória, sem contexto arqueológico','Aterro',NULL,161,341,3191),(1671,'Castanha',2,4,'','Aterro',NULL,161,341,3221),(1681,'Amarela',NULL,1,'Saibro/rocha','',NULL,161,341,3231),(1691,'Castanha',2,4,'','Aterro',NULL,161,351,3241),(1701,'Amarela',NULL,1,'','Saibro/rocha',NULL,161,351,3251),(1711,'Castanha',2,4,'','Aterro',NULL,161,361,3261),(1751,'Castanha',3,NULL,'Enchimento de vala de árvore?','Enchimento de vala de árvore?',2,161,371,3321),(1761,'Castanha',2,4,'Aterro','',NULL,161,371,3341),(1771,'Amarela',NULL,1,'Saibro','Saibro',NULL,161,371,3351),(1781,'Castanha',3,4,'Aterro','Aterro',2,201,321,3361),(1791,'Amarela',NULL,1,'','Saibro',NULL,201,321,3371),(1801,'Castanha',3,4,'','Aterro',2,201,381,3381),(1811,'Amarela',NULL,1,'','Saibro',NULL,201,381,3391),(1821,'Castanho ',3,1,'','Aterro',NULL,201,391,3401),(1831,'Amarela',NULL,1,'','Saibro',NULL,201,391,3471),(1841,'Castanha',3,4,'','Aterro',2,201,401,3481),(1851,'Amarela',NULL,1,'','Saibro',NULL,201,401,3501),(1861,'Castanha',3,4,'','Aterro',2,201,411,3511),(1871,'Amarela',NULL,1,'','Saibro',NULL,201,411,3531),(1881,'Castanha amarelada',3,2,'','',NULL,191,311,3551),(1891,'Castanha escura',3,2,'','Aterro',NULL,191,311,3561),(1901,'Alaranjada',3,2,'','Piso de Obra?',NULL,191,311,3571),(1911,'Castanha',3,4,'Camada heterogénea, com pontos de argamassa e carvão. Está apenas localizada no quadrante NE.','',NULL,191,311,3581),(1921,'Castanha',3,2,'','',NULL,191,311,3601),(1931,'Castanha acinzentada',3,5,'','',NULL,191,311,3611),(1941,'Amarela',3,2,'Argila localizada apenas junto ao corte Oeste','',NULL,191,311,3621),(1951,'Castanha acinzentada',3,5,'','Aterro',NULL,191,311,3651),(1961,'Castanha acinzentada',3,5,'','Aterro',NULL,191,311,3671),(1971,'Castanha',3,4,'','Aterro',2,191,421,3741),(1981,'Amarela',3,2,'Apenas localizada em parte da sondagem','Antigo pavimento?',NULL,191,421,3751),(1991,'Castanho escuro',3,1,'','Aterro junto ao corte Norte',NULL,191,421,3761),(2001,'Castanho escuro',3,4,'Camada de coloração castanha com muitas pedras de granito','',NULL,191,421,3771),(2011,'Castanha clara',3,1,'Localizada apenas no quadrante SO da sondagem. Contém areia','',NULL,191,421,3811),(2021,'Castanho escuro',3,5,'Camada não escavada com muitas pedras. essas pedras poderão ser derrube do Muro UE 207','Aterro',NULL,191,421,3821),(2031,'Castanho escuro',3,5,'Terras arrastadas devido à limpeza da área, sem contexto arqueológico','Aterro',2,191,431,3851),(2041,'Castanha escura',3,4,'Camada de terra localiza a Oeste da sondagem','',NULL,191,431,3861),(2051,'Castanha ',2,2,'','Piso do edifício existente',8,191,431,3901),(2061,'Castanha',3,1,'','Aterro',NULL,191,431,3911),(2071,'Castanha avermelhada',3,4,'','Aterro',NULL,191,431,3921),(2081,'Castanha',3,1,'Camada não escavada','',NULL,191,431,3931),(2091,'Castanho escuro',3,4,'','Aterro',2,211,451,3941),(2101,'Castanha',3,2,'Heterogénea','Preparação de pavimento?',2,211,451,3961),(2111,'Castanha amarelada',3,NULL,'Heterogénea','Aterro',2,211,451,3971),(2121,'Castanho ',3,5,'','Aterro',NULL,211,451,3981),(2131,'Castanho escuro',3,4,'','Aterro',NULL,211,451,3991),(2141,'Castanha acinzentada',NULL,NULL,'','',NULL,211,451,4021),(2151,'Castanha  escura',3,4,'','Camada humosa',2,211,441,4031),(2161,'Castanha ',3,4,'','Aterro',NULL,211,441,4041),(2171,'',NULL,NULL,'','Igual 209',NULL,211,451,4051),(2181,'',NULL,NULL,'','Igual 209',NULL,211,451,4061),(2191,'Castanha ',3,1,'','Aterro de obra',2,211,471,4071),(2201,'Castanha ',3,1,'Camara heterogénea','Aterro obra',2,211,471,4081),(2211,'Castanha ',3,2,'Camada com argila avermelhada','',8,211,471,4091),(2221,'Castanha ',3,5,'','',1,211,471,4101),(2231,'Castanha ',3,5,'','Enchimento da vala de fundação do muro UE 306',2,211,471,4131),(2241,'Castanha  escura',3,5,'','Aterro',2,211,471,4151),(2251,'Castanha ',3,2,'Localizada no quadrante SE','Aterro',2,211,471,4161),(2261,'Castanho escura',3,5,'','Aterro',NULL,211,471,4181),(2271,'Castanha ',3,4,'Aterro','Aterro',2,211,471,4191),(2281,'Castanho escuro',3,4,'','Camada humosa',2,241,571,4201),(2291,'',NULL,NULL,'Rocha granítica','Rocha',NULL,241,571,4211),(2301,'Castanho escuro',3,4,'','Camada humosa',2,241,581,4221),(2311,'Castanha',3,5,'Camada heterogénea, composta terra, bolsas de saibro e areia','Aterro',2,241,581,4231),(2321,'Castanho escuro',3,5,'','Terra vegetal ',5,241,581,4241),(2331,'',NULL,NULL,'Rocha/saibro','Rocha/saibro',NULL,241,581,4251),(2341,'Castanha escura',NULL,4,'','Aterro',NULL,211,471,4291),(2351,'Castanha',3,4,'Heterogénea','',NULL,211,491,4301),(2361,'Castanho escuro',3,3,'Madeira?','',NULL,211,491,4341),(2371,'Castanha',3,4,'','',NULL,211,491,4351),(2381,'Castanha clara',2,5,'','',NULL,211,491,4371),(2391,'Castanha',3,4,'Areia localizada a SE da sondagem','',NULL,211,491,4381),(2401,'Castanha',2,5,'','',NULL,211,491,4401),(2411,'Castanha acinzentada',3,4,'Camada localizada no quadrante NE','',NULL,211,491,4411),(2421,'Castanha clara (amarelada)',2,5,'Observou-se sobre esta camada uma camada muito fina de terra de cor de ferrugem','',NULL,211,491,4431),(2431,'Castanho escuro',3,2,'','',NULL,211,491,4441),(2441,'Castanha',3,1,'Camada composta por pedra miúda, apenas no quadrante SE','',NULL,211,491,4451),(2451,'Castanha',3,1,'Camada muito arenosa, localizada no quadrante NO','',NULL,211,491,4461),(2461,'Castanho escuro',3,1,'Camada junto ao corte Este, composta maioritariamente por pedras.','',NULL,211,491,4471),(2471,'Amarela',2,2,'','',NULL,211,491,4481),(2481,'Castanha acinzentada',2,2,'','',NULL,211,491,4491),(2491,'Castanha ',2,2,'','',NULL,211,491,4501),(2501,'Castanha',3,5,'Heterogénea','',2,211,501,4531),(2511,'Castanha acinzentada',3,4,'','Enchimento da vala de fundação da estrutura.',NULL,211,501,4541),(2521,'Castanha amarelada',3,2,'','Pavimento?',NULL,211,501,4571),(2531,'Castanha amarelada',3,2,'','Pavimento?',NULL,211,501,4581),(2541,'Castanha',3,2,'Enchimento da caleira','Camada de abandono',2,211,501,4591),(2551,'Castanho escuro',3,2,'Enchimento da caleira','Camada de abandono da caleira',2,211,501,4601),(2561,'Castanho escuro',2,2,'Camada de argila ','Fundo/base da caleira',NULL,211,501,4621),(2571,'Castanha',3,1,'Camada a Norte da caleira apresenta espessura de 0.10cm.','camada de nivelamento para receber a UE 606 (pavimento mais recente)?',NULL,211,501,4631),(2581,'Castanho escuro',3,4,'Camada heterogénea do lado Sul da caleira.','',NULL,211,501,4641),(2591,'Castanho escuro',2,4,'Camada com superfície queimada','Pavimento',NULL,211,501,4651),(2601,'Castanho escuro',3,5,'Camada de fina espessura, com inclusões de carvão e cerâmica pintada','',NULL,211,501,4671),(2611,'Castanha acinzentada',3,4,'Localizada apenas no quadrante Este','',NULL,211,501,4681),(2621,'Castanho escuro',3,1,'','Aterro',NULL,211,501,4691),(2631,'',NULL,NULL,'','',NULL,211,511,4701),(2641,'',NULL,NULL,'','',NULL,211,511,4711),(2651,'Castanho escuro',3,5,'','',NULL,211,511,4721),(2661,'Castanha amarelada',3,1,'','',NULL,211,511,4741),(2671,'Castanha clara',3,2,'','Enchimento UE 708',NULL,211,511,4761),(2681,'Castanha clara',3,1,'','',NULL,211,511,4771),(2701,'Castanho ',3,1,'Composta maioritariamente por pedra miúda.','Derrube?',NULL,211,511,4791),(2711,'Castanha',3,2,'','',NULL,211,511,4801),(2721,'Castanha amarelada',3,4,'','',NULL,211,511,4811),(2731,'Castanho escuro',3,4,'','',NULL,211,511,4821),(2741,'Acinzentada',3,5,'','',NULL,211,511,4871),(2751,'Amarela',2,2,'Camada de argila onde se observa pedras embutidas','',NULL,211,511,4881),(2761,'Castanho escuro',3,4,'Camada humosa','Aterro',2,211,541,4891),(2771,'Castanho escuro',3,4,'','',NULL,211,541,4901),(2781,'Castanha clara',3,5,'','',NULL,211,541,4911),(2791,'Castanha clara',3,2,'','',NULL,211,541,4921),(2801,'Alaranjada',3,2,'','',NULL,211,541,4931),(2811,'Castanha',3,4,'','',NULL,211,541,4941),(2821,'Castanha',NULL,2,'','Enchimento da vala',NULL,211,541,4951),(2831,'Castanho ',3,5,'','',NULL,211,541,4971),(2841,'Castanha',3,1,'','',NULL,211,541,4981),(2851,'Castanha acinzentada',3,4,'','',NULL,211,541,4991),(2861,'Castanho escura',3,4,'','',NULL,211,541,5001),(2871,'Castanha',3,1,'','',NULL,211,541,5011),(2881,'Castanho escuro',3,1,'Camada humosa','Aterro',2,211,551,5021),(2891,'Castanha ',3,1,'','Aterro',2,211,551,5031),(2901,'Castanho escuro',3,4,'Localiza-se no lado Sul da estrutura UE 905','Aterro',NULL,211,551,5041),(2911,'Castanha',3,1,'Localiza-se no lado Norte da estrutura UE 905','',NULL,211,551,5051),(2921,'Castanho escuro',2,4,'','',NULL,211,551,5071),(2931,'Castanho escuro',3,4,'','Aterro',NULL,211,551,5081),(2941,'Castanha',3,4,'','',NULL,211,551,5091),(2951,'Castanha clara',3,4,'','',NULL,211,551,5101),(2961,'',NULL,NULL,'','',NULL,211,551,5111),(2971,'Castanha acinzentada',3,4,'','',NULL,211,551,5121),(2981,'Vermelha acastanhada',2,2,'','',NULL,211,551,5131),(2991,'Castanha',3,1,'Com muita pedra miúda','',NULL,211,551,5141),(3001,'',NULL,NULL,'Camada heterogénea, com manchas de argamassa e argila. Muitas pedras, cerâmica, ferro e material de construção de cronologia romana.','Aterro',NULL,211,551,5151),(3011,'Castanha acinzentada',3,4,'preenche a vala, localizada a Norte da sondagem.','Camada de enchimento',NULL,211,551,5161),(3021,'Castanha amarelada',3,1,'','',NULL,211,551,5181),(3031,'Castanha',3,4,'Camada de terra queimada, com muitos pontos de carvão e vestígios de cerâmica moída.','',NULL,211,551,5201),(3041,'Castanha acinzentada',3,1,'','Enchimento da vala UE 916',NULL,211,551,5211),(3051,'Castanha acinzentada',3,4,'Camada com tijoleiras, sem posição definida.','Aterro',NULL,211,551,5221),(3061,'Castanha amarelada',3,2,'Pavimento?','Pavimento?',NULL,211,551,5241),(3071,'Castanho escuro',3,4,'Camada humosa','Aterro',2,211,561,5261),(3081,'',NULL,NULL,'Camada heterogénea ','Aterro',2,211,561,5271),(3091,'Castanha',3,4,'','Aterro',2,211,561,5291),(3101,'Castanho escuro',3,4,'','',2,211,561,5301),(3111,'Castanha',3,4,'','Aterro',NULL,211,561,5311),(3121,'',NULL,NULL,'','',NULL,211,561,5321),(3131,'Castanho escuro',3,1,'','Aterro? Derrube?',NULL,211,561,5331),(3141,'Castanha amarelada',3,1,'Camada saibrosa localizada a Oeste','',NULL,211,561,5341),(3151,'Castanha avermelhada',2,2,'','',NULL,211,561,5351),(3161,'Amarela acinzentada',2,2,'','',NULL,211,561,5361),(3171,'Castanha acinzentada',3,5,'Tegulas junto ao muro depositadas aleatoriamente','',NULL,211,561,5371),(3181,'Castanho escuro',3,4,'','',NULL,211,561,5381),(3191,'',NULL,NULL,'','',NULL,211,561,5391),(3201,'Castanho escuro',2,5,'Camada com pouca espessura (0.10/0.15m).','Pavimento?',NULL,211,561,5401),(3211,'Castanha',3,1,'','',NULL,211,561,5411),(3221,'Castanha acinzentada',3,4,'','',NULL,211,561,5421),(3231,'Castanha',3,1,'Semelhante à UE 1014 e 1015','Enchimento de vala',NULL,211,561,5431),(3241,'Castanho escuro',3,2,'','',NULL,211,561,5441),(3251,'Castanho escuro',3,4,'','',NULL,211,601,5491),(3261,'Castanha',3,5,'','',NULL,211,601,5501),(3271,'Castanha',3,1,'Camada constituída maioritariamente por pedras miúda.','Derrube?',NULL,211,601,5511),(3281,'Castanha',3,1,'','',NULL,211,601,5521),(3291,'Castanha acinzentada',3,1,'','',NULL,211,601,5531),(3301,'Castanha amarelada',3,1,'','Enchimento da estrutura',NULL,211,601,5541),(3311,'Castanha',3,1,'','',NULL,211,601,5551),(3321,'Castanha acinzentada',2,4,'','Pavimento',NULL,211,601,5581),(3331,'Castanho escuro',3,4,'','Aterro',2,251,591,5611),(3341,'Castanho escuro',3,5,'Nesta camada recolhemos espólio de época Contemporânea, Medieval e Romana. O que nos leva a concluir ser uma camada de revolvimento.','Enchimento da vala de saneamento',2,251,591,5631),(3351,'Castanho escuro',3,4,'','',NULL,251,591,5651),(3361,'Castanha clara',4,1,'Areia','Camada de lixiviação?',NULL,251,591,5661),(3371,'Castanho escuro',3,5,'Camada com inclinação para Sul','',NULL,251,591,5671),(3381,'Castanha',3,4,'Camada heterogénea','',2,251,631,5691),(3391,'Castanha',3,1,'','Enchimento da vala do tubo de saneamento',NULL,251,631,5701),(3401,'Castanho escuro',3,5,'','',NULL,251,631,5741),(3411,'Castanha',4,1,'Cascalho que se localizava apenas por baixo do tubo UE 204','',NULL,251,631,5761),(3421,'Castanha clara',3,1,'','Aterro',NULL,251,631,5771),(3431,'Castanha',3,1,'','',NULL,251,631,5781),(3441,'',NULL,NULL,'','',NULL,251,631,5791),(3451,'Castanha',3,4,'','Enchimento da Fossa 1',3,161,641,5801),(3471,'Castanha',3,4,'','Enchimento da Fossa 2',3,161,651,5851),(3481,'Castanha',3,4,'Recolha de amostra','Enchimento Fossa 3',3,161,661,5871),(3491,'Castanha',3,4,'','Enchimento da Fossa 4',3,161,671,5891),(3511,'Castanha escura',3,4,'','Enchimento da Fossa 5',3,161,691,5921),(3521,'Castanha escura',3,4,'','Enchimento da Fossa 6',3,161,701,5941),(3531,'Castanha',3,4,'','Enchimento Fossa 7',3,161,711,5961),(3541,'Castanho escuro',3,4,'','Enchimento Fossa 9',3,161,731,5981),(3551,'Castanho escuro',3,4,'','Enchimento da Fossa 10',3,161,741,6001),(3561,'Castanha',3,4,'','Enchimento Fossa 11',3,161,751,6021),(3571,'Castanha',3,4,'','Enchimento Fossa 12',3,161,761,6041),(3581,'Castanho ',3,1,'','',5,271,771,6061),(3591,'',NULL,NULL,'','Rocha',NULL,271,771,6071),(3601,'Castanho ',3,1,'','',5,271,781,6081),(3611,'',NULL,NULL,'Rocha','Rocha',NULL,271,781,6091),(3621,'Castanho escura',3,1,'Camada da S2A','Camada humosa',2,81,91,6101),(3631,'Amarelada',3,2,'','Argamassa',NULL,81,91,6111),(3641,'Castanho ',3,1,'','',NULL,81,91,6121),(3651,'Castanho escura',3,1,'','',NULL,81,91,6131),(3661,'Alaranjada',3,2,'','Aterro',2,81,91,6151),(3671,'Castanho escura',3,1,'Camada da Sondagem 2B','Camada humosa',2,81,91,6171),(3681,'Alaranjada',3,2,'','',NULL,81,91,6181),(3691,'Castanho ',3,4,'','Aterro',NULL,81,91,6191),(3701,'Castanho ',3,4,'','Aterro',NULL,81,91,6201),(3711,'Castanho ',3,5,'','Aterro',NULL,81,91,6211),(3721,'Castanho ',3,5,'','Aterro',NULL,81,91,6231),(3731,'Castanho ',3,4,'Heterogénea','',NULL,81,91,6241),(3741,'Castanho escura',3,4,'','',NULL,81,91,6251),(3751,'Castanho escura',3,4,'','',NULL,81,91,6261),(3761,'Castanha acinzentada',NULL,NULL,'','',NULL,81,91,6271),(3771,'',NULL,NULL,'Saibro/rocha','Saibro/rocha',NULL,81,91,6291),(3781,'',4,1,'Areia','Base para assentar paralelo',2,81,791,6311),(3791,'Castanho amarelada',2,1,'Camada saibrosa endurecida','Nível de circulação antes da existência do paralelo',2,81,791,6321),(3801,'Castanho escura',3,5,'Camada heterogénea, com materiais de construção à mistura.','Aterro',NULL,81,791,6331),(3811,'Castanho escura',3,4,'Inclusão de muita telha','Aterro',NULL,81,791,6341),(3821,'Castanha clara',3,4,'','',NULL,81,791,6351),(3831,'Castanha',3,5,'','Enchimento da vala de fundação do muro  Oeste da Capela-mor',NULL,81,791,6371),(3841,'Castanho muito escuro',3,4,'terra preta queimada','',NULL,81,791,6391),(3851,'Castanha clara',1,5,'','',NULL,81,791,6401),(3861,'Amarela',4,1,'','Areia para revestir os tubos',2,81,791,6421),(3871,'Castanha',3,5,'','Aterro',NULL,81,791,6451),(3881,'',NULL,NULL,'Igual à 305','',NULL,81,791,6461),(3891,'Alaranjada',3,5,'Localiza-se a Oeste da sondagem','Aterro',NULL,81,791,6471),(3901,'Castanha',3,5,'','',NULL,81,791,6501),(3911,'Castanho ',5,1,'','Aterro de obra',2,221,521,6521),(3921,'Castanho ',3,5,'','Camada humosa',2,221,521,6531),(3931,'Amarela',3,2,'Saibro','Base para canalização',2,221,521,6561),(3941,'Castanho ',3,5,'','Aterro',2,221,521,6581),(3951,'',NULL,NULL,'Saibro/rocha','Saibro/rocha',NULL,221,521,6641),(3961,'Castanho ',5,1,'Aterro actual colocado em obra','Aterro',2,221,801,6651),(3971,'Castanho escura',3,4,'Camada heterogénea com muitas pedras e material de construção.','Aterro',2,221,801,6661),(3981,'Castanho escura',2,4,'','Aterro',NULL,221,801,6711),(3991,'Castanho ',3,5,'','Aterro',NULL,221,801,6721),(4001,'Castanho ',NULL,NULL,'Vestígios de tronco de árvore','',NULL,221,801,6741),(4011,'',NULL,NULL,'Saibro/rocha','Saibro/rocha',NULL,221,801,6791),(4021,'Acinzentada',3,4,'Camada de abandono da caleira','Enchimento da caleira',2,221,801,6801),(4031,'Castanho ',5,1,'Aterro actual de obra','Aterro actual de obra',2,221,811,6811),(4041,'Castanho ',3,4,'Camada heterogénea, com argamassa de argila avermelhada junto ao corte Oeste, e vestígios de canalização mais recente no corte Sul.','Aterro',2,221,811,6831),(4051,'Castanho ',3,2,'','Aterro',NULL,221,811,6851),(4061,'Castanho ',3,5,'','Aterro',NULL,221,811,6871),(4071,'Castanho ',3,6,'Camada de enchimento da caleira','Camada de abandono',2,221,811,6881),(4081,'Castanho ',2,1,'Aterro de obra','Aterro de obra actual',2,221,821,6901),(4091,'Castanho escura',3,4,'Aterro','Aterro',NULL,221,821,6911),(4101,'Castanho ',3,5,'','Enchimento da vala de fundação do Muro',NULL,221,821,6921),(4111,'Castanho ',3,5,'Aterro','Aterro',NULL,221,821,6951),(4121,'Castanho ',5,1,'Aterro em saibro','Aterro em saibro',2,221,831,6961),(4131,'Castanho ',5,1,'Aterro de obra','Aterro de obra',2,221,831,6971),(4141,'Castanho ',3,5,'Aterro','Aterro',2,221,831,6981),(4151,'Amarela',3,2,'Argamassa sobre o capeamento','Argila sobre o capeamento',NULL,221,831,6991),(4161,'Castanho ',3,5,'aterro','Aterro',NULL,221,831,7041),(4171,'Castanho escura',3,1,'Enchimento da caleira','Camada de abandono',2,221,831,7051),(4181,'Castanho escura',3,5,'Enchimento da caleira','',NULL,221,831,7061),(4191,'Castanha clara/bege',3,2,'Argila','Base/fundo da caleira',8,221,831,7081),(4201,'Castanho ',3,1,'Enchimento da caleira recente','Enchimento',2,221,831,7111),(4211,'Castanho ',1,1,'Heterogénea com muito material de construção de cronologia recente.','Aterro',2,221,841,7121),(4221,'Amarelada',5,1,'Aterro de pedras, betão e argamassa','Enchimento da vala do muro de limite entre a  propriedade e a estrada, localizado a Este.',2,221,841,7131),(4231,'Castanho escuro',3,5,'Aterro','Aterro',NULL,221,841,7141),(4241,'Acinzentada',3,6,'Terra e areia','Enchimento da caleira. Camada de abandono',2,221,841,7171),(4251,'Castanho escura',3,5,'Camada de enchimento da caleira','Enchimento',2,221,841,7191),(4261,'Acinzentada',3,2,'Base da caleira (?)','Base da caleira (?)',8,221,841,7201),(4271,'Castanho escura',3,5,'Aterro','Aterro',NULL,221,841,7211),(4281,'Castanha clara',3,5,'Camada de coloração castanha. A parte superior da camada apresenta carvão e cerâmica moída','',NULL,221,841,7221),(4291,'',NULL,NULL,'Saibro/rocha','',NULL,221,841,7231),(4301,'Castanho ',5,1,'Camada heterogénea. Inclusão de material de construção: tijolos partidos e saibro.','Aterro para nivelar o logradouro. Inclusões de tijolos partidos e saibro.',2,221,851,7241),(4311,'Castanho escura',3,5,'','Aterro',NULL,221,851,7251),(4321,'Castanho acinzentada',3,5,'Camada heterogénea, pouca espessura. Localizada na S6 e S7.','',NULL,221,851,7261),(4331,'Castanho ',3,5,'','',NULL,221,851,7271),(4341,'Castanho ',3,5,'','Aterro',NULL,221,851,7301),(4351,'',NULL,NULL,'Saibro/Rocha','',NULL,221,851,7311),(4361,'Castanho ',5,5,'Camada heterogénea. Inclusão de material de construção: tijolos partidos e saibro.','Aterro para nivelar o logradouro. Inclusões de tijolos',2,221,861,7321),(4371,'Amarela',3,1,'Saibro','Enchimento da vala de fundação da casa localizada a Oeste. ',2,221,851,7331),(4381,'Amarela',NULL,NULL,'Saibro ','Saibro colocado em obra para regularizar o pavimento e facilitar entrada dos camiões. ',2,221,851,7351),(4391,'Amarela',NULL,NULL,'','Aterro em saibro colocado em obra, para nivelar o pavimento para facilitar entrada de camiões.',2,221,861,7361),(4401,'Castanho ',3,5,'','Aterro',NULL,221,861,7371),(4411,'Castanho ',3,5,'','Aterro',NULL,221,861,7391),(4421,'Amarela',NULL,NULL,'Saibro','Enchimento da vala de fundação da casa localizada a Oeste.',2,221,861,7401),(4431,'',NULL,NULL,'Saibro/rocha','',NULL,221,861,7421),(4441,'Amarela',5,1,'Aterro em saibro.','Aterro em saibro colocado em obra, para nivelar o pavimento e facilitar entrada de camiões.',2,221,871,7431),(4451,'Castanho ',3,4,'Camada heterogénea com materiais de construção','Aterro',2,221,871,7441),(4461,'Amarela',3,1,'Saibro','Enchimento da vala de fundação do edifício localizado a Oeste.',2,221,871,7451),(4471,'Castanho escuro',3,2,'','Aterro',NULL,221,871,7471),(4481,'Castanho ',3,5,'','Aterro',NULL,221,871,7491),(4491,'Amarela',NULL,NULL,'Saibro/rocha','',NULL,221,871,7501),(4501,'Amarela',3,4,'Aterro com saibro e pedras. Inclusões de materiais recentes: plástico, tijolos, vidros de garrafa.','Aterro',2,81,901,7521),(4511,'Castanho muito escuro',1,1,'','',NULL,81,901,7531),(4521,'Preta',3,5,'','',5,81,901,7541),(4531,'Castanho ',4,1,'Areão','Areão',5,81,901,7551),(4541,'Castanho ',3,4,'Camada heterogénea, com manchas pretas e bocados de argamassa. Esta poderá ser proveniente das paredes.','Aterro',NULL,81,911,7571),(4551,'Preta',3,5,'','',NULL,81,911,7581),(4561,'Castanho ',3,1,'Camada heterogénea com nódulos de argamassa.','Enchimento da vala 1103',8,81,911,7601),(4571,'Amarela',3,2,'Camada pouco espessa','',NULL,81,911,7621),(4581,'Preta',3,5,'','Aterro',NULL,81,911,7631),(4591,'Castanho ',3,2,'Camada heterogénea.','',NULL,81,911,7661),(4601,'Preta',3,5,'','',NULL,81,911,7671),(4611,'Castanha ',3,5,'','',NULL,81,911,7701),(4621,'Azinzentada',3,2,'Poderá corresponder a um antigo pavimento associado ao muro UE 1114.','Pavimento?',NULL,81,911,7711),(4631,'Castanho ',3,4,'','Enchimento da vala UE 1117',NULL,81,911,7731),(4641,'Castanha avermelhada',3,2,'','miolo do muro UE 1114',NULL,81,911,7741),(4651,'Castanho ',3,4,'Camada removida em acompanhamento.','Aterro',2,161,921,7751),(4661,'Castanha escura',3,5,'Aterro removido em acompanhamento arqueológico dentro do edifício.','Aterro',8,211,931,7761),(4671,'Castanha escura',3,5,'Aterro removido em âmbito de acompanhamento arqueológico na zona do logradouro','Aterro',NULL,211,931,7771),(4681,'',NULL,NULL,'','',NULL,81,881,7781),(4691,'',NULL,NULL,'','',NULL,81,881,7791),(4701,'castanha',3,1,'','Aterro',NULL,211,961,7801),(4711,'Castanha ',3,1,'','Aterro',NULL,211,961,7811),(4721,'Castanha',3,1,'','Aterro',NULL,211,961,7821),(4731,'Castanha',3,4,'','',NULL,211,961,7831),(4741,'Castanha',3,1,'Grande interferência devido a raíz ','',NULL,211,961,7841),(4751,'Castanha acinzentada',3,5,'','',NULL,211,961,7851),(4761,'Castanha amarelada',3,4,'Pontos de argila amarelada/alaranjada','',NULL,211,961,7861),(4771,'Castanha ',3,1,'Composta por muito cascalho\nEncosta ao muro. Poderá corresponder a uma camada de abandono do muo (?)','',NULL,211,961,7871),(4781,'Castanha clara',2,1,'Maioritariamente composta por cascalho. localiza-se na parte Sul da sondagem e apresenta uma pendente para Norte','',NULL,211,961,7881),(4791,'Castanha escura',3,1,'','Aterro',NULL,211,951,7901),(4801,'Castanha ',3,5,'Observam-se algumas bolsas de argila','',NULL,211,951,7911),(4811,'Castanha escura',3,4,'','Aterro',NULL,211,971,7921),(4821,'Castanha clara',3,4,'','Aterro',NULL,211,971,7931),(4831,'Castanha clara',3,1,'Heterogénea','Aterro',NULL,211,971,7941),(4841,'Castanha clara',1,1,'Camada heterogénea, vestigíos do que poderá ser cal.','Pavimento?',NULL,211,971,7951),(4851,'Castanha escura',1,1,'','',NULL,211,971,7961),(4861,'Amarelado',3,1,'','',NULL,211,971,7971),(4871,'Castanha',3,1,'','',NULL,211,971,7981),(4881,'Castanha clara',2,4,'Camada superficial da zona de obra. Igual à UE 2002 da S20.','Aterro ',2,211,981,7991),(4891,'Castanha ',2,4,'Nenhum material de interesse arqueológico, apenas fragmento de mola em plástico.','Aterro',2,211,981,8001),(4901,'Castanha clara',1,2,'Nenhum material de interesse arqueológico','Aterro',NULL,211,981,8011),(4911,'Castanha ',3,4,'','Aterro',NULL,211,981,8021),(4921,'Castanha escura',3,4,'','',NULL,211,981,8051),(4931,'Castanha',3,5,'Ultima camada escavada na S15','',NULL,211,991,8061),(4941,'Castanha ',3,1,'Ver S14','Enchimento da vala de saque do muro.',NULL,211,991,8071),(4951,'Castanha escura',3,1,'','',NULL,211,991,8081),(4961,'Castanha amarelada',2,2,'','',NULL,211,991,8091),(4971,'Castanha ',2,4,'Camada superficial proveniente de outras sondagens','Aterro',NULL,211,1001,8101),(4981,'Castanha clara',2,4,'Ver de2senho da S12 e 16','',NULL,211,1001,8111),(4991,'',NULL,NULL,'Ver desenhos S 12 e 14','',NULL,211,1001,8121),(5001,'Castanha',2,5,'provavelmente igual á UE 2001 e 1902','',NULL,211,1001,8131),(5011,'Castanha acinzentada',3,2,'','',NULL,211,1001,8141),(5021,'',NULL,NULL,'Aterro proveniente de outras sondagens','',NULL,211,1011,8151),(5031,'Castanha escura',NULL,5,'','',NULL,211,1011,8161),(5041,'Castanha clara',1,2,'','Pavimento?',NULL,211,1011,8171),(5051,'Castanha ',2,5,'Muita telha','',NULL,211,1011,8181),(5061,'Castanha escura',2,2,'Camada queimada','Pavimento??',NULL,211,1011,8191),(5071,'',NULL,NULL,'','',NULL,211,1011,8201),(5081,'',NULL,NULL,'','',NULL,211,1011,8211),(5091,'Castanha clara',3,1,'','Aterro',NULL,211,1021,8221),(5101,'Castanha escura',3,1,'','',NULL,211,1021,8241),(5111,'Castanha ',3,5,'Bolsa de argila','',NULL,211,1021,8251),(5121,'Castanha ',2,2,'','',NULL,211,1021,8261),(5131,'Castanha amarelada',2,4,'Areia concetrada mais no quadrante NO','',NULL,211,1021,8271),(5141,'Castanha acinzentada',2,1,'Muitos calhaus','',NULL,211,1021,8281),(5151,'Castanha escura',3,5,'Camada de grao fino com carvão','',NULL,211,1021,8291),(5161,'Castanha ',3,2,'','',NULL,211,1021,8301),(5171,'Castanha clara',3,1,'Quadrante SO. Ver S10','',NULL,211,1021,8311),(5181,'Castanha avermelhada',2,5,'','',NULL,211,1021,8321),(5191,'Castanha acinzentada',2,2,'Não escavada','',NULL,211,1021,8331),(5201,'Castanha clara',2,2,'Igual 2102','',NULL,211,1031,8341),(5211,'Castanha escura acinzentada',3,5,'Semelhante à UE 2103','',NULL,211,1031,8351),(5221,'Castanha ',2,2,'Heterogénea','',NULL,211,1031,8361),(5231,'Castanha ',2,2,'Muita quantidade de material construção. Bolsas de areia','Derrube',NULL,211,1031,8371),(5241,'Castanha ',2,2,'Machas amareladas de areia e carvão. Camada apresenta ter sido queimada','',NULL,211,1031,8381),(5251,'Castanha ',2,1,'','',NULL,211,1041,8391),(5261,'Castanha amarelada',2,4,'Presença de muitos calhaus. Sobre esta camada de calhaus existia uma lentícula, de espessura fina, de coloração castanha muito compacta.','Pavimento',NULL,211,1041,8401),(5271,'Castanha amarelada',1,1,'','Argamassa?',NULL,211,1041,8411),(5281,'Castanha clara',2,2,'','',NULL,211,1041,8421),(5291,'Amarela',3,1,'Tipo areia','',NULL,211,1041,8431),(5301,'Castanha escura',3,4,'Muito material de construção','',NULL,211,1041,8441),(5311,'Castanha ',NULL,NULL,' Camada heterogénea. Ver desenho S16 para verificar sobreposição.','',NULL,211,1051,8451),(5321,'Castanha clara',2,4,'','',NULL,211,1051,8461),(5331,'Castanha',1,1,'Camada superficial proveniente de outras sondagens','Aterro',NULL,211,1061,8471),(5341,'Castanho',2,4,'','',NULL,211,1061,8481),(5351,'Castanha clara',2,2,'','',NULL,211,1061,8491),(5361,'Castanho amarelado',3,1,'Localiza-se maioritariamente junto ao muro.','',NULL,211,1061,8501),(5371,'Preta',2,5,'Sedimento queimado','',NULL,211,1061,8511),(5381,'Castanho claro',3,2,'Miolo ','Miolo do muro UE 1025',NULL,211,1061,8521),(5391,'Castanha ',3,2,'','',NULL,211,1061,8531),(5401,'Castanho escura',3,5,'Camada de grão fino, homogénea','Enchimento de estrutura negativa',NULL,251,631,8541),(5431,'Castanha ',3,4,'','',NULL,101,151,8581);
/*!40000 ALTER TABLE `sedimentar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sedimentar_has_inclusões`
--

DROP TABLE IF EXISTS `sedimentar_has_inclusões`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sedimentar_has_inclusões` (
  `Sedimentar_id_sedimentar` int(11) NOT NULL,
  `Inclusões_id_inclusão` int(11) NOT NULL,
  PRIMARY KEY (`Sedimentar_id_sedimentar`,`Inclusões_id_inclusão`),
  KEY `fk_Sedimentar_has_Inclusões_Inclusões1_idx` (`Inclusões_id_inclusão`),
  KEY `fk_Sedimentar_has_Inclusões_Sedimentar1_idx` (`Sedimentar_id_sedimentar`),
  CONSTRAINT `fk_Sedimentar_has_Inclusões_Inclusões1` FOREIGN KEY (`Inclusões_id_inclusão`) REFERENCES `inclusões` (`id_inclusão`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sedimentar_has_Inclusões_Sedimentar1` FOREIGN KEY (`Sedimentar_id_sedimentar`) REFERENCES `sedimentar` (`id_sedimentar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sedimentar_has_inclusões`
--

LOCK TABLES `sedimentar_has_inclusões` WRITE;
/*!40000 ALTER TABLE `sedimentar_has_inclusões` DISABLE KEYS */;
INSERT INTO `sedimentar_has_inclusões` VALUES (251,1),(301,1),(331,1),(611,1),(631,1),(641,1),(651,1),(691,1),(821,1),(901,1),(1001,1),(1061,1),(1071,1),(1141,1),(1201,1),(1391,1),(1501,1),(1531,1),(1781,1),(1821,1),(1931,1),(2111,1),(2131,1),(2201,1),(2241,1),(2351,1),(2381,1),(2421,1),(2431,1),(2601,1),(2661,1),(2781,1),(2791,1),(2801,1),(2811,1),(2841,1),(2851,1),(2881,1),(2901,1),(2931,1),(2941,1),(2951,1),(2971,1),(3031,1),(3051,1),(3071,1),(3091,1),(3101,1),(3171,1),(3211,1),(3291,1),(3301,1),(3361,1),(3451,1),(3471,1),(3661,1),(3741,1),(4321,1),(4601,1),(4651,1),(4701,1),(4731,1),(4791,1),(4811,1),(4821,1),(4831,1),(4841,1),(4851,1),(4861,1),(4871,1),(5001,1),(5311,1),(5321,1),(51,3),(71,3),(181,3),(191,3),(201,3),(261,3),(271,3),(341,3),(391,3),(431,3),(491,3),(511,3),(591,3),(621,3),(641,3),(691,3),(781,3),(851,3),(911,3),(921,3),(931,3),(941,3),(1001,3),(1151,3),(1161,3),(1171,3),(1271,3),(1351,3),(1361,3),(1751,3),(2091,3),(2131,3),(2161,3),(2421,3),(2621,3),(2791,3),(2801,3),(2941,3),(2951,3),(3051,3),(3081,3),(3111,3),(3151,3),(3161,3),(3171,3),(3211,3),(3291,3),(3301,3),(3331,3),(3341,3),(3431,3),(3701,3),(3751,3),(3801,3),(3811,3),(3911,3),(4211,3),(4301,3),(4451,3),(4661,3),(4671,3),(4701,3),(4861,3),(4881,3),(4891,3),(4911,3),(5001,3),(5031,3),(5051,3),(5061,3),(5101,3),(5121,3),(5131,3),(5171,3),(5181,3),(5211,3),(5231,3),(5251,3),(5261,3),(5281,3),(5301,3),(5311,3),(5321,3),(5341,3),(5351,3),(5371,3),(5381,3),(31,11),(2041,11),(2281,11),(3211,11),(5131,11),(111,21),(121,21),(131,21),(191,21),(2211,21),(4761,21),(4801,21),(4931,21),(5111,21),(5301,21),(121,31),(181,31),(611,31),(901,31),(951,31),(1001,31),(1281,31),(1331,31),(1351,31),(1361,31),(1481,31),(1501,31),(1611,31),(2001,31),(2351,31),(2621,31),(2651,31),(2681,31),(2841,31),(4521,31),(4661,31),(3081,41),(3341,41),(1281,51),(1381,51),(1491,51),(1571,51),(1921,51),(2061,51),(2101,51),(2351,51),(2821,51),(3381,51),(4451,51),(4541,51),(4561,51),(4581,51),(4631,51),(4921,51),(251,61),(301,71),(301,81),(2381,81),(2851,81),(391,101),(431,101),(471,101),(491,101),(511,101),(591,101),(621,101),(1061,101),(1071,101),(1151,101),(1481,101),(1711,101),(1751,101),(1781,101),(1791,101),(1801,101),(1841,101),(2151,101),(2161,101),(2281,101),(2311,101),(2321,101),(2761,101),(2791,101),(2831,101),(2871,101),(2881,101),(3051,101),(3081,101),(3091,101),(3101,101),(3641,101),(3671,101),(3731,101),(3921,101),(3981,101),(4251,101),(4281,101),(4511,101),(4701,101),(4711,101),(4741,101),(4811,101),(4831,101),(4841,101),(5311,101),(631,151),(1291,151),(1311,151),(1341,151),(1581,151),(1921,151),(2101,151),(2591,151),(2601,151),(2741,151),(2791,151),(2851,151),(2871,151),(3031,151),(3171,151),(3341,151),(3351,151),(3701,151),(3841,151),(4301,151),(4321,151),(4471,151),(4751,151),(4921,151),(5011,151),(5031,151),(5051,151),(5061,151),(5141,151),(5161,151),(5211,151),(5301,151),(5371,151),(631,161),(1071,161),(1781,161),(1821,161),(1931,161),(2381,161),(2661,161),(2781,161),(2841,161),(2851,161),(4791,161),(5311,161),(1371,171),(1391,171),(1531,171),(1481,181),(1491,181),(1531,181),(1601,181),(1781,201),(1821,201),(2231,201),(2271,201),(2541,201),(2761,201),(4251,201),(4881,201),(5251,201),(1781,211),(1821,221),(1931,231),(2241,241),(2311,251),(2851,261),(5311,261),(2851,271),(3041,271),(3101,271),(3111,271),(3131,271),(3161,271),(3211,271),(3221,271),(3231,271),(3291,271),(3321,271),(3331,271),(3381,271),(3391,271),(3431,271),(3551,271),(4561,271),(4661,271),(4671,271),(4701,271),(4721,271),(4771,271),(4781,271),(4841,271),(4851,271),(4871,271),(4881,271),(4891,271),(4901,271),(4911,271),(4981,271),(5001,271),(5091,271),(5101,271),(5121,271),(5131,271),(5141,271),(5161,271),(5171,271),(5211,271),(5231,271),(5251,271),(5261,271),(5301,271),(5341,271),(5391,271),(2871,281),(2971,291),(2981,301),(2991,301),(3581,301),(3601,301),(4611,301),(4951,301),(5031,301),(5051,301),(5281,301),(5371,301),(3031,311),(3171,311),(3201,321),(4251,331),(3341,341);
/*!40000 ALTER TABLE `sedimentar_has_inclusões` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sondagem`
--

DROP TABLE IF EXISTS `sondagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sondagem` (
  `id_sondagem` int(11) NOT NULL AUTO_INCREMENT,
  `nome_sondagem` varchar(100) NOT NULL,
  `Sítio_id_sítio` int(11) NOT NULL,
  `Utilizador_id_utilizador` int(11) NOT NULL,
  `id_intervenção` int(11) NOT NULL,
  PRIMARY KEY (`id_sondagem`),
  KEY `fk_Sondagem_Sítio1_idx` (`Sítio_id_sítio`),
  KEY `fk_Sondagem_Utilizador1_idx` (`Utilizador_id_utilizador`),
  KEY `fk_Sondagem_Intervenção1_idx` (`id_intervenção`),
  CONSTRAINT `fk_Sondagem_Intervenção1` FOREIGN KEY (`id_intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sondagem_Sítio1` FOREIGN KEY (`Sítio_id_sítio`) REFERENCES `sítio` (`id_sítio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Sondagem_Utilizador1` FOREIGN KEY (`Utilizador_id_utilizador`) REFERENCES `utilizador` (`id_utilizador`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1091 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sondagem`
--

LOCK TABLES `sondagem` WRITE;
/*!40000 ALTER TABLE `sondagem` DISABLE KEYS */;
INSERT INTO `sondagem` VALUES (71,'Sondagem 1',81,1,81),(91,'Sondagem 2',81,1,81),(111,'Sondagem 8_Sector A',81,1,81),(131,'Sondagem 1',101,1,101),(141,'Sondagem 2',101,1,101),(151,'Sondagem 3',101,1,101),(161,'Sondagem 1',111,1,111),(201,'Sondagem 1',131,1,131),(211,'Sondagem 1',141,1,141),(231,'Sondagem 2',141,1,141),(241,'Sondagem 3',141,1,141),(251,'Sondagem 4',141,1,141),(261,'Sondagem 6_Sector B',81,1,81),(281,'Sondagem 9_Sector C',81,1,81),(291,'Sondagem 7_Sector D',81,1,81),(301,'Sondagem 1',161,1,161),(311,'Sondagem 1',191,1,191),(321,'Sondagem 1',201,1,201),(331,'Sondagem 2',161,1,161),(341,'Sondagem 3',161,1,161),(351,'Sondagem 4',161,1,161),(361,'Sondagem 5',161,1,161),(371,'Sondagem 6',161,1,161),(381,'Sondagem 2',201,1,201),(391,'Sondagem 3',201,1,201),(401,'Sondagem 4',201,1,201),(411,'Sondagem 5',201,1,201),(421,'Sondagem 2',191,1,191),(431,'Sondagem 3',191,1,191),(441,'Sondagem 1',211,1,211),(451,'Sondagem 2',211,1,211),(471,'Sondagem 3',211,1,211),(481,'Sondagem 4',211,1,211),(491,'Sondagem 5',211,1,211),(501,'Sondagem 6',211,1,211),(511,'Sondagem 7',211,1,211),(521,'Sondagem 1',221,1,221),(541,'Sondagem 8',211,1,211),(551,'Sondagem 9',211,1,211),(561,'Sondagem 10',211,1,211),(571,'Sondagem 1',241,1,241),(581,'Sondagem 2',241,1,241),(591,'Sondagem 1',251,1,251),(601,'Sondagem 11',211,1,211),(611,'Sondagem 12',211,1,211),(621,'Sondagem 13',211,1,211),(631,'Sondagem 2',251,1,251),(641,'Fossa 1',161,1,161),(651,'Fossa 2',161,1,161),(661,'Fossa 3',161,1,161),(671,'Fossa 4',161,1,161),(691,'Fossa 5',161,1,161),(701,'Fossa 6',161,1,161),(711,'Fossa 7',161,1,161),(731,'Fossa 9',161,1,161),(741,'Fossa 10',161,1,161),(751,'Fossa 11',161,1,161),(761,'Fossa 12',161,1,161),(771,'Sondagem 1',261,1,271),(781,'Sondagem 2',261,1,271),(791,'Sondagem 3',81,1,81),(801,'Sondagem 2',221,1,221),(811,'Sondagem 3',221,1,221),(821,'Sondagem 4',221,1,221),(831,'Sondagem 5',221,1,221),(841,'Sondagem 6',221,1,221),(851,'Sondagem 7',221,1,221),(861,'Sondagem 8',221,1,221),(871,'Sondagem 9',221,1,221),(881,'Sondagem 4',81,1,81),(891,'Sondagem 5',81,1,81),(901,'Sondagem 10',81,1,81),(911,'Sondagem 11',81,1,81),(921,'0',161,1,161),(931,'0',211,1,211),(941,'Sondagem 14',211,1,211),(951,'Sondagem 15',211,1,211),(961,'Sondagem 16',211,1,211),(971,'Sondagem 17',211,1,211),(981,'Sondagem 18',211,1,211),(991,'Sondagem 19',211,1,211),(1001,'Sondagem 20',211,1,211),(1011,'Sondagem 21',211,1,211),(1021,'Sondagem 23',211,1,211),(1031,'Sondagem 22',211,1,211),(1041,'Sondagem 24',211,1,211),(1051,'Sondagem 26',211,1,211),(1061,'Sondagem 27',211,1,211);
/*!40000 ALTER TABLE `sondagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'Acompanhamento'),(2,'Escavação'),(3,'Leitura parâmetros'),(4,'Todos');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_construtiva`
--

DROP TABLE IF EXISTS `tipo_construtiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_construtiva` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_construtiva`
--

LOCK TABLES `tipo_construtiva` WRITE;
/*!40000 ALTER TABLE `tipo_construtiva` DISABLE KEYS */;
INSERT INTO `tipo_construtiva` VALUES (1,'Abóbada'),(2,'Alicerce'),(3,'Arco'),(4,'Canalização'),(5,'Cobertura'),(6,'Cornija'),(7,'Elemento isolado'),(8,'Escadas'),(9,'Janela'),(10,'Muro'),(11,'Óculo'),(12,'Ombreira'),(13,'Padieira'),(14,'Parede'),(15,'Pavimento'),(16,'Porta'),(17,'Revestimento'),(18,'Soleira'),(19,'Telhado'),(31,'Grelha'),(41,'Sepultura'),(51,'Cápea'),(61,'Preparação de pavimento'),(71,'Reforço de alicerce'),(81,'Parede'),(91,'Muro'),(101,'Poste'),(111,'Laje'),(121,'Base'),(131,'Lintel'),(141,'Enchimento'),(151,'Derrube'),(161,'Outro'),(171,'Conjunto de pedras'),(181,'Tubos');
/*!40000 ALTER TABLE `tipo_construtiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_vidro`
--

DROP TABLE IF EXISTS `tipo_vidro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_vidro` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_vidro`
--

LOCK TABLES `tipo_vidro` WRITE;
/*!40000 ALTER TABLE `tipo_vidro` DISABLE KEYS */;
INSERT INTO `tipo_vidro` VALUES (1,'Almofariz'),(2,'Balão'),(3,'Boião'),(4,'Caçarola'),(5,'Cálice'),(6,'Caneca'),(7,'Copo'),(8,'Frasco'),(9,'Prato'),(10,'Garrafa'),(11,'Garrafão'),(12,'Jarro'),(13,'Lâmpada'),(14,'Taça'),(15,'Tampa'),(16,'Tessela'),(17,'Tinteiro'),(18,'Travessa'),(19,'Unguentário'),(20,'Conta'),(21,'Pulseira'),(22,'Bracelete'),(23,'Testo');
/*!40000 ALTER TABLE `tipo_vidro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipologia_cerâmica`
--

DROP TABLE IF EXISTS `tipologia_cerâmica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipologia_cerâmica` (
  `id_tipologia` int(11) NOT NULL AUTO_INCREMENT,
  `tipologia` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_tipologia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologia_cerâmica`
--

LOCK TABLES `tipologia_cerâmica` WRITE;
/*!40000 ALTER TABLE `tipologia_cerâmica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipologia_cerâmica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipologia_litico`
--

DROP TABLE IF EXISTS `tipologia_litico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipologia_litico` (
  `id_tipologia` int(11) NOT NULL AUTO_INCREMENT,
  `tipologia` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipologia`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologia_litico`
--

LOCK TABLES `tipologia_litico` WRITE;
/*!40000 ALTER TABLE `tipologia_litico` DISABLE KEYS */;
INSERT INTO `tipologia_litico` VALUES (1,'Aduela'),(2,'Amolador'),(3,'Arquitrave'),(4,'Banco'),(5,'Base'),(6,'Bloco'),(7,'Cachorro'),(8,'Caixa'),(9,'Canteiro'),(10,'Capitel'),(11,'Coluna'),(12,'Cornija'),(13,'Cruz de empena'),(14,'Cunhal'),(15,'Degrau'),(16,'Estela'),(17,'Friso'),(18,'Fuste'),(19,'Imposta'),(20,'Indeterminado'),(21,'Laje'),(22,'Lintel'),(23,'Mísula'),(24,'Mó de sela'),(25,'Mó dormente'),(26,'Mó movente'),(27,'Óculo'),(28,'Ombreira'),(29,'Padieira'),(30,'Pé'),(31,'Peitoril'),(32,'Peso'),(33,'Pia'),(34,'Pilar'),(35,'Pináculo'),(36,'Silhar'),(37,'Silhar almofadado'),(38,'Soleira'),(39,'Tampa'),(40,'Ara'),(41,'Machado'),(42,'Ponta de Seta'),(43,'Raspador'),(44,'Furador'),(51,'Pederneira'),(61,'Lasca'),(71,'Seixo rolado');
/*!40000 ALTER TABLE `tipologia_litico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipologia_metal`
--

DROP TABLE IF EXISTS `tipologia_metal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipologia_metal` (
  `id_tipologia` int(11) NOT NULL AUTO_INCREMENT,
  `tipologia` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipologia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologia_metal`
--

LOCK TABLES `tipologia_metal` WRITE;
/*!40000 ALTER TABLE `tipologia_metal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipologia_metal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ue`
--

DROP TABLE IF EXISTS `ue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ue` (
  `id_UE` int(11) NOT NULL AUTO_INCREMENT,
  `Sondagem_id_sondagem` int(11) NOT NULL,
  `num_UE` int(11) NOT NULL,
  `Caracterização_id_caracterização` int(11) NOT NULL,
  `id_utilizador` int(11) NOT NULL,
  `data` varchar(100) DEFAULT NULL,
  `intervenção` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_UE`),
  KEY `fk_UE_Utilizador1_idx` (`id_utilizador`),
  KEY `fk_UE_Intervenção1_idx` (`intervenção`),
  KEY `fk_UE_Sondagem1_idx` (`Sondagem_id_sondagem`),
  CONSTRAINT `fk_UE_Intervenção1` FOREIGN KEY (`intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_UE_Sondagem1` FOREIGN KEY (`Sondagem_id_sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_UE_Utilizador1` FOREIGN KEY (`id_utilizador`) REFERENCES `utilizador` (`id_utilizador`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8591 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ue`
--

LOCK TABLES `ue` WRITE;
/*!40000 ALTER TABLE `ue` DISABLE KEYS */;
INSERT INTO `ue` VALUES (81,71,101,2,1,'24/02/2022, 15:25:31',81),(91,71,102,2,1,'24/02/2022, 15:25:44',81),(101,71,103,2,1,'24/02/2022, 15:25:11',81),(111,71,104,2,1,'24/02/2022, 15:29:38',81),(121,71,105,1,1,'24/02/2022, 15:31:59',81),(131,71,107,1,1,'24/02/2022, 15:38:11',81),(141,71,108,1,1,'24/02/2022, 15:45:56',81),(161,71,109,1,1,'24/02/2022, 16:01:49',81),(171,71,106,2,1,'24/02/2022, 15:49:35',81),(181,71,110,1,1,'24/02/2022, 15:56:49',81),(191,71,111,1,1,'24/02/2022, 15:58:46',81),(201,71,112,3,1,'24/02/2022, 16:01:36',81),(211,71,113,2,1,'24/02/2022, 16:11:03',81),(221,71,114,2,1,'24/02/2022, 16:10:03',81),(231,71,115,3,1,'24/02/2022, 16:17:51',81),(241,71,116,1,1,'24/02/2022, 16:24:34',81),(251,71,117,3,1,'24/02/2022, 16:31:01',81),(261,71,118,1,1,'24/02/2022, 16:32:02',81),(271,71,119,1,1,'24/02/2022, 16:34:09',81),(281,71,120,1,1,'24/02/2022, 17:05:34',81),(291,71,121,1,1,'24/02/2022, 17:21:48',81),(301,71,122,2,1,'24/02/2022, 17:32:48',81),(311,71,123,2,1,'24/02/2022, 17:31:35',81),(331,71,124,2,1,'24/02/2022, 17:34:33',81),(341,71,125,3,1,'24/02/2022, 17:36:00',81),(351,71,126,1,1,'24/02/2022, 17:37:39',81),(361,71,127,2,1,'24/02/2022, 17:52:06',81),(371,91,201,1,1,'10/06/2023, 17:40:36',81),(381,91,202,1,1,'02/03/2022, 11:28:29',81),(391,91,203,3,1,'02/03/2022, 11:28:42',81),(401,91,204,2,1,'03/03/2022, 14:04:39',81),(411,91,205,1,1,'03/03/2022, 14:08:43',81),(421,91,206,3,1,'03/03/2022, 14:11:28',81),(431,91,207,1,1,'03/03/2022, 14:13:09',81),(441,91,208,2,1,'03/03/2022, 14:14:50',81),(451,91,209,2,1,'03/03/2022, 14:16:38',81),(461,91,210,1,1,'03/03/2022, 14:25:10',81),(471,91,211,2,1,'03/03/2022, 14:28:11',81),(501,91,213,3,1,'03/03/2022, 16:24:46',81),(551,91,214,1,1,'03/03/2022, 16:23:42',81),(561,91,212,2,1,'10/06/2023, 17:51:15',81),(571,111,801,2,1,'04/03/2022, 09:41:58',81),(581,111,802,2,1,'04/03/2022, 09:43:05',81),(601,111,804,1,1,'04/03/2022, 09:44:47',81),(771,131,101,2,1,'06/04/2022, 20:17:00',101),(791,141,118,2,1,'14/04/2022, 12:02:16',101),(801,131,102,1,1,'13/04/2022, 17:00:56',101),(811,131,103,1,1,'13/04/2022, 17:02:55',101),(821,131,104,1,1,'13/04/2022, 17:05:01',101),(831,131,105,1,1,'13/04/2022, 17:09:27',101),(841,131,106,1,1,'13/04/2022, 17:10:06',101),(851,131,107,1,1,'13/04/2022, 17:11:49',101),(861,131,108,1,1,'13/04/2022, 17:13:21',101),(871,131,109,2,1,'22/06/2022, 12:01:01',101),(881,131,110,2,1,'13/04/2022, 17:37:02',101),(891,131,111,3,1,'22/06/2022, 11:52:23',101),(911,131,112,3,1,'22/06/2022, 11:42:34',101),(921,131,114,3,1,'22/06/2022, 11:54:38',101),(931,131,115,3,1,'22/06/2022, 11:54:49',101),(941,131,116,3,1,'22/06/2022, 11:55:58',101),(951,131,113,3,1,'22/06/2022, 11:54:16',101),(961,131,117,1,1,'22/06/2022, 11:59:06',101),(971,161,1,1,1,'03/05/2022, 11:22:34',111),(981,161,2,1,1,'03/05/2022, 11:24:05',111),(1081,201,101,1,1,'08/06/2022, 12:10:56',131),(1091,201,102,1,1,'08/06/2022, 11:41:14',131),(1101,201,201,1,1,'08/06/2022, 11:57:12',131),(1111,201,202,1,1,'08/06/2022, 11:42:20',131),(1121,201,301,1,1,'08/06/2022, 11:57:27',131),(1131,201,302,1,1,'08/06/2022, 11:44:09',131),(1141,201,401,1,1,'08/06/2022, 11:57:42',131),(1151,201,402,1,1,'08/06/2022, 11:45:45',131),(1161,201,501,1,1,'08/06/2022, 11:46:37',131),(1171,201,502,1,1,'08/06/2022, 11:47:10',131),(1181,201,601,1,1,'08/06/2022, 11:58:07',131),(1191,201,602,1,1,'08/06/2022, 11:49:16',131),(1201,201,701,1,1,'08/06/2022, 11:52:07',131),(1211,201,702,1,1,'08/06/2022, 11:52:39',131),(1221,201,801,1,1,'08/06/2022, 11:53:04',131),(1231,201,802,1,1,'08/06/2022, 11:53:28',131),(1291,211,101,2,1,'04/08/2022, 16:54:43',141),(1301,211,102,1,1,'04/08/2022, 16:25:21',141),(1311,211,103,2,1,'04/08/2022, 16:37:44',141),(1321,211,104,2,1,'04/08/2022, 16:40:55',141),(1331,211,105,2,1,'04/08/2022, 16:30:32',141),(1341,211,106,1,1,'04/08/2022, 16:32:02',141),(1351,211,107,1,1,'04/08/2022, 16:38:12',141),(1361,211,108,1,1,'04/08/2022, 16:40:20',141),(1381,211,110,1,1,'04/08/2022, 16:48:21',141),(1391,211,111,1,1,'04/08/2022, 16:51:29',141),(1401,211,112,1,1,'04/08/2022, 16:52:32',141),(1411,211,201,2,1,'04/08/2022, 16:54:30',141),(1421,211,202,2,1,'04/08/2022, 17:38:27',141),(1431,211,203,2,1,'04/08/2022, 16:58:23',141),(1441,211,204,2,1,'04/08/2022, 17:39:04',141),(1451,211,205,1,1,'04/08/2022, 17:39:39',141),(1461,211,206,1,1,'04/08/2022, 17:08:15',141),(1471,211,207,1,1,'04/08/2022, 17:07:57',141),(1481,211,208,3,1,'04/08/2022, 17:41:47',141),(1491,211,209,2,1,'04/08/2022, 17:32:34',141),(1501,211,210,3,1,'04/08/2022, 17:41:55',141),(1511,211,211,1,1,'04/08/2022, 17:42:52',141),(1521,211,212,1,1,'04/08/2022, 17:43:05',141),(1531,211,217,1,1,'04/08/2022, 17:31:39',141),(1551,211,213,2,1,'05/08/2022, 17:46:19',141),(1561,211,215,2,1,'05/08/2022, 17:47:16',141),(1571,211,214,1,1,'05/08/2022, 17:48:34',141),(1581,211,216,1,1,'05/08/2022, 17:49:34',141),(1591,211,218,2,1,'05/08/2022, 17:53:42',141),(1601,211,219,1,1,'05/08/2022, 17:55:45',141),(1621,211,221,1,1,'08/08/2022, 16:11:52',141),(1631,211,301,2,1,'06/08/2022, 17:05:09',141),(1641,211,302,2,1,'06/08/2022, 17:07:00',141),(1651,211,303,1,1,'06/08/2022, 17:13:52',141),(1661,211,304,2,1,'06/08/2022, 17:20:58',141),(1671,211,305,2,1,'06/08/2022, 17:20:39',141),(1681,211,306,1,1,'06/08/2022, 17:49:31',141),(1691,211,307,2,1,'06/08/2022, 17:24:45',141),(1701,211,308,3,1,'06/08/2022, 18:03:20',141),(1711,211,309,3,1,'06/08/2022, 17:30:39',141),(1721,211,310,1,1,'06/08/2022, 17:49:02',141),(1731,211,311,1,1,'06/08/2022, 17:48:00',141),(1741,211,312,2,1,'06/08/2022, 17:40:00',141),(1751,211,313,2,1,'06/08/2022, 17:42:55',141),(1761,211,314,2,1,'06/08/2022, 17:47:32',141),(1771,211,315,1,1,'06/08/2022, 17:54:32',141),(1781,211,316,1,1,'06/08/2022, 17:54:40',141),(1791,211,317,1,1,'06/08/2022, 17:57:04',141),(1801,211,318,2,1,'06/08/2022, 17:59:06',141),(1811,211,319,1,1,'06/08/2022, 18:01:00',141),(1821,211,401,2,1,'06/08/2022, 18:04:43',141),(1831,211,402,1,1,'06/08/2022, 18:05:21',141),(1841,211,403,2,1,'06/08/2022, 18:06:21',141),(1851,211,404,1,1,'06/08/2022, 18:07:22',141),(1861,211,405,2,1,'06/08/2022, 18:11:48',141),(1871,211,406,1,1,'06/08/2022, 18:13:21',141),(1881,211,408,1,1,'06/08/2022, 18:32:27',141),(1891,211,409,3,1,'06/08/2022, 18:32:00',141),(1901,211,410,3,1,'06/08/2022, 18:38:25',141),(1911,211,411,1,1,'06/08/2022, 18:38:13',141),(1921,211,412,1,1,'06/08/2022, 18:41:43',141),(1931,211,413,1,1,'06/08/2022, 18:53:46',141),(1941,211,414,2,1,'06/08/2022, 18:54:02',141),(1961,211,220,2,1,'09/08/2022, 11:06:10',141),(1991,111,805,1,1,'05/09/2022, 16:28:32',81),(2001,111,806,1,1,'05/09/2022, 16:21:12',81),(2011,111,807,1,1,'05/09/2022, 16:31:15',81),(2021,111,808,1,1,'05/09/2022, 17:22:00',81),(2031,111,809,1,1,'05/09/2022, 16:37:40',81),(2041,111,810,1,1,'05/09/2022, 16:40:49',81),(2051,111,812,1,1,'05/09/2022, 16:45:57',81),(2061,111,811,1,1,'05/09/2022, 16:44:36',81),(2071,111,813,1,1,'05/09/2022, 16:47:27',81),(2081,111,814,1,1,'12/09/2022, 18:27:53',81),(2091,111,815,1,1,'12/09/2022, 18:27:36',81),(2101,111,816,3,1,'05/09/2022, 17:00:43',81),(2111,111,819,1,1,'12/09/2022, 18:28:37',81),(2121,111,820,1,1,'12/09/2022, 18:28:47',81),(2141,111,822,2,1,'05/09/2022, 17:17:45',81),(2151,111,821,3,1,'05/09/2022, 17:27:23',81),(2161,111,823,2,1,'05/09/2022, 17:21:19',81),(2171,111,826,3,1,'05/09/2022, 17:30:22',81),(2201,111,824,2,1,'05/09/2022, 17:35:38',81),(2211,261,601,2,1,'05/09/2022, 17:37:53',81),(2221,261,602,2,1,'06/09/2022, 10:39:18',81),(2231,261,603,2,1,'06/09/2022, 11:24:13',81),(2241,261,604,1,1,'06/09/2022, 12:41:28',81),(2251,261,605,1,1,'06/09/2022, 12:42:38',81),(2261,261,606,1,1,'06/09/2022, 13:41:36',81),(2271,261,607,1,1,'06/09/2022, 13:42:26',81),(2281,261,608,1,1,'06/09/2022, 13:43:41',81),(2291,261,609,1,1,'12/09/2022, 10:48:54',81),(2301,261,610,1,1,'12/09/2022, 10:50:17',81),(2321,261,619,1,1,'12/09/2022, 12:21:25',81),(2331,261,612,1,1,'12/09/2022, 12:17:07',81),(2341,261,613,1,1,'12/09/2022, 11:19:41',81),(2351,261,614,1,1,'12/09/2022, 11:18:49',81),(2361,261,615,1,1,'12/09/2022, 11:21:01',81),(2371,261,616,1,1,'12/09/2022, 11:24:40',81),(2381,261,617,1,1,'12/09/2022, 12:15:29',81),(2391,261,618,1,1,'12/09/2022, 12:17:36',81),(2401,261,611,2,1,'12/09/2022, 12:15:54',81),(2411,261,620,1,1,'12/09/2022, 12:21:35',81),(2421,281,901,2,1,'12/09/2022, 13:51:31',81),(2431,281,902,2,1,'12/09/2022, 13:55:15',81),(2441,281,903,1,1,'12/09/2022, 14:02:07',81),(2451,281,904,1,1,'12/09/2022, 14:11:35',81),(2461,281,905,2,1,'12/09/2022, 14:09:33',81),(2471,281,906,3,1,'12/09/2022, 14:11:55',81),(2481,281,907,1,1,'12/09/2022, 14:12:10',81),(2491,281,909,1,1,'12/09/2022, 14:16:38',81),(2501,281,910,1,1,'12/09/2022, 14:51:59',81),(2531,281,911,2,1,'12/09/2022, 14:27:47',81),(2541,281,912,2,1,'12/09/2022, 14:22:24',81),(2551,281,913,1,1,'12/09/2022, 14:30:54',81),(2561,281,914,1,1,'12/09/2022, 14:32:13',81),(2571,281,916,3,1,'12/09/2022, 14:32:00',81),(2581,281,917,2,1,'12/09/2022, 14:36:43',81),(2591,281,918,2,1,'12/09/2022, 14:44:28',81),(2601,281,919,1,1,'12/09/2022, 14:41:22',81),(2611,281,920,1,1,'12/09/2022, 14:55:17',81),(2621,281,921,1,1,'12/09/2022, 15:00:24',81),(2631,281,922,1,1,'12/09/2022, 15:02:44',81),(2641,281,923,1,1,'12/09/2022, 15:38:30',81),(2661,281,924,2,1,'12/09/2022, 15:43:53',81),(2671,281,925,1,1,'12/09/2022, 16:15:54',81),(2681,281,926,1,1,'12/09/2022, 16:16:44',81),(2691,281,927,1,1,'12/09/2022, 16:18:05',81),(2701,281,928,1,1,'12/09/2022, 16:19:46',81),(2711,281,929,1,1,'12/09/2022, 16:22:55',81),(2721,281,930,2,1,'12/09/2022, 16:56:12',81),(2731,281,931,1,1,'12/09/2022, 16:31:35',81),(2741,281,932,2,1,'12/09/2022, 16:33:29',81),(2751,281,933,1,1,'12/09/2022, 17:03:13',81),(2761,281,934,1,1,'12/09/2022, 17:03:28',81),(2771,281,935,3,1,'12/09/2022, 17:02:58',81),(2781,281,936,2,1,'12/09/2022, 17:41:39',81),(2791,281,938,1,1,'12/09/2022, 17:46:19',81),(2801,281,939,1,1,'12/09/2022, 17:53:45',81),(2811,281,940,1,1,'12/09/2022, 17:54:40',81),(2821,111,827,1,1,'12/09/2022, 18:29:00',81),(2831,111,828,1,1,'12/09/2022, 18:29:10',81),(2841,111,817,2,1,'12/09/2022, 18:28:08',81),(2851,111,818,2,1,'12/09/2022, 18:28:24',81),(2861,291,701,2,1,'13/09/2022, 11:13:06',81),(2871,291,702,2,1,'13/09/2022, 11:29:43',81),(2881,291,703,2,1,'13/09/2022, 11:32:46',81),(2891,291,704,3,1,'13/09/2022, 11:46:28',81),(2911,291,705,2,1,'13/09/2022, 11:43:14',81),(2921,291,706,1,1,'13/09/2022, 11:37:17',81),(2931,291,707,2,1,'13/09/2022, 11:44:18',81),(2941,291,708,3,1,'13/09/2022, 11:46:37',81),(2951,291,709,1,1,'13/09/2022, 11:47:22',81),(2961,291,710,1,1,'13/09/2022, 11:48:34',81),(2971,291,712,2,1,'13/09/2022, 11:50:09',81),(2981,291,713,1,1,'13/09/2022, 11:53:09',81),(2991,291,714,2,1,'14/09/2022, 12:32:45',81),(3001,291,715,1,1,'13/09/2022, 11:58:54',81),(3011,291,716,1,1,'13/09/2022, 12:00:09',81),(3021,291,717,1,1,'13/09/2022, 12:08:21',81),(3031,291,718,2,1,'13/09/2022, 12:04:38',81),(3041,291,721,1,1,'14/09/2022, 12:11:22',81),(3051,291,719,3,1,'13/09/2022, 12:21:25',81),(3061,291,720,1,1,'13/09/2022, 12:21:14',81),(3071,291,722,1,1,'14/09/2022, 12:24:32',81),(3081,291,732,2,1,'14/09/2022, 12:24:46',81),(3091,291,723,1,1,'14/09/2022, 12:31:42',81),(3101,291,724,1,1,'14/09/2022, 12:32:34',81),(3111,291,725,1,1,'14/09/2022, 12:34:44',81),(3121,291,726,3,1,'14/09/2022, 12:37:09',81),(3131,291,727,1,1,'14/09/2022, 12:37:00',81),(3141,291,730,1,1,'14/09/2022, 12:39:18',81),(3151,301,101,1,1,'20/10/2022, 14:36:21',161),(3161,331,201,1,1,'20/10/2022, 14:36:38',161),(3171,331,202,1,1,'20/10/2022, 14:00:30',161),(3181,301,102,1,1,'20/10/2022, 14:01:07',161),(3191,341,301,1,1,'20/10/2022, 14:02:44',161),(3201,341,302,2,1,'20/10/2022, 14:05:57',161),(3211,341,303,2,1,'20/10/2022, 14:06:53',161),(3221,341,304,1,1,'20/10/2022, 14:37:05',161),(3231,341,305,1,1,'10/09/2023, 14:23:34',161),(3241,351,401,1,1,'20/10/2022, 14:37:21',161),(3251,351,402,1,1,'20/10/2022, 14:12:32',161),(3261,361,501,1,1,'20/10/2022, 14:15:40',161),(3321,371,601,1,1,'20/10/2022, 14:50:39',161),(3331,371,602,3,1,'23/09/2023, 17:14:56',161),(3341,371,603,1,1,'20/10/2022, 14:52:48',161),(3351,371,604,1,1,'23/09/2023, 17:16:54',161),(3361,321,101,1,1,'20/10/2022, 15:09:03',201),(3371,321,102,1,1,'20/10/2022, 15:07:14',201),(3381,381,201,1,1,'20/10/2022, 15:08:22',201),(3391,381,202,1,1,'20/10/2022, 15:08:46',201),(3401,391,301,1,1,'20/10/2022, 15:10:20',201),(3411,391,302,2,1,'20/10/2022, 15:18:57',201),(3421,391,303,2,1,'20/10/2022, 15:13:34',201),(3431,391,304,3,1,'20/10/2022, 15:25:53',201),(3441,391,305,2,1,'20/10/2022, 15:21:29',201),(3451,391,306,2,1,'20/10/2022, 15:22:49',201),(3461,391,307,2,1,'20/10/2022, 15:24:51',201),(3471,391,308,1,1,'20/10/2022, 15:25:45',201),(3481,401,401,1,1,'20/10/2022, 15:27:05',201),(3491,401,402,3,1,'20/10/2022, 15:30:37',201),(3501,401,403,1,1,'20/10/2022, 15:30:30',201),(3511,411,501,1,1,'20/10/2022, 15:33:19',201),(3521,411,502,3,1,'20/10/2022, 15:34:49',201),(3531,411,503,1,1,'20/10/2022, 15:34:42',201),(3541,311,101,2,1,'20/10/2022, 15:47:13',191),(3551,311,102,1,1,'20/10/2022, 16:44:34',191),(3561,311,103,1,1,'20/10/2022, 16:44:26',191),(3571,311,104,1,1,'20/10/2022, 16:45:15',191),(3581,311,105,1,1,'20/10/2022, 17:23:39',191),(3591,311,106,3,1,'20/10/2022, 17:25:37',191),(3601,311,107,1,1,'20/10/2022, 17:25:30',191),(3611,311,108,1,1,'20/10/2022, 17:27:27',191),(3621,311,109,1,1,'20/10/2022, 17:28:29',191),(3631,311,110,2,1,'20/10/2022, 17:37:23',191),(3641,311,111,3,1,'20/10/2022, 17:38:13',191),(3651,311,112,1,1,'20/10/2022, 17:40:49',191),(3661,311,113,2,1,'20/10/2022, 17:45:35',191),(3671,311,114,1,1,'20/10/2022, 17:46:12',191),(3681,311,115,2,1,'20/10/2022, 17:47:08',191),(3741,421,201,1,1,'20/10/2022, 17:54:04',191),(3751,421,202,1,1,'20/10/2022, 17:55:43',191),(3761,421,203,1,1,'20/10/2022, 17:56:18',191),(3771,421,205,1,1,'20/10/2022, 18:00:49',191),(3791,421,206,2,1,'20/10/2022, 18:02:56',191),(3801,421,207,2,1,'20/10/2022, 18:12:59',191),(3811,421,208,1,1,'20/10/2022, 18:07:08',191),(3821,421,209,1,1,'20/10/2022, 18:12:14',191),(3831,421,210,2,1,'20/10/2022, 18:11:06',191),(3841,421,211,3,1,'20/10/2022, 18:12:05',191),(3851,431,301,1,1,'20/10/2022, 18:17:29',191),(3861,431,302,1,1,'20/10/2022, 18:18:54',191),(3871,431,303,2,1,'20/10/2022, 18:19:42',191),(3881,431,304,3,1,'20/10/2022, 18:21:10',191),(3891,431,305,2,1,'20/10/2022, 18:22:24',191),(3901,431,306,1,1,'20/10/2022, 18:24:23',191),(3911,431,307,1,1,'20/10/2022, 18:27:02',191),(3921,431,308,1,1,'20/10/2022, 18:28:49',191),(3931,431,309,1,1,'20/10/2022, 18:30:57',191),(3941,451,201,1,1,'12/12/2022, 16:38:13',211),(3951,451,202,2,1,'12/12/2022, 16:41:12',211),(3961,451,203,1,1,'12/12/2022, 16:44:54',211),(3971,451,204,1,1,'12/12/2022, 16:47:12',211),(3981,451,205,1,1,'12/12/2022, 17:42:05',211),(3991,451,206,1,1,'12/12/2022, 17:43:21',211),(4001,451,207,2,1,'12/12/2022, 18:43:39',211),(4011,451,208,2,1,'16/01/2023, 14:31:04',211),(4021,451,209,1,1,'12/12/2022, 18:44:22',211),(4031,441,101,1,1,'16/01/2023, 14:25:16',211),(4041,441,102,1,1,'16/01/2023, 14:26:45',211),(4051,451,210,1,1,'16/01/2023, 14:34:20',211),(4061,451,211,1,1,'16/01/2023, 14:34:54',211),(4071,471,301,1,1,'16/01/2023, 14:45:58',211),(4081,471,302,1,1,'16/01/2023, 14:47:36',211),(4091,471,303,1,1,'16/01/2023, 14:48:35',211),(4101,471,304,1,1,'16/01/2023, 14:50:27',211),(4111,471,305,2,1,'16/01/2023, 15:14:33',211),(4121,471,306,2,1,'16/01/2023, 15:16:01',211),(4131,471,307,1,1,'16/01/2023, 15:19:47',211),(4141,471,308,3,1,'16/01/2023, 15:22:09',211),(4151,471,309,1,1,'16/01/2023, 15:21:43',211),(4161,471,310,1,1,'16/01/2023, 15:23:58',211),(4171,471,311,2,1,'16/01/2023, 15:33:54',211),(4181,471,312,1,1,'16/01/2023, 15:42:39',211),(4191,471,313,1,1,'16/01/2023, 15:41:58',211),(4201,571,101,1,1,'20/03/2023, 18:31:54',241),(4211,571,102,1,1,'20/03/2023, 18:34:15',241),(4221,581,201,1,1,'09/03/2023, 16:18:16',241),(4231,581,202,1,1,'09/03/2023, 16:21:01',241),(4241,581,203,1,1,'09/03/2023, 16:21:48',241),(4251,581,204,1,1,'09/03/2023, 16:22:18',241),(4261,451,212,2,1,'13/04/2023, 13:04:30',211),(4271,451,213,2,1,'13/04/2023, 13:08:36',211),(4281,471,314,2,1,'13/04/2023, 13:10:32',211),(4291,471,315,1,1,'13/04/2023, 13:12:05',211),(4301,491,501,1,1,'13/04/2023, 13:15:03',211),(4311,491,502,3,1,'13/04/2023, 13:29:45',211),(4331,491,503,2,1,'13/04/2023, 13:19:09',211),(4341,491,504,1,1,'13/04/2023, 13:20:18',211),(4351,491,505,1,1,'13/04/2023, 13:30:27',211),(4361,491,506,3,1,'13/04/2023, 13:24:35',211),(4371,491,507,1,1,'13/04/2023, 13:28:39',211),(4381,491,508,1,1,'17/04/2023, 16:28:43',211),(4391,491,509,3,1,'13/04/2023, 13:42:17',211),(4401,491,510,1,1,'13/04/2023, 13:41:49',211),(4411,491,511,1,1,'13/04/2023, 13:51:17',211),(4421,491,512,3,1,'13/04/2023, 13:57:09',211),(4431,491,513,1,1,'13/04/2023, 13:46:53',211),(4441,491,514,1,1,'13/04/2023, 13:48:34',211),(4451,491,515,1,1,'13/04/2023, 13:55:15',211),(4461,491,516,1,1,'13/04/2023, 13:56:19',211),(4471,491,517,1,1,'17/04/2023, 16:20:41',211),(4481,491,518,1,1,'13/04/2023, 14:13:29',211),(4491,491,521,1,1,'13/04/2023, 14:05:33',211),(4501,491,519,1,1,'13/04/2023, 14:16:11',211),(4521,501,601,2,1,'13/04/2023, 14:25:16',211),(4531,501,602,1,1,'13/04/2023, 14:53:00',211),(4541,501,603,1,1,'13/04/2023, 14:54:16',211),(4551,501,604,2,1,'13/04/2023, 15:22:08',211),(4561,501,605,3,1,'13/04/2023, 15:23:30',211),(4571,501,606,1,1,'13/04/2023, 15:10:23',211),(4581,501,607,1,1,'13/04/2023, 15:10:15',211),(4591,501,608,1,1,'13/04/2023, 15:18:43',211),(4601,501,609,1,1,'13/04/2023, 15:18:55',211),(4611,501,610,2,1,'13/04/2023, 15:21:07',211),(4621,501,611,1,1,'13/04/2023, 15:20:45',211),(4631,501,612,1,1,'13/04/2023, 15:28:24',211),(4641,501,613,1,1,'13/04/2023, 15:28:40',211),(4651,501,614,1,1,'13/04/2023, 15:30:09',211),(4661,501,617,2,1,'17/04/2023, 13:05:10',211),(4671,501,616,1,1,'17/04/2023, 13:04:50',211),(4681,501,618,1,1,'17/04/2023, 13:05:59',211),(4691,501,615,1,1,'17/04/2023, 13:37:54',211),(4701,511,701,1,1,'17/04/2023, 13:39:43',211),(4711,511,702,1,1,'17/04/2023, 13:40:03',211),(4721,511,703,1,1,'17/04/2023, 13:40:39',211),(4741,511,706,1,1,'17/04/2023, 13:43:43',211),(4751,511,708,3,1,'17/04/2023, 13:46:05',211),(4761,511,707,1,1,'17/04/2023, 13:45:52',211),(4771,511,709,1,1,'17/04/2023, 14:09:40',211),(4791,511,710,1,1,'17/04/2023, 14:10:59',211),(4801,511,711,1,1,'17/04/2023, 14:11:53',211),(4811,511,712,1,1,'17/04/2023, 16:29:33',211),(4821,511,713,1,1,'17/04/2023, 17:05:58',211),(4831,511,714,2,1,'18/04/2023, 11:46:40',211),(4841,511,715,2,1,'18/04/2023, 11:53:10',211),(4851,511,716,2,1,'18/04/2023, 11:55:07',211),(4861,511,717,2,1,'18/04/2023, 11:59:27',211),(4871,511,718,1,1,'18/04/2023, 12:12:27',211),(4881,511,719,1,1,'18/04/2023, 13:22:16',211),(4891,541,801,1,1,'18/04/2023, 13:27:14',211),(4901,541,802,1,1,'18/04/2023, 13:27:49',211),(4911,541,803,1,1,'18/04/2023, 13:29:39',211),(4921,541,804,1,1,'18/04/2023, 13:30:57',211),(4931,541,805,1,1,'18/04/2023, 13:31:48',211),(4941,541,806,1,1,'18/04/2023, 13:35:04',211),(4951,541,807,1,1,'18/04/2023, 13:36:57',211),(4961,541,808,3,1,'18/04/2023, 13:39:44',211),(4971,541,809,1,1,'18/04/2023, 13:41:33',211),(4981,541,810,1,1,'18/04/2023, 13:47:56',211),(4991,541,811,1,1,'18/04/2023, 13:56:59',211),(5001,541,812,1,1,'18/04/2023, 16:24:46',211),(5011,541,813,1,1,'18/04/2023, 14:00:04',211),(5021,551,901,1,1,'19/04/2023, 09:33:00',211),(5031,551,902,1,1,'19/04/2023, 09:33:45',211),(5041,551,903,1,1,'19/04/2023, 09:35:37',211),(5051,551,904,1,1,'19/04/2023, 09:36:39',211),(5061,551,905,2,1,'19/04/2023, 09:39:58',211),(5071,551,906,1,1,'19/04/2023, 09:40:51',211),(5081,551,907,1,1,'19/04/2023, 09:41:38',211),(5091,551,908,1,1,'19/04/2023, 09:42:36',211),(5101,551,909,1,1,'19/04/2023, 09:43:29',211),(5111,551,910,1,1,'19/04/2023, 09:44:39',211),(5121,551,911,1,1,'19/04/2023, 09:46:45',211),(5131,551,912,1,1,'19/04/2023, 09:47:56',211),(5141,551,913,1,1,'19/04/2023, 09:48:50',211),(5151,551,914,1,1,'19/04/2023, 09:50:16',211),(5161,551,915,1,1,'19/04/2023, 09:53:33',211),(5171,551,916,3,1,'19/04/2023, 10:02:30',211),(5181,551,917,1,1,'19/04/2023, 09:54:48',211),(5191,551,918,2,1,'19/04/2023, 09:58:23',211),(5201,551,919,1,1,'19/04/2023, 10:00:45',211),(5211,551,920,1,1,'19/04/2023, 10:02:12',211),(5221,551,921,1,1,'19/04/2023, 10:04:36',211),(5231,551,922,3,1,'19/04/2023, 10:30:04',211),(5241,551,923,1,1,'19/04/2023, 10:31:56',211),(5251,551,924,2,1,'19/04/2023, 12:26:55',211),(5261,561,1001,1,1,'19/04/2023, 10:50:15',211),(5271,561,1002,1,1,'19/04/2023, 10:51:25',211),(5281,561,1003,3,1,'19/04/2023, 10:52:16',211),(5291,561,1004,1,1,'19/04/2023, 10:53:15',211),(5301,561,1005,1,1,'19/04/2023, 10:54:25',211),(5311,561,1006,1,1,'19/04/2023, 10:55:16',211),(5321,561,1007,1,1,'19/04/2023, 10:55:41',211),(5331,561,1008,1,1,'19/04/2023, 10:57:04',211),(5341,561,1009,1,1,'19/04/2023, 11:11:44',211),(5351,561,1010,1,1,'19/04/2023, 11:12:30',211),(5361,561,1011,1,1,'19/04/2023, 11:14:15',211),(5371,561,1012,1,1,'19/04/2023, 11:17:55',211),(5381,561,1014,1,1,'19/04/2023, 11:18:47',211),(5391,561,1015,1,1,'19/04/2023, 11:19:02',211),(5401,561,1016,1,1,'19/04/2023, 11:34:35',211),(5411,561,1017,1,1,'19/04/2023, 11:23:35',211),(5421,561,1018,1,1,'19/04/2023, 11:24:30',211),(5431,561,1019,1,1,'19/04/2023, 11:25:45',211),(5441,561,1020,1,1,'19/04/2023, 11:36:34',211),(5451,561,1022,3,1,'19/04/2023, 11:45:57',211),(5461,561,1023,3,1,'19/04/2023, 11:47:21',211),(5471,561,1024,2,1,'19/04/2023, 11:50:37',211),(5481,561,1025,2,1,'19/04/2023, 11:55:49',211),(5491,601,1101,1,1,'19/04/2023, 12:12:23',211),(5501,601,1102,1,1,'19/04/2023, 12:13:20',211),(5511,601,1103,1,1,'19/04/2023, 12:14:39',211),(5521,601,1104,1,1,'19/04/2023, 12:15:09',211),(5531,601,1105,1,1,'19/04/2023, 12:15:59',211),(5541,601,1106,1,1,'19/04/2023, 12:17:08',211),(5551,601,1107,1,1,'19/04/2023, 12:17:55',211),(5561,601,1108,2,1,'19/04/2023, 12:25:52',211),(5571,601,1109,2,1,'19/04/2023, 12:20:59',211),(5581,601,1110,1,1,'19/04/2023, 12:23:19',211),(5591,601,1111,2,1,'19/04/2023, 12:25:25',211),(5601,591,101,2,1,'19/04/2023, 13:50:31',251),(5611,591,102,1,1,'19/04/2023, 13:51:54',251),(5621,591,103,3,1,'19/04/2023, 13:52:35',251),(5631,591,104,1,1,'14/09/2023, 12:46:06',251),(5641,591,105,2,1,'14/08/2023, 18:48:45',251),(5651,591,106,1,1,'19/04/2023, 13:56:15',251),(5661,591,107,1,1,'19/04/2023, 14:03:18',251),(5671,591,108,1,1,'19/04/2023, 14:03:47',251),(5681,631,201,2,1,'19/04/2023, 14:04:29',251),(5691,631,202,1,1,'19/04/2023, 14:06:05',251),(5701,631,203,1,1,'19/04/2023, 14:06:59',251),(5711,631,204,2,1,'14/08/2023, 19:12:59',251),(5721,631,205,3,1,'14/08/2023, 19:13:10',251),(5731,631,206,3,1,'14/08/2023, 19:15:57',251),(5741,631,207,1,1,'14/08/2023, 19:19:10',251),(5751,631,212,3,1,'14/08/2023, 18:38:16',251),(5761,631,209,1,1,'19/04/2023, 14:17:54',251),(5771,631,210,1,1,'19/04/2023, 14:22:44',251),(5781,631,211,1,1,'19/04/2023, 14:22:24',251),(5791,631,214,1,1,'14/08/2023, 18:35:56',251),(5801,641,702,1,1,'03/07/2023, 09:46:27',161),(5841,641,704,3,1,'19/04/2023, 18:12:45',161),(5851,651,703,1,1,'14/09/2023, 09:50:46',161),(5861,651,705,3,1,'23/09/2023, 17:20:42',161),(5871,661,706,1,1,'14/09/2023, 09:51:26',161),(5881,661,707,3,1,'19/04/2023, 17:45:40',161),(5891,671,708,1,1,'14/09/2023, 09:51:43',161),(5901,671,709,3,1,'19/04/2023, 17:49:19',161),(5921,691,710,1,1,'19/04/2023, 17:55:43',161),(5931,691,711,3,1,'19/04/2023, 17:51:38',161),(5941,701,712,1,1,'19/04/2023, 17:56:11',161),(5951,701,713,3,1,'19/04/2023, 17:54:43',161),(5961,711,714,1,1,'19/04/2023, 17:58:20',161),(5971,711,715,3,1,'19/04/2023, 17:58:10',161),(5981,731,716,1,1,'19/04/2023, 18:02:15',161),(5991,731,717,3,1,'19/04/2023, 18:01:58',161),(6001,741,718,1,1,'23/09/2023, 16:38:49',161),(6011,741,719,3,1,'19/04/2023, 18:05:28',161),(6021,751,720,1,1,'19/04/2023, 18:07:11',161),(6031,751,721,3,1,'19/04/2023, 18:07:03',161),(6041,761,722,1,1,'19/04/2023, 18:09:05',161),(6051,761,723,3,1,'19/04/2023, 18:08:57',161),(6061,771,101,1,1,'03/06/2023, 18:37:11',271),(6071,771,102,1,1,'03/06/2023, 18:37:33',271),(6081,781,201,1,1,'03/06/2023, 18:38:18',271),(6091,781,202,1,1,'03/06/2023, 18:38:41',271),(6101,91,225,1,1,'10/06/2023, 17:40:52',81),(6111,91,226,1,1,'10/06/2023, 17:31:48',81),(6121,91,227,1,1,'10/06/2023, 17:33:29',81),(6131,91,228,1,1,'10/06/2023, 17:35:38',81),(6141,91,229,3,1,'10/06/2023, 17:35:19',81),(6151,91,230,1,1,'10/06/2023, 17:37:21',81),(6161,91,231,2,1,'10/06/2023, 17:53:12',81),(6171,91,275,1,1,'10/06/2023, 17:40:03',81),(6181,91,276,1,1,'10/06/2023, 17:41:50',81),(6191,91,277,1,1,'10/06/2023, 17:42:36',81),(6201,91,279,1,1,'10/06/2023, 17:45:58',81),(6211,91,278,1,1,'10/06/2023, 17:47:33',81),(6221,91,281,2,1,'10/06/2023, 17:54:16',81),(6231,91,280,1,1,'10/06/2023, 17:49:17',81),(6241,91,232,1,1,'10/06/2023, 17:56:12',81),(6251,91,233,1,1,'10/06/2023, 17:56:53',81),(6261,91,234,1,1,'10/06/2023, 17:57:50',81),(6271,91,235,1,1,'10/06/2023, 17:59:00',81),(6281,91,236,3,1,'10/06/2023, 18:01:09',81),(6291,91,237,1,1,'10/06/2023, 18:00:49',81),(6301,791,301,2,1,'10/06/2023, 18:04:02',81),(6311,791,302,1,1,'10/06/2023, 18:04:41',81),(6321,791,303,1,1,'10/06/2023, 18:06:17',81),(6331,791,304,1,1,'10/06/2023, 18:08:53',81),(6341,791,305,1,1,'10/06/2023, 18:59:45',81),(6351,791,306,1,1,'10/06/2023, 18:10:48',81),(6361,791,307,2,1,'10/06/2023, 18:12:09',81),(6371,791,308,1,1,'10/06/2023, 18:13:45',81),(6381,791,309,3,1,'10/06/2023, 18:24:17',81),(6391,791,310,1,1,'10/06/2023, 18:22:33',81),(6401,791,311,1,1,'10/06/2023, 18:23:47',81),(6411,791,312,2,1,'10/06/2023, 18:27:48',81),(6421,791,313,1,1,'10/06/2023, 18:28:42',81),(6431,791,314,2,1,'10/06/2023, 18:34:03',81),(6441,791,315,3,1,'10/06/2023, 18:32:05',81),(6451,791,316,1,1,'10/06/2023, 18:33:43',81),(6461,791,317,1,1,'10/06/2023, 18:34:51',81),(6471,791,318,1,1,'10/06/2023, 18:36:08',81),(6481,791,319,3,1,'10/06/2023, 18:41:15',81),(6491,791,320,2,1,'10/06/2023, 18:43:26',81),(6501,791,321,1,1,'10/06/2023, 18:46:13',81),(6511,791,322,2,1,'10/06/2023, 18:47:16',81),(6521,521,101,1,1,'17/06/2023, 15:18:52',221),(6531,521,102,1,1,'17/06/2023, 15:18:40',221),(6541,521,103,3,1,'17/06/2023, 15:21:56',221),(6551,521,104,2,1,'17/06/2023, 15:25:35',221),(6561,521,105,1,1,'17/06/2023, 15:24:24',221),(6571,521,106,3,1,'17/06/2023, 15:32:25',221),(6581,521,107,1,1,'17/06/2023, 15:32:56',221),(6591,521,108,3,1,'17/06/2023, 15:38:11',221),(6601,521,109,3,1,'17/06/2023, 15:38:23',221),(6611,521,110,3,1,'17/06/2023, 15:38:52',221),(6621,521,111,3,1,'17/06/2023, 15:43:38',221),(6631,521,112,3,1,'17/06/2023, 15:43:20',221),(6641,521,113,1,1,'17/06/2023, 15:38:00',221),(6651,801,201,1,1,'17/06/2023, 15:46:03',221),(6661,801,202,1,1,'17/06/2023, 15:51:29',221),(6671,801,203,3,1,'17/06/2023, 16:08:40',221),(6681,801,204,2,1,'17/06/2023, 15:50:20',221),(6691,801,205,2,1,'17/06/2023, 15:57:00',221),(6701,801,206,2,1,'17/06/2023, 16:30:08',221),(6711,801,207,1,1,'17/06/2023, 16:09:03',221),(6721,801,208,1,1,'17/06/2023, 16:09:16',221),(6731,801,210,3,1,'17/06/2023, 16:11:49',221),(6741,801,209,1,1,'17/06/2023, 16:08:21',221),(6751,801,211,3,1,'17/06/2023, 16:12:02',221),(6761,801,212,3,1,'17/06/2023, 16:12:15',221),(6771,801,213,3,1,'17/06/2023, 16:12:27',221),(6781,801,214,3,1,'17/06/2023, 16:12:46',221),(6791,801,215,1,1,'17/06/2023, 16:11:35',221),(6801,801,216,1,1,'17/06/2023, 16:14:27',221),(6811,811,301,1,1,'17/06/2023, 16:28:22',221),(6821,811,302,2,1,'17/06/2023, 16:30:31',221),(6831,811,303,1,1,'17/06/2023, 17:00:15',221),(6841,811,304,2,1,'17/06/2023, 16:33:05',221),(6851,811,305,1,1,'17/06/2023, 16:54:23',221),(6861,811,306,3,1,'17/06/2023, 16:54:13',221),(6871,811,307,1,1,'17/06/2023, 17:01:54',221),(6881,811,308,1,1,'17/06/2023, 17:03:08',221),(6891,811,309,2,1,'17/06/2023, 17:17:07',221),(6901,821,401,1,1,'17/06/2023, 17:26:58',221),(6911,821,402,1,1,'17/06/2023, 17:26:34',221),(6921,821,403,1,1,'17/06/2023, 17:27:33',221),(6931,821,404,3,1,'17/06/2023, 17:32:31',221),(6941,821,405,2,1,'17/06/2023, 17:30:38',221),(6951,821,406,1,1,'17/06/2023, 17:32:21',221),(6961,831,501,1,1,'17/06/2023, 17:35:00',221),(6971,831,502,1,1,'17/06/2023, 17:35:30',221),(6981,831,503,1,1,'17/06/2023, 17:45:05',221),(6991,831,504,1,1,'17/06/2023, 17:37:05',221),(7001,831,505,3,1,'17/06/2023, 17:44:52',221),(7011,831,506,2,1,'17/06/2023, 17:41:45',221),(7021,831,507,3,1,'17/06/2023, 17:46:41',221),(7031,831,508,3,1,'17/06/2023, 17:46:51',221),(7041,831,509,1,1,'17/06/2023, 17:45:26',221),(7051,831,510,1,1,'17/06/2023, 17:58:55',221),(7061,831,511,1,1,'17/06/2023, 18:01:40',221),(7071,831,512,2,1,'17/06/2023, 18:02:29',221),(7081,831,513,1,1,'17/06/2023, 18:02:13',221),(7091,831,514,2,1,'17/06/2023, 18:06:09',221),(7101,831,515,2,1,'17/06/2023, 18:07:44',221),(7111,831,516,1,1,'17/06/2023, 18:08:21',221),(7121,841,601,1,1,'17/06/2023, 18:13:12',221),(7131,841,602,1,1,'17/06/2023, 18:14:50',221),(7141,841,603,1,1,'17/06/2023, 18:15:35',221),(7151,841,611,2,1,'17/06/2023, 18:17:31',221),(7161,841,604,2,1,'17/06/2023, 18:21:21',221),(7171,841,605,1,1,'17/06/2023, 18:21:05',221),(7181,841,606,2,1,'17/06/2023, 18:24:01',221),(7191,841,607,1,1,'17/06/2023, 18:28:24',221),(7201,841,608,1,1,'17/06/2023, 18:30:21',221),(7211,841,609,1,1,'17/06/2023, 18:32:13',221),(7221,841,610,1,1,'17/06/2023, 18:34:14',221),(7231,841,612,1,1,'17/06/2023, 18:35:12',221),(7241,851,701,1,1,'19/06/2023, 12:24:53',221),(7251,851,702,1,1,'19/06/2023, 12:03:55',221),(7261,851,703,1,1,'19/06/2023, 12:08:32',221),(7271,851,704,1,1,'19/06/2023, 12:09:35',221),(7281,851,705,3,1,'19/06/2023, 12:17:14',221),(7291,851,706,3,1,'19/06/2023, 12:16:58',221),(7301,851,707,1,1,'19/06/2023, 12:14:56',221),(7311,851,708,1,1,'19/06/2023, 12:16:15',221),(7321,861,801,1,1,'19/06/2023, 12:27:47',221),(7331,851,709,1,1,'19/06/2023, 12:22:16',221),(7341,851,710,3,1,'19/06/2023, 12:22:56',221),(7351,851,700,1,1,'19/06/2023, 12:24:39',221),(7361,861,800,1,1,'19/06/2023, 12:27:20',221),(7371,861,802,1,1,'19/06/2023, 12:29:28',221),(7381,861,804,3,1,'19/06/2023, 12:31:58',221),(7391,861,803,1,1,'19/06/2023, 12:31:31',221),(7401,861,805,1,1,'19/06/2023, 12:34:52',221),(7411,861,806,3,1,'19/06/2023, 12:34:39',221),(7421,861,807,1,1,'19/06/2023, 12:35:17',221),(7431,871,900,1,1,'19/06/2023, 12:36:41',221),(7441,871,901,1,1,'19/06/2023, 12:38:59',221),(7451,871,902,1,1,'19/06/2023, 12:40:02',221),(7461,871,903,3,1,'19/06/2023, 12:41:10',221),(7471,871,904,1,1,'19/06/2023, 12:42:01',221),(7481,871,905,3,1,'19/06/2023, 12:45:50',221),(7491,871,906,1,1,'19/06/2023, 12:45:07',221),(7501,871,907,1,1,'19/06/2023, 12:45:35',221),(7511,901,1001,2,1,'19/06/2023, 13:35:03',81),(7521,901,1002,1,1,'19/06/2023, 13:36:39',81),(7531,901,1003,1,1,'19/06/2023, 13:37:29',81),(7541,901,1004,1,1,'19/06/2023, 13:38:30',81),(7551,901,1005,1,1,'19/06/2023, 13:39:13',81),(7561,911,1101,2,1,'19/06/2023, 13:44:51',81),(7571,911,1102,1,1,'19/06/2023, 13:47:11',81),(7581,911,1107,1,1,'19/06/2023, 13:49:35',81),(7591,911,1103,3,1,'19/06/2023, 14:00:53',81),(7601,911,1104,1,1,'19/06/2023, 13:53:25',81),(7611,911,1106,3,1,'19/06/2023, 13:54:43',81),(7621,911,1105,1,1,'19/06/2023, 14:00:29',81),(7631,911,1108,1,1,'19/06/2023, 14:02:53',81),(7641,911,1109,3,1,'19/06/2023, 14:04:58',81),(7651,911,1110,3,1,'19/06/2023, 14:05:53',81),(7661,911,1111,1,1,'19/06/2023, 14:07:02',81),(7671,911,1112,1,1,'19/06/2023, 14:08:12',81),(7681,911,1113,3,1,'19/06/2023, 14:16:00',81),(7691,911,1114,2,1,'19/06/2023, 14:17:53',81),(7701,911,1115,1,1,'19/06/2023, 14:24:54',81),(7711,911,1116,1,1,'19/06/2023, 14:25:18',81),(7721,911,1117,3,1,'19/06/2023, 14:30:50',81),(7731,911,1118,1,1,'19/06/2023, 14:32:15',81),(7741,911,1119,1,1,'19/06/2023, 14:34:09',81),(7751,921,99,1,1,'03/07/2023, 10:29:40',161),(7761,931,99,1,1,'05/07/2023, 11:15:46',211),(7771,931,98,1,1,'05/07/2023, 11:16:47',211),(7781,881,415,1,1,'07/07/2023, 14:47:50',81),(7791,881,416,1,1,'07/07/2023, 14:48:12',81),(7801,961,1601,1,1,'25/07/2023, 10:05:51',211),(7811,961,1602,1,1,'25/07/2023, 10:09:51',211),(7821,961,1603,1,1,'25/07/2023, 10:20:35',211),(7831,961,1604,1,1,'25/07/2023, 10:21:12',211),(7841,961,1605,1,1,'25/07/2023, 10:22:15',211),(7851,961,1606,1,1,'25/07/2023, 10:25:31',211),(7861,961,1607,1,1,'25/07/2023, 10:26:28',211),(7871,961,1608,1,1,'25/07/2023, 10:41:36',211),(7881,961,1609,1,1,'25/07/2023, 10:42:06',211),(7891,961,1610,3,1,'25/07/2023, 10:41:09',211),(7901,951,1501,1,1,'25/07/2023, 14:28:48',211),(7911,951,1502,1,1,'25/07/2023, 14:31:39',211),(7921,971,1701,1,1,'25/07/2023, 14:39:01',211),(7931,971,1702,1,1,'25/07/2023, 14:40:19',211),(7941,971,1703,1,1,'25/07/2023, 14:42:29',211),(7951,971,1704,1,1,'25/07/2023, 15:14:08',211),(7961,971,1705,1,1,'25/07/2023, 16:05:24',211),(7971,971,1706,1,1,'25/07/2023, 16:15:03',211),(7981,971,1707,1,1,'25/07/2023, 16:14:50',211),(7991,981,1802,1,1,'08/08/2023, 11:43:06',211),(8001,981,1803,1,1,'08/08/2023, 11:49:56',211),(8011,981,1804,1,1,'08/08/2023, 11:49:06',211),(8021,981,1805,1,1,'08/08/2023, 11:52:01',211),(8031,981,1806,3,1,'08/08/2023, 11:54:44',211),(8041,981,1807,2,1,'08/08/2023, 11:56:34',211),(8051,981,1808,1,1,'08/08/2023, 11:59:06',211),(8061,991,1901,1,1,'08/08/2023, 12:01:43',211),(8071,991,1902,1,1,'09/08/2023, 15:22:49',211),(8081,991,1903,1,1,'09/08/2023, 15:25:28',211),(8091,991,1904,1,1,'09/08/2023, 15:26:14',211),(8101,1001,2001,1,1,'09/08/2023, 15:33:20',211),(8111,1001,2002,1,1,'09/08/2023, 15:35:42',211),(8121,1001,2003,1,1,'09/08/2023, 15:37:31',211),(8131,1001,2004,1,1,'09/08/2023, 15:46:22',211),(8141,1001,2005,1,1,'09/08/2023, 15:47:41',211),(8151,1011,2101,1,1,'09/08/2023, 15:49:37',211),(8161,1011,2102,1,1,'09/08/2023, 15:55:22',211),(8171,1011,2103,1,1,'09/08/2023, 15:56:10',211),(8181,1011,2104,1,1,'09/08/2023, 15:58:46',211),(8191,1011,2105,1,1,'09/08/2023, 16:01:01',211),(8201,1011,2106,1,1,'09/08/2023, 16:01:46',211),(8211,1011,2107,1,1,'09/08/2023, 16:02:09',211),(8221,1021,2301,1,1,'09/08/2023, 16:04:34',211),(8231,1021,2302,3,1,'09/08/2023, 16:09:57',211),(8241,1021,2303,1,1,'09/08/2023, 16:08:27',211),(8251,1021,2304,1,1,'09/08/2023, 16:09:45',211),(8261,1021,2305,1,1,'09/08/2023, 16:12:01',211),(8271,1021,2306,1,1,'09/08/2023, 16:14:24',211),(8281,1021,2307,1,1,'09/08/2023, 16:32:37',211),(8291,1021,2312,1,1,'09/08/2023, 16:32:23',211),(8301,1021,2308,1,1,'09/08/2023, 16:33:43',211),(8311,1021,2309,1,1,'09/08/2023, 16:38:34',211),(8321,1021,2310,1,1,'09/08/2023, 16:36:55',211),(8331,1021,2311,1,1,'09/08/2023, 16:41:03',211),(8341,1031,2201,1,1,'10/08/2023, 11:51:25',211),(8351,1031,2202,1,1,'10/08/2023, 11:53:55',211),(8361,1031,2203,1,1,'10/08/2023, 12:01:56',211),(8371,1031,2204,1,1,'10/08/2023, 12:04:28',211),(8381,1031,2205,1,1,'10/08/2023, 12:06:05',211),(8391,1041,2401,1,1,'10/08/2023, 12:10:19',211),(8401,1041,2402,1,1,'10/08/2023, 12:14:32',211),(8411,1041,2403,1,1,'10/08/2023, 12:16:28',211),(8421,1041,2405,1,1,'10/08/2023, 12:19:23',211),(8431,1041,2406,1,1,'10/08/2023, 12:21:02',211),(8441,1041,2407,1,1,'10/08/2023, 12:23:51',211),(8451,1051,2601,1,1,'10/08/2023, 12:29:17',211),(8461,1051,2602,1,1,'10/08/2023, 12:30:39',211),(8471,1061,2701,1,1,'10/08/2023, 14:02:26',211),(8481,1061,2702,1,1,'10/08/2023, 14:06:40',211),(8491,1061,2703,1,1,'10/08/2023, 14:12:56',211),(8501,1061,2704,1,1,'10/08/2023, 14:15:13',211),(8511,1061,2705,1,1,'10/08/2023, 14:17:23',211),(8521,1061,2706,1,1,'10/08/2023, 14:22:04',211),(8531,1061,2707,1,1,'10/08/2023, 14:23:37',211),(8541,631,208,1,1,'14/08/2023, 18:37:40',251),(8551,631,213,2,1,'14/08/2023, 18:42:21',251),(8581,151,302,1,1,'14/09/2023, 17:06:30',101);
/*!40000 ALTER TABLE `ue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ues_has_corta`
--

DROP TABLE IF EXISTS `ues_has_corta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ues_has_corta` (
  `id_ue` int(11) NOT NULL,
  `id_corta` int(11) NOT NULL,
  PRIMARY KEY (`id_ue`,`id_corta`),
  KEY `fk_Ues_has_Cortas_Corta1_idx` (`id_corta`),
  CONSTRAINT `fk_Ues_has_Cortas_Corta1` FOREIGN KEY (`id_corta`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ues_has_Cortas_UE1` FOREIGN KEY (`id_ue`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ues_has_corta`
--

LOCK TABLES `ues_has_corta` WRITE;
/*!40000 ALTER TABLE `ues_has_corta` DISABLE KEYS */;
INSERT INTO `ues_has_corta` VALUES (391,381),(421,381),(501,551),(891,961),(911,961),(921,961),(931,961),(951,961),(1481,1511),(1501,1511),(1481,1521),(1501,1521),(1701,1681),(1711,1681),(1891,1881),(1901,1911),(2101,2081),(2151,2091),(2471,2481),(2571,2561),(2771,2761),(2891,2951),(2941,2951),(3051,3061),(3121,3131),(3331,3341),(3431,3471),(3491,3501),(3521,3531),(3591,3601),(3841,3821),(4141,4151),(4361,4351),(4311,4371),(4391,4401),(4421,4401),(4561,4571),(4561,4581),(5171,5181),(5451,5401),(5461,5401),(5451,5411),(5461,5411),(5451,5441),(5461,5441),(5721,5741),(5731,5741),(5751,5741),(5751,5771),(5751,5781),(6281,6291),(6481,6341),(6381,6401),(6541,6531),(6571,6531),(6591,6641),(6601,6641),(6611,6641),(6621,6641),(6631,6641),(6671,6711),(6731,6711),(6671,6721),(6731,6721),(6731,6791),(6751,6791),(6761,6791),(6771,6791),(6781,6791),(6861,6851),(6931,6951),(7001,6981),(7021,7041),(7031,7041),(7281,7291),(7281,7301),(7291,7301),(7281,7311),(7291,7311),(7381,7391),(7481,7491),(7591,7581),(7591,7621),(7721,7691),(7721,7711),(7891,7871),(8231,8251);
/*!40000 ALTER TABLE `ues_has_corta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ues_has_cortadas`
--

DROP TABLE IF EXISTS `ues_has_cortadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ues_has_cortadas` (
  `id_ue` int(11) NOT NULL,
  `id_cortadas` int(11) NOT NULL,
  PRIMARY KEY (`id_ue`,`id_cortadas`),
  KEY `fk_has_Cortadas_Cortadas1_idx` (`id_cortadas`),
  CONSTRAINT `fk_Ues_has_Cortadas_UE1` FOREIGN KEY (`id_ue`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_has_Cortadas_Cortadas1` FOREIGN KEY (`id_cortadas`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ues_has_cortadas`
--

LOCK TABLES `ues_has_cortadas` WRITE;
/*!40000 ALTER TABLE `ues_has_cortadas` DISABLE KEYS */;
INSERT INTO `ues_has_cortadas` VALUES (381,391),(551,501),(961,891),(961,911),(961,921),(961,931),(961,941),(961,951),(1511,1451),(1511,1481),(1521,1481),(1521,1501),(1681,1701),(1681,1711),(1911,1901),(2081,2101),(2481,2471),(2561,2571),(2761,2771),(2951,2891),(2951,2941),(3061,3051),(3131,3121),(3471,3431),(3501,3491),(3531,3521),(3601,3591),(3651,3641),(3821,3841),(3901,3881),(3911,3881),(3921,3881),(4151,4141),(4371,4311),(4401,4391),(4431,4391),(4401,4421),(4571,4561),(4581,4561),(4631,4561),(4641,4561),(5181,5171),(5741,5721),(5771,5721),(5741,5731),(5781,5731),(5741,5751),(5771,5751),(5781,5751),(6291,6281),(6401,6381),(6451,6441),(6341,6481),(6641,6591),(6641,6601),(6641,6611),(6641,6621),(6641,6631),(6711,6671),(6721,6671),(6711,6731),(6721,6731),(6791,6731),(6791,6751),(6791,6761),(6791,6771),(6791,6781),(6851,6861),(6951,6931),(6981,7001),(7041,7021),(7041,7031),(7311,7271),(7291,7281),(7301,7281),(7311,7281),(7301,7291),(7391,7381),(7491,7481),(7871,7891),(8251,8221);
/*!40000 ALTER TABLE `ues_has_cortadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ues_has_encosta`
--

DROP TABLE IF EXISTS `ues_has_encosta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ues_has_encosta` (
  `id_ue` int(11) NOT NULL,
  `id_encosta` int(11) NOT NULL,
  PRIMARY KEY (`id_ue`,`id_encosta`),
  KEY `fk_Ues_has_Encosta_Encosta1_idx` (`id_encosta`),
  CONSTRAINT `fk_Ues_has_Encosta_Encosta1` FOREIGN KEY (`id_encosta`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ues_has_Encosta_UE1` FOREIGN KEY (`id_ue`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ues_has_encosta`
--

LOCK TABLES `ues_has_encosta` WRITE;
/*!40000 ALTER TABLE `ues_has_encosta` DISABLE KEYS */;
INSERT INTO `ues_has_encosta` VALUES (91,81),(81,91),(101,91),(211,221),(561,441),(561,451),(1351,1321),(1361,1321),(1621,1591),(1721,1741),(1731,1741),(1771,1741),(1781,1741),(1931,1941),(2161,2141),(2601,2541),(2601,2581),(3421,3411),(4001,4011),(4111,4121),(5191,5171),(5481,5471),(5581,5561),(5561,5591),(6691,6701),(7711,7691),(8351,8341);
/*!40000 ALTER TABLE `ues_has_encosta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ues_has_igual`
--

DROP TABLE IF EXISTS `ues_has_igual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ues_has_igual` (
  `id_ue` int(11) NOT NULL,
  `id_igual` int(11) NOT NULL,
  PRIMARY KEY (`id_ue`,`id_igual`),
  KEY `fk_Ues_has_igual_Igual1_idx` (`id_igual`),
  CONSTRAINT `fk_Ues_has_igual_Igual1` FOREIGN KEY (`id_igual`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ues_has_igual_UE1` FOREIGN KEY (`id_ue`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ues_has_igual`
--

LOCK TABLES `ues_has_igual` WRITE;
/*!40000 ALTER TABLE `ues_has_igual` DISABLE KEYS */;
INSERT INTO `ues_has_igual` VALUES (6161,201),(6221,201),(6101,371),(6171,371),(2211,571),(2421,571),(2231,581),(2431,581),(811,771),(1101,1081),(1121,1081),(1141,1081),(1161,1081),(1181,1081),(1201,1081),(1081,1101),(1121,1101),(1141,1101),(1161,1101),(1181,1101),(1201,1101),(1081,1121),(1101,1121),(1141,1121),(1161,1121),(1181,1121),(1201,1121),(1081,1141),(1101,1141),(1121,1141),(1151,1141),(1161,1141),(1181,1141),(1201,1141),(1081,1161),(1101,1161),(1121,1161),(1141,1161),(1181,1161),(1201,1161),(1081,1181),(1101,1181),(1121,1181),(1141,1181),(1201,1181),(1081,1201),(1101,1201),(1121,1201),(1141,1201),(1181,1201),(1411,1291),(1631,1291),(1821,1291),(1291,1411),(1631,1411),(1821,1411),(1461,1471),(1521,1511),(1561,1551),(1581,1571),(1821,1631),(1731,1721),(1721,1731),(1781,1771),(1771,1781),(2281,2011),(2051,2041),(2371,2071),(2091,2081),(2081,2091),(2121,2111),(2111,2121),(2221,2141),(2171,2151),(2421,2211),(2431,2231),(2411,2321),(2811,2321),(2391,2331),(2401,2381),(2801,2381),(2331,2391),(2381,2401),(2801,2401),(2321,2411),(2811,2411),(2441,2431),(2591,2501),(2641,2561),(2501,2591),(2741,2721),(2831,2821),(2821,2831),(2851,2841),(2841,2851),(3221,3151),(3241,3151),(3261,3151),(3341,3151),(3261,3161),(3341,3161),(3221,3171),(3231,3171),(3241,3171),(3251,3171),(3351,3171),(3231,3181),(3251,3181),(3351,3181),(3241,3221),(3261,3221),(3341,3221),(3251,3231),(3351,3231),(3261,3241),(3341,3241),(3351,3251),(3341,3261),(3521,3491),(4261,4061),(4181,4151),(4701,4301),(4711,4311),(4421,4391),(4391,4421),(4811,4481),(4581,4571),(4571,4581),(5591,5251),(5321,5311),(5391,5381),(5251,5591),(5731,5621),(8551,5641),(371,6101),(6171,6101),(561,6161),(6221,6161),(371,6171),(6101,6171),(561,6221),(6161,6221),(6651,6521),(6811,6521),(7121,6521),(6811,6651),(7121,6651),(7011,6681),(7161,6681),(6821,6701),(6941,6701),(7121,6811),(6941,6821),(7011,6841),(7161,6841),(7121,6901),(7121,6971),(7161,7011),(7321,7241),(7361,7351);
/*!40000 ALTER TABLE `ues_has_igual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ues_has_preenche`
--

DROP TABLE IF EXISTS `ues_has_preenche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ues_has_preenche` (
  `id_ue` int(11) NOT NULL,
  `id_preenche` int(11) NOT NULL,
  PRIMARY KEY (`id_ue`,`id_preenche`),
  KEY `fk_Ues_has_Preenche_Preeche1_idx` (`id_preenche`),
  CONSTRAINT `fk_Ues_has_Preenche_Preeche1` FOREIGN KEY (`id_preenche`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ues_has_Preenche_UE1` FOREIGN KEY (`id_ue`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ues_has_preenche`
--

LOCK TABLES `ues_has_preenche` WRITE;
/*!40000 ALTER TABLE `ues_has_preenche` DISABLE KEYS */;
INSERT INTO `ues_has_preenche` VALUES (161,201),(1491,1481),(1531,1481),(1451,1501),(1811,1701),(2451,2471),(2731,2721),(2751,2771),(3021,3031),(3441,3431),(4131,4141),(4331,4311),(4591,4611),(4601,4611),(4761,4751),(5161,5171),(5211,5171),(5251,5171),(5641,5611),(5631,5621),(5711,5721),(8551,5731),(8541,5751),(5841,5801),(5851,5861),(5871,5881),(5891,5901),(5921,5931),(5941,5951),(5961,5971),(5981,5991),(6001,6011),(6021,6031),(6041,6051),(6131,6141),(6431,6441),(6661,6671),(6741,6731),(7051,7071),(7061,7071),(7081,7071),(7261,7281),(7271,7291),(7401,7411),(7601,7591),(8241,8231);
/*!40000 ALTER TABLE `ues_has_preenche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ues_has_preenchida`
--

DROP TABLE IF EXISTS `ues_has_preenchida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ues_has_preenchida` (
  `id_ue` int(11) NOT NULL,
  `id_preenchida` int(11) NOT NULL,
  PRIMARY KEY (`id_ue`,`id_preenchida`),
  KEY `fk_Ues_has_Preenchida_Preenchida1_idx` (`id_preenchida`),
  CONSTRAINT `fk_Ues_has_Preenchida_Preenchida1` FOREIGN KEY (`id_preenchida`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ues_has_Preenchida_UE1` FOREIGN KEY (`id_ue`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ues_has_preenchida`
--

LOCK TABLES `ues_has_preenchida` WRITE;
/*!40000 ALTER TABLE `ues_has_preenchida` DISABLE KEYS */;
INSERT INTO `ues_has_preenchida` VALUES (201,161),(231,221),(911,811),(891,821),(891,831),(891,841),(891,851),(891,861),(891,871),(891,881),(1501,1451),(1481,1461),(1481,1491),(1501,1491),(1481,1531),(1711,1651),(1711,1661),(1701,1671),(1701,1811),(1901,1881),(2151,2071),(2471,2451),(2471,2461),(2571,2551),(2741,2731),(2771,2751),(2891,2911),(3121,2991),(3051,3031),(3051,3041),(3121,3111),(3331,3321),(3341,3321),(3431,3401),(3491,3481),(3501,3481),(3521,3511),(3591,3571),(3641,3621),(3841,3831),(3881,3861),(3881,3871),(4141,4131),(4311,4301),(4331,4301),(4361,4341),(4391,4381),(4421,4411),(4421,4461),(4481,4501),(4561,4541),(4611,4591),(4611,4601),(4751,4761),(4961,4951),(5171,5161),(5171,5211),(5231,5221),(5281,5271),(5461,5381),(5451,5391),(5451,5421),(5461,5421),(5451,5431),(5461,5431),(5561,5541),(5621,5611),(5641,5611),(5721,5701),(5721,5711),(5841,5801),(5861,5851),(5881,5871),(5901,5891),(5931,5921),(5951,5941),(5971,5961),(5991,5981),(6011,6001),(6031,6021),(6051,6041),(6141,6131),(6281,6261),(6381,6371),(6441,6421),(6441,6431),(6481,6471),(6571,6521),(6591,6581),(6601,6581),(6611,6581),(6621,6581),(6631,6581),(6931,6921),(7001,6971),(7031,6981),(7071,7051),(7071,7061),(7071,7081),(7291,7271),(7341,7331),(7411,7401),(7461,7451),(7481,7471),(7591,7601),(7651,7631),(7741,7661),(5751,8541),(5731,8551);
/*!40000 ALTER TABLE `ues_has_preenchida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ues_has_sobrepostas`
--

DROP TABLE IF EXISTS `ues_has_sobrepostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ues_has_sobrepostas` (
  `id_ue` int(11) NOT NULL,
  `id_sobreposta` int(11) NOT NULL,
  PRIMARY KEY (`id_sobreposta`,`id_ue`),
  KEY `fk_Ues_has_Sobrepostas_Ues1_idx` (`id_ue`),
  CONSTRAINT `fk_Ues_has_Sobrepostas_Sobrepostas1` FOREIGN KEY (`id_sobreposta`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Ues_has_Sobrepostas_Ues1` FOREIGN KEY (`id_ue`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ues_has_sobrepostas`
--

LOCK TABLES `ues_has_sobrepostas` WRITE;
/*!40000 ALTER TABLE `ues_has_sobrepostas` DISABLE KEYS */;
INSERT INTO `ues_has_sobrepostas` VALUES (131,91),(141,121),(161,141),(171,141),(181,161),(191,161),(191,181),(201,161),(211,161),(221,161),(231,221),(241,181),(241,191),(251,211),(261,241),(271,241),(281,271),(291,271),(301,271),(301,291),(311,271),(341,331),(351,331),(361,81),(361,111),(381,371),(391,371),(421,371),(431,381),(441,381),(451,381),(461,381),(551,461),(561,431),(561,461),(581,571),(601,581),(801,771),(821,801),(831,821),(841,831),(851,841),(861,851),(871,861),(881,871),(891,881),(911,811),(921,881),(931,881),(941,881),(951,881),(961,801),(961,861),(961,881),(961,891),(961,911),(961,921),(961,931),(961,941),(961,951),(1111,1101),(1131,1121),(1171,1161),(1191,1181),(1211,1201),(1231,1221),(1301,1291),(1311,1301),(1321,1301),(1321,1331),(1321,1351),(1321,1361),(1331,1301),(1341,1301),(1341,1331),(1351,1301),(1351,1311),(1361,1351),(1401,1381),(1401,1391),(1421,1411),(1431,1411),(1441,1411),(1441,1421),(1451,1431),(1471,1421),(1481,1461),(1481,1471),(1491,1531),(1501,1471),(1501,1491),(1511,1461),(1511,1481),(1521,1471),(1531,1461),(1551,1511),(1571,1551),(1581,1561),(1591,1571),(1601,1581),(1621,1571),(1641,1631),(1651,1631),(1661,1631),(1671,1631),(1681,1631),(1681,1641),(1691,1681),(1701,1671),(1711,1651),(1721,1681),(1731,1681),(1741,1681),(1751,1681),(1761,1681),(1771,1731),(1781,1721),(1791,1771),(1791,1781),(1801,1681),(1811,1671),(1831,1821),(1841,1821),(1841,1831),(1851,1831),(1861,1831),(1871,1861),(1881,1851),(1881,1861),(1891,1871),(1901,1881),(1911,1881),(1921,1881),(1931,1911),(1941,1921),(1941,1931),(1961,1571),(2001,1991),(2011,601),(2021,2001),(2021,2161),(2031,2011),(2041,2031),(2051,2061),(2061,2031),(2071,2021),(2081,2061),(2091,2071),(2101,2061),(2111,2841),(2121,2851),(2141,2061),(2141,2071),(2151,2071),(2171,2121),(2201,571),(2231,2221),(2241,2231),(2251,2241),(2261,2241),(2271,2251),(2281,2271),(2291,2281),(2301,2291),(2321,2391),(2331,2401),(2341,2241),(2351,2341),(2361,2351),(2371,2361),(2381,2371),(2391,2381),(2401,2301),(2411,2331),(2451,2441),(2461,2451),(2471,2461),(2481,2441),(2491,2481),(2501,2481),(2531,2481),(2541,2481),(2551,2481),(2561,2481),(2571,2551),(2581,2531),(2591,2561),(2601,2561),(2611,2561),(2621,2561),(2631,2561),(2661,2561),(2671,2621),(2681,2671),(2691,2591),(2691,2681),(2701,2631),(2711,2661),(2721,2701),(2721,2711),(2731,2711),(2751,2691),(2761,2691),(2771,2751),(2791,2761),(2801,2791),(2811,2801),(2821,2111),(2831,2121),(2871,2861),(2891,2871),(2891,2911),(2911,2871),(2921,2871),(2931,2921),(2941,2921),(2941,2931),(2951,2891),(2951,2941),(2961,2951),(2971,2961),(2981,2961),(2991,2981),(2991,3101),(3001,2981),(3011,3001),(3021,3011),(3031,3011),(3031,3021),(3041,3021),(3051,3031),(3061,3011),(3061,3031),(3081,3071),(3101,3091),(3111,3061),(3121,3111),(3131,3061),(3171,3161),(3181,3151),(3201,3191),(3211,3201),(3221,3211),(3231,3221),(3251,3241),(3331,3321),(3341,3321),(3351,3331),(3351,3341),(3371,3361),(3391,3381),(3411,3401),(3421,3401),(3431,3401),(3441,3401),(3451,3401),(3461,3401),(3471,3401),(3471,3411),(3471,3421),(3471,3451),(3491,3481),(3501,3481),(3521,3511),(3531,3511),(3551,3541),(3561,3551),(3571,3561),(3581,3571),(3591,3571),(3601,3571),(3601,3581),(3611,3601),(3621,3611),(3631,3611),(3641,3611),(3641,3621),(3651,3611),(3661,3651),(3671,3651),(3671,3661),(3681,3601),(3751,3741),(3761,3741),(3771,3751),(3791,3771),(3801,3771),(3811,3771),(3821,3771),(3841,3831),(3861,3851),(3871,3861),(3881,3861),(3881,3871),(3891,3871),(3891,3881),(3901,3851),(3911,3901),(3921,3911),(3931,3921),(3951,3941),(3961,3941),(3971,3951),(3971,3961),(3981,3971),(3991,3981),(4001,3991),(4011,3991),(4021,3991),(4041,4031),(4081,4071),(4091,4081),(4101,4091),(4111,4081),(4121,4081),(4121,4091),(4131,4111),(4141,4131),(4151,4111),(4161,4101),(4171,4101),(4181,4121),(4191,4181),(4211,4201),(4231,4221),(4241,4231),(4251,4241),(4261,4061),(4271,4261),(4281,4191),(4291,4281),(4311,4301),(4331,4301),(4341,4301),(4351,4301),(4361,4341),(4371,4301),(4381,4371),(4391,4381),(4401,4371),(4411,4301),(4421,4411),(4431,4401),(4441,4381),(4451,4431),(4461,4411),(4471,4381),(4481,4441),(4491,4441),(4501,4431),(4531,4521),(4541,4531),(4551,4531),(4561,4531),(4561,4541),(4571,4531),(4581,4531),(4591,4551),(4601,4591),(4611,4551),(4611,4621),(4621,4601),(4631,4571),(4641,4581),(4651,4631),(4661,4671),(4721,4711),(4741,4711),(4741,4721),(4751,4761),(4771,4741),(4791,4741),(4791,4771),(4801,4771),(4801,4791),(4811,4791),(4821,4771),(4851,4821),(4851,4831),(4861,4821),(4871,4821),(4881,4821),(4901,4891),(4911,4901),(4921,4911),(4931,4921),(4941,4931),(4951,4931),(4961,4931),(4971,4931),(4981,4941),(4991,4941),(5001,4981),(5001,4991),(5011,5001),(5031,5021),(5041,5031),(5051,5031),(5061,5031),(5071,5041),(5071,5051),(5071,5061),(5081,5071),(5091,5081),(5101,5091),(5111,5091),(5121,5101),(5131,5101),(5131,5111),(5141,5121),(5151,5121),(5151,5131),(5161,5141),(5161,5151),(5171,5141),(5171,5151),(5171,5161),(5181,5151),(5191,5181),(5201,5181),(5211,5161),(5221,5201),(5231,5221),(5241,5201),(5251,5211),(5271,5261),(5281,5271),(5291,5271),(5301,5291),(5311,5301),(5331,5321),(5341,5331),(5351,5331),(5361,5341),(5361,5351),(5371,5351),(5381,5371),(5401,5371),(5411,5401),(5421,5411),(5431,5421),(5441,5411),(5451,5431),(5471,5331),(5481,5331),(5501,5491),(5511,5501),(5521,5501),(5531,5511),(5531,5521),(5541,5521),(5551,5531),(5561,5541),(5571,5541),(5581,5551),(5591,5501),(5611,5601),(5621,5611),(5631,5601),(5641,5611),(5651,5631),(5661,5651),(5671,5651),(5671,5661),(5691,5681),(5701,5691),(5711,5691),(5721,5691),(5721,5711),(5731,5701),(5731,8551),(5741,5691),(5741,5721),(5741,5731),(5741,5751),(5751,8541),(5761,5711),(5771,5741),(5781,5771),(5791,5781),(5841,5801),(5861,5851),(5881,5871),(5901,5891),(5931,5921),(5951,5941),(5971,5961),(5991,5981),(6011,6001),(6031,6021),(6051,6041),(6071,6061),(6091,6081),(6111,6101),(6121,6101),(6131,6121),(6141,6131),(6151,6111),(6161,6101),(6161,6111),(6181,6171),(6191,6181),(6201,6191),(6211,6181),(6221,6201),(6221,6211),(6231,6201),(6241,6151),(6251,6241),(6261,6251),(6271,6261),(6281,6261),(6291,6271),(6311,6301),(6321,6311),(6331,6321),(6341,6331),(6351,6341),(6361,6341),(6371,6351),(6381,6371),(6391,6361),(6401,6391),(6411,6321),(6421,6411),(6431,6421),(6451,6431),(6471,6451),(6491,6341),(6491,6471),(6501,6471),(6531,6521),(6541,6521),(6551,6521),(6561,6551),(6571,6521),(6581,6531),(6591,6581),(6601,6581),(6611,6581),(6621,6581),(6631,6581),(6641,6581),(6661,6651),(6671,6661),(6681,6661),(6691,6681),(6701,6651),(6711,6661),(6721,6711),(6741,6661),(6751,6721),(6761,6721),(6771,6721),(6781,6721),(6791,6721),(6801,6681),(6821,6811),(6831,6811),(6841,6831),(6851,6831),(6861,6831),(6871,6851),(6881,6841),(6891,6841),(6911,6901),(6921,6911),(6931,6921),(6941,6901),(6951,6911),(6971,6961),(6981,6971),(6991,6971),(7001,6971),(7011,6971),(7011,6991),(7021,6981),(7031,6981),(7041,6981),(7041,6991),(7051,7011),(7061,7051),(7071,7011),(7081,7061),(7091,6961),(7101,6961),(7111,6961),(7131,7121),(7141,7121),(7151,7121),(7161,7141),(7171,7161),(7181,7161),(7191,7171),(7201,7191),(7211,7171),(7211,7181),(7211,7191),(7211,7201),(7221,7211),(7231,7221),(7241,7351),(7251,7241),(7261,7251),(7271,7251),(7281,7261),(7291,7271),(7301,7251),(7311,7261),(7311,7271),(7311,7301),(7321,7361),(7371,7321),(7381,7371),(7391,7371),(7401,7361),(7411,7401),(7421,7391),(7441,7431),(7451,7441),(7461,7451),(7471,7441),(7481,7471),(7491,7471),(7501,7491),(7521,7511),(7531,7521),(7541,7531),(7571,7561),(7581,7571),(7591,7571),(7601,7571),(7611,7571),(7621,7571),(7631,7581),(7631,7591),(7641,7631),(7651,7631),(7661,7631),(7671,7661),(7681,7661),(7691,7661),(7701,7671),(7711,7701),(7721,7671),(7731,7671),(7811,7801),(7821,7811),(7831,7811),(7841,7811),(7851,7861),(7861,7851),(7871,7841),(7881,7811),(7881,7831),(7891,7841),(7911,7901),(7931,7921),(7941,7931),(7951,7941),(7961,7951),(7971,7961),(7971,7981),(7981,7961),(8011,7991),(8021,8001),(8041,8021),(8051,8021),(8071,8061),(8081,8061),(8091,8061),(8131,8101),(8131,8111),(8161,8151),(8171,8151),(8181,8171),(8191,8181),(8201,8191),(8211,8191),(8231,8221),(8241,8221),(8251,8221),(8261,8251),(8271,8261),(8281,8291),(8291,8271),(8301,8281),(8311,8301),(8321,8301),(8331,8311),(8361,8341),(8361,8351),(8371,8361),(8381,8371),(8401,8391),(8411,8391),(8421,8391),(8431,8401),(8441,8421),(8461,8451),(8481,8471),(8491,8481),(8501,8471),(8511,8491),(8511,8501),(8521,8491),(8531,8511),(8541,5691),(8551,5701);
/*!40000 ALTER TABLE `ues_has_sobrepostas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilizador`
--

DROP TABLE IF EXISTS `utilizador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilizador` (
  `id_utilizador` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'user',
  `access` varchar(100) DEFAULT 'Ainda não acessou',
  PRIMARY KEY (`id_utilizador`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilizador`
--

LOCK TABLES `utilizador` WRITE;
/*!40000 ALTER TABLE `utilizador` DISABLE KEYS */;
INSERT INTO `utilizador` VALUES (1,'anaroriz_arqueologia','$2b$12$wezcH/9k.Al7Nc9SdEXbYuC8QsH5aU6OeP8/jBa2XgOTZvqmyl74G','admin','27/09/2023, 14:44:24');
/*!40000 ALTER TABLE `utilizador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilizadores_intervenção`
--

DROP TABLE IF EXISTS `utilizadores_intervenção`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilizadores_intervenção` (
  `id_utilizador` int(11) NOT NULL,
  `id_intervenção` int(11) NOT NULL,
  PRIMARY KEY (`id_utilizador`,`id_intervenção`),
  KEY `fk_Utilizadores_Intervenção_Intervenção1_idx` (`id_intervenção`),
  CONSTRAINT `fk_Utilizadores_Intervenção_Intervenção1` FOREIGN KEY (`id_intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Utilizadores_Intervenção_Utilizador1` FOREIGN KEY (`id_utilizador`) REFERENCES `utilizador` (`id_utilizador`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilizadores_intervenção`
--

LOCK TABLES `utilizadores_intervenção` WRITE;
/*!40000 ALTER TABLE `utilizadores_intervenção` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilizadores_intervenção` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vidro`
--

DROP TABLE IF EXISTS `vidro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vidro` (
  `id_vidro` int(11) NOT NULL AUTO_INCREMENT,
  `descrição` varchar(500) DEFAULT NULL,
  `fragmentos` varchar(45) DEFAULT NULL,
  `forma` int(11) DEFAULT NULL,
  `função` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `cronologia` int(11) DEFAULT NULL,
  `século` varchar(100) DEFAULT NULL,
  `data` varchar(45) DEFAULT NULL,
  `x` varchar(45) DEFAULT NULL,
  `y` varchar(45) DEFAULT NULL,
  `z` varchar(45) DEFAULT NULL,
  `intervenção` int(11) NOT NULL,
  `sondagem` int(11) NOT NULL,
  `UE` int(11) NOT NULL,
  `material` int(11) NOT NULL,
  PRIMARY KEY (`id_vidro`),
  KEY `fk_Vidro_Forma_idx` (`forma`),
  KEY `fk_Vidro_Função_idx` (`função`),
  KEY `fk_Vidro_Estado_idx` (`estado`),
  KEY `fk_Vidro_Cronologia_idx` (`cronologia`),
  KEY `fk_Vidro_Intervenção_idx` (`intervenção`),
  KEY `fk_Vidro_Sondagem_idx` (`sondagem`),
  KEY `fk_Vidro_UE_idx` (`UE`),
  KEY `fk_Vidro_Material_idx` (`material`),
  CONSTRAINT `fk_Vidro_Cronologia` FOREIGN KEY (`cronologia`) REFERENCES `cronologia` (`id_cronologia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Vidro_Estado` FOREIGN KEY (`estado`) REFERENCES `conservação` (`id_conservação`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Vidro_Forma` FOREIGN KEY (`forma`) REFERENCES `forma_vidro` (`id_forma`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Vidro_Função` FOREIGN KEY (`função`) REFERENCES `função_vidro` (`id_função`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Vidro_Intervenção` FOREIGN KEY (`intervenção`) REFERENCES `intervenção` (`id_intervenção`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Vidro_Material` FOREIGN KEY (`material`) REFERENCES `material_tabela` (`id_material`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Vidro_Sondagem` FOREIGN KEY (`sondagem`) REFERENCES `sondagem` (`id_sondagem`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Vidro_UE` FOREIGN KEY (`UE`) REFERENCES `ue` (`id_UE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vidro`
--

LOCK TABLES `vidro` WRITE;
/*!40000 ALTER TABLE `vidro` DISABLE KEYS */;
INSERT INTO `vidro` VALUES (11,'','1',21,1,2,5,'','','','','',101,131,851,911),(21,'','1',8,NULL,2,2,'','','','','',81,91,371,1441),(31,'Com decoração','1',8,NULL,1,5,'','','','','',81,881,7791,2731),(41,'/','1',8,NULL,1,2,'','','','','',81,261,2261,3091),(51,'','1',8,NULL,2,8,'','','','','',81,261,2351,3401),(61,'','1',3,NULL,NULL,8,'','','','','',81,261,2351,3411),(71,'','1',8,NULL,2,8,'','','','','',81,281,2701,4181),(81,'','2',8,NULL,1,5,'','','','','',141,211,1361,4391),(121,'','1',31,NULL,2,5,'','','','','',141,211,1361,4431),(131,'','1',3,NULL,NULL,10,'','','','','',141,211,1381,4581),(141,'','2',8,NULL,1,10,'','','','','',141,211,1361,4591),(151,'Frasco de fármaco ','1',7,NULL,2,2,'','','','','',251,591,5631,4881),(161,'','1',7,NULL,1,10,'','','','','',251,591,5631,4891),(171,'Frasco ','1',11,NULL,1,2,'','','','','',251,631,5711,4961);
/*!40000 ALTER TABLE `vidro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-29  8:10:40
