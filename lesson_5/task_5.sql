-- (�� �������) �� ������� catalogs ����������� ������ ��� ������ �������. SELECT * FROM catalogs WHERE id IN (5, 1, 2);
-- ������������ ������ � �������, �������� � ������ IN.

DROP DATABASE IF EXISTS shop;
CREATE DATABASE IF NOT EXISTS shop;

USE shop;

DROP TABLE IF EXISTS catalogs;
CREATE TABLE IF NOT EXISTS catalogs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT "�������� �������"
) COMMENT "������� �������� ��������";

INSERT INTO catalogs (name) VALUES
	('����������'),
	('����������� �����'),
	('����������'),
	('������� �����'),
	('����������� ������');

SELECT id,name FROM catalogs WHERE id IN (5,1,2) ORDER BY IF(id>3,0,1);