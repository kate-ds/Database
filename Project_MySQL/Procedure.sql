/* 
Процедура.
Сделать подборку всех событий в городе Н в течении заданного кол-ва дней
*/

DROP PROCEDURE IF EXISTS whats_around;
DELIMITER //
CREATE procedure whats_around (IN u_city VARCHAR(255), IN days INT)
BEGIN
	SELECT id,
		title, 
		description,
		city,
		start_datetime
	FROM invites 
	WHERE city = u_city 
		AND (start_datetime BETWEEN NOW() AND CURRENT_DATE + INTERVAL days DAY)
	UNION 
	SELECT id,
		title, 
		description, 
		city, 
		start_datetime 
	FROM events 
	WHERE city = u_city
		AND (start_datetime BETWEEN NOW() AND CURRENT_DATE + INTERVAL days DAY);
END //

CALL whats_around('Paris', 20);