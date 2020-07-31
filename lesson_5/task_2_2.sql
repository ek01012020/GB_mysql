-- ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������.
-- ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.

DROP DATABASE IF EXISTS shop;
CREATE DATABASE IF NOT EXISTS shop;

USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	birthday_at DATE COMMENT "���� ��������",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "����������";

INSERT INTO users (name, birthday_at ) VALUES
	('��������', '1990-10-05'),
	('�������', '1984-11-12'),
	('���������', '1985-05-20'),
	('������', '1988-02-14'),
	('����', '1998-01-12'),
	('�����', '1988-09-13'),
	('�����', '1972-06-03'),
	('�����', '1992-08-29');

SELECT * FROM users;
SELECT DAYNAME(NOW() ); 
SELECT DAYNAME(birthday_at) FROM users; 
ALTER TABLE users ADD COLUMN birthday_this_year DATETIME;
SELECT COUNT(*), GROUP_CONCAT(name), DAYNAME(CONCAT
		(EXTRACT(YEAR FROM NOW()),'-',
		EXTRACT(MONTH FROM birthday_at),'-',
		EXTRACT(DAY FROM birthday_at))) AS days 
FROM users GROUP BY days;