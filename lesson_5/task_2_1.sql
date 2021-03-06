-- Подсчитайте средний возраст пользователей в таблице users.

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
	('Мария', '1992-08-29');

SELECT * FROM users;
SELECT GROUP_CONCAT(name), TIMESTAMPDIFF(YEAR, birthday_at, NOW()) AS ages, COUNT(*) as total FROM users group by ages ;
SELECT AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) as age FROM users;
