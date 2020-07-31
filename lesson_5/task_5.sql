-- (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2);
-- Отсортируйте записи в порядке, заданном в списке IN.

DROP DATABASE IF EXISTS shop;
CREATE DATABASE IF NOT EXISTS shop;

USE shop;

DROP TABLE IF EXISTS catalogs;
CREATE TABLE IF NOT EXISTS catalogs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT "Название раздела"
) COMMENT "Разделы интернет магазина";

INSERT INTO catalogs (name) VALUES
	('Процессоры'),
	('Материнские платы'),
	('Видеокарты'),
	('Жесткие диски'),
	('Оперативная память');

SELECT id,name FROM catalogs WHERE id IN (5,1,2) ORDER BY IF(id>3,0,1);
