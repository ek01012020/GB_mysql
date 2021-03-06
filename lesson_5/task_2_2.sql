-- Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.

DROP DATABASE IF EXISTS shop;
CREATE DATABASE IF NOT EXISTS shop;

USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	birthday_at DATE COMMENT "Дата рождения",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Покупатели";

INSERT INTO users (name, birthday_at ) VALUES
	('Геннадий', '1990-10-05'),
	('Наталья', '1984-11-12'),
	('Александр', '1985-05-20'),
	('Сергей', '1988-02-14'),
	('Иван', '1998-01-12'),
	('Игорь', '1988-09-13'),
	('Ирина', '1972-06-03'),
	('Мария', '1992-08-29');

SELECT * FROM users;
SELECT DAYNAME(NOW() ); 
SELECT DAYNAME(birthday_at) FROM users; 
ALTER TABLE users ADD COLUMN birthday_this_year DATETIME;
SELECT COUNT(*), GROUP_CONCAT(name), DAYNAME(CONCAT
		(EXTRACT(YEAR FROM NOW()),'-',
		EXTRACT(MONTH FROM birthday_at),'-',
		EXTRACT(DAY FROM birthday_at))) AS days 
FROM users GROUP BY days;
