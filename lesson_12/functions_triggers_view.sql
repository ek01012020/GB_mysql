DELIMITER //

DROP FUNCTION IF EXISTS rand_num//
CREATE FUNCTION rand_num(len INT)
RETURNS VARCHAR(255) NO SQL
BEGIN
	SET @str_digit = '';
	WHILE len > 0 DO
	SET @str_digit = CONCAT(@str_digit, CONVERT(FLOOR(RAND()*10), CHAR));
	SET len = len - 1;
	END WHILE;
	RETURN @str_digit;
END//

DROP FUNCTION IF EXISTS isdigit//
CREATE FUNCTION isdigit(str VARCHAR(100))
RETURNS BOOLEAN NO SQL
BEGIN
	WHILE LENGTH(str) > 0 DO
	IF LEFT(str, 1) RLIKE '[0-9]' 
		THEN SET str = SUBSTR(str, 2);
		ELSE RETURN FALSE;
	END IF;
	END WHILE;
	RETURN TRUE;
END//

DROP FUNCTION IF EXISTS is_order_correct//
CREATE FUNCTION is_order_correct(room INT, date1 DATE, date2 DATE)
RETURNS BOOLEAN NO SQL
BEGIN
	DECLARE done INT DEFAULT FALSE;
	DECLARE c_date1, c_date2 DATE;

	DECLARE cur CURSOR FOR
		SELECT check_in, check_out
		FROM orders o 
		WHERE room_id = room;
		
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	
	OPEN cur;

	WHILE done = 0 DO
	FETCH cur INTO c_date1, c_date2;
	IF (date1 >= c_date1 AND date1 < c_date2) OR (date2 <= c_date2 AND date2 > c_date1) OR (date1 <= c_date1 AND date2 > c_date1)
		THEN RETURN FALSE;
	END IF;
	END WHILE;
		
	CLOSE cur;
	RETURN TRUE;
END//

-- TRIGGERS -----------------------------------------------------------------

DROP TRIGGER IF EXISTS triusers_ins//
CREATE TRIGGER triusers_ins BEFORE INSERT ON users
FOR EACH ROW
BEGIN
	IF NOT isdigit(NEW.phone) THEN
	  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Phone number is not digit!';
	END IF;
END//

DROP TRIGGER IF EXISTS triusers_up//
CREATE TRIGGER triusers_up BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF NOT isdigit(NEW.phone) THEN
	  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Phone number is not digit!';
	END IF;
END//

DROP TRIGGER IF EXISTS triorders_ins//
CREATE TRIGGER triorders_ins BEFORE INSERT ON orders 
FOR EACH ROW 
BEGIN 
	IF NEW.check_in < NOW() OR NEW.check_in >= NEW.check_out
	  THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Incorrect values: check-in <= NOW OR check-in >= check_out';
	END IF;
	IF !is_order_correct(NEW.room_id, NEW.check_in, NEW.check_out) THEN 
	  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DATABASE booking has order in these dates!';
	END IF;
END//

DROP TRIGGER IF EXISTS triorders_up//
CREATE TRIGGER triorders_up BEFORE UPDATE ON orders 
FOR EACH ROW 
BEGIN 
	IF NEW.check_in < NOW() OR NEW.check_in >= NEW.check_out
	  THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Incorrect values: check-in <= NOW OR check-in >= check_out';
	END IF;
	IF !is_order_correct(NEW.room_id, NEW.check_in, NEW.check_out) THEN 
	  SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'DATABASE booking has order in these dates!';
	END IF;
END//

DROP TRIGGER IF EXISTS triobjects_ins//
CREATE TRIGGER triobjects_ins BEFORE INSERT ON objects
FOR EACH ROW 
BEGIN 
	IF COALESCE( NEW.name, NEW.description) IS NULL
	  THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Incorrect value: name and description is NULL!';
	END IF;
END//

DROP TRIGGER IF EXISTS triobjects_up//
CREATE TRIGGER triobjects_up BEFORE UPDATE ON objects
FOR EACH ROW 
BEGIN 
	IF COALESCE( NEW.name, NEW.description) IS NULL
	  THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Incorrect value: name and description is NULL!';
	END IF;
END//

DELIMITER ;

-- VIEW -----------------------------------------------------------------------------------------------

DROP VIEW IF EXISTS v_orders;
CREATE VIEW v_orders AS
	SELECT
		u.id,
		CONCAT_WS(' ', u.first_name , u.last_name ) AS users,
		o.check_in,
		o.check_out,
		r.price,
		DATEDIFF(o.check_out , o.check_in ) AS `number of days`,
		DATEDIFF(o.check_out , o.check_in )*r.price AS `total price`
	FROM orders o
		JOIN 
		users u
			ON o.user_id = u.id
		JOIN 
		rooms r
			ON o.room_id = r.id;
			
		
DROP VIEW IF EXISTS v_objects;
CREATE VIEW v_objects AS
SELECT
	c2.name `country`,
	c.name `city`,
	pt.name `type`,
	o.name,
	o.address,
	r.sleeps,
	r.price 
FROM objects o 
	JOIN 
	rooms r
		ON o.id = r.objects_id 
	JOIN
	cities c 
		ON o.cities_id = c.id 
	JOIN
	countries c2 
		ON c.countries_id = c2.id 
	JOIN
	property_types pt 
		ON o.property_types_id = pt.id;
