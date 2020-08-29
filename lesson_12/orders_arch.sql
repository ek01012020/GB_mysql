
DROP TABLE IF EXISTS orders_arch;
CREATE TABLE orders_arch (
user_id INT COMMENT "идентификатор пользователя",
room_id INT COMMENT "идентификатор номера",
check_in DATE COMMENT "регистрация",
check_out DATE COMMENT "время выезда",
created_at DATETIME ,
updated_at DATETIME 
) ENGINE=ARCHIVE COMMENT "Старые заказы";

DELIMITER //

DROP FUNCTION IF EXISTS orders_old//
CREATE FUNCTION orders_old ()
RETURNS BOOLEAN NO SQL 
BEGIN
	INSERT INTO orders_arch 
		SELECT *
		FROM orders o
		WHERE check_out < NOW();
	DELETE FROM orders WHERE check_out < NOW();
	RETURN TRUE;
END//

DELIMITER ;
