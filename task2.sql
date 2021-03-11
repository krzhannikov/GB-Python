-- Выберем сообщения юзера с user_id = 14
SELECT
  from_user_id, to_user_id, COUNT(*)
FROM message
WHERE
  to_user_id = 14
  AND
  (
  from_user_id IN (
    SELECT from_user_id
    FROM friend_request
    WHERE
      (from_user_id = 14 OR to_user_id = 14)
      AND `status` = 1)
  OR
  from_user_id IN (
    SELECT to_user_id
    FROM friend_request
    WHERE
      (from_user_id = 14 OR to_user_id = 14)
      AND `status` = 1)
   )
GROUP BY from_user_id
ORDER BY COUNT(*) DESC;
-- Реализация проверки на друзья получилась какая-то громоздкая 
-- и неоптимизированная, но лучше пока не придумал.
-- Анализ ещё и отправленных юзером сообщений мне вообще мозг поломал ) не сделал, к сожалению.