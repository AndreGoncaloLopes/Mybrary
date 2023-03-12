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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amostra`
--

LOCK TABLES `amostra` WRITE;
/*!40000 ALTER TABLE `amostra` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aparelho`
--

LOCK TABLES `aparelho` WRITE;
/*!40000 ALTER TABLE `aparelho` DISABLE KEYS */;
INSERT INTO `aparelho` VALUES (1,'Alvenaria de Tijolo'),(2,'Alvenaria irregular'),(3,'Alvenaria Mista'),(4,'Alvenaria Regular'),(5,'Alvenaria Seca'),(6,'Cantaria'),(7,'Opus caementicium'),(8,'Opus incertum'),(9,'Opus quadratum'),(10,'Silharia'),(11,'Tabique'),(12,'Taipa'),(13,'Taipa fasquio'),(21,'Betão e tijolo'),(31,'Tijoleira'),(41,'Betão e PVC'),(51,'Pedra e argamassa'),(61,'Terra batida'),(71,'Paralelo'),(81,'PVC'),(91,'Opus'),(101,'Opus signinum');
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
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerâmica`
--

LOCK TABLES `cerâmica` WRITE;
/*!40000 ALTER TABLE `cerâmica` DISABLE KEYS */;
INSERT INTO `cerâmica` VALUES (141,'Tijolo e tegula','2',NULL,1,2,10,21,NULL,NULL,'','','Não','',NULL,NULL,'','','',131,201,1121,201),(151,'','',NULL,NULL,2,10,21,NULL,NULL,'','','Não','',NULL,NULL,'','','',131,201,1141,211),(161,'Romano?','2',NULL,NULL,NULL,5,21,NULL,NULL,'','','Não','',NULL,NULL,'','','',131,201,1181,221),(171,'','3',NULL,NULL,2,10,21,NULL,1,'','','Não','',NULL,NULL,'','','',131,201,1201,231),(181,'','2',NULL,NULL,2,2,21,NULL,1,'','','Não','',NULL,NULL,'','','',131,201,1081,241),(191,'','1',NULL,3,2,8,18,NULL,1,'','','Não','',NULL,NULL,'','','',131,201,1081,251),(201,'','1',NULL,NULL,2,10,21,NULL,1,'','','Não','',NULL,NULL,'','','',131,201,1081,261),(211,'','5',NULL,8,2,4,4,NULL,2,'','','Não','',NULL,NULL,'','','',111,161,971,271),(221,'','2',NULL,3,2,4,4,NULL,2,'','','Não','',NULL,NULL,'','','',111,161,971,281),(231,'','1',NULL,12,2,4,4,NULL,2,'','','Não','',NULL,NULL,'','','',111,161,971,291),(241,'','25',NULL,8,2,7,13,NULL,1,'XVII-XVIII','','Sim','',NULL,NULL,'','','',151,221,1261,301),(251,'','10',NULL,3,2,7,13,NULL,1,'XVII-XVIII','','Sim','',NULL,NULL,'','','',151,221,1261,311),(261,'','8',NULL,7,2,7,13,NULL,1,'XVII-XVIII','','Sim','',NULL,NULL,'','','',151,221,1261,321),(271,'','6',NULL,8,2,7,13,NULL,1,'XVII-XVIII','','Não','',NULL,NULL,'','','',151,221,1261,331),(281,'','2',NULL,3,2,7,13,NULL,1,'XVII-XVIII','','Não','',NULL,NULL,'','','',151,221,1261,341),(291,'','7',NULL,7,2,7,13,NULL,1,'XVII-XVIII','','Não','',NULL,NULL,'','','',151,221,1261,351),(301,'','3',NULL,8,2,8,18,NULL,1,'','','','',NULL,NULL,'','','',151,221,1261,361),(311,'','3',NULL,3,2,8,18,NULL,1,'','','Não','',NULL,NULL,'','','',151,221,1261,371),(321,'','2',NULL,12,2,8,18,NULL,1,'','','Não','',NULL,NULL,'','','',151,221,1261,381),(331,'','2',NULL,1,1,8,8,NULL,1,'','','Não','',NULL,NULL,'','','',151,221,1261,391),(341,'','3',NULL,3,2,8,8,NULL,1,'','','Não','',NULL,NULL,'','','',151,221,1261,401),(351,'','2',NULL,8,1,8,NULL,NULL,1,'','','Não','',NULL,NULL,'','','',151,221,1261,411),(361,'','5',NULL,7,1,8,8,NULL,1,'','','Não','',NULL,NULL,'','','',151,221,1261,421),(371,'Tegula','1',NULL,NULL,1,10,21,NULL,1,'','','','',NULL,NULL,'','','',151,221,1271,431),(381,'','3',NULL,7,2,7,13,NULL,1,'','','Sim','',NULL,NULL,'','','',151,221,1271,441),(391,'','1',NULL,3,2,8,18,NULL,1,'','','Não','',NULL,NULL,'','','',151,221,1271,451),(401,'','3',NULL,8,2,8,8,NULL,1,'','','','',NULL,NULL,'','','',151,221,1271,461),(411,'','1',NULL,3,2,8,8,NULL,1,'','','Não','',NULL,NULL,'','','',151,221,1271,471),(421,'','1',NULL,1,2,8,8,NULL,1,'','','Não','',NULL,NULL,'','','',151,221,1271,481),(431,'','1',511,13,1,8,8,NULL,1,'','','Não','',NULL,NULL,'','','',151,221,1271,491);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1231 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `construtiva`
--

LOCK TABLES `construtiva` WRITE;
/*!40000 ALTER TABLE `construtiva` DISABLE KEYS */;
INSERT INTO `construtiva` VALUES (1,18,6,'0.95','0.70','',13,'','Soleira da porta',2,81,71,81),(11,18,6,'1.10','0.58','',13,'','Soleira',2,81,71,91),(21,17,NULL,'','','',6,'','Revestimento sobre alicerce, está localizado',2,81,71,101),(31,31,NULL,'0.70','0.30','',NULL,'','Grelha para escoamento de água.',2,81,71,111),(41,4,NULL,'','','',21,'Tubo localizado no quadrande SE.','Canalização de água',2,81,71,171),(51,2,2,'','','',13,'Alicerce do bloco Este do Mosteiro','Alicerce',7,81,71,211),(61,2,2,'','','',13,'','Alicerce da Igreja',7,81,71,221),(71,41,2,'1.20 (?)','0.80','',13,'Caixa pétrea composta por blocos de granito, de talhe grosseiro e de planta, aparentemente rectangular. Parte da sepultura encontra-se sob o corte Este.','Sepultura',5,81,71,301),(81,51,NULL,'','','',13,'Laje de granito de talhe rudimentar e com dimensões indeterminadas.','Cobertura da sepultura',5,81,71,311),(91,15,2,'','','',13,'Calçada em blocos de granito de corte rudimentar.','Caminho de acesso ao adro.',2,81,71,331),(101,4,NULL,'','','',13,'Caleira que encaminha a água até ao chafariz que se localiza no claustro. Na zona da Sondagem 1 foi restaurada com cimento. com ','Canalização',7,81,71,361),(111,61,2,'','','',13,'Preparação composta por pequenas pedras de granito.','Assentamento do piso.',NULL,81,91,401),(121,2,2,'','','',13,'Alicerce da parede da Capela-mor, orientação E/O','Alicerce',7,81,91,441),(131,2,2,'','','',13,'Alicerce da parede da Igreja, orientação N/S.','Alicerce',7,81,91,451),(141,14,2,'','','',13,'','Parede Sul da Capela-mor',7,81,91,471),(171,71,2,'','','',13,'Conjunto de pedras em granito de grande porte, consolidadas por camada argilosa de coloração castanha. ','Espécie de \"contraforte\" da parede da Capela mor e da Igreja.',7,81,91,561),(181,15,2,'','','',13,'','Pavimento actual ',2,81,111,571),(251,15,NULL,'','','',6,'','Pavimento',2,101,131,771),(261,3,1,'','','',NULL,'','',NULL,101,141,791),(271,101,NULL,'0.86','','',14,'Poste em madeira','Poste',5,101,131,871),(281,121,NULL,'','','',13,'Laje para apoio do poste em madeira (UE 109)','Base',5,101,131,881),(291,15,NULL,'','','',6,'','Pavimento',2,121,171,991),(301,15,NULL,'','','',6,'','Pavimento',2,121,181,1011),(311,15,NULL,'','','',6,'','Pavimento',2,121,191,1031),(331,15,NULL,'','','',6,'Pavimento em betão e brita com cerca de 20cm de espessura.','Pavimento',2,141,211,1291),(341,4,NULL,'','','',21,'Tubo PVC','Saneamento',2,141,211,1311),(351,4,2,'1.20m','0.80m','',13,'Canalização em pedra de granito de pequena dimensão','Canalização ',8,141,211,1321),(361,17,NULL,'','','',2,'','Revestimento da canalização',8,141,211,1331),(381,15,NULL,'','','',6,'Cimento e brita','Pavimento',2,141,211,1411),(391,17,NULL,'','','',6,'Revestimento em cimento do lintel','Revestimento ',2,141,211,1421),(401,4,NULL,'','','',21,'','Canalização',2,141,211,1431),(411,131,NULL,'','','',6,'Lintel em betão construído aquando a ampliação do edifício num passado recente.','Lintel',2,141,211,1441),(421,4,NULL,'','','',21,'Localiza-se por baixo do lintel (UE 204). No entanto, verifica-se que foi construído \"a posteriori\"','Canalização',2,141,211,1491),(451,NULL,NULL,'','','',NULL,'Igual à UE 213','',NULL,141,211,1561),(461,10,2,'','','',13,'','Muro?',NULL,141,211,1591),(481,15,NULL,'','','',6,'','Pavimento ',2,141,211,1631),(491,141,NULL,'','','',13,'Aterro com pedras de granito ','Aterro',NULL,141,211,1641),(501,4,NULL,'','','',21,'Tubo PVC localizado junto ao corte Este.','Saneamento',2,141,211,1661),(511,4,NULL,'','','',21,'Tubo em PVC localizado junto ao corte Oeste','Saneamento',2,141,211,1671),(521,4,NULL,'','','',51,'Tubo em grés','Saneamento',2,141,211,1691),(531,4,2,'','0.90','',13,'Canalização com orientação NO-SE.','Canalização',7,141,211,1741),(551,17,NULL,'','','',31,'Revestimento ocorrido na reconstrução da canalização UE 312.','Revestimento',2,141,211,1761),(571,15,NULL,'','','',6,'','Pavimento',NULL,141,211,1821),(581,4,NULL,'','','',21,'','Tubos PVC',2,141,211,1841),(591,15,2,'','','',13,'Pavimento contemporâneo à construção do edifício.','Pavimento',8,141,211,1861),(601,91,NULL,'1.80m','0.45m','',13,'Muro em granito sentido SO-NE, com inclusões de material de construção no miolo.','Muro',NULL,141,211,1941),(621,NULL,NULL,'','','',9,'Tijoleira em cerâmica.','Pavimento(?)',NULL,141,211,1961),(641,15,NULL,'','','',6,'Pavimento do logradouro','Pavimento do logradouro',2,151,221,1981),(651,91,2,'','','',13,'Muro localizado a Oeste. Orientação Norte-Sul. ','Muro limite da antiga cozinha a Oeste. Denominado como Muro 1',NULL,81,111,2141),(661,18,NULL,'','','',13,'Soleira da porta Muro 1','Soleira',NULL,81,111,2161),(691,4,NULL,'','','',NULL,'Canalização composta por caixas em betão e tubos em PVC','Saneamento actual',2,81,111,2201),(701,15,NULL,'','','',13,'Pavimento em paralelo','Pavimento',2,81,261,2211),(711,91,2,'','','',13,'','Muro Oeste da antiga cozinha. Orientação Norte-Sul',NULL,81,261,2221),(721,61,NULL,'','','',1,'','Preparado para assentar paralelo',2,81,261,2231),(731,151,NULL,'','','',13,'Pedra em granito de pequeno porte, está associado a uma camada onde foi detectado espólio de cronologia medieval.','Derrube de antigas estruturas?\n',6,81,261,2401),(741,15,NULL,'','','',13,'Pavimento ','',2,81,281,2421),(751,61,NULL,'','','',1,'','',2,81,281,2431),(761,4,NULL,'','','',21,'Tubos em PVC','Saneamento',2,81,281,2461),(791,121,NULL,'','','',2,'Base de forma quadrangular, em argamassa compactada. Localizada a Oeste do sector.','',NULL,81,281,2531),(801,121,NULL,'','','',2,'Base de forma quadrangular, em pedra de granito e argamassa compactado. Localizada a Este do sector.','Base',NULL,81,281,2541),(811,121,2,'','','',61,'','Base onde arrancava pilar da chaminé',NULL,81,281,2581),(821,15,61,'','','',NULL,'Pequena amostra de terra batida localizada na parte Oeste do sector.','Pavimento (?)',NULL,81,281,2591),(841,161,NULL,'','','',2,'Resto de argamassa','',NULL,81,281,2661),(851,10,2,'2m','0.60m','',13,'Muro denominado como nº 5 com orientação Norte-Sul, paralelo ao Muro 3. Esta construção, entre estes dois muros, formaram uma caleira.','Muro',NULL,81,281,2721),(861,4,NULL,'','','',61,'Fundo da caleira com pendente Sul-Norte','Caleira',NULL,81,281,2741),(871,4,2,'','','',13,'Caleira em granito, com orientação Sul-Norte, e cerca de 4m de comprimento. O seu arranque está adossado à parede Norte do Mosteiro, e o fim embutido no Muro 2, ou seja, no muro Norte da antiga cozinha. Nos primeiros 2m de comprimento, a caleira apresenta uma construção medíocre, composta por duas paredes em pedra miúda. Os restantes 2m apresenta uma construção mais robusta, em pedra de granito de médio porte e argamassa. Também o fundo apresenta duas fases de construção. O percurso inicial da caleira é em argila, sendo nos restantes 2m em granito e argamassa, onde se verifica uma pendente acentuada de Sul para Norte, isto é, em direção ao rio.','Canalização proveniente do interior do Mosteiro, provavelmente do chafariz.',7,81,281,2781),(881,151,NULL,'','','',NULL,'Pedra em granito de pequeno porte, está associado a uma camada onde foi detectado espólio de cronologia medieval.','Derrube de antigas estruturas?',NULL,81,111,2841),(891,151,NULL,'','','',NULL,'Pedra em granito de pequeno porte, está associado a uma camada onde foi detectado espólio de cronologia medieval.','Derrube de antigas estruturas?',NULL,81,111,2851),(901,15,71,'','','',13,'','',2,81,291,2861),(911,61,NULL,'','','',1,'','',2,81,291,2871),(921,13,6,'','','',13,'Padieira de uma das portas de acesso ao Mosteiro.','Padieira',NULL,81,291,2881),(941,4,NULL,'','','',21,'Canalização de água','Canalização',2,81,291,2911),(951,4,NULL,'','','',21,'Tubos para água','Canalização',2,81,291,2931),(961,91,2,'','','',13,'Muro Este da antiga cozinha, denominado como nº3','Muro da antiga cozinha',7,81,291,2971),(971,2,2,'','','',13,'Alicerce da parede Norte do Mosteiro','Alicerce',7,81,291,2991),(981,4,2,'1.4m','0.80m','0.20/0.30m',13,'Caleira com sentido Sul-Norte','Canalização de água proveniente do chafariz',NULL,81,291,3031),(991,4,1,'','','',71,'Caixa quadrangular que recebia tubos em PVC','Caixa de canalização',2,81,291,3081),(1001,15,NULL,'','','',13,'Paralelo','Pavimento',2,161,341,3201),(1011,61,NULL,'','','',1,'Areia','Preparação de pavimento',2,161,341,3211),(1021,91,2,'2m','1m','',13,'Muro com orientação SO_NE','Provável muro de suporte das paredes em tabique',2,201,391,3411),(1031,91,2,'1.40m','0.40m','',13,'Muro com orientação SE_NO.','Provável muro de suporte das paredes em tabique',2,201,391,3421),(1041,4,NULL,'','','',51,'Tubo em grés','Canalização para saneamento',2,201,391,3441),(1051,15,NULL,'','','',14,'Vestígios de pavimento em madeira localizado junto ao corte Oeste e Sul.','Pavimento',2,201,391,3451),(1061,15,6,'','','',13,'Laje em granito. Todo o corredor de acesso à casa, era revestido a lajes de granito. Posteriormente foi revestido a tijoleira. ','Antigo pavimento',2,201,391,3461),(1071,15,NULL,'','','',6,'','Pavimento',2,191,311,3541),(1081,151,NULL,'','','',13,'Aglomerado de pedras, que á posteriori se concluiu serem um pequeno derrube/glomerado de pedras.','',NULL,191,311,3631),(1091,15,101,'','','',NULL,'Apenas visível no corte Norte','Pavimento',10,191,311,3661),(1101,7,6,'','','',13,'Capitel decorado com folhas de acanto','',NULL,191,311,3681),(1121,161,NULL,'','','',2,'Argamassa de cor laranja.','',NULL,191,421,3791),(1131,10,2,'','','',13,'Arranque de muro com cerca de 0.60m de comprimento e 0.4m de largura, localizado no quadrante SE da sondagem, com orientação NO_SE. Tem revestimento de argamassa alaranjada.','Muro',NULL,191,421,3801),(1141,91,2,'','','',13,'Alicerce de muro construído com pedras de granito, com orientação NE_SO. Fará parte da construção do edifício existente.','Alicerce/Muro',8,191,421,3831),(1151,4,NULL,'','','',51,'Tubo de saneamento em grés','Canalização',2,191,431,3871),(1161,121,NULL,'','','',6,'Base para apoio do tubo em grés','Base em cimento',2,191,431,3891),(1171,15,NULL,'','','',13,'','Pavimento do antigo logradouro',2,211,451,3951),(1181,151,NULL,'','','',NULL,'','',NULL,211,451,4001),(1191,151,NULL,'','','',13,'Derrube ou aterro de pedras','Derrube ou aterro de pedras',5,211,451,4011),(1201,15,2,'','','',13,'Pedras em granito, com juntas em argamassa amarela.','Pavimento ',8,211,471,4111),(1211,10,NULL,'','','',NULL,'Muro em pedra de média  dimensão  em granito, com inclusão de argamassa avermelhada.','Muro de divisão de propriedade no logradouro',2,211,471,4121),(1221,17,NULL,'','','',6,'Revestimento em cimento da canalização em grês.','Revestimento',2,211,471,4171);
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
INSERT INTO `construtiva_has_inclusões` VALUES (601,3),(171,21),(101,41),(141,51),(651,51),(851,51),(871,51),(961,51),(1131,51),(1211,51);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diverso`
--

LOCK TABLES `diverso` WRITE;
/*!40000 ALTER TABLE `diverso` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_cerâmica`
--

LOCK TABLES `forma_cerâmica` WRITE;
/*!40000 ALTER TABLE `forma_cerâmica` DISABLE KEYS */;
INSERT INTO `forma_cerâmica` VALUES (1,'Asa'),(2,'Bico'),(3,'Bordo'),(4,'Bordo com arranque de asa'),(5,'Bordo e colo'),(6,'Colo'),(7,'Fundo'),(8,'Parede'),(9,'Parede com arranque de asa'),(10,'Pé'),(11,'Perfil completo'),(12,'Fundo'),(13,'Pega');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_metal`
--

LOCK TABLES `forma_metal` WRITE;
/*!40000 ALTER TABLE `forma_metal` DISABLE KEYS */;
INSERT INTO `forma_metal` VALUES (1,'Adaga'),(49,'Agulha'),(2,'Alfinete'),(3,'Anel'),(4,'Aplique'),(5,'Argola'),(6,'Armadilha'),(7,'Asa de sítula'),(8,'BalanÃ§a'),(9,'Botão'),(10,'Bracelete'),(11,'Cabo'),(12,'Cavilha'),(13,'Chave'),(14,'Chocalho'),(15,'Colchete'),(16,'Colher'),(17,'Conta'),(18,'Cravo'),(19,'Dedal'),(20,'Dobradiça'),(21,'Escória'),(22,'Espada'),(23,'Espeto'),(24,'Faca'),(25,'Fechadura'),(26,'Ferrolho'),(27,'Fíbula'),(28,'Fivela'),(29,'Foice'),(30,'Gancho'),(31,'Grampo'),(32,'Grelha'),(33,'Ideterminado'),(34,'Lâmina'),(35,'Machado'),(36,'Martelo'),(37,'Medalha'),(38,'Medalhão'),(39,'Pente'),(40,'Peso'),(41,'Placa'),(42,'Prego'),(43,'Prumo'),(44,'Punhal'),(45,'Rebite'),(46,'Tacha'),(47,'Tampa'),(48,'Tesoura');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_vidro`
--

LOCK TABLES `forma_vidro` WRITE;
/*!40000 ALTER TABLE `forma_vidro` DISABLE KEYS */;
INSERT INTO `forma_vidro` VALUES (1,'Asa'),(2,'Bico'),(3,'Bordo'),(4,'Bordo com arranque de asa'),(5,'Bordo e colo'),(6,'Colo'),(7,'Fundo'),(8,'Parede'),(9,'Parede com arranque de asa'),(10,'Pé'),(11,'Perfil completo'),(12,'Fundo'),(13,'Pega');
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
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inclusões`
--

LOCK TABLES `inclusões` WRITE;
/*!40000 ALTER TABLE `inclusões` DISABLE KEYS */;
INSERT INTO `inclusões` VALUES (1,'Cerâmica'),(2,'Madeira'),(3,'Materiais de construção'),(11,'Areia'),(21,'Argila'),(31,'Pedra de granito'),(41,'Cimento'),(51,'Argamassa'),(61,'Madeira'),(71,'Lítico'),(81,'Moedas'),(91,'Caricas'),(101,'Raízes'),(111,'Plásticos, sapatos, arames, material de construção recentes'),(121,'Lâmpada'),(131,'Cartucho'),(141,'Embalagens de medicação'),(151,'Carvão'),(161,'Vidro'),(171,'Fauna mamacológica'),(181,'Telha'),(191,'Areão'),(201,'Plástico'),(211,'Panela em ferro'),(221,'Pregos em ferro'),(231,'Capitel'),(241,'Berlinde'),(251,'Esferovite, tecidos, plásticos');
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
) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interface`
--

LOCK TABLES `interface` WRITE;
/*!40000 ALTER TABLE `interface` DISABLE KEYS */;
INSERT INTO `interface` VALUES (11,'Corte para colocar a UE 101','',2,81,71,201),(21,'Vala de fundação do alicerce UE 114','Fundação',7,81,71,231),(31,'Vala','Vala de fundação da UE 113',7,81,71,251),(41,'Vala para construção da calçada','Corte ',2,81,71,341),(51,'Interface de plante linear com orientação  E/O','',NULL,81,91,391),(61,'Interface negativo','Corte para instalação de abastecimento de água.',2,81,91,421),(71,'Interface','vala de fundação do \"contraforte\"',7,81,91,501),(81,'Interface negativo','Corte superior da rocha',5,101,131,891),(101,'Interface negativo localizado a SE','Indeterminado',5,101,131,911),(111,'Orifício semi-circular localizado na parede (rocha) do lado Este','',5,101,131,921),(121,'Orifício semi-circular localizado na parede (rocha) do lado Este','',5,101,131,931),(131,'Orifício semi-circular localizado na parede (rocha) do lado Este','',5,101,131,941),(141,'Orifício semi-circular localizado na parede (rocha) do lado Este','',5,101,131,951),(151,'Interface negativo, de forma circular pouco profundo.','Buraco de poste',5,121,191,1051),(161,'Corte horizontal localizado a Sul da sondagem ','Vala (?)',5,121,191,1061),(171,'Interface negativo vertical','Vala para colocação de tubo em PVC (UE 209) localizado a Oeste da sondagem.',2,141,211,1481),(181,'Interface negativo vertical','Vala para colocação de tubo em PVC',2,141,211,1501),(191,'Interface negativo para colocação de tubo em PVC lado Oeste.','Vala',2,141,211,1701),(201,'Interface negativo para colocação de tubo em PVC lado Este.','Vala',2,141,211,1711),(211,'','Vala para colocação de tubo PVC',2,141,211,1891),(221,'Interface negativo de forma circular','Buraco de poste?',NULL,141,211,1901),(231,'Interface negativo vertical','Vala de fundação. Está localizada a Este do Muro 1. ',NULL,81,111,2101),(241,'Interface negativo vertical localizado a Oeste do Muro 1 (Lado exterior da cozinha)','Vala de fundação da parede Norte do Mosteiro.',NULL,81,111,2151),(251,'Interface negativo vertical.','Vala de fundação do alicerce da parede Norte do Mosteiro. Está localizado a Este do Muro 1 (Interior da cozinha).',NULL,81,111,2171),(261,'Interface negativo vertical','Vala para colocação de tubo em PVC',2,81,281,2471),(271,'Interface negativo vertical','Corte para depósito da UE 913',2,81,281,2571),(281,'Interface negativo vertical','',NULL,81,281,2771),(291,'Vala para colocação das guias em granito do pavimento actual','Vala',2,81,291,2891),(301,'Interface negativo ','Vala para colocação de tubos da água',2,81,291,2941),(311,'Interface negativo','Vala da caleira',NULL,81,291,3051),(321,'Interface negativo','Vala de fundação do Muro 4',NULL,81,291,3121),(331,'Interface de forma circular, paredes rectas e fundo plano','Fossa ',3,161,361,3291),(341,'Interface negativo de forma sub-circlar localizado no corte Oeste. Apresenta paredes regulares e fundo plano.','Fossa ',3,161,361,3301),(351,'Interface','Buraco de árvore (?)',2,161,371,3331),(361,'Interface negativo (orientação SO_NE) para colocação de tubo de saneamento','Vala ',2,201,391,3431),(371,'Interface negativo com orientação NE_SO','Vala do muro NO da casa nº 92.',2,201,401,3491),(381,'Interface negativo com orientação NE_SO','Vala de construção do Muro NO da casa nº 92',2,201,411,3521),(391,'Interface negativo de forma circular','Buraco de poste?',NULL,191,311,3591),(401,'Interface negativo junto ao corte Oeste. ','',NULL,191,311,3641),(411,'Interface negativo do Muro UE 210','Vala do muro',NULL,191,421,3841),(421,'interface negativo, orientação NO_SE','Vala para colocação do tubo em grés',2,191,431,3881),(431,'Vala de fundação  do muro UE 306, localizado a Norte do muro','Vala de fundação ',2,211,471,4141);
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
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervenção`
--

LOCK TABLES `intervenção` WRITE;
/*!40000 ALTER TABLE `intervenção` DISABLE KEYS */;
INSERT INTO `intervenção` VALUES (81,2,3,81,'VCMSJC.21','41.773056','-8.846944',1),(101,2,1,101,'BRSV_242-246.21','41.555556','-8.420833',1),(111,1,1,111,'BTAVDDS_6-8.21','41.560556','-8.426944',1),(121,2,1,121,'BRIGVG.21','41.569167 -8.388889',' -8.388889',1),(131,2,1,131,'BRNSET_62.21','41.5575','-8.386944',1),(141,2,7,141,'BLSJ_6-7.21','  41.55',': -8.425',1),(151,2,1,151,'BLST_16-17.20','41.54778','-8.425833',1),(161,2,1,161,'BRIRY_266-268.22','41.551667','-8.432222',1),(191,2,21,191,'BLSTG_10.22','41.548056','- 8.425556',1),(201,2,1,201,'BRSD_90-92.21',' 41.554722','8.413611',1),(211,2,21,211,'BLCA_4-5.21',' 41.548889','- 8.423611',1),(221,2,7,221,'BRBV14-16.21','41.551667','-8.429444',1),(241,2,1,241,'BRMDG_LT8.22','41.565','-8.396667',1),(251,2,7,251,'BRDDS_56-58.22','  41.550278','-8.428333',1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `litico`
--

LOCK TABLES `litico` WRITE;
/*!40000 ALTER TABLE `litico` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matéria_prima`
--

LOCK TABLES `matéria_prima` WRITE;
/*!40000 ALTER TABLE `matéria_prima` DISABLE KEYS */;
INSERT INTO `matéria_prima` VALUES (1,'Bronze'),(2,'Chumbo'),(3,'Cobre'),(4,'Ferro'),(5,'Ouro'),(6,'Prata'),(7,'Zinco'),(8,'Estanho');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Areia'),(2,'Argamassa'),(3,'Argila'),(4,'Azulejo'),(5,'Basalto'),(6,'Betão'),(7,'Blocos cimento'),(8,'Calcário'),(9,'Cerâmica'),(10,'Cobre'),(11,'Ferro'),(12,'Gesso'),(13,'Granito'),(14,'Madeira'),(15,'Opus Signinum'),(16,'Xisto'),(17,'Telha'),(21,'PVC'),(31,'Betão, pedra e tijolo'),(41,'Cimento'),(51,'Grés'),(61,'Pedra de granito e argamassa'),(71,'Tijolo e cimento'),(81,'Pedras e tubo em grés');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_amostra`
--

LOCK TABLES `material_amostra` WRITE;
/*!40000 ALTER TABLE `material_amostra` DISABLE KEYS */;
INSERT INTO `material_amostra` VALUES (1,'Areia'),(2,'Argamassa'),(3,'Argila'),(4,'Carvão'),(5,'Ferro'),(6,'Madeira'),(7,'Metal'),(8,'Pasta de Vidro'),(9,'Sedimento'),(10,'Sementes');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_litico`
--

LOCK TABLES `material_litico` WRITE;
/*!40000 ALTER TABLE `material_litico` DISABLE KEYS */;
INSERT INTO `material_litico` VALUES (1,'Anfibolito'),(2,'Basalto'),(3,'Calcário'),(4,'Granito'),(5,'Indeterminado'),(6,'Mármore'),(7,'Quartzito'),(8,'Quartzo'),(9,'Xisto');
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
) ENGINE=InnoDB AUTO_INCREMENT=492 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_tabela`
--

LOCK TABLES `material_tabela` WRITE;
/*!40000 ALTER TABLE `material_tabela` DISABLE KEYS */;
INSERT INTO `material_tabela` VALUES (201,1,1121,201,131,1,10),(211,1,1141,201,131,1,10),(221,1,1181,201,131,1,5),(231,1,1201,201,131,1,10),(241,1,1081,201,131,1,2),(251,1,1081,201,131,1,8),(261,1,1081,201,131,1,10),(271,1,971,161,111,1,4),(281,1,971,161,111,1,4),(291,1,971,161,111,1,4),(301,1,1261,221,151,1,7),(311,1,1261,221,151,1,7),(321,1,1261,221,151,1,7),(331,1,1261,221,151,1,7),(341,1,1261,221,151,1,7),(351,1,1261,221,151,1,7),(361,1,1261,221,151,1,8),(371,1,1261,221,151,1,8),(381,1,1261,221,151,1,8),(391,1,1261,221,151,1,8),(401,1,1261,221,151,1,8),(411,1,1261,221,151,1,8),(421,1,1261,221,151,1,8),(431,1,1271,221,151,1,10),(441,1,1271,221,151,1,7),(451,1,1271,221,151,1,8),(461,1,1271,221,151,1,8),(471,1,1271,221,151,1,8),(481,1,1271,221,151,1,8),(491,1,1271,221,151,1,8);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metal`
--

LOCK TABLES `metal` WRITE;
/*!40000 ALTER TABLE `metal` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moeda`
--

LOCK TABLES `moeda` WRITE;
/*!40000 ALTER TABLE `moeda` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objeto`
--

LOCK TABLES `objeto` WRITE;
/*!40000 ALTER TABLE `objeto` DISABLE KEYS */;
INSERT INTO `objeto` VALUES (1,'Agulha'),(2,'Alfinete'),(3,'Aliança'),(4,'Anel'),(5,'Anforte'),(6,'Anzol'),(7,'Apito'),(8,'Aplique'),(9,'Armadura'),(10,'Asa'),(11,'Botão'),(12,'Bracelete'),(13,'Brinco'),(14,'Cadinho'),(15,'Caixa'),(16,'Cálice'),(17,'Candeia'),(18,'Candelabro'),(19,'Capacete'),(20,'Chave'),(21,'Cinzel'),(22,'Colar'),(23,'Colher'),(24,'Conta'),(25,'Copo'),(26,'Cossoiro'),(27,'Dado'),(28,'Disco'),(29,'Estátua'),(30,'Estatueta'),(32,'Fábula'),(31,'Faca'),(33,'Ficha de jogo'),(34,'Frasco'),(35,'Fuso'),(36,'Lamela'),(37,'Lâmina'),(38,'Lasca'),(39,'Lucerna'),(40,'Mascarão'),(41,'Pinça'),(42,'Placa'),(43,'Ponta de Lança'),(44,'Pulseira'),(45,'Puxador'),(46,'Raspador'),(47,'Seixo'),(48,'Sino'),(49,'Tessela'),(50,'Tinteiro'),(51,'Torque'),(52,'Unguentário');
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
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sítio`
--

LOCK TABLES `sítio` WRITE;
/*!40000 ALTER TABLE `sítio` DISABLE KEYS */;
INSERT INTO `sítio` VALUES (211,'Largo Carlos Amarante 4-5'),(191,'Largo de Santiago nº 10'),(151,'Largo de Santiago nº 16-17 '),(171,'Largo de Santiago º 10, Braga'),(141,'Largo de São João de Souto nº 6-7'),(81,'Mosteiro de Cabanas - Afife'),(251,'Rua D. Diogo de Sousa nº 56-58 - Braga'),(221,'Rua da Boavista 14 - 16'),(121,'Rua da Igreja Velha de Gualtar'),(131,'Rua das Nogueiras e Santa Eulália n°62'),(201,'Rua de São Domingos nº 90-92'),(161,'Rua Irmãos Roby nº 266-268'),(241,'Rua Maria Delfina Gomes_LT 8 -  Braga'),(101,'Rua S. Vicente n° 242-246'),(111,'Travessa Avenida Dr. Artur Soares nº 6-8');
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
) ENGINE=InnoDB AUTO_INCREMENT=2341 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sedimentar`
--

LOCK TABLES `sedimentar` WRITE;
/*!40000 ALTER TABLE `sedimentar` DISABLE KEYS */;
INSERT INTO `sedimentar` VALUES (31,'Castanho escuro',3,1,'Camada Humosa.','',2,81,71,121),(41,'Castanha acinzentada',3,5,'Preparação para assentamento da laja UE 102','Aterro',2,81,71,131),(51,'Castanha',3,5,'','Aterro',NULL,81,71,141),(61,'Castanha',3,1,'','Aterro',2,81,71,161),(71,'Castanha clara',3,4,'Camada heterogénea','',NULL,81,71,181),(81,'Preta',3,4,'','',NULL,81,71,191),(91,'Castanho',3,4,'UE composta por várias camadas, com pendor Oeste-Este.','Conjunto de várias camadas de terra, com caracteristicas distintas que poderão servido para aterrar metade da área do adro, ou então para rampear o terreno a fim de facilitar o transporte de pedras para a construção da Igreja.',7,81,71,241),(101,'Castanha amarelada',3,4,'','Aterro',NULL,81,71,261),(111,'Preta',3,4,'','',NULL,81,71,271),(121,'Azinzentada',3,2,'Camada com nódulos de arqila de pedras em granito de pequeno calibre.','',NULL,81,71,281),(131,'Preto',3,2,'','Camada de enchimento da Sepultura UE 122',NULL,81,71,291),(141,'Castanho claro',4,1,'Areia para assentar pedra da calçada','Preparação da calçada',2,81,71,351),(151,'Castanho escura',3,1,'Terra humosa de canteiro','',2,81,91,371),(161,'Alaranjada',2,2,'','',NULL,81,91,381),(171,'Amarelada',4,1,'Areia','Areia depositada para assentar tubos, em PVC, de abastecimento de água.',2,81,91,411),(181,'Amarelada',5,1,'Saibro','Rocha',5,81,91,431),(191,'Castanha',2,2,'','Aterro',NULL,81,91,461),(201,'Castanha amarelada',2,4,'Camada heterogénea com saibro e materiais de construção.','Preparado do pavimento',2,81,111,601),(251,'Castanha escura',3,1,'','Antigo soalho?',8,101,131,801),(261,'Castanho escuro',3,1,'Aterro composto por materiais de obra, como argamassas e cal, localizado no quadrante SE.','Aterro',2,101,131,811),(271,'Castanha amarelada',2,1,'Camada de saibro, em certas zonas endurecido.','Pavimento?',8,101,131,821),(281,'Acinzentada',3,7,'','Aterro',NULL,101,131,831),(291,'Castanha',3,7,'','Aterro',NULL,101,131,841),(301,'Castanha',3,1,'','Aterro',NULL,101,131,851),(311,'Castanha',3,3,'Camada de fina espessura, composta maioritariamente composta por madeira.','Madeira',5,101,131,861),(321,'Amarela',NULL,NULL,'Rocha granítica','Rocha ',5,101,131,961),(331,'Castanho escuro',3,6,'Camada de coloração castanha escura, com pendente Oeste-Este. Observou-se cerâmica doméstica de cozedura redutora, enquadrada cronologicamente na Idade do Ferro. Esta UE localiza-se no Castro, bem como nas áreas junto à antiga moradia.','Camada humosa',4,111,161,971),(341,'Castanha',3,1,'Camada heterogénea, composta por terras castanhas escuras e amareladas. Localiza-se na área da antiga habitação.','Aterro',2,111,161,981),(351,'Castanha amarelada',1,NULL,'','Rocha granítica',5,121,171,1001),(361,'Castanha amarelada',1,NULL,'','Rocha granítica',5,121,181,1021),(371,'Castanho escuro',3,1,'','Enchimento da UE 303',2,121,191,1041),(381,'Castanha amarelada',NULL,NULL,'','Rocha granítica',5,121,191,1071),(391,'Castanha ',3,4,'','Aterro',NULL,131,201,1081),(401,'',NULL,NULL,'Igual à UE 101','',NULL,131,201,1091),(411,'Castanha',3,4,'','Aterro',NULL,131,201,1101),(421,'',NULL,NULL,'','Rocha granítica',NULL,131,201,1111),(431,'Castanha',3,4,'','Aterro',NULL,131,201,1121),(441,'Amarela',NULL,NULL,'','Saibro',NULL,131,201,1131),(451,'Castanha',3,4,'','Aterro',NULL,131,201,1141),(461,'',NULL,NULL,'Igual à UE 401','Aterro',NULL,131,201,1151),(471,'Castanha',3,4,'','Aterro',NULL,131,201,1161),(481,'',NULL,NULL,'Saibro','Saibro/rocha',NULL,131,201,1171),(491,'Castanha',3,4,'','Aterro',NULL,131,201,1181),(501,'',NULL,NULL,'Saibro','Saibro/rocha',NULL,131,201,1191),(511,'Castanha',3,4,'','Aterro',NULL,131,201,1201),(521,'',NULL,NULL,'Saibro','Saibro/rocha',NULL,131,201,1211),(531,'Castanha clara',3,4,'','Aterro',NULL,131,201,1221),(541,'',NULL,NULL,'Rocha granítica','Rocha granítica',NULL,131,201,1231),(551,'Castanho escuro',3,1,'Aterro com muito lixo contemporâneo','Aterro',2,151,221,1251),(561,'Castanho escuro',3,5,'Aterro','Aterro',2,151,221,1261),(571,'Castanha ',3,5,'Aterro','Aterro',NULL,151,221,1271),(581,'Castanha',3,5,'Igual à 104','',NULL,151,221,1281),(591,'Castanha escura',2,5,'Aterro com inclusões de materiais de construção de cronologia recente e muitas raízes. Esta sondagem localiza-se na área do antigo logradouro.','Aterro',2,141,211,1301),(601,'Amarela',4,1,'Areia','Depósito de fundo da caleira',8,141,211,1341),(611,'Castanho escuro',3,2,'','Aterro',8,141,211,1351),(621,'Castanha',3,1,'','Aterro',8,141,211,1361),(631,'Castanho escuro',3,4,'','Aterro',NULL,141,211,1381),(641,'Castanha amarelada',3,2,'Camada heterogénea com argamassa amarelada, localizada a Oeste da sondagem.','Piso?',NULL,141,211,1391),(651,'Acinzentada',3,5,'','Aterro',NULL,141,211,1401),(661,'Azinzentada',4,1,'Areia','Enchimento da vala para colocação de tubo em PVC (UE203)',2,141,211,1451),(671,'Castanha',NULL,1,'Aterro localizado a Sul do lintel','Aterro ',NULL,141,211,1461),(681,'Castanho escuro',3,1,'Aterro localizado a Norte do lintel','Aterro',NULL,141,211,1471),(691,'Castanha acinzentada',3,5,'Aterro localizado a Sul do lintel (UE 204)','Aterro',NULL,141,211,1511),(701,'Castanha acinzentada',3,5,'Aterro localizado a Norte do lintel (UE 204)','Aterro',NULL,141,211,1521),(711,'Cinzenta',4,1,'Areia','Enchimento da vala (UE208)',2,141,211,1531),(721,'Castanha',3,4,'','Aterro',NULL,141,211,1571),(731,'Castanha',3,4,'','Aterro',NULL,141,211,1581),(741,'Castanha',3,4,'','Não escavada',NULL,141,211,1601),(751,'Castanho escuro',3,4,'Não escavada','',NULL,141,211,1621),(761,'Azinzentada',4,1,'Areia','Enchimento da vala UE 309',NULL,141,211,1651),(771,'Castanha ',3,1,'','Aterro',NULL,141,211,1681),(781,'Castanho escuro',3,1,'Aterro com materiais de construção recentes. Localiza-se a Este da canalização em granito UE 312.','Aterro',2,141,211,1721),(791,'Castanho escuro',3,1,'Aterro com materiais de construção recentes. Localiza-se a Oeste da canalização em granito UE 312.','Aterro',NULL,141,211,1731),(801,'Castanho escuro',3,5,'Camada localizada a Oeste da canalização UE 312.','',NULL,141,211,1771),(811,'Castanho escuro',3,4,'Camada localizada a Este da canalização UE 312','Aterro',NULL,141,211,1781),(821,'Castanho escuro',3,4,'','Aterro',NULL,141,211,1791),(831,'Azinzentada',4,1,'Areia','Enchimento da UE 308',NULL,141,211,1811),(841,'Castanha amarelada',3,1,'','',2,141,211,1831),(851,'Castanha amarelada',3,1,'','Aterro',NULL,141,211,1851),(861,'Castanha amarelada',3,1,'','Nivelamento para assentar pedra UE 405',8,141,211,1871),(871,'Castanha',3,5,'','Aterro',NULL,141,211,1881),(881,'Castanho escuro',3,5,'','Pavimento de obra?',NULL,141,211,1911),(891,'Castanha',3,1,'','Aterro. Camada de abandono, localiza-se sobre muro UE 414',NULL,141,211,1921),(901,'Castanho ',NULL,NULL,'','Aterro',NULL,141,211,1931),(911,'Castanha clara',3,1,'Heterogénea com muita telha. ','Aterro ',2,81,111,1991),(921,'Castanha escura',3,5,'Localiza-se a Oeste do Muro 1','Segundo aterro composto por telhas',2,81,111,2001),(931,'Castanho escuro',2,5,'Localiza-se a Este do Muro 1','Pavimento?',NULL,81,111,2011),(941,'Castanha',2,1,'Heterogénea, saibrosa com inclusões de pedras e muitos fragmentos de telha. Localiza-se a Oeste do Muro. Lado externo da antiga cozinha.','Aterro',2,81,111,2021),(951,'Castanha',3,5,'Heterogénea, com manchas de saibro. Localiza no interior da antiga cozinha.','Aterro',NULL,81,111,2031),(961,'Amarela',3,1,'Argamassa localizada junto ao Muro 1','Argamassa do muro',NULL,81,111,2041),(971,'Amarela',3,5,'Argamassa junto ao alicerce ','Argamassa',NULL,81,111,2051),(981,'Castanha',NULL,NULL,'','',NULL,81,111,2061),(991,'Cinzenta',3,4,'','',NULL,81,111,2071),(1001,'Acinzentada',3,5,'','',NULL,81,111,2081),(1011,'Castanho escuro',3,5,'Localiza-se do lado Oeste do Muro 1.','',NULL,81,111,2091),(1021,'Preta',3,1,'','',NULL,81,111,2111),(1031,'Castanho ',3,5,'','',NULL,81,111,2121),(1051,'Castanha amarelada',2,1,'','Aterro',NULL,81,261,2241),(1061,'Castanho escuro',3,1,'Localiza-se do lado Este do Muro 1','',NULL,81,261,2251),(1071,'Castanha',3,1,'Localiza-se a Oeste do Muro 1','',2,81,261,2261),(1081,'Castanha amarelada',3,5,'Argamassa e pedras','Derrube',NULL,81,261,2271),(1091,'Castanho escuro',1,5,'','Pavimento?',NULL,81,261,2281),(1101,'Castanha muito escura',3,1,'','',NULL,81,261,2291),(1111,'Castanha acinzentada',3,4,'','',NULL,81,261,2301),(1131,'',NULL,NULL,'Pedras em granito de grande porte e seixos. Localiza-se no lado Oeste do Muro 1.','Antigo leito do rio',NULL,81,261,2321),(1141,'Castanho muito escuro',3,2,'','',6,81,261,2331),(1151,'Castanha',2,4,'','Pavimento exterior à cozinha (?)',2,81,261,2341),(1161,'Castanha',3,1,'Composta por muita telha','Aterro',NULL,81,261,2351),(1171,'Castanha clara',3,1,'Com muitas telhas','Aterro',NULL,81,261,2361),(1181,'Cinzenta',3,4,'','',NULL,81,261,2371),(1191,'',NULL,NULL,'Pedra em granito de pequeno porte, está associado a uma camada onde foi detectado espólio de cronologia medieval.\n','Derrube de antigas estruturas?',NULL,81,261,2381),(1201,'Castanho muito escuro',3,2,'','',6,81,261,2391),(1211,'',NULL,NULL,'Pedras em granito de grande porte e seixos. Localiza-se no lado Este do Muro 1.','Antigo leito do rio',NULL,81,261,2411),(1221,'Castanha amarelada',2,1,'','Pavimento (?)',NULL,81,281,2441),(1231,'Castanho escuro',3,1,'Camada heterogénea','Enchimento da vala do tubo em PVC',NULL,81,281,2451),(1241,'Castanha',3,1,'','Aterro',NULL,81,281,2481),(1251,'Castanha',3,1,'','',NULL,81,281,2491),(1261,'Castanha acinzentada',2,5,'Pequena amostra de camada compacta.','Pavimento (?)',NULL,81,281,2501),(1271,'Castanha',3,1,'Pedra de pequeno porte e terra arenosa. Uma das pedras apresenta corte feito com máquina elétrica. ','Aterro',2,81,281,2551),(1281,'Castanho',3,1,'Camada heterogénea','',NULL,81,281,2561),(1291,'Preta',4,1,'Camada preta composta maioritariamente por carvões. Localiza-se no centro das bases de granito e argamassa UE 912 e 917, bem como à mesma cota do pavimento UE 918.','Lareira',NULL,81,281,2601),(1301,'Cinzenta',2,1,'Camada cinzenta, localizada a norte da Base UE 917. Tem características e cotas similares com as UE\'s 608, 910 e 918.','Pavimento (?)',NULL,81,281,2611),(1311,'Castanho escuro',3,1,'','Lareira ?',NULL,81,281,2621),(1321,'Castanha amarelada',2,1,'Camada composta por pedras de granito e argamassa','Aterro',NULL,81,281,2631),(1331,'Castanha',3,1,'','',NULL,81,281,2641),(1341,'Castanho acinzentada',3,1,'Camada acinzentada de fina espessura, onde se registou uma pequena depressão onde se concentrava a maior parte de carvões. Não conseguimos perceber se esta pequena depressão terá feito parte da estrutura da lareira, ou se obteve esta configuração devido a alguma pedra que faria parte da estrutura.','Piso? Base da lareira ?',NULL,81,281,2671),(1351,'Acinzentada',2,1,'','Preparação de pavimento?',NULL,81,281,2681),(1361,'Castanho escura',3,5,'','',NULL,81,281,2691),(1371,'Castanha',3,4,'','Aterro',NULL,81,281,2701),(1381,'Castanha amarelada',3,1,'','Aterro',NULL,81,281,2711),(1391,'Castanha escura',3,4,'Enchimento da caleira UE 930','Enchimento/camada de abandono da caleira',NULL,81,281,2731),(1401,'Amarela',3,1,'Argamassa localizada junto à UE 917','',NULL,81,281,2751),(1411,'Preta',3,2,'','',NULL,81,281,2761),(1421,'Preta',3,1,'','Depósito natural',NULL,81,281,2791),(1431,'',NULL,NULL,'Pedras em granito de pequeno porte.','Antigo leito do rio? Derrube?',NULL,81,281,2801),(1441,'',NULL,NULL,'Pedras em granito de grande porte e seixos. ','Antigo leito do rio',NULL,81,281,2811),(1451,'',NULL,NULL,'Pedras em granito de grande porte e seixos. ','Antigo leito do rio.',NULL,81,111,2821),(1461,'',NULL,NULL,'Pedras em granito de grande porte e seixos. ','Antigo leito do rio',NULL,81,111,2831),(1471,'Castanha',3,1,'Enchimento da vala','Enchimento da vala',2,81,291,2921),(1481,'Castanha',3,1,'','Aterro',2,81,291,2951),(1491,'Castanha',3,1,'Heterogénea com manchas de argamassa','',NULL,81,291,2961),(1501,'Castanha acinzentada',3,2,'','',NULL,81,291,2981),(1511,'',NULL,NULL,'Aterro de pedras de granito reaproveitadas. Observamos um fragmento de mó.','Aterro',NULL,81,291,3001),(1521,'Castanha escura',3,1,'Camada de terra junta com as pedras reaproveitadas (UE 715)','Aterro',NULL,81,291,3011),(1531,'Castanho escuro',3,1,'Enchimento da caleira UE 718.  ','Enchimento que corresponde ao abandono da caleira.',NULL,81,291,3021),(1541,'Castanha muito clara',3,2,'Base em argila','Base da caleira UE 718',NULL,81,291,3041),(1551,'Castanho escuro',3,4,'','',NULL,81,291,3061),(1561,'Castanha',3,1,'Terra humosa (canteiro de flores) localizada no quadrante SO do sector D.','Terra vegetal do canteiro (alargamento do sector)',NULL,81,291,3071),(1571,'Castanha amarelada',3,1,'','',NULL,81,291,3091),(1581,'Castanha ',3,5,'','',NULL,81,291,3101),(1591,'Castanha clara',3,2,'','Enchimento da vala de fundação do Muro 4',NULL,81,291,3111),(1601,'Castanho escuro',3,2,'','',NULL,81,291,3131),(1611,'Castanho escuro',3,1,'','',NULL,81,291,3141),(1621,'Castanha',2,4,'','Aterro',NULL,161,301,3151),(1631,'Castanha',2,4,'','Aterro',NULL,161,331,3161),(1641,'Amarela',NULL,1,'Saibro','Saibro',NULL,161,331,3171),(1651,'Amarela',NULL,1,'','Saibro',NULL,161,301,3181),(1661,'Castanho escuro',3,1,'Terras movimentadas pela máquina giratória, sem contexto arqueológico','Aterro',NULL,161,341,3191),(1671,'Castanha',2,4,'','Aterro',NULL,161,341,3221),(1681,'Amarela',NULL,1,'Saibro/rocha','',NULL,161,341,3231),(1691,'Castanha',2,4,'','Aterro',NULL,161,351,3241),(1701,'Amarela',NULL,1,'','Saibro/rocha',NULL,161,351,3251),(1711,'Castanha',2,4,'','Aterro',NULL,161,361,3261),(1721,'Castanho escuro',3,1,'Enchimento da Fossa 1','Enchimento',3,161,361,3271),(1731,'Castanho escuro',3,1,'Enchimento da Fossa 1','Enchimento',3,161,361,3281),(1741,'Amarela',NULL,1,'Saibro','Saibro',NULL,161,361,3311),(1751,'Castanha',3,NULL,'Enchimento de vala de árvore?','Enchimento de vala de árvore?',2,161,371,3321),(1761,'Castanha',2,4,'Aterro','',NULL,161,371,3341),(1771,'Amarela',NULL,1,'Saibro','Saibro',NULL,161,371,3351),(1781,'Castanha',3,4,'Aterro','Aterro',2,201,321,3361),(1791,'Amarela',NULL,1,'','Saibro',NULL,201,321,3371),(1801,'Castanha',3,4,'','Aterro',2,201,381,3381),(1811,'Amarela',NULL,1,'','Saibro',NULL,201,381,3391),(1821,'Castanho ',3,1,'','Aterro',NULL,201,391,3401),(1831,'Amarela',NULL,1,'','Saibro',NULL,201,391,3471),(1841,'Castanha',3,4,'','Aterro',2,201,401,3481),(1851,'Amarela',NULL,1,'','Saibro',NULL,201,401,3501),(1861,'Castanha',3,4,'','Aterro',2,201,411,3511),(1871,'Amarela',NULL,1,'','Saibro',NULL,201,411,3531),(1881,'Castanha amarelada',3,2,'','',NULL,191,311,3551),(1891,'Castanha escura',3,2,'','Aterro',NULL,191,311,3561),(1901,'Alaranjada',3,2,'','Piso de Obra?',NULL,191,311,3571),(1911,'Castanha',3,4,'Camada heterogénea, com pontos de argamassa e carvão. Está apenas localizada no quadrante NE.','',NULL,191,311,3581),(1921,'Castanha',3,2,'','',NULL,191,311,3601),(1931,'Castanha acinzentada',3,5,'','',NULL,191,311,3611),(1941,'Amarela',3,2,'Argila localizada apenas junto ao corte Oeste','',NULL,191,311,3621),(1951,'Castanha acinzentada',3,5,'','Aterro',NULL,191,311,3651),(1961,'Castanha acinzentada',3,5,'','Aterro',NULL,191,311,3671),(1971,'Castanha',3,4,'','Aterro',2,191,421,3741),(1981,'Amarela',3,2,'Apenas localizada em parte da sondagem','Antigo pavimento?',NULL,191,421,3751),(1991,'Castanho escuro',3,1,'','Aterro junto ao corte Norte',NULL,191,421,3761),(2001,'Castanho escuro',3,4,'Camada de coloração castanha com muitas pedras de granito','',NULL,191,421,3771),(2011,'Castanha clara',3,1,'Localizada apenas no quadrante SO da sondagem. Contém areia','',NULL,191,421,3811),(2021,'Castanho escuro',3,5,'Camada não escavada com muitas pedras. essas pedras poderão ser derrube do Muro UE 207','Aterro',NULL,191,421,3821),(2031,'Castanho escuro',3,5,'Terras arrastadas devido à limpeza da área, sem contexto arqueológico','Aterro',2,191,431,3851),(2041,'Castanha escura',3,4,'Camada de terra localiza a Oeste da sondagem','',NULL,191,431,3861),(2051,'Castanha ',2,2,'','Piso do edifício existente',8,191,431,3901),(2061,'Castanha',3,1,'','Aterro',NULL,191,431,3911),(2071,'Castanha avermelhada',3,4,'','Aterro',NULL,191,431,3921),(2081,'Castanha',3,1,'Camada não escavada','',NULL,191,431,3931),(2091,'Castanho escuro',3,4,'','Aterro',2,211,451,3941),(2101,'Castanha',3,2,'Heterogénea','Preparação de pavimento?',2,211,451,3961),(2111,'Castanha amarelada',3,NULL,'Heterogénea','Aterro',2,211,451,3971),(2121,'Castanho ',3,5,'','Aterro',NULL,211,451,3981),(2131,'Castanho escuro',3,4,'','Aterro',NULL,211,451,3991),(2141,'Castanha acinzentada',NULL,NULL,'','',NULL,211,451,4021),(2151,'Castanha  escura',3,4,'','Camada humosa',2,211,441,4031),(2161,'Castanha ',3,4,'','Aterro',NULL,211,441,4041),(2171,'',NULL,NULL,'','Igual 209',NULL,211,451,4051),(2181,'',NULL,NULL,'','Igual 209',NULL,211,451,4061),(2191,'Castanha ',3,1,'','Aterro de obra',2,211,471,4071),(2201,'Castanha ',3,1,'Camara heterogénea','Aterro obra',2,211,471,4081),(2211,'Castanha ',3,2,'Camada com argila avermelhada','',8,211,471,4091),(2221,'Castanha ',3,5,'','',1,211,471,4101),(2231,'Castanha ',3,5,'','Enchimento da vala de fundação do muro UE 306',2,211,471,4131),(2241,'Castanha  escura',3,5,'','Aterro',2,211,471,4151),(2251,'Castanha ',3,2,'Localizada no quadrante SE','Aterro',2,211,471,4161),(2261,'Castanho escura',3,5,'','Aterro',NULL,211,471,4181),(2271,'Castanha ',3,4,'Aterro','Aterro',2,211,471,4191),(2281,'Castanho escuro',3,4,'','Camada humosa',2,241,571,4201),(2291,'',NULL,NULL,'Rocha granítica','Rocha',NULL,241,571,4211),(2301,'Castanho escuro',3,4,'','Camada humosa',2,241,581,4221),(2311,'Castanha',3,5,'Camada heterogénea, composta terra, bolsas de saibro e areia','Aterro',2,241,581,4231),(2321,'Castanho escuro',3,5,'','Terra vegetal ',5,241,581,4241),(2331,'',NULL,NULL,'Rocha/saibro','Rocha/saibro',NULL,241,581,4251);
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
INSERT INTO `sedimentar_has_inclusões` VALUES (251,1),(301,1),(331,1),(571,1),(611,1),(631,1),(641,1),(651,1),(691,1),(821,1),(901,1),(1001,1),(1061,1),(1071,1),(1141,1),(1201,1),(1391,1),(1501,1),(1531,1),(1721,1),(1731,1),(1781,1),(1821,1),(1931,1),(2111,1),(2131,1),(2201,1),(2241,1),(51,3),(71,3),(181,3),(191,3),(201,3),(261,3),(271,3),(341,3),(391,3),(431,3),(491,3),(511,3),(591,3),(621,3),(641,3),(691,3),(781,3),(851,3),(911,3),(921,3),(931,3),(941,3),(1001,3),(1151,3),(1161,3),(1171,3),(1271,3),(1351,3),(1361,3),(1751,3),(2091,3),(2131,3),(2161,3),(31,11),(2041,11),(2281,11),(111,21),(121,21),(131,21),(191,21),(2211,21),(121,31),(181,31),(611,31),(901,31),(951,31),(1001,31),(1281,31),(1331,31),(1351,31),(1361,31),(1481,31),(1501,31),(1611,31),(2001,31),(1281,51),(1381,51),(1491,51),(1571,51),(1921,51),(2061,51),(2101,51),(251,61),(301,71),(301,81),(371,91),(561,91),(391,101),(431,101),(471,101),(491,101),(511,101),(561,101),(591,101),(621,101),(1061,101),(1071,101),(1151,101),(1481,101),(1711,101),(1751,101),(1781,101),(1791,101),(1801,101),(1841,101),(2151,101),(2161,101),(2281,101),(2311,101),(2321,101),(551,111),(561,111),(561,121),(561,131),(561,141),(631,151),(1291,151),(1311,151),(1341,151),(1581,151),(1921,151),(2101,151),(631,161),(1071,161),(1781,161),(1821,161),(1931,161),(1371,171),(1391,171),(1531,171),(1481,181),(1491,181),(1531,181),(1601,181),(1781,201),(1821,201),(2231,201),(2271,201),(1781,211),(1821,221),(1931,231),(2241,241),(2311,251);
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
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sondagem`
--

LOCK TABLES `sondagem` WRITE;
/*!40000 ALTER TABLE `sondagem` DISABLE KEYS */;
INSERT INTO `sondagem` VALUES (71,'Sondagem 1',81,1,81),(91,'Sondagem 2',81,1,81),(111,'Sector A',81,1,81),(131,'Sondagem 1',101,1,101),(141,'Sondagem 2',101,1,101),(151,'Sondagem 3',101,1,101),(161,'Sondagem 1',111,1,111),(171,'Sondagem 1',121,1,121),(181,'Sondagem 2',121,1,121),(191,'Sondagem 3',121,1,121),(201,'Sondagem 1',131,1,131),(211,'Sondagem 1',141,1,141),(221,'Sondagem 1',151,1,151),(231,'Sondagem 2',141,1,141),(241,'Sondagem 3',141,1,141),(251,'Sondagem 4',141,1,141),(261,'Sond 6_Sector B',81,1,81),(281,'Sector C',81,1,81),(291,'Sond 7_Sector D',81,1,81),(301,'Sondagem 1',161,1,161),(311,'Sondagem 1',191,1,191),(321,'Sondagem 1',201,1,201),(331,'Sondagem 2',161,1,161),(341,'Sondagem 3',161,1,161),(351,'Sondagem 4',161,1,161),(361,'Sondagem 5',161,1,161),(371,'Sondagem 6',161,1,161),(381,'Sondagem 2',201,1,201),(391,'Sondagem 3',201,1,201),(401,'Sondagem 4',201,1,201),(411,'Sondagem 5',201,1,201),(421,'Sondagem 2',191,1,191),(431,'Sondagem 3',191,1,191),(441,'Sondagem 1',211,1,211),(451,'Sondagem 2',211,1,211),(471,'Sondagem 3',211,1,211),(481,'Sondagem 4',211,1,211),(491,'Sondagem 5',211,1,211),(501,'Sondagem 6',211,1,211),(511,'Sondagem 7',211,1,211),(521,'Sondagem 1',221,1,221),(541,'Sondagem 8',211,1,211),(551,'Sondagem 9',211,1,211),(561,'Sondagem 10',211,1,211),(571,'Sondagem 1',241,1,241),(581,'Sondagem 2',241,1,241),(591,'Sondagem 1',251,1,251);
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_construtiva`
--

LOCK TABLES `tipo_construtiva` WRITE;
/*!40000 ALTER TABLE `tipo_construtiva` DISABLE KEYS */;
INSERT INTO `tipo_construtiva` VALUES (1,'Abóbada'),(2,'Alicerce'),(3,'Arco'),(4,'Canalização'),(5,'Cobertura'),(6,'Cornija'),(7,'Elemento isolado'),(8,'Escadas'),(9,'Janela'),(10,'Muro'),(11,'Óculo'),(12,'Ombreira'),(13,'Padieira'),(14,'Parede'),(15,'Pavimento'),(16,'Porta'),(17,'Revestimento'),(18,'Soleira'),(19,'Telhado'),(31,'Grelha'),(41,'Sepultura'),(51,'Cápea'),(61,'Preparação de pavimento'),(71,'Reforço de alicerce'),(81,'Parede'),(91,'Muro'),(101,'Poste'),(111,'Laje'),(121,'Base'),(131,'Lintel'),(141,'Enchimento'),(151,'Derrube'),(161,'Outro');
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
  `tipologia` varchar(200) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologia_litico`
--

LOCK TABLES `tipologia_litico` WRITE;
/*!40000 ALTER TABLE `tipologia_litico` DISABLE KEYS */;
INSERT INTO `tipologia_litico` VALUES (1,'Aduela'),(2,'Amolador'),(3,'Arquitrave'),(4,'Banco'),(5,'Base'),(6,'Bloco'),(7,'Cachorro'),(8,'Caixa'),(9,'Canteiro'),(10,'Capitel'),(11,'Coluna'),(12,'Cornija'),(13,'Cruz de empena'),(14,'Cunhal'),(15,'Degrau'),(16,'Estela'),(17,'Friso'),(18,'Fuste'),(19,'Imposta'),(20,'Indeterminado'),(21,'Laje'),(22,'Lintel'),(23,'Mísula'),(24,'Mó de sela'),(25,'Mó dormente'),(26,'Mó movente'),(27,'Óculo'),(28,'Ombreira'),(29,'Padieira'),(30,'Pé'),(31,'Peitoril'),(32,'Peso'),(33,'Pia'),(34,'Pilar'),(35,'Pináculo'),(36,'Silhar'),(37,'Silhar almofadado'),(38,'Soleira'),(39,'Tampa'),(40,'Ara'),(41,'Machado'),(42,'Ponta de Seta'),(43,'Raspador'),(44,'Furador');
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
) ENGINE=InnoDB AUTO_INCREMENT=4261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ue`
--

LOCK TABLES `ue` WRITE;
/*!40000 ALTER TABLE `ue` DISABLE KEYS */;
INSERT INTO `ue` VALUES (81,71,101,2,1,'24/02/2022, 15:25:31',81),(91,71,102,2,1,'24/02/2022, 15:25:44',81),(101,71,103,2,1,'24/02/2022, 15:25:11',81),(111,71,104,2,1,'24/02/2022, 15:29:38',81),(121,71,105,1,1,'24/02/2022, 15:31:59',81),(131,71,107,1,1,'24/02/2022, 15:38:11',81),(141,71,108,1,1,'24/02/2022, 15:45:56',81),(161,71,109,1,1,'24/02/2022, 16:01:49',81),(171,71,106,2,1,'24/02/2022, 15:49:35',81),(181,71,110,1,1,'24/02/2022, 15:56:49',81),(191,71,111,1,1,'24/02/2022, 15:58:46',81),(201,71,112,3,1,'24/02/2022, 16:01:36',81),(211,71,113,2,1,'24/02/2022, 16:11:03',81),(221,71,114,2,1,'24/02/2022, 16:10:03',81),(231,71,115,3,1,'24/02/2022, 16:17:51',81),(241,71,116,1,1,'24/02/2022, 16:24:34',81),(251,71,117,3,1,'24/02/2022, 16:31:01',81),(261,71,118,1,1,'24/02/2022, 16:32:02',81),(271,71,119,1,1,'24/02/2022, 16:34:09',81),(281,71,120,1,1,'24/02/2022, 17:05:34',81),(291,71,121,1,1,'24/02/2022, 17:21:48',81),(301,71,122,2,1,'24/02/2022, 17:32:48',81),(311,71,123,2,1,'24/02/2022, 17:31:35',81),(331,71,124,2,1,'24/02/2022, 17:34:33',81),(341,71,125,3,1,'24/02/2022, 17:36:00',81),(351,71,126,1,1,'24/02/2022, 17:37:39',81),(361,71,127,2,1,'24/02/2022, 17:52:06',81),(371,91,201,1,1,'02/03/2022, 11:24:12',81),(381,91,202,1,1,'02/03/2022, 11:28:29',81),(391,91,203,3,1,'02/03/2022, 11:28:42',81),(401,91,204,2,1,'03/03/2022, 14:04:39',81),(411,91,205,1,1,'03/03/2022, 14:08:43',81),(421,91,206,3,1,'03/03/2022, 14:11:28',81),(431,91,207,1,1,'03/03/2022, 14:13:09',81),(441,91,208,2,1,'03/03/2022, 14:14:50',81),(451,91,209,2,1,'03/03/2022, 14:16:38',81),(461,91,210,1,1,'03/03/2022, 14:25:10',81),(471,91,211,2,1,'03/03/2022, 14:28:11',81),(501,91,213,3,1,'03/03/2022, 16:24:46',81),(551,91,214,1,1,'03/03/2022, 16:23:42',81),(561,91,212,2,1,'03/03/2022, 16:46:04',81),(571,111,801,2,1,'04/03/2022, 09:41:58',81),(581,111,802,2,1,'04/03/2022, 09:43:05',81),(601,111,804,1,1,'04/03/2022, 09:44:47',81),(771,131,101,2,1,'06/04/2022, 20:17:00',101),(791,141,118,2,1,'14/04/2022, 12:02:16',101),(801,131,102,1,1,'13/04/2022, 17:00:56',101),(811,131,103,1,1,'13/04/2022, 17:02:55',101),(821,131,104,1,1,'13/04/2022, 17:05:01',101),(831,131,105,1,1,'13/04/2022, 17:09:27',101),(841,131,106,1,1,'13/04/2022, 17:10:06',101),(851,131,107,1,1,'13/04/2022, 17:11:49',101),(861,131,108,1,1,'13/04/2022, 17:13:21',101),(871,131,109,2,1,'22/06/2022, 12:01:01',101),(881,131,110,2,1,'13/04/2022, 17:37:02',101),(891,131,111,3,1,'22/06/2022, 11:52:23',101),(911,131,112,3,1,'22/06/2022, 11:42:34',101),(921,131,114,3,1,'22/06/2022, 11:54:38',101),(931,131,115,3,1,'22/06/2022, 11:54:49',101),(941,131,116,3,1,'22/06/2022, 11:55:58',101),(951,131,113,3,1,'22/06/2022, 11:54:16',101),(961,131,117,1,1,'22/06/2022, 11:59:06',101),(971,161,1,1,1,'03/05/2022, 11:22:34',111),(981,161,2,1,1,'03/05/2022, 11:24:05',111),(991,171,101,2,1,'03/05/2022, 11:37:57',121),(1001,171,102,1,1,'03/05/2022, 11:52:33',121),(1011,181,201,2,1,'03/05/2022, 11:39:47',121),(1021,181,202,1,1,'03/05/2022, 11:53:25',121),(1031,191,301,2,1,'03/05/2022, 11:43:24',121),(1041,191,302,1,1,'03/05/2022, 11:54:05',121),(1051,191,303,3,1,'03/05/2022, 11:50:06',121),(1061,191,304,3,1,'03/05/2022, 11:48:59',121),(1071,191,305,1,1,'03/05/2022, 11:54:35',121),(1081,201,101,1,1,'08/06/2022, 12:10:56',131),(1091,201,102,1,1,'08/06/2022, 11:41:14',131),(1101,201,201,1,1,'08/06/2022, 11:57:12',131),(1111,201,202,1,1,'08/06/2022, 11:42:20',131),(1121,201,301,1,1,'08/06/2022, 11:57:27',131),(1131,201,302,1,1,'08/06/2022, 11:44:09',131),(1141,201,401,1,1,'08/06/2022, 11:57:42',131),(1151,201,402,1,1,'08/06/2022, 11:45:45',131),(1161,201,501,1,1,'08/06/2022, 11:46:37',131),(1171,201,502,1,1,'08/06/2022, 11:47:10',131),(1181,201,601,1,1,'08/06/2022, 11:58:07',131),(1191,201,602,1,1,'08/06/2022, 11:49:16',131),(1201,201,701,1,1,'08/06/2022, 11:52:07',131),(1211,201,702,1,1,'08/06/2022, 11:52:39',131),(1221,201,801,1,1,'08/06/2022, 11:53:04',131),(1231,201,802,1,1,'08/06/2022, 11:53:28',131),(1251,221,102,1,1,'13/08/2022, 19:30:51',151),(1261,221,103,1,1,'04/08/2022, 11:17:34',151),(1271,221,104,1,1,'04/08/2022, 11:18:20',151),(1281,221,105,1,1,'04/08/2022, 11:19:14',151),(1291,211,101,2,1,'04/08/2022, 16:54:43',141),(1301,211,102,1,1,'04/08/2022, 16:25:21',141),(1311,211,103,2,1,'04/08/2022, 16:37:44',141),(1321,211,104,2,1,'04/08/2022, 16:40:55',141),(1331,211,105,2,1,'04/08/2022, 16:30:32',141),(1341,211,106,1,1,'04/08/2022, 16:32:02',141),(1351,211,107,1,1,'04/08/2022, 16:38:12',141),(1361,211,108,1,1,'04/08/2022, 16:40:20',141),(1381,211,110,1,1,'04/08/2022, 16:48:21',141),(1391,211,111,1,1,'04/08/2022, 16:51:29',141),(1401,211,112,1,1,'04/08/2022, 16:52:32',141),(1411,211,201,2,1,'04/08/2022, 16:54:30',141),(1421,211,202,2,1,'04/08/2022, 17:38:27',141),(1431,211,203,2,1,'04/08/2022, 16:58:23',141),(1441,211,204,2,1,'04/08/2022, 17:39:04',141),(1451,211,205,1,1,'04/08/2022, 17:39:39',141),(1461,211,206,1,1,'04/08/2022, 17:08:15',141),(1471,211,207,1,1,'04/08/2022, 17:07:57',141),(1481,211,208,3,1,'04/08/2022, 17:41:47',141),(1491,211,209,2,1,'04/08/2022, 17:32:34',141),(1501,211,210,3,1,'04/08/2022, 17:41:55',141),(1511,211,211,1,1,'04/08/2022, 17:42:52',141),(1521,211,212,1,1,'04/08/2022, 17:43:05',141),(1531,211,217,1,1,'04/08/2022, 17:31:39',141),(1551,211,213,2,1,'05/08/2022, 17:46:19',141),(1561,211,215,2,1,'05/08/2022, 17:47:16',141),(1571,211,214,1,1,'05/08/2022, 17:48:34',141),(1581,211,216,1,1,'05/08/2022, 17:49:34',141),(1591,211,218,2,1,'05/08/2022, 17:53:42',141),(1601,211,219,1,1,'05/08/2022, 17:55:45',141),(1621,211,221,1,1,'08/08/2022, 16:11:52',141),(1631,211,301,2,1,'06/08/2022, 17:05:09',141),(1641,211,302,2,1,'06/08/2022, 17:07:00',141),(1651,211,303,1,1,'06/08/2022, 17:13:52',141),(1661,211,304,2,1,'06/08/2022, 17:20:58',141),(1671,211,305,2,1,'06/08/2022, 17:20:39',141),(1681,211,306,1,1,'06/08/2022, 17:49:31',141),(1691,211,307,2,1,'06/08/2022, 17:24:45',141),(1701,211,308,3,1,'06/08/2022, 18:03:20',141),(1711,211,309,3,1,'06/08/2022, 17:30:39',141),(1721,211,310,1,1,'06/08/2022, 17:49:02',141),(1731,211,311,1,1,'06/08/2022, 17:48:00',141),(1741,211,312,2,1,'06/08/2022, 17:40:00',141),(1751,211,313,2,1,'06/08/2022, 17:42:55',141),(1761,211,314,2,1,'06/08/2022, 17:47:32',141),(1771,211,315,1,1,'06/08/2022, 17:54:32',141),(1781,211,316,1,1,'06/08/2022, 17:54:40',141),(1791,211,317,1,1,'06/08/2022, 17:57:04',141),(1801,211,318,2,1,'06/08/2022, 17:59:06',141),(1811,211,319,1,1,'06/08/2022, 18:01:00',141),(1821,211,401,2,1,'06/08/2022, 18:04:43',141),(1831,211,402,1,1,'06/08/2022, 18:05:21',141),(1841,211,403,2,1,'06/08/2022, 18:06:21',141),(1851,211,404,1,1,'06/08/2022, 18:07:22',141),(1861,211,405,2,1,'06/08/2022, 18:11:48',141),(1871,211,406,1,1,'06/08/2022, 18:13:21',141),(1881,211,408,1,1,'06/08/2022, 18:32:27',141),(1891,211,409,3,1,'06/08/2022, 18:32:00',141),(1901,211,410,3,1,'06/08/2022, 18:38:25',141),(1911,211,411,1,1,'06/08/2022, 18:38:13',141),(1921,211,412,1,1,'06/08/2022, 18:41:43',141),(1931,211,413,1,1,'06/08/2022, 18:53:46',141),(1941,211,414,2,1,'06/08/2022, 18:54:02',141),(1961,211,220,2,1,'09/08/2022, 11:06:10',141),(1981,221,101,2,1,'13/08/2022, 19:30:43',151),(1991,111,805,1,1,'05/09/2022, 16:28:32',81),(2001,111,806,1,1,'05/09/2022, 16:21:12',81),(2011,111,807,1,1,'05/09/2022, 16:31:15',81),(2021,111,808,1,1,'05/09/2022, 17:22:00',81),(2031,111,809,1,1,'05/09/2022, 16:37:40',81),(2041,111,810,1,1,'05/09/2022, 16:40:49',81),(2051,111,812,1,1,'05/09/2022, 16:45:57',81),(2061,111,811,1,1,'05/09/2022, 16:44:36',81),(2071,111,813,1,1,'05/09/2022, 16:47:27',81),(2081,111,814,1,1,'12/09/2022, 18:27:53',81),(2091,111,815,1,1,'12/09/2022, 18:27:36',81),(2101,111,816,3,1,'05/09/2022, 17:00:43',81),(2111,111,819,1,1,'12/09/2022, 18:28:37',81),(2121,111,820,1,1,'12/09/2022, 18:28:47',81),(2141,111,822,2,1,'05/09/2022, 17:17:45',81),(2151,111,821,3,1,'05/09/2022, 17:27:23',81),(2161,111,823,2,1,'05/09/2022, 17:21:19',81),(2171,111,826,3,1,'05/09/2022, 17:30:22',81),(2201,111,824,2,1,'05/09/2022, 17:35:38',81),(2211,261,601,2,1,'05/09/2022, 17:37:53',81),(2221,261,602,2,1,'06/09/2022, 10:39:18',81),(2231,261,603,2,1,'06/09/2022, 11:24:13',81),(2241,261,604,1,1,'06/09/2022, 12:41:28',81),(2251,261,605,1,1,'06/09/2022, 12:42:38',81),(2261,261,606,1,1,'06/09/2022, 13:41:36',81),(2271,261,607,1,1,'06/09/2022, 13:42:26',81),(2281,261,608,1,1,'06/09/2022, 13:43:41',81),(2291,261,609,1,1,'12/09/2022, 10:48:54',81),(2301,261,610,1,1,'12/09/2022, 10:50:17',81),(2321,261,619,1,1,'12/09/2022, 12:21:25',81),(2331,261,612,1,1,'12/09/2022, 12:17:07',81),(2341,261,613,1,1,'12/09/2022, 11:19:41',81),(2351,261,614,1,1,'12/09/2022, 11:18:49',81),(2361,261,615,1,1,'12/09/2022, 11:21:01',81),(2371,261,616,1,1,'12/09/2022, 11:24:40',81),(2381,261,617,1,1,'12/09/2022, 12:15:29',81),(2391,261,618,1,1,'12/09/2022, 12:17:36',81),(2401,261,611,2,1,'12/09/2022, 12:15:54',81),(2411,261,620,1,1,'12/09/2022, 12:21:35',81),(2421,281,901,2,1,'12/09/2022, 13:51:31',81),(2431,281,902,2,1,'12/09/2022, 13:55:15',81),(2441,281,903,1,1,'12/09/2022, 14:02:07',81),(2451,281,904,1,1,'12/09/2022, 14:11:35',81),(2461,281,905,2,1,'12/09/2022, 14:09:33',81),(2471,281,906,3,1,'12/09/2022, 14:11:55',81),(2481,281,907,1,1,'12/09/2022, 14:12:10',81),(2491,281,909,1,1,'12/09/2022, 14:16:38',81),(2501,281,910,1,1,'12/09/2022, 14:51:59',81),(2531,281,911,2,1,'12/09/2022, 14:27:47',81),(2541,281,912,2,1,'12/09/2022, 14:22:24',81),(2551,281,913,1,1,'12/09/2022, 14:30:54',81),(2561,281,914,1,1,'12/09/2022, 14:32:13',81),(2571,281,916,3,1,'12/09/2022, 14:32:00',81),(2581,281,917,2,1,'12/09/2022, 14:36:43',81),(2591,281,918,2,1,'12/09/2022, 14:44:28',81),(2601,281,919,1,1,'12/09/2022, 14:41:22',81),(2611,281,920,1,1,'12/09/2022, 14:55:17',81),(2621,281,921,1,1,'12/09/2022, 15:00:24',81),(2631,281,922,1,1,'12/09/2022, 15:02:44',81),(2641,281,923,1,1,'12/09/2022, 15:38:30',81),(2661,281,924,2,1,'12/09/2022, 15:43:53',81),(2671,281,925,1,1,'12/09/2022, 16:15:54',81),(2681,281,926,1,1,'12/09/2022, 16:16:44',81),(2691,281,927,1,1,'12/09/2022, 16:18:05',81),(2701,281,928,1,1,'12/09/2022, 16:19:46',81),(2711,281,929,1,1,'12/09/2022, 16:22:55',81),(2721,281,930,2,1,'12/09/2022, 16:56:12',81),(2731,281,931,1,1,'12/09/2022, 16:31:35',81),(2741,281,932,2,1,'12/09/2022, 16:33:29',81),(2751,281,933,1,1,'12/09/2022, 17:03:13',81),(2761,281,934,1,1,'12/09/2022, 17:03:28',81),(2771,281,935,3,1,'12/09/2022, 17:02:58',81),(2781,281,936,2,1,'12/09/2022, 17:41:39',81),(2791,281,938,1,1,'12/09/2022, 17:46:19',81),(2801,281,939,1,1,'12/09/2022, 17:53:45',81),(2811,281,940,1,1,'12/09/2022, 17:54:40',81),(2821,111,827,1,1,'12/09/2022, 18:29:00',81),(2831,111,828,1,1,'12/09/2022, 18:29:10',81),(2841,111,817,2,1,'12/09/2022, 18:28:08',81),(2851,111,818,2,1,'12/09/2022, 18:28:24',81),(2861,291,701,2,1,'13/09/2022, 11:13:06',81),(2871,291,702,2,1,'13/09/2022, 11:29:43',81),(2881,291,703,2,1,'13/09/2022, 11:32:46',81),(2891,291,704,3,1,'13/09/2022, 11:46:28',81),(2911,291,705,2,1,'13/09/2022, 11:43:14',81),(2921,291,706,1,1,'13/09/2022, 11:37:17',81),(2931,291,707,2,1,'13/09/2022, 11:44:18',81),(2941,291,708,3,1,'13/09/2022, 11:46:37',81),(2951,291,709,1,1,'13/09/2022, 11:47:22',81),(2961,291,710,1,1,'13/09/2022, 11:48:34',81),(2971,291,712,2,1,'13/09/2022, 11:50:09',81),(2981,291,713,1,1,'13/09/2022, 11:53:09',81),(2991,291,714,2,1,'14/09/2022, 12:32:45',81),(3001,291,715,1,1,'13/09/2022, 11:58:54',81),(3011,291,716,1,1,'13/09/2022, 12:00:09',81),(3021,291,717,1,1,'13/09/2022, 12:08:21',81),(3031,291,718,2,1,'13/09/2022, 12:04:38',81),(3041,291,721,1,1,'14/09/2022, 12:11:22',81),(3051,291,719,3,1,'13/09/2022, 12:21:25',81),(3061,291,720,1,1,'13/09/2022, 12:21:14',81),(3071,291,722,1,1,'14/09/2022, 12:24:32',81),(3081,291,732,2,1,'14/09/2022, 12:24:46',81),(3091,291,723,1,1,'14/09/2022, 12:31:42',81),(3101,291,724,1,1,'14/09/2022, 12:32:34',81),(3111,291,725,1,1,'14/09/2022, 12:34:44',81),(3121,291,726,3,1,'14/09/2022, 12:37:09',81),(3131,291,727,1,1,'14/09/2022, 12:37:00',81),(3141,291,730,1,1,'14/09/2022, 12:39:18',81),(3151,301,101,1,1,'20/10/2022, 14:36:21',161),(3161,331,201,1,1,'20/10/2022, 14:36:38',161),(3171,331,202,1,1,'20/10/2022, 14:00:30',161),(3181,301,102,1,1,'20/10/2022, 14:01:07',161),(3191,341,301,1,1,'20/10/2022, 14:02:44',161),(3201,341,302,2,1,'20/10/2022, 14:05:57',161),(3211,341,303,2,1,'20/10/2022, 14:06:53',161),(3221,341,304,1,1,'20/10/2022, 14:37:05',161),(3231,341,305,1,1,'20/10/2022, 14:10:07',161),(3241,351,401,1,1,'20/10/2022, 14:37:21',161),(3251,351,402,1,1,'20/10/2022, 14:12:32',161),(3261,361,501,1,1,'20/10/2022, 14:15:40',161),(3271,361,502,1,1,'20/10/2022, 14:36:00',161),(3281,361,503,1,1,'20/10/2022, 14:34:37',161),(3291,361,504,3,1,'20/10/2022, 14:35:01',161),(3301,361,505,3,1,'20/10/2022, 14:35:41',161),(3311,361,506,1,1,'20/10/2022, 14:35:54',161),(3321,371,601,1,1,'20/10/2022, 14:50:39',161),(3331,371,602,3,1,'20/10/2022, 14:52:38',161),(3341,371,603,1,1,'20/10/2022, 14:52:48',161),(3351,371,604,1,1,'20/10/2022, 14:52:24',161),(3361,321,101,1,1,'20/10/2022, 15:09:03',201),(3371,321,102,1,1,'20/10/2022, 15:07:14',201),(3381,381,201,1,1,'20/10/2022, 15:08:22',201),(3391,381,202,1,1,'20/10/2022, 15:08:46',201),(3401,391,301,1,1,'20/10/2022, 15:10:20',201),(3411,391,302,2,1,'20/10/2022, 15:18:57',201),(3421,391,303,2,1,'20/10/2022, 15:13:34',201),(3431,391,304,3,1,'20/10/2022, 15:25:53',201),(3441,391,305,2,1,'20/10/2022, 15:21:29',201),(3451,391,306,2,1,'20/10/2022, 15:22:49',201),(3461,391,307,2,1,'20/10/2022, 15:24:51',201),(3471,391,308,1,1,'20/10/2022, 15:25:45',201),(3481,401,401,1,1,'20/10/2022, 15:27:05',201),(3491,401,402,3,1,'20/10/2022, 15:30:37',201),(3501,401,403,1,1,'20/10/2022, 15:30:30',201),(3511,411,501,1,1,'20/10/2022, 15:33:19',201),(3521,411,502,3,1,'20/10/2022, 15:34:49',201),(3531,411,503,1,1,'20/10/2022, 15:34:42',201),(3541,311,101,2,1,'20/10/2022, 15:47:13',191),(3551,311,102,1,1,'20/10/2022, 16:44:34',191),(3561,311,103,1,1,'20/10/2022, 16:44:26',191),(3571,311,104,1,1,'20/10/2022, 16:45:15',191),(3581,311,105,1,1,'20/10/2022, 17:23:39',191),(3591,311,106,3,1,'20/10/2022, 17:25:37',191),(3601,311,107,1,1,'20/10/2022, 17:25:30',191),(3611,311,108,1,1,'20/10/2022, 17:27:27',191),(3621,311,109,1,1,'20/10/2022, 17:28:29',191),(3631,311,110,2,1,'20/10/2022, 17:37:23',191),(3641,311,111,3,1,'20/10/2022, 17:38:13',191),(3651,311,112,1,1,'20/10/2022, 17:40:49',191),(3661,311,113,2,1,'20/10/2022, 17:45:35',191),(3671,311,114,1,1,'20/10/2022, 17:46:12',191),(3681,311,115,2,1,'20/10/2022, 17:47:08',191),(3741,421,201,1,1,'20/10/2022, 17:54:04',191),(3751,421,202,1,1,'20/10/2022, 17:55:43',191),(3761,421,203,1,1,'20/10/2022, 17:56:18',191),(3771,421,205,1,1,'20/10/2022, 18:00:49',191),(3791,421,206,2,1,'20/10/2022, 18:02:56',191),(3801,421,207,2,1,'20/10/2022, 18:12:59',191),(3811,421,208,1,1,'20/10/2022, 18:07:08',191),(3821,421,209,1,1,'20/10/2022, 18:12:14',191),(3831,421,210,2,1,'20/10/2022, 18:11:06',191),(3841,421,211,3,1,'20/10/2022, 18:12:05',191),(3851,431,301,1,1,'20/10/2022, 18:17:29',191),(3861,431,302,1,1,'20/10/2022, 18:18:54',191),(3871,431,303,2,1,'20/10/2022, 18:19:42',191),(3881,431,304,3,1,'20/10/2022, 18:21:10',191),(3891,431,305,2,1,'20/10/2022, 18:22:24',191),(3901,431,306,1,1,'20/10/2022, 18:24:23',191),(3911,431,307,1,1,'20/10/2022, 18:27:02',191),(3921,431,308,1,1,'20/10/2022, 18:28:49',191),(3931,431,309,1,1,'20/10/2022, 18:30:57',191),(3941,451,201,1,1,'12/12/2022, 16:38:13',211),(3951,451,202,2,1,'12/12/2022, 16:41:12',211),(3961,451,203,1,1,'12/12/2022, 16:44:54',211),(3971,451,204,1,1,'12/12/2022, 16:47:12',211),(3981,451,205,1,1,'12/12/2022, 17:42:05',211),(3991,451,206,1,1,'12/12/2022, 17:43:21',211),(4001,451,207,2,1,'12/12/2022, 18:43:39',211),(4011,451,208,2,1,'16/01/2023, 14:31:04',211),(4021,451,209,1,1,'12/12/2022, 18:44:22',211),(4031,441,101,1,1,'16/01/2023, 14:25:16',211),(4041,441,102,1,1,'16/01/2023, 14:26:45',211),(4051,451,210,1,1,'16/01/2023, 14:34:20',211),(4061,451,211,1,1,'16/01/2023, 14:34:54',211),(4071,471,301,1,1,'16/01/2023, 14:45:58',211),(4081,471,302,1,1,'16/01/2023, 14:47:36',211),(4091,471,303,1,1,'16/01/2023, 14:48:35',211),(4101,471,304,1,1,'16/01/2023, 14:50:27',211),(4111,471,305,2,1,'16/01/2023, 15:14:33',211),(4121,471,306,2,1,'16/01/2023, 15:16:01',211),(4131,471,307,1,1,'16/01/2023, 15:19:47',211),(4141,471,308,3,1,'16/01/2023, 15:22:09',211),(4151,471,309,1,1,'16/01/2023, 15:21:43',211),(4161,471,310,1,1,'16/01/2023, 15:23:58',211),(4171,471,311,2,1,'16/01/2023, 15:33:54',211),(4181,471,312,1,1,'16/01/2023, 15:42:39',211),(4191,471,313,1,1,'16/01/2023, 15:41:58',211),(4201,571,101,1,1,'09/03/2023, 16:16:53',241),(4211,571,102,1,1,'09/03/2023, 16:22:53',241),(4221,581,201,1,1,'09/03/2023, 16:18:16',241),(4231,581,202,1,1,'09/03/2023, 16:21:01',241),(4241,581,203,1,1,'09/03/2023, 16:21:48',241),(4251,581,204,1,1,'09/03/2023, 16:22:18',241);
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
INSERT INTO `ues_has_corta` VALUES (391,381),(421,381),(501,551),(891,961),(911,961),(921,961),(931,961),(951,961),(1051,1071),(1481,1511),(1501,1511),(1481,1521),(1501,1521),(1701,1681),(1711,1681),(1891,1881),(1901,1911),(2101,2081),(2151,2091),(2471,2481),(2571,2561),(2771,2761),(2891,2951),(2941,2951),(3051,3061),(3121,3131),(3291,3311),(3301,3311),(3331,3341),(3431,3471),(3491,3501),(3521,3531),(3591,3601),(3841,3821),(4141,4151);
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
INSERT INTO `ues_has_cortadas` VALUES (381,391),(551,501),(961,891),(961,911),(961,921),(961,931),(961,941),(961,951),(1071,1051),(1511,1451),(1511,1481),(1521,1481),(1521,1501),(1681,1701),(1681,1711),(1911,1901),(2081,2101),(2481,2471),(2561,2571),(2761,2771),(2951,2891),(2951,2941),(3061,3051),(3131,3121),(3311,3291),(3311,3301),(3471,3431),(3501,3491),(3531,3521),(3601,3591),(3651,3641),(3821,3841),(3901,3881),(3911,3881),(3921,3881),(4151,4141);
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
INSERT INTO `ues_has_encosta` VALUES (91,81),(81,91),(101,91),(211,221),(561,441),(561,451),(1351,1321),(1361,1321),(1621,1591),(1721,1741),(1731,1741),(1771,1741),(1781,1741),(1931,1941),(2161,2141),(2601,2541),(2601,2581),(3421,3411),(4001,4011),(4111,4121);
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
INSERT INTO `ues_has_igual` VALUES (2211,571),(2421,571),(2231,581),(2431,581),(811,771),(1011,991),(1031,991),(1021,1001),(1071,1001),(1001,1021),(1071,1021),(1001,1071),(1021,1071),(1101,1081),(1121,1081),(1141,1081),(1161,1081),(1181,1081),(1201,1081),(1081,1101),(1121,1101),(1141,1101),(1161,1101),(1181,1101),(1201,1101),(1081,1121),(1101,1121),(1141,1121),(1161,1121),(1181,1121),(1201,1121),(1081,1141),(1101,1141),(1121,1141),(1151,1141),(1161,1141),(1181,1141),(1201,1141),(1081,1161),(1101,1161),(1121,1161),(1141,1161),(1181,1161),(1201,1161),(1081,1181),(1101,1181),(1121,1181),(1141,1181),(1201,1181),(1081,1201),(1101,1201),(1121,1201),(1141,1201),(1181,1201),(1281,1271),(1411,1291),(1631,1291),(1821,1291),(1291,1411),(1631,1411),(1821,1411),(1461,1471),(1521,1511),(1561,1551),(1581,1571),(1821,1631),(1731,1721),(1721,1731),(1781,1771),(1771,1781),(2281,2011),(2051,2041),(2371,2071),(2091,2081),(2081,2091),(2121,2111),(2111,2121),(2221,2141),(2171,2151),(2421,2211),(2431,2231),(2411,2321),(2811,2321),(2391,2331),(2401,2381),(2801,2381),(2331,2391),(2381,2401),(2801,2401),(2321,2411),(2811,2411),(2441,2431),(2591,2501),(2641,2561),(2501,2591),(2741,2721),(2831,2821),(2821,2831),(2851,2841),(2841,2851),(3221,3151),(3241,3151),(3261,3151),(3341,3151),(3261,3161),(3341,3161),(3221,3171),(3231,3171),(3241,3171),(3251,3171),(3311,3171),(3351,3171),(3231,3181),(3251,3181),(3311,3181),(3351,3181),(3241,3221),(3261,3221),(3341,3221),(3251,3231),(3311,3231),(3351,3231),(3261,3241),(3341,3241),(3311,3251),(3351,3251),(3341,3261),(3351,3311),(3521,3491),(4181,4151);
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
INSERT INTO `ues_has_preenche` VALUES (161,201),(1041,1051),(1491,1481),(1531,1481),(1451,1501),(1811,1701),(2451,2471),(2731,2721),(2751,2771),(3021,3031),(3271,3291),(3281,3301),(3441,3431),(4131,4141);
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
INSERT INTO `ues_has_preenchida` VALUES (201,161),(231,221),(911,811),(891,821),(891,831),(891,841),(891,851),(891,861),(891,871),(891,881),(1051,1041),(1501,1451),(1481,1461),(1481,1491),(1501,1491),(1481,1531),(1711,1651),(1711,1661),(1701,1671),(1701,1811),(1901,1881),(2151,2071),(2471,2451),(2471,2461),(2571,2551),(2741,2731),(2771,2751),(2891,2911),(3121,2991),(3051,3031),(3051,3041),(3121,3111),(3291,3271),(3301,3281),(3331,3321),(3341,3321),(3431,3401),(3491,3481),(3501,3481),(3521,3511),(3591,3571),(3641,3621),(3841,3831),(3881,3861),(3881,3871),(4141,4131);
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
INSERT INTO `ues_has_sobrepostas` VALUES (131,91),(141,121),(161,141),(171,141),(181,161),(191,161),(191,181),(201,161),(211,161),(221,161),(231,221),(241,181),(241,191),(251,211),(261,241),(271,241),(281,271),(291,271),(301,271),(301,291),(311,271),(341,331),(351,331),(361,81),(361,111),(381,371),(391,371),(421,371),(431,381),(441,381),(451,381),(461,381),(551,461),(561,431),(561,461),(581,571),(601,581),(801,771),(821,801),(831,821),(841,831),(851,841),(861,851),(871,861),(881,871),(891,881),(911,811),(921,881),(931,881),(941,881),(951,881),(961,801),(961,861),(961,881),(961,891),(961,911),(961,921),(961,931),(961,941),(961,951),(1001,991),(1021,1011),(1041,1031),(1051,1041),(1061,1031),(1071,1031),(1111,1101),(1131,1121),(1171,1161),(1191,1181),(1211,1201),(1231,1221),(1251,1981),(1261,1251),(1271,1261),(1281,1271),(1301,1291),(1311,1301),(1321,1301),(1321,1331),(1321,1351),(1321,1361),(1331,1301),(1341,1301),(1341,1331),(1351,1301),(1351,1311),(1361,1351),(1401,1381),(1401,1391),(1421,1411),(1431,1411),(1441,1411),(1441,1421),(1451,1431),(1471,1421),(1481,1461),(1481,1471),(1491,1531),(1501,1471),(1501,1491),(1511,1461),(1511,1481),(1521,1471),(1531,1461),(1551,1511),(1571,1551),(1581,1561),(1591,1571),(1601,1581),(1621,1571),(1641,1631),(1651,1631),(1661,1631),(1671,1631),(1681,1631),(1681,1641),(1691,1681),(1701,1671),(1711,1651),(1721,1681),(1731,1681),(1741,1681),(1751,1681),(1761,1681),(1771,1731),(1781,1721),(1791,1771),(1791,1781),(1801,1681),(1811,1671),(1831,1821),(1841,1821),(1841,1831),(1851,1831),(1861,1831),(1871,1861),(1881,1851),(1881,1861),(1891,1871),(1901,1881),(1911,1881),(1921,1881),(1931,1911),(1941,1921),(1941,1931),(1961,1571),(2001,1991),(2011,601),(2021,2001),(2021,2161),(2031,2011),(2041,2031),(2051,2061),(2061,2031),(2071,2021),(2081,2061),(2091,2071),(2101,2061),(2111,2841),(2121,2851),(2141,2061),(2141,2071),(2151,2071),(2171,2121),(2201,571),(2231,2221),(2241,2231),(2251,2241),(2261,2241),(2271,2251),(2281,2271),(2291,2281),(2301,2291),(2321,2391),(2331,2401),(2341,2241),(2351,2341),(2361,2351),(2371,2361),(2381,2371),(2391,2381),(2401,2301),(2411,2331),(2451,2441),(2461,2451),(2471,2461),(2481,2441),(2491,2481),(2501,2481),(2531,2481),(2541,2481),(2551,2481),(2561,2481),(2571,2551),(2581,2531),(2591,2561),(2601,2561),(2611,2561),(2621,2561),(2631,2561),(2661,2561),(2671,2621),(2681,2671),(2691,2591),(2691,2681),(2701,2631),(2711,2661),(2721,2701),(2721,2711),(2731,2711),(2751,2691),(2761,2691),(2771,2751),(2791,2761),(2801,2791),(2811,2801),(2821,2111),(2831,2121),(2871,2861),(2891,2871),(2891,2911),(2911,2871),(2921,2871),(2931,2921),(2941,2921),(2941,2931),(2951,2891),(2951,2941),(2961,2951),(2971,2961),(2981,2961),(2991,2981),(2991,3101),(3001,2981),(3011,3001),(3021,3011),(3031,3011),(3031,3021),(3041,3021),(3051,3031),(3061,3011),(3061,3031),(3081,3071),(3101,3091),(3111,3061),(3121,3111),(3131,3061),(3171,3161),(3181,3151),(3201,3191),(3211,3201),(3221,3211),(3231,3221),(3251,3241),(3271,3261),(3281,3261),(3291,3261),(3291,3271),(3301,3261),(3301,3281),(3311,3261),(3311,3271),(3311,3281),(3311,3291),(3311,3301),(3341,3321),(3351,3341),(3371,3361),(3391,3381),(3411,3401),(3421,3401),(3431,3401),(3441,3401),(3451,3401),(3461,3401),(3471,3401),(3471,3411),(3471,3421),(3471,3451),(3491,3481),(3501,3481),(3521,3511),(3531,3511),(3551,3541),(3561,3551),(3571,3561),(3581,3571),(3591,3571),(3601,3571),(3601,3581),(3611,3601),(3621,3611),(3631,3611),(3641,3611),(3641,3621),(3651,3611),(3661,3651),(3671,3651),(3671,3661),(3681,3601),(3751,3741),(3761,3741),(3771,3751),(3791,3771),(3801,3771),(3811,3771),(3821,3771),(3841,3831),(3861,3851),(3871,3861),(3881,3861),(3881,3871),(3891,3871),(3891,3881),(3901,3851),(3911,3901),(3921,3911),(3931,3921),(3951,3941),(3961,3941),(3971,3951),(3971,3961),(3981,3971),(3991,3981),(4001,3991),(4011,3991),(4021,3991),(4041,4031),(4081,4071),(4091,4081),(4101,4091),(4111,4081),(4121,4081),(4121,4091),(4131,4111),(4141,4131),(4151,4111),(4161,4101),(4171,4101),(4181,4121),(4191,4181),(4211,4201),(4231,4221),(4241,4231),(4251,4241);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilizador`
--

LOCK TABLES `utilizador` WRITE;
/*!40000 ALTER TABLE `utilizador` DISABLE KEYS */;
INSERT INTO `utilizador` VALUES (1,'anaroriz_arqueologia','$2b$12$lcPzAsI65du/v4JdhyXkgOAlrR7qhdsH9f6lmtYEbjTno89sSXtNe','admin','12/03/2023, 22:25:31'),(11,'a','$2b$12$N.bBZqcSogwgWmArdFohYuA6.koKW3HOG9VLGym3bdYWDrQbLdtA2','user','03/11/2022, 14:09:49');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vidro`
--

LOCK TABLES `vidro` WRITE;
/*!40000 ALTER TABLE `vidro` DISABLE KEYS */;
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

-- Dump completed on 2023-03-12 23:22:07
