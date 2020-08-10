-- Кто больше лайкает мужчины или женщины? --------------------------------------------

SELECT p.gender, COUNT(1) AS `count`
FROM likes l 
	JOIN
	profiles p 
		ON l.user_id = p.user_id 
GROUP BY p.gender 
ORDER BY `count` DESC;

SELECT p.gender  
FROM likes l 
	JOIN
	profiles p 
		ON l.user_id = p.user_id 
GROUP BY p.gender 
ORDER BY COUNT(1) DESC
LIMIT 1;

-- Сколько раз лайкнули по 10 самым молодым пользователям? --------

SELECT DISTINCT p.birthday ,COUNT(l.target_id ) 
FROM likes l 
	JOIN 
	target_types tt 
	ON l.target_type_id = tt.id AND tt.name = 'users'
	RIGHT JOIN profiles p 
		ON l.target_id = p.user_id 
GROUP BY p.birthday
ORDER BY p.birthday DESC
LIMIT 10;

SELECT SUM(count_likes )
FROM (
	SELECT DISTINCT p.birthday ,COUNT(l.target_id ) AS count_likes
	FROM likes l 
		JOIN 
		target_types tt 
			ON l.target_type_id = tt.id AND tt.name = 'users'
		RIGHT JOIN profiles p 
			ON l.target_id = p.user_id 
	GROUP BY p.birthday
	ORDER BY p.birthday DESC
	LIMIT 10) AS ll;

	
-- генерация промежуточной таблицы
SELECT DISTINCT l.id AS likes_id, p.user_id AS user_posts, m.user_id AS user_media, m2.from_user_id AS user_messages, p2.user_id AS user_profiles 
FROM likes l 
	LEFT JOIN
	posts p 
		ON l.target_type_id = 4 AND p.id = l.target_id
	LEFT JOIN 
	media m 
		ON l.target_type_id = 3 AND m.id = l.target_id
	LEFT JOIN 
	messages m2 
		ON l.target_type_id = 1 AND m2.id = l.target_id
	LEFT JOIN 
	profiles p2
		ON p2.user_id = l.target_id AND l.target_type_id = 2;


-- МОЙ рабочий вариант
SELECT DISTINCT 
	(CASE l.target_type_id 
	WHEN 1 THEN m2.from_user_id
	WHEN 2 THEN l.target_id 
	WHEN 3 THEN m.user_id 
	WHEN 4 THEN p.user_id 
	END) AS man,
	(SELECT birthday FROM profiles p3 WHERE p3.user_id = man) AS man_birthday,
	COUNT(1) AS `count`
FROM likes l 
	LEFT JOIN
	posts p 
		ON l.target_type_id = 4 AND p.id = l.target_id
	LEFT JOIN media m 
		ON l.target_type_id = 3 AND m.id = l.target_id
	LEFT JOIN messages m2 
		ON l.target_type_id = 1 AND m2.id = l.target_id
	LEFT JOIN profiles p2
		ON p2.user_id = l.target_id AND l.target_type_id = 2
GROUP BY man
ORDER BY man_birthday DESC 
LIMIT 10;

SELECT SUM(`count`)
FROM (SELECT DISTINCT 
		(CASE l.target_type_id 
		WHEN 1 THEN m2.from_user_id
		WHEN 2 THEN l.target_id 
		WHEN 3 THEN m.user_id 
		WHEN 4 THEN p.user_id 
		END) AS man,
		(SELECT birthday FROM profiles p3 WHERE p3.user_id = man) AS man_birthday,
		COUNT(1) AS `count`
		FROM likes l 
			LEFT JOIN
			posts p 
				ON l.target_type_id = 4 AND p.id = l.target_id
			LEFT JOIN media m 
				ON l.target_type_id = 3 AND m.id = l.target_id
			LEFT JOIN messages m2 
				ON l.target_type_id = 1 AND m2.id = l.target_id
			LEFT JOIN profiles p2
				ON p2.user_id = l.target_id AND l.target_type_id = 2
		GROUP BY man
		ORDER BY man_birthday DESC 
		LIMIT 10) AS likes;

-- 10 наименее активных пользователей
		
SELECT CONCAT(first_name, ' ', last_name) AS `user` ,(IFNULL(c_l, 0) + IFNULL(c_p, 0) + IFNULL(c_md, 0) + IFNULL(c_ms, 0)) AS 'sum'
FROM users u 
	LEFT JOIN
	(SELECT user_id, COUNT(user_id) AS c_l FROM likes GROUP BY user_id) AS l
		ON u.id = l.user_id
	LEFT JOIN 
	(SELECT user_id, COUNT(user_id) AS c_p FROM posts p GROUP BY user_id) AS p
		ON u.id = p.user_id
	LEFT JOIN 
	(SELECT user_id , COUNT(1) AS c_md FROM media md GROUP BY user_id ) AS md
		ON u.id = md.user_id
	LEFT JOIN 
	(SELECT from_user_id, COUNT(1) AS c_ms FROM messages ms GROUP BY from_user_id ) AS ms
		ON u.id = ms.from_user_id
ORDER BY sum
LIMIT 10;

