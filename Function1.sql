-- Создадим функцию, которая будет возвращать количество закрытых задач в определённом месяце
-- на вход подаются данные в формате YYYYMM
CREATE FUNCTION `closed_tasks_per_month` (ym CHAR(6))
RETURNS INTEGER READS SQL DATA
BEGIN
RETURN 
 (SELECT
  COUNT(*)
 FROM isp.task
 WHERE EXTRACT(YEAR_MONTH FROM closed_at) = ym);
END