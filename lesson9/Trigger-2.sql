/*
В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают 
неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, 
чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение 
необходимо отменить операцию.
*/
DROP TRIGGER IF EXISTS name_desc_not_null;
DELIMITER //
CREATE TRIGGER name_desc_not_null BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF (ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Incorrect product";
	END IF;
END //

INSERT INTO products (id, name, description) VALUES (69, NULL, NULL);
SELECT * FROM products;