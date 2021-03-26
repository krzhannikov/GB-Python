CREATE TEMPORARY TABLE `tmp_date` (
	`date` DATE,
    `is_equal` BIT
    );
DELIMITER |
CREATE PROCEDURE fill_dates(first_date DATE, last_date DATE)
BEGIN
  WHILE first_date <= last_date DO
    INSERT INTO tmp_date (date, is_equal) VALUES (first_date, (SELECT Count(created_at) FROM dates WHERE created_at = first_date));
    SET first_date = date_add(first_date, INTERVAL 1 DAY);
  END WHILE;
END;
|
DELIMITER ;
CALL fill_dates('2018-08-01','2018-08-31');
SELECT * FROM tmp_date;