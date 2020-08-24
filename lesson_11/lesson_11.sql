-- Создайте таблицу logs типа Archive. 
-- Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается 
-- время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
table_name VARCHAR(50),
id_in_table_name INT,
name VARCHAR(255),
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=ARCHIVE;

DROP TRIGGER IF EXISTS triusers_ins;
DROP TRIGGER IF EXISTS tricatalogs_ins;
DROP TRIGGER IF EXISTS triproducts_ins;

DELIMITER //

CREATE TRIGGER triusers_ins AFTER INSERT ON users
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (table_name, id_in_table_name, name) VALUES ('users', NEW.id, NEW.name);
END//

CREATE TRIGGER tricatalogs_ins AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (table_name, id_in_table_name, name) VALUES ('catalogs', NEW.id, NEW.name);
END//

CREATE TRIGGER triproducts_ins AFTER INSERT ON products
FOR EACH ROW 
BEGIN 
	INSERT INTO logs (table_name, id_in_table_name, name) VALUES ('products', NEW.id, NEW.name);
END//

DELIMITER ;

INSERT INTO users (name , birthday_at ) VALUES ('Anna', '2000-01-01');
INSERT INTO catalogs (name) VALUES ('Мониторы');
INSERT INTO products (name, description, price, catalog_id ) VALUES ('Intel Core Core i7-7700K', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 27190.00, 1);

SELECT * FROM logs order by id desc;

-- (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

USE mysql;
INSERT INTO shop.users (name, birthday_at)
	(SELECT hk.name,
			(SELECT ADDDATE('1900-01-01', INTERVAL + (1+ RAND()*43500) DAY))
	FROM help_relation hr 
		JOIN help_keyword hk 
		LIMIT 1000000);

USE shop;
SELECT * FROM users u ;
SELECT COUNT(id) FROM users u ;