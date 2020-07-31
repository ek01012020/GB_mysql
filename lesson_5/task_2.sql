-- Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время 
-- помещались значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
DROP DATABASE IF EXISTS shop;
CREATE DATABASE IF NOT EXISTS shop;

USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	birthday_at DATE COMMENT "Дата рождения",
	created_at VARCHAR(255),
	updated_at VARCHAR(255) 
) COMMENT "Покупатели";

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES 
	('Kate', '1990-01-01','20.10.2017 8:10','20.10.2017 8:10'),
	('April', '1985-05-23','22.02.2020 8:10:19','22.02.2020 8:10:19'),
	('Mikle', '2000-09-13','22.12.2019 18:10:19','22.05.2020 15:47:53');
SELECT * FROM users;

UPDATE users SET created_at = STR_TO_DATE(created_at,'%d.%m.%Y %H:%i:%s'),
		updated_at = STR_TO_DATE(updated_at,'%d.%m.%Y %H:%i:%s');
