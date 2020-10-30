/*
Представления.
Сохраним в представление данные всех пользователей со статусом профи.
Думаю, что при работе с профи-аккаунтами логичней работать с отдельной таблицей для них. 
*/

DROP VIEW IF EXISTS pro_users;
CREATE VIEW pro_users
AS SELECT * FROM users WHERE is_profi = 1;

SELECT id, CONCAT(first_name, ' ', last_name), date_of_birth FROM pro_users;

-- Сделаем таблицу с названиями тегов, отсортированные по частоте использования в invites

DROP VIEW IF EXISTS invite_tags_sorted;
CREATE VIEW invite_tags_sorted
AS SELECT COUNT(tag_id) AS total,
	tag_id,
	(SELECT name FROM tags WHERE id = tag_id) AS tag_name  
FROM tags_to_invites GROUP BY tag_id ORDER BY COUNT(tag_id) DESC;

SELECT total, tag_name FROM invite_tags_sorted;
