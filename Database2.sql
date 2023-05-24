-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema database1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema database1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `database1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `database1` ;

-- -----------------------------------------------------
-- Table `database1`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`admin` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`cashier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`cashier` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `NIC` BIGINT NOT NULL,
  `Userid` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `mobile` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`img`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`img` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `image` LONGBLOB NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `time` VARCHAR(45) NOT NULL,
  `Date` VARCHAR(45) NOT NULL,
  `AvailableSeats` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`img1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`img1` (
  `id` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `time` VARCHAR(45) NOT NULL,
  `image` LONGBLOB NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`img2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`img2` (
  `id` VARCHAR(20) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `time` VARCHAR(45) NOT NULL,
  `seats` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`manager`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`manager` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `NIC` BIGINT NOT NULL,
  `Userid` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `mobile` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`managers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`managers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  `mobile` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`movie` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `movie_name` VARCHAR(45) NOT NULL,
  `availabletime` VARCHAR(225) NOT NULL,
  `availableSeats` VARCHAR(255) NOT NULL,
  `moviecover` LONGBLOB NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`movies` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `image` LONGBLOB NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `time` VARCHAR(45) NOT NULL,
  `seat` VARCHAR(45) NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`sales` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `total` VARCHAR(45) NOT NULL,
  `pay` VARCHAR(45) NOT NULL,
  `balance` VARCHAR(45) NOT NULL,
  `point` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`sales1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`sales1` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `total` VARCHAR(45) NOT NULL,
  `pay` VARCHAR(45) NOT NULL,
  `balance` VARCHAR(45) NOT NULL,
  `point` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`sales_product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`sales_product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sales_id` INT NOT NULL,
  `tickettype` VARCHAR(45) NOT NULL,
  `ticket_qty` INT NOT NULL,
  `price` INT NOT NULL,
  `total` INT NOT NULL,
  `points` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`sales_product1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`sales_product1` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sales_id` INT NOT NULL,
  `tickettype` VARCHAR(45) NOT NULL,
  `ticket_qty` INT NOT NULL,
  `price` INT NOT NULL,
  `total` INT NOT NULL,
  `points` INT NOT NULL,
  `agetype` VARCHAR(45) NOT NULL,
  `customername` VARCHAR(45) NOT NULL,
  `idnumb` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`user` (
  `Reg_No` INT NOT NULL AUTO_INCREMENT,
  `NIC` BIGINT NOT NULL,
  `UserId` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Mobile` VARCHAR(45) NOT NULL,
  `History` INT NULL DEFAULT NULL,
  `Points` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Reg_No`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `database1`.`user1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `database1`.`user1` (
  `uname1` VARCHAR(45) NOT NULL,
  `mobile` VARCHAR(45) NOT NULL,
  `time` VARCHAR(45) NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `adseats` VARCHAR(45) NOT NULL,
  `chseats` VARCHAR(45) NOT NULL,
  `uid` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`uid`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
