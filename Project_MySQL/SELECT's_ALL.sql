-- проверка заполнения данных (несколько простых запросов)

SELECT id, 
	first_name, 
	last_name, 
	gender, 
	date_of_birth 
FROM users LIMIT 5;

SELECT * FROM users_tags LIMIT 5;

-- Выберем все приглашения людей из Парижа
SELECT id, 
	title, 
	city 
FROM invites 
	WHERE city = 'Paris';

-- Найдем всех людей из Порту
SELECT id FROM users WHERE city_of_residence = 'Porto';

-- Выберем из всех пользователей тех, кто имеет аккаунт специалиста
SELECT id, 
	CONCAT(first_name, ' ', last_name) name_surname, 
    profession, 
    is_profi 
FROM users 
    WHERE is_profi = 1;
    
-- найдем города, из которых есть пользователи-про
SELECT professionals.id, 
	users.city_of_residence 
FROM professionals 
	JOIN users 
	ON professionals.id = users.id 
    GROUP BY id ORDER BY id ;

-- Получим теги к event-посту (например, с id = 4)

SELECT tags.* FROM tags_to_events AS te
JOIN tags ON tags.id = te.tag_id
WHERE te.event_id = 4;


-- Выбрать все мероприятия, проходящие в Париже, отсортированные по времени публикации (с самого нового)

(SELECT id, title, city, created_at FROM invites 
WHERE city = 'Paris')
UNION
(SELECT id, title, city, created_at FROM events 
WHERE city = 'Paris')
ORDER BY created_at DESC;

-- выбрать пользоваетелей, которые увидят все мероприятия в Париже
SELECT users.id, first_name, last_name, city_of_residence
	FROM users 
	JOIN events 
    ON users.city_of_residence = events.city
    WHERE city = 'Paris';


-- посчитать количество людей, заинтересовавшихся евентом от пользователя (агр)
SET @event_id = 1;
SELECT COUNT(CONCAT(first_name, ' ', last_name)) FROM users
WHERE id IN (SELECT from_user_id  FROM events_requests WHERE to_event_id = @event_id AND status = 'requested');

-- найти путешествия среди всех мероприятий (invites и events), проходящих в ближайшие 30 дней Париже

SELECT id,
	(SELECT CONCAT(first_name, ' ', last_name) 
		FROM users WHERE id = invites.from_user_id) from_user,
	title, 
    description,
    city,
    start_datetime
FROM invites 
WHERE city = 'Paris' 
	AND (start_datetime BETWEEN NOW() AND CURRENT_DATE + INTERVAL 30 DAY)
    AND (id IN 
		(SELECT ti.invite_id FROM tags_to_invites AS ti
			JOIN tags ON tags.id = ti.tag_id
			WHERE tags.name = 'Traveling'))
UNION 
SELECT id,
	(SELECT CONCAT(first_name, ' ', last_name) 
		FROM users WHERE id = events.from_profi_id) from_user,
	title, 
    description, 
    city, 
    start_datetime 
FROM events 
WHERE city = 'Paris' 
	AND (start_datetime BETWEEN NOW() AND CURRENT_DATE + INTERVAL 30 DAY)
    AND (id IN 
		(SELECT te.event_id FROM tags_to_events AS te
			JOIN tags ON tags.id = te.tag_id
			WHERE tags.name = 'Traveling'));
    
SELECT CURRENT_DATE + INTERVAL 30 DAY;
