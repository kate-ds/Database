/*
Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
*/

DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello ()
RETURNS TEXT DETERMINISTIC
BEGIN
 RETURN 
	CASE
	  WHEN (0 <= HOUR(NOW()) AND HOUR(NOW()) <= 6) THEN 'Доброй ночи'
      WHEN (6 <= HOUR(NOW()) AND HOUR(NOW()) <= 12) THEN 'Доброе утро'
      WHEN (12 <= HOUR(NOW()) AND HOUR(NOW()) <= 18) THEN 'Доброе утро'
      ELSE 'Добрый вечер'
	END;
END //

SELECT hello();
