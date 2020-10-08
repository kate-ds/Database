-- посчитала кол-во сообщений для пользователя с id = 5

SELECT 
from_user_id,
COUNT(from_user_id) as quantity_of_messages 
FROM messages 
WHERE to_user_id = '5' GROUP BY from_user_id;

-- выбрала человека, который написал максимум сообщений

SELECT from_user_id,
MAX(quantity_of_messages) MAX
FROM (SELECT 
from_user_id,
COUNT(from_user_id) as quantity_of_messages 
FROM messages 
WHERE to_user_id = '5' GROUP BY from_user_id) cnt;

-- нашла id ДРУГА, который написал больше всех сообщений

SELECT from_user_id FROM (SELECT from_user_id,
MAX(quantity_of_messages) MAX
FROM (SELECT 
from_user_id,
COUNT(from_user_id) as quantity_of_messages 
FROM messages 
WHERE to_user_id = '5'  
AND
(select * from 	
	(select 
	case
		when initiator_user_id = 1 and status = 'approved' then target_user_id
		when target_user_id = 1 and status = 'approved' then initiator_user_id
	end as friend_id
	from friend_requests) as fr_tbl where friend_id is not null) GROUP BY from_user_id) frds)as id_frd;
    
-- и вывела его имя, фамилию, id    
    
SELECT 
	name, 
	surname,
    id
FROM users u
WHERE id in (SELECT from_user_id FROM (SELECT from_user_id,
MAX(quantity_of_messages) MAX
FROM (SELECT 
from_user_id,
COUNT(from_user_id) as quantity_of_messages 
FROM messages 
WHERE to_user_id = '5'  
AND
(select * from 	
	(select 
	case
		when initiator_user_id = 1 and status = 'approved' then target_user_id
		when target_user_id = 1 and status = 'approved' then initiator_user_id
	end as friend_id
	from friend_requests) as fr_tbl where friend_id is not null) GROUP BY from_user_id) frds)as id_frd);
    


