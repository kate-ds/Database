
-- 1 Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT * FROM users 
WHERE id IN (SELECT user_id FROM orders);

SELECT * FROM users 
WHERE EXISTS (SELECT * FROM orders WHERE user_id = users.id);

-- 2 Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT id, 
name,
 (SELECT name FROM catalogs WHERE id = p.catalog_id) AS catalog_names
FROM products p;

-- 3 (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.


DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
    frm VARCHAR(50), -- eng
    to_city VARCHAR(50) -- eng
);

INSERT INTO flights (id, frm, to_city) values 
	(1, 'Moscow', 'Sochi'), 
    (2, 'Paris', 'Lyon'), 
    (3, 'Dresden', 'Munich'), 
    (4, 'London', 'Paris'), 
    (5, 'Moscow', 'Stambul');
    
CREATE TABLE IF NOT EXISTS cities (
	label VARCHAR(50), -- eng
    name VARCHAR(50) -- ru
);

INSERT INTO cities (label, name) values 
	('Moscow', 'Москва'), ('Sochi', 'Сочи'), 
    ('Paris', 'Париж'), ('Lyon', 'Лион'), 
    ('London', 'Лондон'), ('Dresden', 'Дрезден'), 
    ('Munich', 'Мюнхен'), ('Stambul', 'Стамбул');


