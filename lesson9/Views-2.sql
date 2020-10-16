/*
Создайте представление, которое выводит название name товарной позиции из таблицы products 
и соответствующее название каталога name из таблицы catalogs.
*/

CREATE VIEW prod_cat_name 
AS SELECT products.id, products.name prod, catalogs.name catal FROM products, catalogs
WHERE products.catalog_id = catalogs.id;

SELECT * FROM prod_cat_name;

-- 2 способ с join

CREATE VIEW prod_cat_name_j
AS SELECT p.name product, c.name catalog FROM products p
JOIN catalogs c
ON p.catalog_id = c.id;

SELECT * FROM prod_cat_name_j;
