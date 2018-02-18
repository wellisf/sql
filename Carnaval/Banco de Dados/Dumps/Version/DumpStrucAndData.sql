CREATE DATABASE  IF NOT EXISTS `carnaval` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `carnaval`;
-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: carnaval
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB

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
-- Table structure for table `Campeonato`
--

DROP TABLE IF EXISTS `Campeonato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campeonato` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ano` year(4) DEFAULT '2017',
  `estado` enum('RJ','SP') DEFAULT 'RJ',
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `regulamento` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campeonato`
--

LOCK TABLES `Campeonato` WRITE;
/*!40000 ALTER TABLE `Campeonato` DISABLE KEYS */;
INSERT INTO `Campeonato` VALUES (1,2012,'RJ','2012-02-05','2012-02-10','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o'),(2,2013,'RJ','2013-02-12','2013-02-17','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(3,2014,'RJ','2014-02-22','2014-02-27','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(4,2015,'RJ','2015-02-19','2015-02-24','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(5,2016,'RJ','2016-03-01','2016-03-06','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(6,2017,'RJ','2016-02-03','2016-02-08','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(7,2012,'SP','2012-02-05','2012-02-10','compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(8,2013,'SP','2013-02-12','2013-02-17','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(9,2014,'SP','2014-02-22','2014-02-27','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(10,2015,'SP','2015-02-19','2015-02-24','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(11,2016,'SP','2016-03-01','2016-03-06','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(12,2017,'SP','2016-02-03','2016-02-08','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento');
/*!40000 ALTER TABLE `Campeonato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Escola`
--

DROP TABLE IF EXISTS `Escola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Escola` (
  `CNPJ` int(10) unsigned NOT NULL,
  `nome` varchar(30) NOT NULL,
  `nome_fantasia` varchar(50) NOT NULL,
  `cores_representativas` varchar(25) DEFAULT NULL,
  `endereço` varchar(60) DEFAULT NULL,
  `fundação` year(4) DEFAULT NULL,
  PRIMARY KEY (`CNPJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Escola`
--

LOCK TABLES `Escola` WRITE;
/*!40000 ALTER TABLE `Escola` DISABLE KEYS */;
INSERT INTO `Escola` VALUES (0,'BEIJA-FLOR','Beija-Flor de Nilópolis ','Azul e Branco','Pracinha Wallace Paes Leme 1025 - Nilópolis',1948),(1,'GRANDE RIO','Grande Rio de Duque de Caxias ','Vermelho, Verde e Branco','Rua Wallace Soares 5 - Duque de Caxias',1988),(2,'IMPERATRIZ LEOPOLDINENSE','Leopoldinense de Ramos','Verde, Branco e Dourado','Rua Professor Lacê 235 – Ramos',1959),(3,'MANGUEIRA','Mangueira','Verde e Rosa','Rua Visconde de Niterói 1072 - Mangueira',1928),(4,'MOCIDADE','Mocidade de Pedro Miguel','Verde e Branco','Rua Coronel Tamarindo 38 - Padre Miguel',1955),(5,'PORTELA','Portela de Madureira','Azul e Branco','Rua Clara Nunes 81 - Madureira',1926),(6,'SALGUEIRO','Salgueiro da Tijuca','Vermelho e Branco','Rua Silva Teles 104 - Tijuca',1953),(7,'SÃO CLEMENTE','São Clemente','Amarelo e Preto','Av. Presidente Vargas 3102 - Centro',1961),(8,'UNIÃO DA ILHA','Ilha do Governador','Azul, Vermelho e Branco',' Estrada do Galeão 322 - Ilha do Governador',1953),(9,'VILA ISABEL','Vila Isabel','Azul e Branco','Av. 28 de Setembro 382 - Vila Isabel',1946),(10,'UNIDOS DA TIJUCA','São Cristóvão','Amarelo e Azul','Av. Francisco Bicalho 47 - São Cristóvão',1931);
/*!40000 ALTER TABLE `Escola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Espectador`
--

DROP TABLE IF EXISTS `Espectador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Espectador` (
  `CPF_Espectador` int(10) unsigned NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `ingresso` int(10) unsigned NOT NULL,
  `telefone` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`CPF_Espectador`),
  CONSTRAINT `Espectador_ibfk_1` FOREIGN KEY (`CPF_Espectador`) REFERENCES `Pessoa` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Espectador`
--

LOCK TABLES `Espectador` WRITE;
/*!40000 ALTER TABLE `Espectador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Espectador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Filiar`
--

DROP TABLE IF EXISTS `Filiar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Filiar` (
  `CPF_Participante` int(10) unsigned NOT NULL,
  `CNPJ_Escola` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`CPF_Participante`),
  KEY `CNPJ_Escola` (`CNPJ_Escola`),
  CONSTRAINT `Filiar_ibfk_1` FOREIGN KEY (`CPF_Participante`) REFERENCES `Participante` (`CPF_Participante`),
  CONSTRAINT `Filiar_ibfk_2` FOREIGN KEY (`CNPJ_Escola`) REFERENCES `Escola` (`CNPJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Filiar`
--

LOCK TABLES `Filiar` WRITE;
/*!40000 ALTER TABLE `Filiar` DISABLE KEYS */;
/*!40000 ALTER TABLE `Filiar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fundador`
--

DROP TABLE IF EXISTS `Fundador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fundador` (
  `CPF_Fundador` int(10) unsigned NOT NULL,
  `data_óbito` date NOT NULL,
  PRIMARY KEY (`CPF_Fundador`),
  CONSTRAINT `Fundador_ibfk_1` FOREIGN KEY (`CPF_Fundador`) REFERENCES `Pessoa` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fundador`
--

LOCK TABLES `Fundador` WRITE;
/*!40000 ALTER TABLE `Fundador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fundador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fundar`
--

DROP TABLE IF EXISTS `Fundar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fundar` (
  `CPF_Fundador` int(10) unsigned NOT NULL,
  `id_sambodromo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CPF_Fundador`,`id_sambodromo`),
  KEY `id_sambodromo` (`id_sambodromo`),
  CONSTRAINT `Fundar_ibfk_1` FOREIGN KEY (`CPF_Fundador`) REFERENCES `Fundador` (`CPF_Fundador`),
  CONSTRAINT `Fundar_ibfk_2` FOREIGN KEY (`id_sambodromo`) REFERENCES `Sambodromo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fundar`
--

LOCK TABLES `Fundar` WRITE;
/*!40000 ALTER TABLE `Fundar` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fundar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingressa`
--

DROP TABLE IF EXISTS `Ingressa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ingressa` (
  `CNPJ_Escola` int(10) unsigned NOT NULL,
  `id_Campeonato` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`CNPJ_Escola`),
  KEY `id_Campeonato` (`id_Campeonato`),
  CONSTRAINT `Ingressa_ibfk_1` FOREIGN KEY (`CNPJ_Escola`) REFERENCES `Escola` (`CNPJ`),
  CONSTRAINT `Ingressa_ibfk_2` FOREIGN KEY (`id_Campeonato`) REFERENCES `Campeonato` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingressa`
--

LOCK TABLES `Ingressa` WRITE;
/*!40000 ALTER TABLE `Ingressa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ingressa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Integrante`
--

DROP TABLE IF EXISTS `Integrante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Integrante` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grupo` varchar(15) NOT NULL,
  `colocação` int(10) unsigned DEFAULT NULL,
  `enredo` varchar(20) DEFAULT NULL,
  `data_desfile` date DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fim` time DEFAULT NULL,
  `tempo_desfile` time DEFAULT NULL,
  `CNPJ_integrante` int(10) unsigned DEFAULT NULL,
  `id_Campeonato` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CNPJ_integrante` (`CNPJ_integrante`),
  KEY `id_Campeonato` (`id_Campeonato`),
  CONSTRAINT `Integrante_ibfk_1` FOREIGN KEY (`CNPJ_integrante`) REFERENCES `Escola` (`CNPJ`),
  CONSTRAINT `Integrante_ibfk_2` FOREIGN KEY (`id_Campeonato`) REFERENCES `Campeonato` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Integrante`
--

LOCK TABLES `Integrante` WRITE;
/*!40000 ALTER TABLE `Integrante` DISABLE KEYS */;
/*!40000 ALTER TABLE `Integrante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Julgar`
--

DROP TABLE IF EXISTS `Julgar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Julgar` (
  `CNPJ_Escola` int(10) unsigned NOT NULL,
  `id_Campeonato` int(10) unsigned NOT NULL,
  `CPF_Jurado` int(10) unsigned DEFAULT NULL,
  `dia` int(10) unsigned NOT NULL,
  `nota` int(10) unsigned NOT NULL,
  `quesito` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CNPJ_Escola`,`id_Campeonato`),
  KEY `id_Campeonato` (`id_Campeonato`),
  KEY `CPF_Jurado` (`CPF_Jurado`),
  CONSTRAINT `Julgar_ibfk_1` FOREIGN KEY (`CNPJ_Escola`) REFERENCES `Integrante` (`CNPJ_integrante`),
  CONSTRAINT `Julgar_ibfk_2` FOREIGN KEY (`id_Campeonato`) REFERENCES `Integrante` (`id_Campeonato`),
  CONSTRAINT `Julgar_ibfk_3` FOREIGN KEY (`CPF_Jurado`) REFERENCES `Jurado` (`CPF_Jurado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Julgar`
--

LOCK TABLES `Julgar` WRITE;
/*!40000 ALTER TABLE `Julgar` DISABLE KEYS */;
/*!40000 ALTER TABLE `Julgar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurado`
--

DROP TABLE IF EXISTS `Jurado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurado` (
  `CPF_Jurado` int(10) unsigned NOT NULL,
  `atividade` varchar(20) NOT NULL,
  PRIMARY KEY (`CPF_Jurado`),
  CONSTRAINT `Jurado_ibfk_1` FOREIGN KEY (`CPF_Jurado`) REFERENCES `Pessoa` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurado`
--

LOCK TABLES `Jurado` WRITE;
/*!40000 ALTER TABLE `Jurado` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jurado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participante`
--

DROP TABLE IF EXISTS `Participante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participante` (
  `CPF_Participante` int(10) unsigned NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `filiação` date NOT NULL,
  PRIMARY KEY (`CPF_Participante`),
  CONSTRAINT `Participante_ibfk_1` FOREIGN KEY (`CPF_Participante`) REFERENCES `Pessoa` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participante`
--

LOCK TABLES `Participante` WRITE;
/*!40000 ALTER TABLE `Participante` DISABLE KEYS */;
/*!40000 ALTER TABLE `Participante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pessoa`
--

DROP TABLE IF EXISTS `Pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pessoa` (
  `CPF` int(10) unsigned NOT NULL,
  `nome` varchar(20) NOT NULL,
  `endereço` varchar(15) NOT NULL,
  `nascimento` date NOT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pessoa`
--

LOCK TABLES `Pessoa` WRITE;
/*!40000 ALTER TABLE `Pessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEI`
--

DROP TABLE IF EXISTS `SEI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEI` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CPF_Espectador` int(10) unsigned NOT NULL,
  `id_Integrante` int(10) unsigned NOT NULL,
  `id_setores` int(10) unsigned NOT NULL,
  `numero_setores` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CPF_Espectador` (`CPF_Espectador`),
  KEY `id_Integrante` (`id_Integrante`),
  KEY `numero_setores` (`numero_setores`,`id_setores`),
  CONSTRAINT `SEI_ibfk_1` FOREIGN KEY (`CPF_Espectador`) REFERENCES `Espectador` (`CPF_Espectador`),
  CONSTRAINT `SEI_ibfk_2` FOREIGN KEY (`id_Integrante`) REFERENCES `Integrante` (`id`),
  CONSTRAINT `SEI_ibfk_3` FOREIGN KEY (`numero_setores`, `id_setores`) REFERENCES `Setores` (`numero`, `id_sambodromo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEI`
--

LOCK TABLES `SEI` WRITE;
/*!40000 ALTER TABLE `SEI` DISABLE KEYS */;
/*!40000 ALTER TABLE `SEI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sambodromo`
--

DROP TABLE IF EXISTS `Sambodromo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sambodromo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `endereço` varchar(50) NOT NULL,
  `capacidade` int(10) unsigned NOT NULL,
  `data_inauguração` date NOT NULL,
  `cidade` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sambodromo`
--

LOCK TABLES `Sambodromo` WRITE;
/*!40000 ALTER TABLE `Sambodromo` DISABLE KEYS */;
INSERT INTO `Sambodromo` VALUES (1,'Marquês de Sapucaí','Rua Marquês de Sapucaí - Santo Cristo',72000,'1984-01-01','Rio de Janeiro'),(2,'Anhembi','Avenida Olavo Fontoura, 1209 - Santana',103200,'1991-01-01','São Paulo');
/*!40000 ALTER TABLE `Sambodromo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sediar`
--

DROP TABLE IF EXISTS `Sediar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sediar` (
  `id_Sambodromo` int(10) unsigned NOT NULL,
  `id_Campeonato` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_Sambodromo`),
  KEY `id_Campeonato` (`id_Campeonato`),
  CONSTRAINT `Sediar_ibfk_1` FOREIGN KEY (`id_Sambodromo`) REFERENCES `Sambodromo` (`id`),
  CONSTRAINT `Sediar_ibfk_2` FOREIGN KEY (`id_Campeonato`) REFERENCES `Campeonato` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sediar`
--

LOCK TABLES `Sediar` WRITE;
/*!40000 ALTER TABLE `Sediar` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sediar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Setores`
--

DROP TABLE IF EXISTS `Setores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Setores` (
  `numero` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(15) NOT NULL,
  `valor` int(10) unsigned NOT NULL,
  `capacidade` int(10) unsigned NOT NULL,
  `id_sambodromo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`numero`,`id_sambodromo`),
  KEY `id_sambodromo` (`id_sambodromo`),
  CONSTRAINT `Setores_ibfk_1` FOREIGN KEY (`id_sambodromo`) REFERENCES `Sambodromo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Setores`
--

LOCK TABLES `Setores` WRITE;
/*!40000 ALTER TABLE `Setores` DISABLE KEYS */;
INSERT INTO `Setores` VALUES (8,'A',70,26000,2),(9,'J',50,49081,2),(10,'Arquibancadas',100,21084,2),(11,'Pista',120,208015,2),(12,'Espaço Anhembi',500,11755,2),(13,'Arena Anhembi',250,49936,2),(14,'Nova Arena',350,38095,2);
/*!40000 ALTER TABLE `Setores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-21 15:54:19
