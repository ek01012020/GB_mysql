SHOW TABLES;

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Создадим таблицу постов
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  views_counter INT UNSIGNED DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;

ALTER TABLE profiles MODIFY COLUMN photo_id INT(10) UNSIGNED;

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk
    FOREIGN KEY (to_user_id) REFERENCES users(id);

ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT communities_users_community_id_fk
 	FOREIGN KEY (community_id) REFERENCES communities(id);
   
ALTER TABLE friendship 
  ADD CONSTRAINT friendship_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_friend_id_fk
    FOREIGN KEY (friend_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_status_id_fk
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);
   
ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT likes_target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id);
   
ALTER TABLE likes DROP FOREIGN KEY likes_target_type_id_fk;
   
ALTER TABLE media
  ADD CONSTRAINT media_user_id
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT media_media_type_id_fk
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);

ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT posts_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT posts_media_id_fk
    FOREIGN KEY (media_id) REFERENCES media(id);
   

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;
 
SELECT * FROM posts;
SELECT * FROM communities c ;
UPDATE posts SET community_id = FLOOR(1 + RAND()*20 ) WHERE community_id > 20;


-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT 
	COUNT(*) AS num,(SELECT gender FROM profiles WHERE user_id=likes.user_id) AS gender_ 
FROM likes 
GROUP BY gender_
ORDER BY num DESC
LIMIT 1;

-- Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).
-- это общее количество лайков из все таблиц, на которые ссылаются лайки
SELECT SUM(count_likes) 
FROM 
	(SELECT user_id,
		(SELECT COUNT(*)
	 	FROM ( (SELECT target_id AS users
			      FROM likes l 
		    	  WHERE target_type_id = (SELECT id FROM target_types tt WHERE name='users') AND target_id = p2.user_id )
  	       		 UNION ALL 
	        	(SELECT (SELECT user_id FROM posts WHERE id =  l.target_id) as all_us_l_posts
		      	FROM likes l
		     	 WHERE target_type_id = (SELECT id FROM target_types tt WHERE name='posts') AND user_id = p2.user_id )
		    	UNION ALL
		    	(SELECT (SELECT user_id FROM media m2 WHERE id =  l.target_id) as all_us_l_media
			  	FROM likes l
		      	WHERE target_type_id = (SELECT id FROM target_types tt WHERE name='media') AND user_id = p2.user_id )
		    	UNION ALL
		    	(SELECT (SELECT from_user_id FROM messages m2 WHERE id = l.target_id) as all_us_l_mess
			  	FROM likes l
			  	WHERE target_type_id = (SELECT id FROM target_types tt WHERE name='messages') AND user_id = p2.user_id )) AS a1) AS count_likes
	FROM profiles p2
	ORDER BY birthday DESC
	LIMIT 10) AS a2
WHERE count_likes > 0;

-- это промежуточный вариант, в котором количество лайков указано по пользователям
SELECT user_id,
	(SELECT COUNT(*)
	 FROM ( (SELECT target_id AS users
		      FROM likes l 
		      WHERE target_type_id = (SELECT id FROM target_types tt WHERE name='users') AND target_id = p2.user_id )
  	        UNION ALL 
	        (SELECT (SELECT user_id FROM posts WHERE id =  l.target_id) as all_us_l_posts
		      FROM likes l
		      WHERE target_type_id = (SELECT id FROM target_types tt WHERE name='posts') AND user_id = p2.user_id )
		    UNION ALL
		    (SELECT (SELECT user_id FROM media m2 WHERE id =  l.target_id) as all_us_l_media
			  FROM likes l
		      WHERE target_type_id = (SELECT id FROM target_types tt WHERE name='media') AND user_id = p2.user_id )
		    UNION ALL
		    (SELECT (SELECT from_user_id FROM messages m2 WHERE id = l.target_id) as all_us_l_mess
			  FROM likes l
			  WHERE target_type_id = (SELECT id FROM target_types tt WHERE name='messages') AND user_id = p2.user_id )) AS a1) AS count_likes
FROM profiles p2
ORDER BY birthday DESC
LIMIT 10;

-- общее количество лайков для самых молодых пользователей только из таблицы users
SELECT COUNT(*) FROM (
			SELECT
				(SELECT COUNT(*)
				FROM likes l
				WHERE target_type_id = (SELECT id FROM target_types tt WHERE name='users')
														AND target_id =p.user_id ) AS user_likes
			FROM profiles p
			ORDER BY birthday DESC LIMIT 10) AS young_likes 
	WHERE user_likes > 0;

-- Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети

-- искала пользователей, которые делают меньше всего лайкой, пишут сообщений и постов и выкладывают медиа
-- у меня еще есть три пользователя, которые вообще ничего не делали, но их я не включила в выборку. Отдельно вывести их смогла, а дальше устала(((
SELECT 
	user_id,
	(SELECT CONCAT(first_name,' ', last_name) FROM users WHERE id = act.user_id) AS person,
	COUNT(*) AS act_all
FROM ((SELECT user_id FROM likes l)
		UNION ALL
	  (SELECT from_user_id FROM messages m)
	  	UNION ALL
	  (SELECT user_id FROM posts p)
	  	UNION ALL
	  (SELECT user_id FROM media m2 )) AS act
GROUP BY user_id
ORDER BY act_all
LIMIT 10;
