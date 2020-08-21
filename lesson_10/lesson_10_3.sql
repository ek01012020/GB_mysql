-- Разобраться как построен и работает следующий запрос:
-- Найти 10 пользователей, которые проявляют наименьшую активность
-- в использовании социальной сети.

SELECT users.id,
COUNT(DISTINCT messages.id) +
COUNT(DISTINCT likes.id) +
COUNT(DISTINCT media.id) AS activity
FROM users
LEFT JOIN messages
ON users.id = messages.from_user_id
LEFT JOIN likes
ON users.id = likes.user_id
LEFT JOIN media
ON users.id = media.user_id
GROUP BY users.id
ORDER BY activity
LIMIT 10;

-- Правильно-ли он построен?
-- Какие изменения, включая денормализацию, можно внести в структуру БД
-- чтобы существенно повысить скорость работы этого запроса?



ALTER TABLE profiles ADD COLUMN activity INT DEFAULT 0 AFTER country;

DELIMITER //

DROP TRIGGER IF EXISTS trilikes//
CREATE TRIGGER trilikes AFTER INSERT ON likes
FOR EACH ROW 
BEGIN 
	UPDATE profiles SET activity = activity + 1 WHERE user_id = NEW.user_id;
END//

DROP TRIGGER IF EXISTS trimedia//
CREATE TRIGGER trimedia AFTER INSERT ON media
FOR EACH ROW 
BEGIN 
	UPDATE profiles SET activity = activity + 1 WHERE user_id = NEW.user_id;
END//

DROP TRIGGER IF EXISTS trimessages//
CREATE TRIGGER trimessages AFTER INSERT ON messages
FOR EACH ROW 
BEGIN 
	UPDATE profiles SET activity = activity + 1 WHERE user_id = NEW.from_user_id;
END//

DELIMITER ;

INSERT INTO likes (user_id , target_id ,target_type_id ) VALUES
	(8, 12, 3);

INSERT INTO media (user_id ,filename ,`size` , media_type_id ) VALUES
	(5, 'https://dropbox/vk/my.jpeg', 452368, 1);

INSERT INTO messages (from_user_id , to_user_id , body) VALUES
	(12, 11, 'hi!');
	
SELECT * FROM profiles p ;

