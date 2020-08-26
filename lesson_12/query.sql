--  вывести заказы пользователей от максимального до 1 заказа. Пользователь - колво заказов - колво дней - сумма заказов

SELECT * FROM orders o2 ;
SELECT DISTINCT 
	CONCAT_WS(' ', u.first_name , u.last_name ) AS client,
	COUNT(1) OVER (PARTITION BY u.id) AS made_orders,
	CONCAT_WS(' ', p.check_in ,'  ', p.check_out ) AS period,
	r.price 
FROM orders o 
	JOIN 
	users u
		ON o.user_id = u.id 
	JOIN 
	periods p 
		ON o.period_id = p.id 
	JOIN 
	rooms r 
		ON o.room_id = r.id
ORDER BY made_orders DESC;

-- ----------------------------------------------
SELECT * FROM v_orders vo where users = 'Wanda Prosacco' ;

SELECT users ,
	   SUM(`number of days`) 
FROM v_orders vo 
GROUP BY users
ORDER BY SUM(`number of days`) DESC ;


-- Проверка работы триггеров и функций  -------------------------------------------------

INSERT INTO users (first_name ,last_name ,email , phone ) VALUES ('Andrey', 'Stepanov', 'adr@ya.ru', '455gt56');
INSERT INTO users (first_name ,last_name ,email , phone ) VALUES ('Andrey', 'Stepanov', 'adr@ya.ru', rand_num(11));

