-- Подсчитайте средний возраст пользователей в таблице users.

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT 'Имя покупателя',
    surname VARCHAR(255) COMMENT 'Фамилия покупателя',
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

SELECT AVG(FLOOR(((TO_DAYS(NOW()) - TO_DAYS(birthday)) / 365.25))) FROM users;