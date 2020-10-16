/*
Создайте двух пользователей которые имеют доступ к базе данных shop. 
Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
второму пользователю shop — любые операции в пределах базы данных shop.
*/

SELECT USER();

CREATE USER 'shop_read'@'localhost' IDENTIFIED BY 'pass12345';
GRANT SELECT ON shop.* TO 'shop_read'@'localhost';

CREATE USER shop IDENTIFIED BY 'pass12345';
GRANT ALL ON shop.* TO shop;
FLUSH PRIVILEGES;
SELECT * FROM mysql.user;

