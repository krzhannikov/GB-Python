DROP TABLE IF EXISTS `sample`.`logs`;
CREATE TABLE `sample`.`logs` (
  `table_name` VARCHAR(30) NOT NULL,
  `rec_id` BIGINT NOT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `created_at` DATETIME NOT NULL)
ENGINE = ARCHIVE;

DROP TRIGGER IF EXISTS `sample`.`users_AFTER_INSERT`;
DELIMITER $$
USE `sample`$$
CREATE DEFINER = CURRENT_USER TRIGGER `sample`.`users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW
BEGIN
	INSERT INTO logs (table_name, rec_id, name, created_at)
    VALUES ('users', NEW.id, NEW.name, NEW.created_at);
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `sample`.`catalogs_AFTER_INSERT`;
DELIMITER $$
USE `sample`$$
CREATE DEFINER = CURRENT_USER TRIGGER `sample`.`catalogs_AFTER_INSERT` AFTER INSERT ON `catalogs` FOR EACH ROW
BEGIN
	INSERT INTO logs (table_name, rec_id, name, created_at)
    VALUES ('catalogs', NEW.id, NEW.name, NOW());
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `sample`.`products_AFTER_INSERT`;
DELIMITER $$
USE `sample`$$
CREATE DEFINER = CURRENT_USER TRIGGER `sample`.`products_AFTER_INSERT` AFTER INSERT ON `products` FOR EACH ROW
BEGIN
	INSERT INTO logs (table_name, rec_id, name, created_at)
    VALUES ('products', NEW.id, NEW.name, NEW.created_at);
END$$
DELIMITER ;