-- Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.
	
CREATE INDEX media_filename_idx ON media (filename);
CREATE INDEX messages_is_important_idx ON messages (is_important);
CREATE INDEX posts_views_counter_idx ON posts (views_counter);

CREATE UNIQUE INDEX profiles_city_country_uq 
	ON profiles (city, country);
CREATE INDEX users_first_name_last_name_idx
	ON users(first_name, last_name);


-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100
	
SELECT DISTINCT c.name,
		COUNT(cu.user_id ) OVER () / (SELECT COUNT(id) FROM communities c2 ) AS `AVG` ,
		MAX(p.birthday ) OVER w AS young, 
		MIN(p.birthday ) OVER w AS `old`, 
		COUNT(cu.user_id ) OVER w AS count_users,
		(SELECT COUNT(id) FROM users) AS total_users,
		COUNT(cu.user_id ) OVER w / (SELECT COUNT(id) FROM users) * 100 AS `%` 
FROM (communities_users cu
	JOIN
	communities c 
		ON cu.community_id = c.id		
	RIGHT JOIN 
	profiles p 
		ON cu.user_id = p.user_id)
		WINDOW w AS (PARTITION BY cu.community_id );
	
	