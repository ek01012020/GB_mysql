
ALTER TABLE users MODIFY phone VARCHAR(100);
UPDATE users SET phone = rand_num(11);

UPDATE rooms SET sleeps = (1 + RAND()* 9 );
UPDATE objects SET stars_id = (1 + RAND()* 5 );

UPDATE cities SET updated_at = NOW() WHERE created_at > updated_at;
UPDATE countries SET updated_at = NOW() WHERE created_at > updated_at;
UPDATE facilities SET updated_at = NOW() WHERE created_at > updated_at;
UPDATE orders SET updated_at = NOW() WHERE created_at > updated_at;
UPDATE property_types SET updated_at = NOW() WHERE created_at > updated_at;
UPDATE room_facilities SET updated_at = NOW() WHERE created_at > updated_at;
UPDATE periods SET check_out = (check_in + INTERVAL FLOOR(RAND()*22) DAY) WHERE DATEDIFF(check_out, check_in ) <= 0 ;
UPDATE periods SET check_in = (check_out - INTERVAL FLOOR(RAND()*35) DAY) WHERE DATEDIFF(check_out , check_in ) > 180;

