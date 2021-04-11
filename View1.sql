-- Создадим VIEW, отображающий 10 абонентов, которые платят больше всех
CREATE VIEW 'top10payers' AS
SELECT
 name,
 IFNULL((SELECT fee FROM tariff WHERE id = customer.tariff_inet), 0)
 + IFNULL((SELECT fee FROM tariff WHERE id = customer.tariff_phone), 0)
 + IFNULL((SELECT fee FROM tariff WHERE id = customer.tariff_tv), 0) AS total_fee
FROM isp.customer
ORDER BY total_fee DESC
LIMIT 10;