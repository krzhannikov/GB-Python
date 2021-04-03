DROP PROCEDURE IF EXISTS add_recs;
DELIMITER //
CREATE PROCEDURE add_recs()
BEGIN
  DECLARE a INT DEFAULT 0;
  WHILE a < 1000000 DO
    INSERT INTO `users` (name, birthday_at)
    VALUES (1+a, '2021-04-03');
    SET a = a + 1;
  END WHILE;
END//
DELIMITER ;

CALL add_recs();