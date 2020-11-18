/*
В качестве курсового проекта был выбран проект, над которым сейчас усиленно работаю. Суть его заключается в том,
чтобы создать социальную сеть для русских, живущих в разных странах (или планирующих переезд). Найти людей для общения 
или мероприятия "своих" непростая задача в чужой стране и очень актуальна для тех, кому не хватает общения на родном языке, 
и тем, кто только осваивается, делиться опытом.

Задумано очень много подразделов, но для проекте сделала только два:
- публикация приглашения (поиск компании для совместного времяприпроводжения 
  (например, "Очень хочу сходить в музей Дали. Ищу компанию.))
- публикация мероприятий от профессионалов либо объявления специалистов какой-нибудь сферы, так как люди часто ищут того же парикмахера
  среди своих

Разделы похожи, но не хочется делать одной таблицей, потому что суть их разная, думаю, догично разделы разделить

Структура базы данных RuVi */

DROP DATABASE IF EXISTS RuVi;
CREATE DATABASE RuVi;
USE RuVi;

-- таблица содержит информацию о пользователе
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    date_of_birth DATE DEFAULT NULL,
    city_of_residence VARCHAR(50) NOT NULL,
    country_of_residence VARCHAR(50) NOT NULL,
    went_from_city VARCHAR(50) DEFAULT NULL,
    went_from_country VARCHAR(50) DEFAULT NULL,
    email VARCHAR(50) NOT NULL,
    phone_number BIGINT NOT NULL,
    profession VARCHAR(250) DEFAULT NULL,
    photo_id BIGINT UNSIGNED,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	-- is_confirmed TINYINT(1) DEFAULT '0',
    is_moderator BOOL DEFAULT 0,
    is_profi BOOL DEFAULT 0,
    account_status ENUM('not confirmed', 'confirmed', 'deleted') DEFAULT 'not confirmed',
    INDEX(first_name, last_name),
    INDEX(email),
    INDEX(city_of_residence, country_of_residence),
    INDEX(profession)
) ENGINE=InnoDB COMMENT = 'accounts';

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    INDEX (city, country)
) ENGINE=InnoDB COMMENT = 'user tags (interests and hobby)';

-- содержит все существующие теги
DROP TABLE IF EXISTS tags;
CREATE TABLE tags (
	id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    INDEX (id, name)
) ENGINE=InnoDB COMMENT = 'all tags';

-- содержит теги, отмеченные пользователем (осн. интересы и хобби)
DROP TABLE IF EXISTS users_tags;
CREATE TABLE users_tags (
	user_id BIGINT UNSIGNED NOT NULL,
    tag_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users (id),
    FOREIGN KEY(tag_id) REFERENCES tags (id)
) ENGINE=InnoDB COMMENT = 'user tags (interests and hobby)';

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
    from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    is_read BOOL DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
) ENGINE=InnoDB COMMENT = 'user tags (interests and hobby)';

-- посты для поиска людей по интересам и для совместных походов куда-либо, отклики, теги, комменты
DROP TABLE IF EXISTS invites;
CREATE TABLE invites(
	id SERIAL PRIMARY KEY,
    from_user_id BIGINT UNSIGNED NOT NULL,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    -- metadata JSON,
    city VARCHAR(50) NOT NULL,
    place VARCHAR(50) NOT NULL,
    photo_id BIGINT UNSIGNED,
    number_of_participants TINYINT UNSIGNED,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    start_datetime DATETIME DEFAULT NULL,
    end_datetime DATETIME DEFAULT NULL,
    FOREIGN KEY(from_user_id) REFERENCES users (id),
    FOREIGN KEY (city) REFERENCES cities (city),
    INDEX (id, title)
) ENGINE=InnoDB COMMENT = 'Ivites from users - to find anybody for going together';


-- теги к постам-приглашениям, чтобы можно было легко найти интересное из существующих
DROP TABLE IF EXISTS tags_to_invites;
CREATE TABLE tags_to_invites (
	invite_id BIGINT UNSIGNED NOT NULL,
    tag_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY(invite_id) REFERENCES invites (id),
    FOREIGN KEY(tag_id) REFERENCES tags (id)
) ENGINE=InnoDB COMMENT = 'Tags to invites';

-- содержит фото пользователей к постам
DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    invite_id BIGINT UNSIGNED DEFAULT NULL,
    event_id BIGINT UNSIGNED DEFAULT NULL,
    description TEXT,
    filename VARCHAR(250),
    FOREIGN KEY(user_id) REFERENCES users (id),
    FOREIGN KEY(invite_id) REFERENCES invites (id),
    FOREIGN KEY(event_id) REFERENCES events (id)
) ENGINE=InnoDB COMMENT = 'accounts';  


DROP TABLE IF EXISTS invites_requests;
CREATE TABLE invites_requests (
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_invite_id BIGINT UNSIGNED NOT NULL,
    status ENUM('requested', 'approved', 'declined') DEFAULT 'requested',
    requested_at DATETIME DEFAULT NOW(),
    confirmed_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY(from_user_id) REFERENCES users(id),
    FOREIGN KEY(to_invite_id) REFERENCES invites(id),
    INDEX(from_user_id, to_invite_id)
) ENGINE=InnoDB COMMENT = 'Responses to the invitations';

DROP TABLE IF EXISTS invites_comments;
CREATE TABLE invites_comments (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_invite_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED DEFAULT 0,
    body TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY(from_user_id) REFERENCES users (id),
    FOREIGN KEY(to_user_id) REFERENCES users (id),
    FOREIGN KEY(to_invite_id) REFERENCES invites(id)
) ENGINE=InnoDB COMMENT = 'Questions and comments about invitations';

DROP TABLE IF EXISTS events;
CREATE TABLE events(
	id SERIAL PRIMARY KEY,
    from_profi_id BIGINT UNSIGNED NOT NULL,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    -- metadata JSON,
    city VARCHAR(50) NOT NULL,
    place VARCHAR(50) NOT NULL,
    photo_id BIGINT UNSIGNED,
    number_of_participants TINYINT UNSIGNED,
    price DECIMAL (11,2),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    start_datetime DATETIME DEFAULT NULL,
    end_datetime DATETIME DEFAULT NULL,
    FOREIGN KEY(from_profi_id) REFERENCES professionals (id),
    FOREIGN KEY(city) REFERENCES cities (city),
    INDEX (title, city),
    INDEX (city, place)
    ) ENGINE=InnoDB COMMENT = 'Events from companies and profies';


DROP TABLE IF EXISTS events_requests;
CREATE TABLE events_requests(
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_event_id BIGINT UNSIGNED NOT NULL,
    status ENUM('requested', 'approved', 'paid', 'declined') DEFAULT 'requested',
    requested_at DATETIME DEFAULT NOW(),
    confirmed_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY(from_user_id) REFERENCES users(id),
    FOREIGN KEY(to_event_id) REFERENCES events(id)
) ENGINE=InnoDB COMMENT = 'Responses to the events';

DROP TABLE IF EXISTS events_comments;
CREATE TABLE events_comments(
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_event_id BIGINT UNSIGNED NOT NULL,
    to_profi_id BIGINT UNSIGNED DEFAULT NULL,
    body TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY(from_user_id) REFERENCES users(id),
    FOREIGN KEY(to_profi_id) REFERENCES professionals(id),
    FOREIGN KEY(to_event_id) REFERENCES events(id)
) ENGINE=InnoDB COMMENT = 'Questions and comments about events';

DROP TABLE IF EXISTS tags_to_events;
CREATE TABLE tags_to_events (
	event_id BIGINT UNSIGNED NOT NULL,
    tag_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY(event_id) REFERENCES events(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id)
) ENGINE=InnoDB COMMENT = 'Tags to events';

DROP TABLE IF EXISTS professionals;
CREATE TABLE professionals (
	id BIGINT UNSIGNED NOT NULL,
    profession VARCHAR(50) NOT NULL,
    description VARCHAR(250) DEFAULT NULL,
    rating SMALLINT DEFAULT 0,
    FOREIGN KEY (id) REFERENCES users(id),
    INDEX (id, profession)
) ENGINE=InnoDB COMMENT = 'Companies or entrepreneurs';

