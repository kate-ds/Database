/* 
Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, а не года рождения.
*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT 'Имя покупателя',
    surname VARCHAR(255) COMMENT 'Фамилия покупателя',
    user VARCHAR(255) AS (CONCAT(surname, ' ', name)),
    birthday DATE COMMENT 'Дата рождения'
) COMMENT = 'Покупатели';

TRUNCATE users;
INSERT INTO users (name, surname, birthday) VALUES 
('Дарья','Попова','1984-11-28'),
('Ирина','Гончарова','1994-08-24'),
('Марина','Закусилова','1991-04-16'),
('Елена','Нагина','1988-08-10'),
('Валерия','Платошкина','1990-01-07'),
('Станислав','Светляков','1998-05-19'),
('Ирина','Черникова','1999-10-20'),
('Алиса','Зайцева','2000-04-03'),
('Ольга','Застрожнова','1983-05-07');

SET sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

SELECT user, birthday,
DATE_FORMAT(birthday, '%2020-%m-%d') AS birthday_2020,
DATE_FORMAT(DATE_FORMAT(birthday, '%2020-%m-%d'), '%W') AS day_2020,
COUNT(*) as res
FROM users GROUP BY day_2020;