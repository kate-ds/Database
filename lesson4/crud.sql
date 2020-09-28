-- INSERT
INSERT INTO users (id, name, surname, email, phone, gender, birthday, hometown, photo_id, created_at) VALUES (101, 'Gilla', 'Harragina', 'gharragin12@senate1.gov', '8808806621', 'F', '1983-08-09', 'Aguitu', 39, '2010-05-03 15:57:43');
INSERT INTO users (id, name, surname, email, phone, gender, birthday, hometown, photo_id, created_at) VALUES (102, 'Galla', 'Harraginy', 'dgf12@senate3.gov', NULL, 'F', '1983-08-09', 'Aguitu', 39, '2010-05-03 15:57:43');
INSERT INTO users (id, name, surname, email, phone, gender, birthday, hometown, photo_id, created_at) VALUES (103, 'Gilla', 'Harragina', 'ghavsdrragin12@senate1.gov', '8808806631', 'F', '1983-08-09', 'Aguitu', 39, '2010-05-03 15:57:43'),
	(104, 'Galla', 'Harraginy', 'dgf12@senate31.gov', NULL, 'F', '1983-08-09', 'Aguitu', 39, '2010-05-03 15:57:43');
INSERT INTO users SET
	name='Jack', surname='Vorobey', email='123@mail.ru', phone='89234342211', gender='M';
INSERT snet1509.communities (name) SELECT name FROM snet1.communities;

-- SELECT
SELECT * FROM snet1509.communities;
SELECT * FROM users; 
SELECT * FROM users order by id;
SELECT body, is_read, from_user_id FROM messages;
SELECT * FROM friend_requests limit 5;
SELECT * FROM friend_requests limit 5 offset 6;
SELECT * FROM friend_requests limit 6,5;
SELECT concat(name, ' ', surname) FROM users;
SELECT concat(name, ' ', surname)somebody FROM users;
SELECT concat(SUBSTRING(name,1,1), '. ', SUBSTRING(surname,1,1)) FI from users;
SELECT DISTINCT name from communities;
SELECT * from communities where name like 'A%';
SELECT * from communities where name = 'Audi';
SELECT id, name, surname, birthday FROM users WHERE birthday >= '1990-10-15' ORDER BY birthday;
SELECT id, name, surname, birthday FROM users WHERE birthday BETWEEN '1990-10-15'  AND '2000-10-15';
SELECT id, name, surname, birthday FROM users WHERE gender !='F';
SELECT id, name, surname, birthday FROM users WHERE gender <>'F';
SELECT id, name, surname, hometown FROM users WHERE hometown IN ('Kotor', 'Krasnovishersk', 'Boguchwała');
SELECT id, name, surname, hometown FROM users 
	WHERE hometown = 'Kotor'
    OR hometown = 'Krasnovishersk'
    OR hometown = 'Boguchwała';
SELECT id, name, hometown, gender FROM users 
	WHERE (hometown = 'Kotor' or hometown = 'Krasnovishersk') and gender!='F';
SELECT name FROM communities WHERE name like '%s';
SELECT name FROM communities WHERE name like 'c%s';
SELECT count(*) from communities;
SELECT min(birthday) FROM users;
SELECT gender, count(*) from users group by gender;
SELECT gender, count(*) from users group by gender having count(*) >=50;

-- UPDATE 

UPDATE friend_requests SET status = 'declined' WHERE initiator_user_id = 2 and target_user_id = 3;
SELECT * FROM friend_requests WHERE initiator_user_id=2;
	
-- DELETE

DELETE FROM communities WHERE name LIKE 'A%';
DELETE FROM messages WHERE id BETWEEN 5 and 15;
DELETE FROM messages;

set foreign_key_checks = 0; 
TRUNCATE TABLE messages;
set foreign_key_checks = 1; 

SELECT * FROM snet1509.messages;

-- 
SHOW CREATE TABLE messages;
