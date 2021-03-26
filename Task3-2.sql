DELIMITER //

DROP TRIGGER IF EXISTS not_null_text_ins//
CREATE TRIGGER not_null_text_ins BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Операция отменена: поля Название и Описание пусты';
  END IF;
END//

DROP TRIGGER IF EXISTS not_null_text_upd//
CREATE TRIGGER not_null_text_upd BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Операция отменена: поля Название и Описание пусты';
  END IF;
END//