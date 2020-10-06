DROP DATABASE IF EXISTS snet1509;
CREATE DATABASE snet1509;
USE snet1509;
CREATE TABLE IF NOT EXISTS users(
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    name VARCHAR(50),
    surname VARCHAR(50),
    email VARCHAR(120) UNIQUE,
    phone BIGINT,
    gender CHAR(1),
    birthday DATE,
    hometown varchar(50),
    photo_id BIGINT UNSIGNED,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    -- soft delete (мягкое удаление)
    -- is_deleted BOOL,
    -- deleted_at DATETIME,
    INDEX(phone),
    INDEX(name, surname),
    INDEX(email),
    pass CHAR(50)
);

DROP TABLE IF EXISTS messages;
CREATE TABLE messages(
	id SERIAL PRIMARY KEY,
    from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    is_read BOOL DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests(
	-- id SERIAL PRIMARY KEY,
    initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    status enum('requested', 'approved', 'unfriended', 'declined') DEFAULT 'requested',
    requested_at DATETIME DEFAULT NOW(),
    confirmed_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(initiator_user_id)
);

ALTER TABLE friend_requests ADD INDEX(initiator_user_id);

DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
    name VARCHAR(150),
    INDEX communities_name_idx (name)
);

DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
    community_id BIGINT UNSIGNED NOT NULL,
    is_admin BOOL,
    PRIMARY KEY(user_id, community_id),
    FOREIGN KEY(user_id) REFERENCES users (id),
    FOREIGN KEY(community_id) REFERENCES communities (id)
);

DROP TABLE IF EXISTS posts;
CREATE TABLE posts(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	body TEXT,
	metadata JSON,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS comments;
CREATE TABLE comments(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
    post_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES users (id),
    FOREIGN KEY(post_id) REFERENCES posts (id)
);

DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    description TEXT,
    filename VARCHAR(250),
    FOREIGN KEY(user_id) REFERENCES users (id)
);    
-- группа | пользователи
