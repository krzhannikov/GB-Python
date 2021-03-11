SELECT
  CONCAT(firstname, ' ', lastname) AS user_name,
  birthday,
  (SELECT COUNT(*) FROM vk.like WHERE user_id = profile.user_id) AS like_count
FROM profile
ORDER BY birthday DESC
LIMIT 10;