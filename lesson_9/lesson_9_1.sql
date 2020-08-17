-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

USE shop;
START TRANSACTION;
INSERT INTO sample.users (name, birthday_at , created_at , updated_at ) 
  SELECT  name, birthday_at , created_at , updated_at 
  FROM users WHERE id=1;
COMMIT;
use sample;
SELECT * FROM users u ;


-- Создайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW prod_cat AS 
	SELECT p.name , c.name AS catalog_name
	FROM products p 
		JOIN 
		catalogs c 
			ON p.catalog_id = c.id ;

SELECT * FROM prod_cat;

-- (по желанию) Пусть имеется таблица с календарным полем created_at. 
-- В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17.
-- Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1,
-- если дата присутствует в исходном таблице и 0, если она отсутствует.

DROP TABLE IF EXISTS my_date;
CREATE TABLE my_date (
id SERIAL PRIMARY KEY,
created_at DATE);

INSERT INTO my_date (created_at) VALUES
	('2018-08-01'),
	('2018-08-04'), 
	('2018-08-16'),
	('2018-08-17');

DROP TABLE IF EXISTS august;
CREATE TABLE august (
days DATE);

INSERT INTO august (days)
SELECT STR_TO_DATE(CONCAT('2018-08-',(singles + tens)), '%Y-%m-%d') AS aug
FROM 
	(SELECT 0 singles
	UNION ALL SELECT   1 UNION ALL SELECT   2 UNION ALL SELECT   3
	UNION ALL SELECT   4 UNION ALL SELECT   5 UNION ALL SELECT   6
	UNION ALL SELECT   7 UNION ALL SELECT   8 UNION ALL SELECT   9) AS s
	JOIN
	(SELECT 0 tens
	UNION ALL SELECT   10 UNION ALL SELECT   20 UNION ALL SELECT   30) AS t
WHERE (s.singles + t.tens) BETWEEN 1 AND 31
ORDER BY aug;

DROP VIEW IF EXISTS aug_date;
CREATE VIEW aug_date AS
SELECT a.days, IF(a.days = md.created_at, 1, 0) AS active
FROM 
	august a
	LEFT JOIN
	my_date md
		ON a.days = md.created_at;
	
SELECT * FROM aug_date ;

SET @days := '2018-07-31';
SELECT (@days := @days + INTERVAL 1 DAY) `date`, IF(@days IN (SELECT created_at FROM my_date ), 1, 0) `my date`
FROM august 
ORDER BY @days;

	
-- (по желанию) Пусть имеется любая таблица с календарным полем created_at.
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

CREATE TEMPORARY TABLE table_last_data (id INT NOT NULL);

INSERT INTO table_last_data 
SELECT id FROM posts p ORDER BY created_at DESC LIMIT 5;

DELETE FROM posts WHERE id NOT IN (SELECT id FROM table_last_data);

-- вариант 2 -----------------

SET @num := (SELECT COUNT(*) FROM posts p) - 5;
SELECT @num;
DELETE FROM posts ORDER BY created_at LIMIT 95;
