/*
В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
*/
CREATE DATABASE IF NOT EXISTS sample;
USE sample;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT 'Имя покупателя',
    birthday_at DATE COMMENT 'Дата рождения'
) COMMENT = 'Покупатели';

SELECT * FROM shop.users;
SELECT * FROM sample.users;

-- 1 способ

START TRANSACTION;
INSERT INTO sample.users (id, name, birthday_at) SELECT * FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1;
COMMIT;

-- 2 способ (сохранить в переменную, просто чтобы попробовать)
SET @mv_id := 1;
START TRANSACTION;
INSERT INTO sample.users (id, name, birthday_at) SELECT * FROM shop.users WHERE id = @mv_id;
DELETE FROM shop.users WHERE id = @mv_id;
COMMIT;



