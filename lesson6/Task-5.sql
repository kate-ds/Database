
-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

-- можно посчитать сумму поставленных лайков, сумму постов, сумму комментов, посчитать общую сумму

SELECT id,
	CONCAT(name, ' ', surname) user,
    IFNULL((SELECT COUNT(*) FROM posts WHERE user_id = u.id GROUP BY user_id), 0) `posted`,
    IFNULL((SELECT COUNT(*) FROM likes WHERE from_user_id = u.id GROUP BY from_user_id), 0) `liked`,
    IFNULL((SELECT COUNT(*) FROM comments WHERE user_id = u.id GROUP BY user_id), 0) `commented`,
    ((IFNULL((SELECT COUNT(*) FROM posts WHERE user_id = u.id GROUP BY user_id), 0)) + 
    (IFNULL((SELECT COUNT(*) FROM likes WHERE from_user_id = u.id GROUP BY from_user_id), 0)) + 
    (IFNULL((SELECT COUNT(*) FROM comments WHERE user_id = u.id GROUP BY user_id), 0))) as activity
FROM users u
ORDER BY activity
LIMIT 10;


-- posted (user id=1)
SELECT COUNT(*) FROM posts WHERE user_id = 1 GROUP BY user_id;

-- liked (user id=1)
SELECT COUNT(*) FROM likes WHERE from_user_id in (1, 2, 3, 45, 56, 67, 105) AND IFNULL(from_user_id, 0) GROUP BY from_user_id;

-- commented (user id=1)
SELECT COUNT(*) FROM comments WHERE user_id = 1 GROUP BY user_id;
