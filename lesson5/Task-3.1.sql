-- Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
    name VARCHAR(255) COMMENT 'Имя покупателя',
    surname VARCHAR(255) COMMENT 'Фамилия покупателя',
    birthday DATE COMMENT 'Дата рождения',
    created_at DATETIME, 
    updated_at DATETIME
) COMMENT = 'Покупатели';

TRUNCATE users;
INSERT INTO users (name, surname, birthday, created_at, updated_at) VALUES 
('Дарья','Попова','1984-11-28', '1990-10-02 12:42:32', '1950-10-02 12:42:32'),
('Ирина','Гончарова','1984-08-24', NULL, NULL),
('Марина','Закусилова','1981-04-16', NULL, NULL),
('Елена','Нагина','1988-08-10', '1980-10-02 12:42:32', NULL),
('Валерия','Платошкина','1980-01-07', NULL, NULL),
('Станислав','Светляков','1984-05-19', NULL, NULL),
('Ирина','Черникова','1982-10-20', NULL, '1995-10-02 12:42:32'),
('Алиса','Зайцева','1989-04-03', NULL, NULL),
('Ольга','Застрожнова','1983-05-07', NULL, NULL);


UPDATE users SET created_at=NOW() WHERE created_at is NULL;  -- подскажите, пожалуйста, как сделать это одной записью?
UPDATE users SET updated_at=NOW() WHERE updated_at is NULL;
SELECT * FROM users;


UPDATE users SET created_at=NOW(), updated_at=NOW() WHERE created_at is NULL OR updated_at is NULL;
SELECT * FROM users;
