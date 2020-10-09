DROP DATABASE IF EXISTS snet1509;
CREATE DATABASE snet1509;
USE snet1509;
CREATE TABLE IF NOT EXISTS users(
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    name VARCHAR(50),
    surname VARCHAR(50),
    email VARCHAR(120) UNIQUE,
    phone BIGINT,
    gender CHAR(1),
    birthday DATE,
    hometown varchar(50),
    photo_id BIGINT UNSIGNED,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    -- soft delete (мягкое удаление)
    -- is_deleted BOOL,
    -- deleted_at DATETIME,
    INDEX(phone),
    INDEX(name, surname),
    INDEX(email),
    pass CHAR(50)
);

DROP TABLE IF EXISTS likes_to_post;
CREATE TABLE likes_to_post(
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_post_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY(to_post_id) REFERENCES posts (id),
    INDEX like_post_idx (from_user_id, to_post_id)
);

INSERT INTO `likes_to_post` (`id`, `from_user_id`, `to_post_id`) VALUES 
	('1', '1', '68'),
	('2', '5', '68'), 
	('3', '2', '23'),
	('4', '9', '48'),
	('5', '5', '10'),
	('6', '6', '99'),
	('7', '7', '10'),
	('8', '8', '73');
	/*('9', '9', '9', '9', '9', '9'),
	('10', '10', '10', '10', '10', '10'),
	('11', '11', '11', '11', '11', '11'),
	('12', '12', '12', '12', '12', '12'),
	('13', '13', '13', '13', '13', '13'),
	('14', '14', '14', '14', '14', '14'); 
    */

DROP TABLE IF EXISTS likes_to_photo;
CREATE TABLE likes_to_photo(
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_photo_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY(to_photo_id) REFERENCES photos (id),
    INDEX like_photo_idx (from_user_id, to_photo_id)
);

DROP TABLE IF EXISTS likes_to_comment;
CREATE TABLE likes_to_comment(
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_comment_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY(to_comment_id) REFERENCES comments (id),
    INDEX like_comment_idx (from_user_id, to_comment_id)
);

/*
Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.


1 - посчитать возраст пользователей, отсортировать их, взять 10
2 - Посчитать количество лайков для пользователей с этими id
3 - Посчитать сумму
*/

- выберем id лайка и id юзера, кому поставили, считаем лайки
SELECT id,
COUNT(*),
(SELECT user_id FROM posts WHERE posts.id = lp.to_post_id) to_usr_id 
FROM likes_to_post as lp 
-- здесь уже добавляю ограничение на пользователей по возрасту
WHERE to_usr_id IN (SELECT id, 
	name, 
	surname, 
    birthday, 
    TIMESTAMPDIFF(year, birthday, NOW()) age
FROM users u ORDER BY age LIMIT 10) people
GROUP BY to_usr_id ORDER BY COUNT(*) DESC;


-- посчитать возраст пользователей, отсортировать их, взять 10

SELECT id,
	name, 
	surname, 
    birthday, 
    TIMESTAMPDIFF(year, birthday, NOW()) age
FROM users u ORDER BY age LIMIT 10;
-- WHERE id in ()


-- вывести лайки для пользователя с id (делать вложенный подзапрос для ид автора к пост айди, фото и тд)


-- идент юзера из лайков
select user_id from posts WHERE id IN (SELECT to_post_id FROM likes_to_post);


-- найдем все лайки для для этого юзера

SELECT * FROM likes_to_post WHERE to_usr_id IN (юзеры из лайков) FROM likes;
 
