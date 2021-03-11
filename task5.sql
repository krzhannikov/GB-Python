SELECT
	user_id,
	CONCAT(firstname, ' ', lastname) AS user_name,
    (SELECT COUNT(*) FROM message WHERE from_user_id = `profile`.user_id) + -- Кол-во отправленных юзером сообщений
    (SELECT COUNT(*) FROM `like` WHERE `like`.user_id = `profile`.user_id) + -- Кол-во поставленных юзером лайков
    (SELECT COUNT(*) FROM post WHERE post.user_id = `profile`.user_id) + -- Кол-во написанных юзером постов
    (SELECT COUNT(*) FROM media WHERE media.user_id = `profile`.user_id) + -- Кол-во медиафайлов юзера
    (SELECT COUNT(*) FROM friend_request WHERE from_user_id = `profile`.user_id) + -- Кол-во запросов в друзья от юзера
    (SELECT COUNT(*) FROM user_community WHERE user_community.user_id = `profile`.user_id) -- Кол-во групп, в которых состоит юзер
    AS activity_rating
 FROM vk.profile
 ORDER BY activity_rating
 LIMIT 10;