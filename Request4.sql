-- выведем все обращения абонентов, которые связаны с задачами, и соответствующие им задачи.
SELECT
  (SELECT name FROM customer WHERE customer.id = c.customer_id) AS customer_name,
  (SELECT type FROM request_type WHERE request_type.id = c.request_type_id) AS request_type,
  c.message_url,
  t.url_crm AS task_url
FROM cust_request AS c
JOIN task AS t
ON c.task_id = t.id;