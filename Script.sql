-- MySQL Script generated by MySQL Workbench
-- Mon Dec  5 00:49:02 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`persona` (
  `ID` INT NOT NULL,
  `nombre` VARCHAR(30) NULL,
  `apellido` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ID`));


-- -----------------------------------------------------
-- Table `mydb`.`acerca_de_mi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`acerca_de_mi` (
  `ID` INT NULL,
  `descripcion` TEXT NULL,
  `persona_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `persona_ID`),
  INDEX `fk_acerca_de_mi_persona_idx` (`persona_ID` ASC),
  CONSTRAINT `fk_acerca_de_mi_persona`
    FOREIGN KEY (`persona_ID`)
    REFERENCES `mydb`.`persona` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `mydb`.`info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`info` (
  `ID` INT NULL,
  `edad` VARCHAR(30) NULL,
  `foto` LONGTEXT NULL,
  `persona_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `persona_ID`),
  INDEX `fk_info_persona1_idx` (`persona_ID` ASC),
  CONSTRAINT `fk_info_persona1`
    FOREIGN KEY (`persona_ID`)
    REFERENCES `mydb`.`persona` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `mydb`.`experiencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`experiencia` (
  `ID` INT NULL,
  `descripcion` TEXT NULL,
  `imagen` LONGTEXT NULL,
  `titulo` VARCHAR(200) NULL,
  `url` LONGTEXT NULL,
  `alt` TEXT NULL,
  `persona_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `persona_ID`),
  INDEX `fk_experiencia_persona1_idx` (`persona_ID` ASC),
  CONSTRAINT `fk_experiencia_persona1`
    FOREIGN KEY (`persona_ID`)
    REFERENCES `mydb`.`persona` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `mydb`.`formacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`formacion` (
  `ID` INT NULL,
  `descripcion` TEXT NULL,
  `imagen` LONGTEXT NULL,
  `titulo` VARCHAR(200) NULL,
  `url` LONGTEXT NULL,
  `alt` TEXT NULL,
  `persona_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `persona_ID`),
  INDEX `fk_experiencia_persona1_idx` (`persona_ID` ASC),
  CONSTRAINT `fk_experiencia_persona10`
    FOREIGN KEY (`persona_ID`)
    REFERENCES `mydb`.`persona` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `mydb`.`proyectos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`proyectos` (
  `ID` INT NULL,
  `descripcion` TEXT NULL,
  `imagen` LONGTEXT NULL,
  `titulo` VARCHAR(200) NULL,
  `url` LONGTEXT NULL,
  `alt` TEXT NULL,
  `persona_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `persona_ID`),
  INDEX `fk_experiencia_persona1_idx` (`persona_ID` ASC),
  CONSTRAINT `fk_experiencia_persona100`
    FOREIGN KEY (`persona_ID`)
    REFERENCES `mydb`.`persona` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `mydb`.`habilidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`habilidades` (
  `ID` INT NULL,
  `titulo` VARCHAR(200) NULL,
  `porcentaje` TEXT NULL,
  `color` TEXT NULL,
  `persona_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `persona_ID`),
  INDEX `fk_experiencia_persona1_idx` (`persona_ID` ASC),
  CONSTRAINT `fk_experiencia_persona1000`
    FOREIGN KEY (`persona_ID`)
    REFERENCES `mydb`.`persona` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
