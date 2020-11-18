/* 
Транзакция.
Для транзакции выбрала скрипт добавления статуса профи и добавление его в таблицу профессионалов
*/


SET @uid = 5;
SET @des ='Устраиваю любые спортивные мероприятия.' ;

START TRANSACTION;
UPDATE users 
	SET is_profi = 1 
    WHERE id = @uid;
INSERT INTO professionals (id, profession)
	SELECT id, profession 
		FROM users 
		WHERE id = @uid;
UPDATE professionals 
	SET description = @des
    WHERE id = @uid;
COMMIT;

SELECT id, profession, description FROM professionals;