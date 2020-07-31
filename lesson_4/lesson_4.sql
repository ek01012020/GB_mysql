-- UPDATE users --
SELECT * FROM users;
UPDATE users SET updated_at = NOW() WHERE created_at > updated_at ; 

-- UPDATE profiles --
SELECT * FROM profiles;
UPDATE profiles SET photo_id = FLOOR(1 + RAND() * 100); 
ALTER TABLE profiles DROP COLUMN created_at;
-- редактируем возраст, пользователи от 6 лет --
UPDATE profiles SET birthday = SUBDATE(birthday,INTERVAL 6 YEAR) WHERE birthday > SUBDATE(CURDATE(),INTERVAL 6 YEAR);

-- UPDATE messages --
SELECT * FROM messages;
SELECT * FROM messages WHERE from_user_id = to_user_id;
SELECT * FROM messages WHERE created_at > updated_at;
UPDATE messages SET updated_at = NOW() WHERE created_at > updated_at;
ALTER TABLE messages ADD COLUMN is_modified BOOLEAN DEFAULT FALSE AFTER is_delivered;

-- UPDATE media_types --
SELECT * FROM media_types;
ALTER TABLE media_types DROP COLUMN updated_at;

-- UPDATE media --
SELECT * FROM media;
-- DROP TABLE extensions;
CREATE TEMPORARY TABLE extensions (name CHAR(10), id_media_types INT UNSIGNED NOT NULL);
INSERT INTO extensions (name, id_media_types) VALUES 
	('jpeg', 1), 
	('bmp', 1), 
	('png', 1), 
	('avi', 3), 
	('mpeg', 3), 
	('mov', 3), 
	('wmv', 3), 
	('mp3', 2), 
	('wav', 2);
SELECT * FROM extensions;
UPDATE media SET filename = CONCAT(
'https://dropbox/vk/', 
filename , '.',
(SELECT name FROM extensions WHERE id_media_types = media_type_id ORDER BY RAND() LIMIT 1)); 

UPDATE media SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');
SELECT * FROM media;

-- UPDATE friendship_statuses --
SELECT * FROM friendship_statuses;
UPDATE friendship_statuses SET updated_at = NOW() WHERE created_at > updated_at;

-- UPDATE friendship --
SELECT * FROM friendship;
SELECT * FROM friendship WHERE user_id = friend_id;
UPDATE friendship SET friend_id = FLOOR(1 + RAND() * 100) WHERE user_id = friend_id;
ALTER TABLE friendship DROP COLUMN created_at;
UPDATE friendship SET confirmed_at = NOW(), updated_at = NOW() WHERE requested_at > confirmed_at;
UPDATE friendship SET updated_at = NOW() WHERE requested_at > updated_at;

-- UPDATE communities --
SELECT * FROM communities;
SELECT COUNT(*) FROM communities;
DELETE FROM communities WHERE id > 20;
UPDATE communities SET updated_at = NOW() WHERE created_at > updated_at; 

-- UPDATE communities_users --
SELECT * FROM communities_users;
UPDATE communities_users SET community_id = FLOOR(1 + RAND() * 20 ) WHERE community_id > 20; 
SELECT * FROM communities_users WHERE community_id > 20;

-- Пост --
DROP TABLE IF EXISTS post;
CREATE TABLE IF NOT EXISTS post (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
	body TEXT NOT NULL COMMENT "Текст поста",
	user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на создател€ поста",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
 	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пост";

SELECT * FROM post;
UPDATE post SET updated_at = NOW() WHERE created_at > updated_at; 


-- content_likes --
DROP TABLE IF EXISTS likes_user;
CREATE TABLE IF NOT EXISTS likes_user (
	id_likes INT UNSIGNED NOT NULL COMMENT "Ссылка на лайк",
	user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользовател€",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
	PRIMARY KEY (id_likes, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Связь между пользователями и лайками";

-- Likes --
DROP TABLE IF EXISTS likes;
CREATE TABLE IF NOT EXISTS likes (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	id_content_likes INT UNSIGNED NOT NULL COMMENT "Ссылка на сущность лайка",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
	update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время последнего лайка для текущего экземпляра"
) COMMENT "Экземпляр лайка";


SHOW TABLES;
SELECT * FROM likes;
UPDATE likes SET update_at = NOW() WHERE created_at > update_at;

SELECT * FROM likes_user;
