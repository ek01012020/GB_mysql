--  Поиск вариантов размещения в сране 'Aruba' -------------

SELECT  c2.name country,
		c.name city,
		pt.name ,
		s.name stars,
		o.name objects,
		r.price 
FROM rooms r
	RIGHT JOIN
	objects o
		ON r.objects_id = o.id 
	RIGHT JOIN
	cities c
		ON o.cities_id = c.id 
	RIGHT JOIN 
	countries c2 
		ON c2.id = c.countries_id 
	RIGHT JOIN 
	property_types pt 
		ON pt.id = o.property_types_id 
	RIGHT JOIN 
	stars s
		ON s.id = o.stars_id 
WHERE c2.name = 'Aruba'
ORDER BY city, r.price ;

--  Поиск вариантов размещения в сране 'Aruba' в городе 'Larkinfurt' в диапазоне цен -------------

SELECT  c2.name country,
		c.name city,
		pt.name ,
		s.name stars,
		o.name objects,
		r.price 
FROM rooms r
	RIGHT JOIN
	objects o
		ON r.objects_id = o.id 
	RIGHT JOIN
	cities c
		ON o.cities_id = c.id 
	RIGHT JOIN 
	countries c2 
		ON c2.id = c.countries_id 
	RIGHT JOIN 
	property_types pt 
		ON pt.id = o.property_types_id 
	RIGHT JOIN 
	stars s
		ON s.id = o.stars_id 
WHERE c2.name = 'Aruba' AND c.name = 'Larkinfurt' AND r.price > 30000 AND r.price < 80000
ORDER BY city, r.price ;

-- Найти пятизвездочный тип размещения в городе 'West Alfredachester', используя вложенные запросы  ------------------------------

SELECT (SELECT name FROM cities WHERE id = o.cities_id ) AS city,
		(SELECT name FROM property_types pt WHERE id = o.property_types_id ) AS `property type`,
		o.name ,
		(SELECT name FROM stars WHERE id = o.stars_id ) AS stars,
		o.address ,
		o.facilities_id 
FROM objects o
WHERE stars_id = (SELECT id FROM stars WHERE name = 5) AND cities_id = (SELECT id FROM cities WHERE name = 'West Alfredachester') ; -- 'West Alfredachester'/'Lake Ali'/ 'Kristinastad'/'Jonesburgh'

--  Найти города, в которые чаще ездят в месяце 'May' ---------------

SELECT DISTINCT c.name,
				COUNT(o.room_id ) OVER (PARTITION BY c.id ) AS `number of orders`
FROM orders o 
	JOIN
	rooms r 
		ON o.room_id = r.id 
	JOIN 
	objects o2 
		ON r.objects_id = o2.id 
	JOIN 
	cities c 
		ON o2.cities_id = c.id 
WHERE MONTHNAME(o.check_in ) = 'May' OR MONTHNAME(o.check_out ) = 'May' 
	OR (EXTRACT(MONTH FROM o.check_in) < 5 AND EXTRACT(MONTH FROM o.check_out) > 5 )
ORDER BY `number of orders` DESC ;

-- TOP-5 стран, в которых пользователи суммарно дольше находятся ----------------------------

SELECT DISTINCT
		SUM(DATEDIFF(o.check_out , o.check_in )) OVER (PARTITION BY c2.name) AS `total days`,
		c2.name country
FROM orders o
	RIGHT JOIN 
	rooms r 
		ON r.id = o.room_id 
	RIGHT JOIN
	objects o2 
		ON o2.id = r.objects_id 
	RIGHT JOIN 
	cities c 
		ON o2.cities_id = c.id
	RIGHT JOIN 
	countries c2 
		ON c2.id = c.countries_id 
ORDER BY `total days` DESC LIMIT 5;

-- Наиболее популярные отели -------------------------------

SELECT DISTINCT pt.name `type`,
				o.name ,
				COUNT(o2.user_id ) OVER (PARTITION BY o.id ) AS `number of orders`
FROM objects o 
	LEFT JOIN
	rooms r 
		ON o.id = r.objects_id 
	LEFT JOIN 
	orders o2 
		ON o2.room_id = r.id
	LEFT JOIN 
	property_types pt 
		ON pt.id = o.property_types_id
ORDER BY `number of orders` DESC LIMIT 10;

--  Найти доступные номера в стране в диапазоне дат  -----------------

SELECT  c2.name AS city,
		pt.name AS `type`,
		s.name AS stars,
		r.sleeps ,
		r.price 
FROM countries c 
	LEFT JOIN
	cities c2 
		ON c.id = c2.countries_id 
	LEFT JOIN 
	objects o 
		ON o.cities_id = c2.id 
	LEFT JOIN 
	rooms r 
		ON r.objects_id = o.id 
	LEFT JOIN 
	orders o2 
		ON o2.room_id = r.id
	LEFT JOIN 
	property_types pt
		ON o.property_types_id = pt.id 
	LEFT JOIN 
	stars s
		ON o.stars_id = s.id 
WHERE c.name = 'Cameroon' AND is_order_correct(r.id , '2017-05-20', '2017-05-25') AND o.id IS NOT NULL;


-- Работа с представлениями----------------------------------------------
-- v_orders содержит информацию о пользователе, периоде брони, цене номера, продолжительности в днях брони и итоговой сумме заказа

-- Поиск пользователей, с наибольшим суммарным количеством дней брони

SELECT users ,
	   SUM(`number of days`) `total days`
FROM v_orders vo 
GROUP BY users
ORDER BY SUM(`number of days`) DESC LIMIT 5;

SELECT * FROM v_orders vo where users = 'Erich Keeling' ;  -- пользователь из результата предыдущего запроса

-- Проверка работы триггеров и функций  -------------------------------------------------

INSERT INTO users (first_name ,last_name ,email , phone ) VALUES ('Andrey', 'Stepanov', 'adr@ya.ru', '455gt56');
INSERT INTO users (first_name ,last_name ,email , phone ) VALUES ('Andrey', 'Stepanov', 'adr@ya.ru', rand_num(11));

SELECT * FROM users ORDER BY id DESC LIMIT 5;

INSERT INTO orders (user_id, room_id , check_in ,check_out ) VALUES (87, 12, '2020-01-01', '2020-10-10');
INSERT INTO orders (user_id, room_id , check_in ,check_out ) VALUES (87, 12, '2020-11-01', '2020-10-10');
INSERT INTO orders (user_id, room_id , check_in ,check_out ) VALUES (87, 12, '2020-11-01', '2020-11-10');

INSERT INTO orders (user_id , room_id , check_in, check_out) VALUES (104, 12, NOW() + INTERVAL 1 DAY, NOW() + INTERVAL 7 DAY);
INSERT INTO orders (user_id , room_id , check_in, check_out) VALUES (14, 12, NOW() + INTERVAL 2 DAY, NOW() + INTERVAL 4 DAY);

SELECT * FROM orders o WHERE room_id = 12;

INSERT INTO objects ( cities_id, name, description ) VALUES ( 34, NULL, NULL);
INSERT INTO objects ( cities_id, name, description ) VALUES ( 34, NULL, 'This is a very beautiful place');
UPDATE objects SET name = NULL, description = NULL WHERE id = 130 ;

SELECT * FROM objects o ORDER BY id DESC LIMIT 5;

