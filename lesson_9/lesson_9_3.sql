-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток.
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DELIMITER //

DROP FUNCTION IF EXISTS hello//

CREATE FUNCTION hello()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
	SET @tm = CURRENT_TIME();
	CASE 
	WHEN @tm BETWEEN '06:00:00' AND '12:00:00' THEN RETURN 'Доброе утро';
	WHEN @tm BETWEEN '12:00:01' AND '18:00:00' THEN RETURN 'Добрый день';
	WHEN @tm BETWEEN '18:00:01' AND '00:00:00' THEN RETURN 'Добрый вечер';
	ELSE RETURN 'Доброй ночи';
	END CASE;
END//

DELIMITER ;

SELECT hello();
SHOW FUNCTION STATUS;
DROP FUNCTION IF EXISTS hello;

-- В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.


DROP TRIGGER IF EXISTS triprod_up;
DROP TRIGGER IF EXISTS triprod_ins;

DELIMITER //

CREATE TRIGGER triprod_up BEFORE UPDATE ON products
FOR EACH ROW
BEGIN 
	IF COALESCE (NEW.name, NEW.description) IS NULL THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE: name and description IS NULL';
	END IF;
END//

CREATE TRIGGER triprod_ins BEFORE INSERT ON products
FOR EACH ROW
BEGIN 
	IF COALESCE (NEW.name, NEW.description) IS NULL THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT: name and description IS NULL';
	END IF;	
END//

DELIMITER ;

SELECT * FROM products p ;
UPDATE products SET name = NULL WHERE id = 1;
UPDATE products SET description = NULL WHERE id = 1;
INSERT INTO products (name, description , price ) VALUES ('Intel Core i7-7700', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 23239);
INSERT INTO products ( price ) VALUES (12500);


-- (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи.
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел.
-- Вызов функции FIBONACCI(10) должен возвращать число 55.

DELIMITER //

CREATE FUNCTION FIBONACCI (value INT)
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
	DECLARE fib1, fib3 INT DEFAULT 0;
	DECLARE i, fib2 INT DEFAULT 1;
	IF value > 0 THEN 
	REPEAT
	SET fib3 = fib1 + fib2;
	SET fib1 = fib2;
	SET fib2 = fib3;
	SET i = i + 1;
	UNTIL i >= value
	END REPEAT;
	END IF;
	RETURN fib3;
END//

DELIMITER ;

SELECT FIBONACCI(10);
-- DROP FUNCTION FIBONACCI;