-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema resturant
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema resturant
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `resturant` DEFAULT CHARACTER SET utf8mb4 ;
USE `resturant` ;

-- -----------------------------------------------------
-- Table `resturant`.`supliers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `resturant`.`supliers` (
  `supliers_id` INT(11) NOT NULL AUTO_INCREMENT,
  `phone` INT(10) NULL DEFAULT NULL,
  PRIMARY KEY (`supliers_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `resturant`.`restaurants`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `resturant`.`restaurants` (
  `restaurants_id` INT(11) NOT NULL,
  `city` VARCHAR(20) NULL DEFAULT NULL,
  `typeof_food` VARCHAR(50) NULL DEFAULT NULL,
  `supplier` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`restaurants_id`),
  INDEX `supplier` (`supplier` ASC) VISIBLE,
  CONSTRAINT `restaurants_ibfk_1`
    FOREIGN KEY (`supplier`)
    REFERENCES `resturant`.`supliers` (`supliers_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `resturant`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `resturant`.`orders` (
  `order_id` INT(11) NOT NULL AUTO_INCREMENT,
  `delivery_man` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `delivery_man` (`delivery_man` ASC) VISIBLE,
  CONSTRAINT `orders_ibfk_1`
    FOREIGN KEY (`delivery_man`)
    REFERENCES `resturant`.`restaurants` (`restaurants_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `resturant`.`delivers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `resturant`.`delivers` (
  `deliver_id` INT(11) NOT NULL,
  `phone` INT(11) NULL DEFAULT NULL,
  `ordernum` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`deliver_id`),
  INDEX `ordernum` (`ordernum` ASC) VISIBLE,
  CONSTRAINT `delivers_ibfk_1`
    FOREIGN KEY (`ordernum`)
    REFERENCES `resturant`.`orders` (`order_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `resturant`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `resturant`.`users` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `phone` INT(10) NULL DEFAULT NULL,
  `favorite_restaurant` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  INDEX `favorite_restaurant` (`favorite_restaurant` ASC) VISIBLE,
  CONSTRAINT `users_ibfk_1`
    FOREIGN KEY (`favorite_restaurant`)
    REFERENCES `resturant`.`restaurants` (`restaurants_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
