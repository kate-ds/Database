-- 2 Таблица users была неудачно спроектирована. Записи created_at и updated_at 
-- были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
-- Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT 'Имя покупателя',
    surname VARCHAR(255) COMMENT 'Фамилия покупателя',
    birthday DATE COMMENT 'Дата рождения',
    created_at VARCHAR(255), 
    updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

TRUNCATE users;
INSERT INTO users (name, surname, birthday, created_at, updated_at) VALUES 
('Дарья','Попова','1984-11-28', '21.10.2015 8:10', '20.08.2017 12:10'),
('Ирина','Гончарова','1984-08-24', '25.10.2017 8:50', '20.09.2020 16:10'),
('Марина','Закусилова','1981-04-16', '20.10.2015 21:10', '20.10.2017 8:10'),
('Елена','Нагина','1988-08-10', '20.10.2017 8:10', '20.05.2019 8:15'),
('Валерия','Платошкина','1980-01-07', '21.10.2017 01:15', '20.12.2017 8:10'),
('Станислав','Светляков','1984-05-19', '13.03.1997 8:10', '20.10.2017 21:40'),
('Ирина','Черникова','1982-10-20', '20.10.2019 9:10', '25.07.2020 8:10'),
('Алиса','Зайцева','1989-04-03', '20.10.2016 8:10', '19.12.2017 21:20'),
('Ольга','Застрожнова','1983-05-07', '30.05.2017 9:45', '20.10.2017 10:10');

SELECT id, CONCAT(name, ' ', surname) as user, 
	STR_TO_DATE(created_at, '%d.%m.%Y %k:%i') AS new_created, 
	STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i') AS new_updated 
    FROM users;

UPDATE users SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
	updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');
SELECT * FROM users;

ALTER TABLE users 
CHANGE created_at 
created_at DATETIME,
CHANGE updated_at
updated_at DATETIME;
