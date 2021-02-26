-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema centroautomotrizfamso
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema centroautomotrizfamso
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `centroautomotrizfamso` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema editorialflamingo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema editorialflamingo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `editorialflamingo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `centroautomotrizfamso` ;

-- -----------------------------------------------------
-- Table `centroautomotrizfamso`.`IDENTIDAD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centroautomotrizfamso`.`IDENTIDAD` (
  `idTipoDocumento` INT NOT NULL,
  `tipoDocumento` VARCHAR(45) NOT NULL,
  `documento` VARCHAR(45) NOT NULL,
  `estadoDocumento` TINYINT NOT NULL,
  PRIMARY KEY (`idTipoDocumento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centroautomotrizfamso`.`SERVICIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centroautomotrizfamso`.`SERVICIO` (
  `idServicio` INT NOT NULL,
  `tipoServicio` VARCHAR(100) NOT NULL,
  `estadoServicio` TINYINT NOT NULL,
  PRIMARY KEY (`idServicio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centroautomotrizfamso`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centroautomotrizfamso`.`VEHICULO` (
  `idVehiculo` INT NOT NULL,
  `marca` VARCHAR(100) NOT NULL,
  `modelo` VARCHAR(100) NOT NULL,
  `color` VARCHAR(30) NOT NULL,
  `matricula` VARCHAR(45) NOT NULL,
  `estadoVehiculo` TINYINT NOT NULL,
  `SERVICIO_idServicio` INT NOT NULL,
  PRIMARY KEY (`idVehiculo`),
  INDEX `fk_VEHICULO_SERVICIO1_idx` (`SERVICIO_idServicio` ASC) VISIBLE,
  CONSTRAINT `fk_VEHICULO_SERVICIO1`
    FOREIGN KEY (`SERVICIO_idServicio`)
    REFERENCES `centroautomotrizfamso`.`SERVICIO` (`idServicio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centroautomotrizfamso`.`PERSONA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centroautomotrizfamso`.`PERSONA` (
  `idPersona` INT NOT NULL,
  `pNombrePersona` VARCHAR(45) NOT NULL,
  `sNombrePersona` VARCHAR(45) NULL,
  `pApellidoPersona` VARCHAR(45) NOT NULL,
  `sApellidoPersona` VARCHAR(45) NULL,
  `estadoPersona` TINYINT NOT NULL,
  `IDENTIDAD_idTipoDocumento` INT NOT NULL,
  `VEHICULO_idVehiculo` INT NOT NULL,
  PRIMARY KEY (`idPersona`, `IDENTIDAD_idTipoDocumento`, `VEHICULO_idVehiculo`),
  INDEX `fk_PERSONA_IDENTIDAD_idx` (`IDENTIDAD_idTipoDocumento` ASC) VISIBLE,
  INDEX `fk_PERSONA_VEHICULO1_idx` (`VEHICULO_idVehiculo` ASC) VISIBLE,
  CONSTRAINT `fk_PERSONA_IDENTIDAD`
    FOREIGN KEY (`IDENTIDAD_idTipoDocumento`)
    REFERENCES `centroautomotrizfamso`.`IDENTIDAD` (`idTipoDocumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PERSONA_VEHICULO1`
    FOREIGN KEY (`VEHICULO_idVehiculo`)
    REFERENCES `centroautomotrizfamso`.`VEHICULO` (`idVehiculo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centroautomotrizfamso`.`CORREOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centroautomotrizfamso`.`CORREOS` (
  `idCorreos` INT NOT NULL,
  `correos` VARCHAR(65) NOT NULL,
  `estadoCorreo` TINYINT NOT NULL,
  `PERSONA_idPersona` INT NOT NULL,
  `PERSONA_IDENTIDAD_idTipoDocumento` INT NOT NULL,
  PRIMARY KEY (`idCorreos`),
  INDEX `fk_CORREOS_PERSONA1_idx` (`PERSONA_idPersona` ASC, `PERSONA_IDENTIDAD_idTipoDocumento` ASC) VISIBLE,
  CONSTRAINT `fk_CORREOS_PERSONA1`
    FOREIGN KEY (`PERSONA_idPersona` , `PERSONA_IDENTIDAD_idTipoDocumento`)
    REFERENCES `centroautomotrizfamso`.`PERSONA` (`idPersona` , `IDENTIDAD_idTipoDocumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centroautomotrizfamso`.`TELEFONOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centroautomotrizfamso`.`TELEFONOS` (
  `idTelefonos` INT NOT NULL,
  `telefonos` INT(10) NOT NULL,
  `estadoTelefonos` TINYINT NOT NULL,
  `PERSONA_idPersona` INT NOT NULL,
  `PERSONA_IDENTIDAD_idTipoDocumento` INT NOT NULL,
  PRIMARY KEY (`idTelefonos`),
  INDEX `fk_TELEFONOS_PERSONA1_idx` (`PERSONA_idPersona` ASC, `PERSONA_IDENTIDAD_idTipoDocumento` ASC) VISIBLE,
  CONSTRAINT `fk_TELEFONOS_PERSONA1`
    FOREIGN KEY (`PERSONA_idPersona` , `PERSONA_IDENTIDAD_idTipoDocumento`)
    REFERENCES `centroautomotrizfamso`.`PERSONA` (`idPersona` , `IDENTIDAD_idTipoDocumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centroautomotrizfamso`.`RESERVA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centroautomotrizfamso`.`RESERVA` (
  `idReserva` INT NOT NULL,
  `fecha` DATE NOT NULL,
  `horario` VARCHAR(100) NOT NULL,
  `estadoReserva` TINYINT NOT NULL,
  PRIMARY KEY (`idReserva`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `centroautomotrizfamso`.`PERSONA_has_RESERVA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `centroautomotrizfamso`.`PERSONA_has_RESERVA` (
  `PERSONA_idPersona` INT NOT NULL,
  `PERSONA_IDENTIDAD_idTipoDocumento` INT NOT NULL,
  `PERSONA_VEHICULO_idVehiculo` INT NOT NULL,
  `RESERVA_idReserva` INT NOT NULL,
  PRIMARY KEY (`PERSONA_idPersona`, `PERSONA_IDENTIDAD_idTipoDocumento`, `PERSONA_VEHICULO_idVehiculo`, `RESERVA_idReserva`),
  INDEX `fk_PERSONA_has_RESERVA_RESERVA1_idx` (`RESERVA_idReserva` ASC) VISIBLE,
  INDEX `fk_PERSONA_has_RESERVA_PERSONA1_idx` (`PERSONA_idPersona` ASC, `PERSONA_IDENTIDAD_idTipoDocumento` ASC, `PERSONA_VEHICULO_idVehiculo` ASC) VISIBLE,
  CONSTRAINT `fk_PERSONA_has_RESERVA_PERSONA1`
    FOREIGN KEY (`PERSONA_idPersona` , `PERSONA_IDENTIDAD_idTipoDocumento` , `PERSONA_VEHICULO_idVehiculo`)
    REFERENCES `centroautomotrizfamso`.`PERSONA` (`idPersona` , `IDENTIDAD_idTipoDocumento` , `VEHICULO_idVehiculo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PERSONA_has_RESERVA_RESERVA1`
    FOREIGN KEY (`RESERVA_idReserva`)
    REFERENCES `centroautomotrizfamso`.`RESERVA` (`idReserva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `editorialflamingo` ;

-- -----------------------------------------------------
-- Table `editorialflamingo`.`tipo_documento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editorialflamingo`.`tipo_documento` (
  `idtipo_doc` VARCHAR(10) NOT NULL,
  `dec_tdoc` VARCHAR(45) NOT NULL,
  `estado_tdoc` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`idtipo_doc`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `editorialflamingo`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editorialflamingo`.`persona` (
  `id_autor` VARCHAR(15) NOT NULL,
  `p_nombre_autor` VARCHAR(45) NOT NULL,
  `s_nombre_autor` VARCHAR(45) NULL DEFAULT NULL,
  `p_apellido_autor` VARCHAR(45) NOT NULL,
  `s_apellido_autor` VARCHAR(45) NULL DEFAULT NULL,
  `estado_autor` TINYINT(1) NOT NULL,
  `pkfk_tdoc` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id_autor`, `pkfk_tdoc`),
  INDEX `fk_persona_tipo_documento1_idx` (`pkfk_tdoc` ASC) VISIBLE,
  CONSTRAINT `fk_persona_tipo_documento1`
    FOREIGN KEY (`pkfk_tdoc`)
    REFERENCES `editorialflamingo`.`tipo_documento` (`idtipo_doc`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `editorialflamingo`.`autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editorialflamingo`.`autor` (
  `tdoc_autor` VARCHAR(15) NOT NULL,
  `id_autor` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`tdoc_autor`, `id_autor`),
  CONSTRAINT `fk_autor_persona1`
    FOREIGN KEY (`tdoc_autor` , `id_autor`)
    REFERENCES `editorialflamingo`.`persona` (`id_autor` , `pkfk_tdoc`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `editorialflamingo`.`editorial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editorialflamingo`.`editorial` (
  `cod_editorial` INT NOT NULL AUTO_INCREMENT,
  `desc_editorial` VARCHAR(45) NOT NULL,
  `estado_editorial` TINYINT(1) NOT NULL,
  PRIMARY KEY (`cod_editorial`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `editorialflamingo`.`lector`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editorialflamingo`.`lector` (
  `fecha_nacimiento` DATE NOT NULL,
  `id_lector` VARCHAR(15) NOT NULL,
  `tdoc_lector` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id_lector`, `tdoc_lector`),
  CONSTRAINT `fk_lector_persona1`
    FOREIGN KEY (`id_lector` , `tdoc_lector`)
    REFERENCES `editorialflamingo`.`persona` (`id_autor` , `pkfk_tdoc`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `editorialflamingo`.`libro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editorialflamingo`.`libro` (
  `cod_libro` VARCHAR(25) NOT NULL,
  `titulo_libro` VARCHAR(45) NOT NULL,
  `estado_libro` TINYINT(1) NOT NULL,
  `editorial_cod_editorial` INT NOT NULL,
  PRIMARY KEY (`cod_libro`),
  INDEX `fk_libro_editorial1_idx` (`editorial_cod_editorial` ASC) VISIBLE,
  CONSTRAINT `fk_libro_editorial1`
    FOREIGN KEY (`editorial_cod_editorial`)
    REFERENCES `editorialflamingo`.`editorial` (`cod_editorial`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `editorialflamingo`.`libro_has_autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editorialflamingo`.`libro_has_autor` (
  `libro_cod_libro` VARCHAR(25) NOT NULL,
  `autor_tdoc_autor` VARCHAR(15) NOT NULL,
  `autor_id_autor` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`libro_cod_libro`, `autor_tdoc_autor`, `autor_id_autor`),
  INDEX `fk_libro_has_autor_autor1_idx` (`autor_tdoc_autor` ASC, `autor_id_autor` ASC) VISIBLE,
  INDEX `fk_libro_has_autor_libro1_idx` (`libro_cod_libro` ASC) VISIBLE,
  CONSTRAINT `fk_libro_has_autor_autor1`
    FOREIGN KEY (`autor_tdoc_autor` , `autor_id_autor`)
    REFERENCES `editorialflamingo`.`autor` (`tdoc_autor` , `id_autor`),
  CONSTRAINT `fk_libro_has_autor_libro1`
    FOREIGN KEY (`libro_cod_libro`)
    REFERENCES `editorialflamingo`.`libro` (`cod_libro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `editorialflamingo`.`prestamo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `editorialflamingo`.`prestamo` (
  `cod_prestamo` INT NOT NULL AUTO_INCREMENT,
  `fecha_prestamo` DATETIME NOT NULL,
  `libro_cod_libro` VARCHAR(25) NOT NULL,
  `lector_tdoc_lector` VARCHAR(15) NOT NULL,
  `lector_id_lector` VARCHAR(10) NOT NULL,
  `fecha_entrega` DATETIME NOT NULL,
  `estado_entrega` TINYINT NOT NULL,
  PRIMARY KEY (`cod_prestamo`),
  INDEX `fk_prestamo_libro1_idx` (`libro_cod_libro` ASC) VISIBLE,
  INDEX `fk_prestamo_lector1_idx` (`lector_tdoc_lector` ASC, `lector_id_lector` ASC) VISIBLE,
  CONSTRAINT `fk_prestamo_lector1`
    FOREIGN KEY (`lector_tdoc_lector` , `lector_id_lector`)
    REFERENCES `editorialflamingo`.`lector` (`id_lector` , `tdoc_lector`),
  CONSTRAINT `fk_prestamo_libro1`
    FOREIGN KEY (`libro_cod_libro`)
    REFERENCES `editorialflamingo`.`libro` (`cod_libro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
