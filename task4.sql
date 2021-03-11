SELECT
 (SELECT gender FROM vk.profile WHERE user_id = vk.like.user_id) AS gender,
 COUNT(*) AS like_count
FROM vk.like
GROUP BY gender;