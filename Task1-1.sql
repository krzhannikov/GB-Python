SELECT
  id,
  name,
  (SELECT COUNT(*) FROM orders WHERE orders.user_id = users.id) AS order_count
FROM users
GROUP BY id
HAVING order_count > 0;