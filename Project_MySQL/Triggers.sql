/*
Триггер.
Нам нужно, чтобы пользователь заполнял минимальную информацию о себе при создании аккаунта, по-этому
создадим триггер на вствку ненулевых значений полей в таблицу users
+ автозаполнение полей для стран.
*/

DROP TRIGGER IF EXISTS not_null_users_field;
DELIMITER //
CREATE TRIGGER not_null_users_field BEFORE INSERT ON users
FOR EACH ROW
BEGIN
	IF ISNULL(NEW.first_name) 
		THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Incorrect name";
    ELSEIF ISNULL(NEW.last_name)
		THEN SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = "Incorrect surname";
    ELSEIF ISNULL(NEW.city_of_residence)
		THEN SIGNAL SQLSTATE '45002' SET MESSAGE_TEXT = "Incorrect city";
	ELSEIF ISNULL(NEW.gender)
		THEN SIGNAL SQLSTATE '45003' SET MESSAGE_TEXT = "Incorrect gender";
	ELSEIF ISNULL(NEW.email)
		THEN SIGNAL SQLSTATE '45004' SET MESSAGE_TEXT = "Incorrect email";
	ELSEIF ISNULL(NEW.phone_number)
		THEN SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = "Incorrect phone number";
	ELSEIF ISNULL(NEW.country_of_residence) 
		THEN
		IF EXISTS (SELECT country FROM cities WHERE city = NEW.city_of_residence)
			THEN
                SET NEW.country_of_residence = (
					SELECT c.country FROM cities AS c 
                  WHERE c.city = NEW.city_of_residence GROUP BY c.country);
		END IF;
	ELSEIF ISNULL(NEW.went_from_country) 
		THEN
		IF EXISTS (SELECT country FROM cities WHERE city = NEW.went_from_city)
			THEN
                SET NEW.went_from_country = (
					SELECT c.country FROM cities AS c 
                  WHERE c.city = NEW.went_from_city GROUP BY c.country);
		END IF;
	END IF;
END //

INSERT INTO users (id, first_name, last_name, gender, date_of_birth, city_of_residence, country_of_residence, went_from_city, went_from_country, email, phone_number, profession, photo_id, created_at, updated_at) VALUES 
(54, 'Lenka', 'Petrasova', 'F', '1977-06-23', 'Paris', NULL, 'Vypolzovo', 'Russia', 'ileyban0@nydailynews.com', '7167144892', 'Engineering', 51, '2019-11-07 00:11:32', '2020-06-17 13:02:29');

SELECT id, first_name, country_of_residence FROM users where id = 54;

-- добавить в таблицу тегов профессии (после инсерта в users).

DROP TRIGGER IF EXISTS profession_tags;
DELIMITER //
CREATE TRIGGER profession_tags AFTER INSERT ON professionals
FOR EACH ROW
BEGIN
	INSERT INTO tags (name)
	VALUES (NEW.profession);
END //


UPDATE users 
	SET is_profi = 1 
    WHERE id = 50;

INSERT INTO professionals(id, profession, description) VALUES (50, 'Садовник', 'Все виды садово-огородных работ');
SELECT COUNT(name) FROM tags WHERE name = 'Садовник';

-- Триггер на автозаполнение таблицы professionals
DROP TRIGGER IF EXISTS add_in_tbl_professional;
DELIMITER //
CREATE TRIGGER add_in_tbl_professional AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF NEW.is_profi = 1
		THEN
			INSERT INTO professionals (id, profession)
				SELECT id, profession 
				FROM users 
				WHERE NEW.is_profi = 1;
	END IF;
END //

UPDATE users 
	SET is_profi = 1 
    WHERE id = 20;

SELECT * FROM professionals WHERE id = 20;