-- Выберем 10 активных задач, которые дольше всех не закрыты.
SELECT
  id,
  (SELECT name FROM customer WHERE customer.id = task.customer_id) AS customer_name,
  url_crm AS task,
  DATEDIFF(NOW(), created_at) AS days_in_work
FROM isp.task
WHERE task_status_id = 1 OR task_status_id = 2
ORDER BY days_in_work DESC
LIMIT 10;