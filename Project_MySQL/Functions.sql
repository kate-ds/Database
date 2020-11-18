/*
Функции
*/
-- посчитать кол-во комментариев к invite-посту

DROP FUNCTION IF EXISTS count_icomments;
DELIMITER //
CREATE FUNCTION count_icomments (invite_id INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE icomments INT;
    SELECT count(id) INTO icomments FROM invites_comments
	WHERE to_invite_id = invite_id;
	RETURN icomments;
END //
SELECT count_icomments(15);

-- подсчет количества людей, которые хотят участвовать в мероприятии пользователя (invites)

DROP FUNCTION IF EXISTS participants_requests;
DELIMITER //
CREATE FUNCTION participants_requests (invite_id INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE participants_requests INT;
    SELECT count(from_user_id) INTO participants_requests FROM invites_requests 
	WHERE to_invite_id = invite_id AND status = 'requested';
	RETURN participants_requests;
END //
SELECT participants_requests(2);

SELECT * FROM invites_requests WHERE to_invite_id = 2 AND status = 'requested';

-- подсчет количества людей, которые участвуют в евенте (events)

DROP FUNCTION IF EXISTS participants;
DELIMITER //
CREATE FUNCTION participants (event_id INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE participants INT;
    SELECT count(from_user_id) INTO participants FROM events_requests 
	WHERE to_event_id = event_id AND status = 'approved' OR status = 'paid';
	RETURN participants;
END //
SELECT participants(2);

SELECT * FROM events_requests WHERE to_event_id = 2 AND status = 'requested' OR status = 'paid';