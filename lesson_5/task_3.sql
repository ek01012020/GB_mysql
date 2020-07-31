-- � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����:
-- 0, ���� ����� ���������� � ���� ����, ���� �� ������ ������� ������.
-- ���������� ������������� ������ ����� �������, ����� ��� ���������� � ������� ���������� �������� value.
-- ������ ������� ������ ������ ���������� � �����, ����� ���� �������.

DROP DATABASE IF EXISTS shop;
CREATE DATABASE IF NOT EXISTS shop;

USE shop;

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
	id SERIAL PRIMARY KEY,
	storehouse_id INT UNSIGNED,
	product_id INT UNSIGNED,
	value INT UNSIGNED COMMENT "����� �������� ������� �� ������",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "������ �� ������";

INSERT INTO storehouses_products (value) VALUES 
	(0), (2500), (0), (30), (500), (1);

SELECT * FROM storehouses_products ORDER BY IF (value =0,1,0), value; 