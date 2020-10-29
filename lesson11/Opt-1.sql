/*
Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, 
catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, 
идентификатор первичного ключа и содержимое поля name.
*/

USE shop;
DROP TABLE IF EXISTS log;
CREATE TABLE log (
	id INT NOT NULL AUTO_INCREMENT, 
    PRIMARY KEY (id),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    table_name VARCHAR(150) NOT NULL,
    field_name VARCHAR(150) NOT NULL
) ENGINE=Archive; 

DELIMITER //
CREATE TRIGGER logs_on_users AFTER INSERT ON users
FOR EACH ROW BEGIN
   INSERT INTO log Set table_name = users, 
	field_name = NEW.name;
END//

CREATE TRIGGER logs_on_catalogs AFTER INSERT ON catalogs
FOR EACH ROW BEGIN
   INSERT INTO log Set table_name = catalogs, 
	field_name = NEW.name;
END//

CREATE TRIGGER logs_on_products AFTER INSERT ON products
FOR EACH ROW BEGIN
   INSERT INTO log Set table_name = products, 
	field_name = NEW.name;
END//


