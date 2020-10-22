/*
1 Проанализировать запросы, которые выполнялись на занятии, определить 
возможные корректировки и/или улучшения (JOIN пока не применять).

Я думаю, что это вопрос для людей, имеющих опыт, мне пока точно добавить нечего, только разбираюсь с темой )

2 Пусть задан некоторый пользователь. Из всех друзей этого пользователя
 найдите человека, который больше всех общался с нашим пользователем.
*/


INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('1', '19', '1', 'Et similique ratione eum et dolorum ex similique. Dolor quia vel vitae quia et. Nisi tempora aliquam temporibus est possimus non architecto. Voluptatem et labore minus placeat repellat sunt laborum voluptates.', 0, '2010-06-10 09:45:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('2', '19', '2', 'Enim iure ut dolor et officiis non voluptatem. Corporis non eligendi eum et voluptas et. Accusamus aspernatur odit non qui illo.', 1, '1985-04-13 08:32:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('3', '3', '1', 'Repudiandae sint ut et et. Fugiat optio iure molestiae nihil sint et ratione voluptatem. Velit pariatur et et suscipit. Corrupti qui asperiores repellat dolor repellat repudiandae et. Minus illo quis officia cum quod sunt dolorum.', 0, '2010-11-05 23:44:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('4', '4', '1', 'Delectus harum voluptates ut explicabo. Qui molestias dignissimos doloribus velit culpa maiores nihil. Sapiente ex sint nihil fuga et exercitationem illum.', 1, '1992-08-26 02:37:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('5', '19', '5', 'Rerum adipisci veritatis consequatur necessitatibus beatae. Vel laboriosam delectus in. Aut et ab eum possimus adipisci. Esse dolores et enim ea. Reprehenderit nisi nobis dolor qui.', 1, '1997-06-25 20:47:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('6', '19', '5', 'Molestiae eos error voluptatem aut ut quos totam. Molestiae quibusdam consectetur dolore saepe dolores quas consectetur temporibus. Odio in illo neque deserunt officia provident voluptatem. Consequuntur repudiandae quis rerum.', 0, '2012-06-22 09:11:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('7', '2', '7', 'Deserunt iste distinctio similique sequi. Id facere sed autem sed. Sed quo voluptatem ad non. Repellat autem magni id modi fugit iste facere.', 1, '1987-01-20 02:44:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('8', '19', '5', 'Corporis sed non quam id sint quidem. Dignissimos sint eum voluptates accusantium itaque beatae id.', 0, '1978-04-21 02:14:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('9', '2', '9', 'Unde esse dolor consequatur dolores velit nemo ab. Maxime quo quia quos modi maxime et. Qui ea voluptas nostrum vero corporis labore. Enim quia totam pariatur nostrum porro earum qui itaque.', 0, '1989-01-22 11:45:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('10', '19', '10', 'Dignissimos excepturi voluptatum dolores molestiae. A dicta nihil magnam perferendis dignissimos. Non sed eos ullam aut amet aut eligendi. Nemo in nesciunt molestias ut quos id. Mollitia vitae distinctio ad facilis voluptas a iusto.', 0, '1978-06-14 16:05:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('11', '19', '5', 'Aut pariatur culpa ex accusantium libero nam voluptas. Deleniti sint repudiandae odit ut. Velit facere id perspiciatis. Sequi minima vel quia.', 1, '1976-04-23 01:51:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('12', '19', '12', 'Molestiae ea nulla enim maiores. Laudantium nemo est voluptas ratione. Accusamus quaerat molestias omnis illum minus. Ut quo temporibus culpa voluptas voluptas eos pariatur.', 1, '1978-02-03 00:43:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('13', '13', '5', 'Omnis maxime eaque repellat molestiae. Possimus harum aut aut doloremque doloremque. Neque autem facilis occaecati provident. Quos nostrum ipsa aliquid magni.', 1, '1993-03-27 03:27:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('14', '14', '14', 'Voluptas error et optio assumenda quas tenetur. Perspiciatis sint quia debitis veniam est.', 0, '1971-06-16 23:51:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('15', '15', '5', 'In et ratione quos eligendi perspiciatis. Dolores veritatis sapiente sunt. Ea velit odio mollitia in et. In voluptatem non quia facilis porro corrupti.', 0, '2014-05-22 14:25:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('16', '16', '5', 'Dolorum occaecati aliquid minus non. Blanditiis voluptatem voluptatibus vero iure. Itaque aut porro ex iusto ducimus.', 0, '2012-04-21 01:26:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('17', '17', '17', 'Blanditiis unde et sed esse magni iure alias. Blanditiis corporis voluptatem nostrum nulla. Iste fugit quisquam eum rerum voluptate. Dolorem velit fuga neque qui.', 0, '1976-12-28 23:29:09');

SELECT 
	name, 
	surname,
    id
FROM users
WHERE id IN 
	(SELECT from_user_id FROM 
		(SELECT from_user_id,
			MAX(quantity_of_messages) MAX
			FROM (SELECT 
				from_user_id,
				COUNT(from_user_id) as quantity_of_messages 
				FROM messages 
				WHERE to_user_id = '5'  
				AND
				(SELECT * FROM 	
					(SELECT 
						CASE
							WHEN initiator_user_id = 1 AND status = 'approved' THEN target_user_id
							WHEN target_user_id = 1 AND status = 'approved' THEN initiator_user_id
						END AS friend_id
						FROM friend_requests) 
				AS fr_tbl WHERE friend_id IS NOT NULL) 
			GROUP BY from_user_id) 
		 AS frds)
	AS id_frd);