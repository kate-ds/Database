-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT 
    gender,
	COUNT(gender) AS total_likes
FROM users u
WHERE id IN (SELECT id from likes) 
	GROUP BY gender
    LIMIT 1; -- выведет только ответ
    