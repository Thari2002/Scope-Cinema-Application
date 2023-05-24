-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema database2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema database2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `database2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `database2` ;

-- -----------------------------------------------------
-- Table `database2`.`bookedticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database2`.`bookedticket` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `paymentid` INT NOT NULL,
  `userName` VARCHAR(45) NOT NULL,
  `userId` VARCHAR(45) NOT NULL,
  `priceofeach` INT NOT NULL,
  `quantity` INT NOT NULL,
  `total` INT NOT NULL,
  `seattype` VARCHAR(45) NOT NULL,
  `point` INT NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `movie` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database2`.`payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database2`.`payment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `userid` VARCHAR(45) NOT NULL,
  `total` VARCHAR(45) NOT NULL,
  `paid` VARCHAR(45) NOT NULL,
  `balance` VARCHAR(45) NOT NULL,
  `points` VARCHAR(45) NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `movie` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
