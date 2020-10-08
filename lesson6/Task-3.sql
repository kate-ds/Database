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

DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_post_id BIGINT UNSIGNED NOT NULL,
	to_photo_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	to_comment_id BIGINT UNSIGNED NOT NULL,
    -- created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	-- deleted_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY(from_user_id) REFERENCES users (id),
    FOREIGN KEY(to_post_id) REFERENCES posts (id),
    FOREIGN KEY(to_photo_id) REFERENCES photos (id),
    FOREIGN KEY(to_user_id) REFERENCES users (id),
    FOREIGN KEY(to_comment_id) REFERENCES comments (id),
    INDEX like_post_idx (from_user_id, to_post_id),
    INDEX like_photo_idx (from_user_id, to_photo_id),
    INDEX like_user_idx (from_user_id, to_user_id),
    INDEX like_comment_idx (from_user_id, to_comment_id)
);


/*
Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.


1 - посчитать возраст пользователей, отсортировать их, взять 10
2 - Посчитать количество лайков для пользователей с этими id
3 - Посчитать сумму

*/

-- посчитать возраст пользователей, отсортировать их, взять 10

SELECT id,
	name, 
	surname, 
    birthday, 
    TIMESTAMPDIFF(year, birthday, NOW()) age
FROM users u 
ORDER BY age LIMIT 10;

-- вывести лайки для пользователя с id (делать вложенный подзапрос для ид автора к пост айди, фото и тд)
    

