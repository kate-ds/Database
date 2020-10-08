
-- 1 Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT * FROM users 
WHERE id IN (SELECT user_id FROM orders);

SELECT * FROM users 
WHERE EXISTS (SELECT * FROM orders WHERE user_id = users.id);

-- 2 Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT * FROM products

-- 3 (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.
