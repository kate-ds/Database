-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

-- можно посчитать сумму поставленных лайков, сумму постов, сумму комментов, взять среднее

SELECT id,
	CONCAT(name, ' ', surname) user
    -- () posted
    -- (union) liked
    -- () commented
    -- () activity
FROM users 
-- ORDER BY activity
-- LIMIT 10; 