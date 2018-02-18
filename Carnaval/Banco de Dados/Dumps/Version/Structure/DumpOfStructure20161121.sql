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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-21 12:31:09
