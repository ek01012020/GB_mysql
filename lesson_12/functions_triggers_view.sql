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

DELIMITER ;

DROP VIEW IF EXISTS v_orders;
CREATE VIEW v_orders AS
	SELECT
		u.id,
		CONCAT_WS(' ', u.first_name , u.last_name ) AS users,
		p.check_in,
		p.check_out,
		r.price,
		DATEDIFF(p.check_out , p.check_in ) AS `number of days`,
		DATEDIFF(p.check_out , p.check_in )*r.price AS `total price`
	FROM orders o
		JOIN 
		users u
			ON o.user_id = u.id
		JOIN 
		periods p
			ON o.period_id = p.id
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