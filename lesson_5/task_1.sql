-- Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем. --

DROP DATABASE IF EXISTS shop;
CREATE DATABASE IF NOT EXISTS shop;

USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	birthday_at DATE COMMENT "Дата рождения",
	created_at DATETIME,
	updated_at DATETIME 
) COMMENT "Покупатели";

INSERT INTO users (name, birthday_at) VALUES 
	('Kate', '1990-01-01'), ('April', '1985-05-23'), ('Mikle', '2000-09-13');
SELECT * FROM users;
ALTER TABLE users CHANGE created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE users CHANGE updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
UPDATE users SET created_at = NOW();

-- UPDATE users SET created_at = NOW(), updated_at = NOW();
