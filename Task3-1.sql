DELIMITER //
DROP FUNCTION IF EXISTS hello//
CREATE FUNCTION hello ()
RETURNS VARCHAR(15) DETERMINISTIC
BEGIN
  RETURN
  CASE
    WHEN '06:00:00' <= CURTIME() AND CURTIME() < '12:00:00' 
        THEN 'Доброе утро'
	WHEN '12:00:00' <= CURTIME() AND CURTIME() < '18:00:00' 
        THEN 'Добрый день'
	WHEN '18:00:00' <= CURTIME() AND CURTIME() < '00:00:00' 
        THEN 'Добрый вечер'
    ELSE 'Доброй ночи'
  END;
END//
SELECT hello() AS 'Привет'//