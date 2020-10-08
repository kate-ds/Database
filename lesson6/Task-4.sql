-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT id,
	name,
	surname,
    gender,
	COUNT(gender)
FROM users u
WHERE id IN (SELECT id from likes) 
	GROUP BY gender;