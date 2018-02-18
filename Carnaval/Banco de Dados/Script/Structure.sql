-- MySQL Script generated by MySQL Workbench
-- Ter 06 Dez 2016 11:37:45 BRST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema carnaval
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema carnaval
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `carnaval` DEFAULT CHARACTER SET utf8 ;
USE `carnaval` ;

-- -----------------------------------------------------
-- Table `carnaval`.`Campeonato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Campeonato` (
  `ano` YEAR NOT NULL DEFAULT '2017',
  `estado` ENUM('RJ', 'SP') NOT NULL DEFAULT 'RJ',
  `data_inicio` DATE NOT NULL,
  `data_fim` DATE NOT NULL,
  `regulamento` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`ano`, `estado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Escola`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Escola` (
  `CNPJ` INT(10) UNSIGNED NOT NULL,
  `nome` VARCHAR(30) NOT NULL,
  `nome_fantasia` VARCHAR(50) NOT NULL,
  `cor1` VARCHAR(15) NOT NULL,
  `cor2` VARCHAR(15) NOT NULL,
  `cor3` VARCHAR(15) NULL DEFAULT NULL,
  `endereço` VARCHAR(80) NULL DEFAULT NULL,
  `fundação` YEAR NULL DEFAULT NULL,
  PRIMARY KEY (`CNPJ`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Pessoa` (
  `CPF` INT(11) UNSIGNED NOT NULL,
  `nome` VARCHAR(40) NOT NULL,
  `endereço` VARCHAR(40) NOT NULL,
  `nascimento` DATE NOT NULL,
  `sexo` ENUM('M', 'F') NOT NULL,
  `nacionalidade` VARCHAR(40) NULL DEFAULT 'Brasileiro',
  PRIMARY KEY (`CPF`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Espectador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Espectador` (
  `CPF_Espectador` INT(10) UNSIGNED NOT NULL,
  `email` VARCHAR(80) NULL DEFAULT NULL,
  `ingresso` INT(10) UNSIGNED NOT NULL,
  `telefone` INT(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`CPF_Espectador`),
  CONSTRAINT `Espectador_ibfk_1`
    FOREIGN KEY (`CPF_Espectador`)
    REFERENCES `carnaval`.`Pessoa` (`CPF`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Participante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Participante` (
  `CPF_Participante` INT(10) UNSIGNED NOT NULL,
  `cargo` VARCHAR(50) NULL DEFAULT NULL,
  `filiação` DATE NOT NULL,
  PRIMARY KEY (`CPF_Participante`),
  CONSTRAINT `Participante_ibfk_1`
    FOREIGN KEY (`CPF_Participante`)
    REFERENCES `carnaval`.`Pessoa` (`CPF`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Filiar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Filiar` (
  `CPF_Participante` INT(10) UNSIGNED NOT NULL,
  `CNPJ_Escola` INT(10) UNSIGNED NOT NULL,
  `filiação` YEAR NOT NULL,
  `data_desfiliação` YEAR NULL DEFAULT NULL,
  PRIMARY KEY (`CPF_Participante`),
  INDEX `CNPJ_Escola` (`CNPJ_Escola` ASC),
  CONSTRAINT `Filiar_ibfk_1`
    FOREIGN KEY (`CPF_Participante`)
    REFERENCES `carnaval`.`Participante` (`CPF_Participante`),
  CONSTRAINT `Filiar_ibfk_2`
    FOREIGN KEY (`CNPJ_Escola`)
    REFERENCES `carnaval`.`Escola` (`CNPJ`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Fundador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Fundador` (
  `CPF_Fundador` INT(10) UNSIGNED NOT NULL,
  `data_óbito` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`CPF_Fundador`),
  CONSTRAINT `Fundador_ibfk_1`
    FOREIGN KEY (`CPF_Fundador`)
    REFERENCES `carnaval`.`Pessoa` (`CPF`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Sambodromo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Sambodromo` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `endereço` VARCHAR(80) NOT NULL,
  `data_inauguração` DATE NOT NULL,
  `cidade` VARCHAR(25) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Fundar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Fundar` (
  `CPF_Fundador` INT(10) UNSIGNED NOT NULL,
  `id_sambodromo` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`CPF_Fundador`, `id_sambodromo`),
  INDEX `id_sambodromo` (`id_sambodromo` ASC),
  CONSTRAINT `Fundar_ibfk_1`
    FOREIGN KEY (`CPF_Fundador`)
    REFERENCES `carnaval`.`Fundador` (`CPF_Fundador`),
  CONSTRAINT `Fundar_ibfk_2`
    FOREIGN KEY (`id_sambodromo`)
    REFERENCES `carnaval`.`Sambodromo` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Integrante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Integrante` (
  `CNPJ` INT(10) UNSIGNED NOT NULL,
  `ano` YEAR NOT NULL,
  `estado` ENUM('RJ', 'SP') NOT NULL,
  `data_desfile` DATE NOT NULL,
  `grupo` VARCHAR(15) NOT NULL,
  `colocação` INT(10) UNSIGNED NOT NULL,
  `enredo` VARCHAR(80) NULL DEFAULT NULL,
  `hora_inicio` TIME NULL DEFAULT NULL,
  `hora_fim` TIME NULL DEFAULT NULL,
  PRIMARY KEY (`CNPJ`, `ano`, `estado`, `data_desfile`),
  INDEX `ano` (`ano` ASC, `estado` ASC),
  CONSTRAINT `Integrante_ibfk_1`
    FOREIGN KEY (`CNPJ`)
    REFERENCES `carnaval`.`Escola` (`CNPJ`),
  CONSTRAINT `Integrante_ibfk_2`
    FOREIGN KEY (`ano` , `estado`)
    REFERENCES `carnaval`.`Campeonato` (`ano` , `estado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Jurado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Jurado` (
  `CPF_Jurado` INT(10) UNSIGNED NOT NULL,
  `atividade` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`CPF_Jurado`),
  CONSTRAINT `Jurado_ibfk_1`
    FOREIGN KEY (`CPF_Jurado`)
    REFERENCES `carnaval`.`Pessoa` (`CPF`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Julgar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Julgar` (
  `CNPJ` INT(10) UNSIGNED NOT NULL,
  `ano` YEAR NOT NULL,
  `estado` ENUM('RJ', 'SP') NOT NULL,
  `data` DATE NOT NULL,
  `CPF_Jurado` INT(10) UNSIGNED NOT NULL,
  `nota` INT(10) UNSIGNED NOT NULL,
  `quesito` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`CNPJ`, `ano`, `estado`, `data`, `CPF_Jurado`),
  INDEX `CPF_Jurado` (`CPF_Jurado` ASC),
  CONSTRAINT `Julgar_ibfk_1`
    FOREIGN KEY (`CNPJ` , `ano` , `estado` , `data`)
    REFERENCES `carnaval`.`Integrante` (`CNPJ` , `ano` , `estado` , `data_desfile`),
  CONSTRAINT `Julgar_ibfk_2`
    FOREIGN KEY (`CPF_Jurado`)
    REFERENCES `carnaval`.`Jurado` (`CPF_Jurado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Setores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Setores` (
  `numero` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(25) NOT NULL,
  `valor` INT(10) UNSIGNED NOT NULL,
  `capacidade` INT(10) UNSIGNED NOT NULL,
  `id_sambodromo` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`numero`, `id_sambodromo`),
  INDEX `id_sambodromo` (`id_sambodromo` ASC),
  CONSTRAINT `Setores_ibfk_1`
    FOREIGN KEY (`id_sambodromo`)
    REFERENCES `carnaval`.`Sambodromo` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`SEI`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`SEI` (
  `CPF_Espectador` INT(10) UNSIGNED NOT NULL,
  `CNPJ` INT(10) UNSIGNED NOT NULL,
  `ano` YEAR NOT NULL,
  `estado` ENUM('RJ', 'SP') NOT NULL,
  `data` DATE NOT NULL,
  `id_setores` INT(10) UNSIGNED NOT NULL,
  `numero_setores` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`CPF_Espectador`, `CNPJ`, `ano`, `estado`, `data`),
  INDEX `CNPJ` (`CNPJ` ASC, `ano` ASC, `estado` ASC, `data` ASC),
  INDEX `numero_setores` (`numero_setores` ASC, `id_setores` ASC),
  CONSTRAINT `SEI_ibfk_1`
    FOREIGN KEY (`CPF_Espectador`)
    REFERENCES `carnaval`.`Espectador` (`CPF_Espectador`),
  CONSTRAINT `SEI_ibfk_2`
    FOREIGN KEY (`CNPJ` , `ano` , `estado` , `data`)
    REFERENCES `carnaval`.`Integrante` (`CNPJ` , `ano` , `estado` , `data_desfile`),
  CONSTRAINT `SEI_ibfk_3`
    FOREIGN KEY (`numero_setores` , `id_setores`)
    REFERENCES `carnaval`.`Setores` (`numero` , `id_sambodromo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `carnaval`.`Sediar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carnaval`.`Sediar` (
  `id_Sambodromo` INT(10) UNSIGNED NOT NULL,
  `ano` YEAR NOT NULL,
  `estado` ENUM('RJ', 'SP') NOT NULL,
  PRIMARY KEY (`id_Sambodromo`, `ano`, `estado`),
  INDEX `ano` (`ano` ASC, `estado` ASC),
  CONSTRAINT `Sediar_ibfk_1`
    FOREIGN KEY (`id_Sambodromo`)
    REFERENCES `carnaval`.`Sambodromo` (`id`),
  CONSTRAINT `Sediar_ibfk_2`
    FOREIGN KEY (`ano` , `estado`)
    REFERENCES `carnaval`.`Campeonato` (`ano` , `estado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;