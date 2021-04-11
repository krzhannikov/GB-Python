-- Сделаем выборку активных абонентов по возрастным группам
SELECT
	CASE
     WHEN DATEDIFF(CURDATE(), birth_date)/365.25 BETWEEN 18 AND 26 THEN '18-25'
     WHEN DATEDIFF(CURDATE(), birth_date)/365.25 BETWEEN 26 AND 36 THEN '26-35'
     WHEN DATEDIFF(CURDATE(), birth_date)/365.25 BETWEEN 36 AND 51 THEN '36-50'
     ELSE '50+'
    END AS age,
    COUNT(*) AS count
FROM customer
WHERE deleted_at IS NULL
GROUP BY age
ORDER BY age;