SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=1;
/*
DATA FOR TABLE: users
*/

INSERT INTO users (id, first_name, last_name, gender, date_of_birth, city_of_residence, country_of_residence, went_from_city, went_from_country, email, phone_number, profession, photo_id, created_at, updated_at) VALUES 
(1, 'Imogen', 'Leyban', 'F', '1977-06-23', 'Paris', 'France', 'Vypolzovo', 'Russia', 'ileyban0@nydailynews.com', '7167144892', 'Engineering', 1, '2019-11-07 00:11:32', '2020-06-17 13:02:29'),
(2, 'Allis', 'Ege', 'F', '1995-12-25', 'Paris', 'France', 'Moscow', 'Russia', 'aege1@reference.com', '1279261272', 'Training', 2, '2020-04-13 18:47:02', '2020-07-13 23:12:38'),
(3, 'Artemis', 'Amerighi', 'M', '1949-10-26', 'Warsaw', 'Poland', 'Omsk', 'Russia', 'aamerighi2@pcworld.com', '8274921355', 'Training', 3, '2020-07-15 23:11:01', '2020-06-09 23:02:35'),
(4, 'Jarvis', 'Bothen', 'M', '1969-05-14', 'Paris', 'France', 'Moscow', 'Russia', 'jbothen3@marriott.com', '2528344615', 'Business Development', 4, '2020-06-09 23:06:52', '2020-08-29 20:37:22'),
(5, 'Silvan', 'Warmisham', 'M', '1984-04-26', 'Paris', 'France', 'Łubnice', 'Poland', 'swarmisham4@behance.net', '1804221489', 'Human Resources', 5, '2020-02-12 02:56:05', '2020-09-14 03:05:10'),
(6, 'Darryl', 'Yukhov', 'M', '1989-04-30', 'Warsaw', 'Poland', 'Moscow', 'Russia', 'dyukhov5@wikimedia.org', '7497072594', 'Business Development', 6, '2020-10-08 18:42:09', '2020-09-25 09:13:32'),
(7, 'Cyrus', 'Lynnitt', 'M', '1951-05-08', 'Paris', 'France', 'Vypolzovo', 'Russia', 'clynnitt6@blogspot.com', '2672346370', 'Accounting', 7, '2020-02-04 23:45:19', '2019-12-25 11:07:22'),
(8, 'Jeremias', 'Haill', 'M', '2013-10-20', 'lyon', 'France', 'Osieczany', 'Poland', 'jhaill7@cbsnews.com', '2636347435', 'Legal', 8, '2020-01-14 05:03:56', '2020-02-27 12:52:51'),
(9, 'Correy', 'McElree', 'M', '2004-07-09', 'lyon', 'France', 'Vypolzovo', 'Russia', 'cmcelree8@smh.com.au', '3551331251', 'Business Development', 9, '2019-11-16 06:50:18', '2019-12-10 15:10:23'),
(10, 'Mischa', 'Timbridge', 'M', '1970-01-26', 'lyon', 'France', 'Semikarakorsk', 'Russia', 'mtimbridge9@printfriendly.com', '5641072867', 'Services', 10, '2019-11-26 14:20:13', '2020-01-25 04:56:03'),
(11, 'Emeline', 'Ladley', 'F', '1984-09-01', 'lyon', 'France', 'Kiev', 'Ukraine', 'eladleya@latimes.com', '4834188875', 'Services', 11, '2020-03-19 06:27:43', '2020-06-20 15:41:26'),
(12, 'Binnie', 'Kener', 'F', '1950-02-04', 'Warsaw', 'Poland', 'Moscow', 'Russia', 'bkenerb@mail.ru', '8329590888', 'Human Resources', 12, '2020-05-01 22:54:51', '2020-09-04 11:41:52'),
(13, 'Peyton', 'Briskey', 'M', '1961-10-22', 'lyon', 'France', 'Vypolzovo', 'Russia', 'pbriskeyc@gravatar.com', '4907654119', 'Business Development', 13, '2020-01-18 02:58:01', '2020-03-10 03:52:29'),
(14, 'Rena', 'Fischer', 'F', '1946-11-08', 'lyon', 'France', 'Rublëvo', 'Russia', 'rfischerd@cloudflare.com', '8213749702', 'Sales', 14, '2020-09-27 19:19:57', '2020-01-26 08:33:17'),
(15, 'Marvin', 'Kohrs', 'M', '1994-10-29', 'Montpellier', 'France', 'Kiev', 'Ukraine', 'mkohrse@house.gov', '4408839776', 'Accounting', 15, '2020-09-07 15:04:03', '2020-08-28 01:35:43'),
(16, 'Mikael', 'Jeavons', 'M', '1986-08-21', 'Montpellier', 'France', 'Moscow', 'Russia', 'mjeavonsf@google.com.au', '6256914358', 'Accounting', 16, '2020-09-07 20:58:25', '2020-05-27 13:59:50'),
(17, 'Zachery', 'Alexander', 'M', '1993-12-29', 'Bilbao', 'Spain', 'Krasnoarmiys’k', 'Ukraine', 'zalexanderg@yahoo.co.jp', '7317137292', 'Business Development', 17, '2020-09-22 02:45:40', '2020-08-22 10:47:02'),
(18, 'Lindie', 'Jeannot', 'F', '1994-02-11', 'Montpellier', 'France', 'Moscow', 'Russia', 'ljeannoth@springer.com', '3209101601', 'Accounting', 18, '2020-02-03 22:49:02', '2020-03-04 09:29:00'),
(19, 'Pauli', 'Stanning', 'F', '1982-11-03', 'Montpellier', 'France', 'Gigant', 'Russia', 'pstanningi@ed.gov', '5358654773', 'Services', 19, '2020-09-12 06:16:32', '2020-01-11 08:17:49'),
(20, 'Hadria', 'Kayser', 'F', '2005-09-08', 'Montpellier', 'France', 'Krasnoarmiys’k', 'Ukraine', 'hkayserj@ustream.tv', '8444649112', 'Sales', 20, '2020-08-09 18:30:14', '2020-05-26 02:50:34'),
(21, 'Amandy', 'Corryer', 'F', '2001-10-28', 'Montpellier', 'France', 'Moscow', 'Russia', 'acorryerk@tamu.edu', '2418062089', 'Support', 21, '2020-07-23 17:06:38', '2020-02-23 06:29:29'),
(22, 'Guillema', 'Davley', 'F', '1973-06-23', 'Montpellier', 'France', 'Kiev', 'Ukraine', 'gdavleyl@umn.edu', '2221861130', 'Legal', 22, '2020-04-19 18:42:50', '2020-07-12 00:20:18'),
(23, 'Gar', 'Sherrington', 'M', '2020-07-29', 'Nice', 'France', 'Moscow', 'Russia', 'gsherringtonm@blogtalkradio.com', '8477895075', 'Accounting', 23, '2020-06-29 06:56:31', '2020-09-13 22:02:38'),
(24, 'Leisha', 'Looks', 'F', '2012-03-23', 'Nice', 'France', 'Krasnoarmiys’k', 'Ukraine', 'llooksn@123-reg.co.uk', '2559511710', 'Support', 24, '2019-12-14 02:21:00', '2019-11-17 14:53:28'),
(25, 'Roselin', 'Phear', 'F', '1990-03-31', 'Nice', 'France', 'Moscow', 'Russia', 'rphearo@1und1.de', '4647520388', 'Engineering', 25, '2020-03-01 20:08:20', '2020-07-17 14:28:43'),
(26, 'Kendra', 'Latehouse', 'F', '2020-08-28', 'Nice', 'France', 'Omsk', 'Russia', 'klatehousep@jiathis.com', '4468367742', 'Legal', 26, '2020-01-16 07:56:21', '2020-06-28 17:01:41'),
(27, 'Hugo', 'Challiner', 'M', '1956-08-17', 'Melbourne', 'USA', 'Kiev', 'Ukraine', 'hchallinerq@rediff.com', '1085849535', 'Engineering', 27, '2020-06-04 20:34:37', '2020-02-17 16:04:34'),
(28, 'Zoe', 'Spata', 'F', '1966-02-17', 'Melbourne', 'USA', 'Kiev', 'Ukraine', 'hchalrq@rediff.com', '7921785462', 'Sales', 28, '2020-01-03 05:49:02', '2020-04-14 15:46:43'),
(29, 'Jessika', 'Jellett', 'F', '2009-09-12', 'Melbourne', 'USA', 'Omsk', 'Russia', 'jjelletts@who.int', '4819642946', 'Training', 29, '2020-02-18 06:18:19', '2020-07-05 17:19:32'),
(30, 'Brodie', 'Tiffin', 'M', '2002-11-05', 'Melbourne', 'USA', 'Minsk', 'Belarus', 'btiffint@51.la', '7111602691', 'Legal', 30, '2020-01-10 02:27:13', '2020-04-04 13:36:43'),
(31, 'Tobie', 'Jaffra', 'M', '1981-01-08', 'Melbourne', 'USA', 'St. Petersburg', 'Russia', 'tjaffrau@ask.com', '5512477711', 'Marketing', 31, '2020-03-29 19:07:46', '2020-06-09 12:21:01'),
(32, 'Terrie', 'Sodory', 'F', '2007-09-26', 'Porto', 'Portugal', 'Moscow', 'Russia', 'tsodoryv@npr.org', '3602317819', 'Training', 32, '2020-08-16 22:03:22', '2020-01-03 22:50:46'),
(33, 'Benedicto', 'Munday', 'M', '1967-03-14', 'Porto', 'Portugal', 'Minsk', 'Belarus', 'bmundayw@com.com', '6776385743', 'Legal', 33, '2020-01-29 20:07:45', '2020-08-19 07:41:27'),
(34, 'Kristo', 'Lehemann', 'M', '1973-08-30', 'Porto', 'Portugal', 'Novopokrovka', 'Ukraine', 'klehemannx@loc.gov', '5823705929', 'Product Management', 34, '2020-07-11 21:16:06', '2019-11-28 22:47:45'),
(35, 'Almire', 'Caldroni', 'F', '1994-08-17', 'Porto', 'Portugal', 'Krasnoarmiys’k', 'Ukraine', 'acaldroniy@altervista.org', '2338366498', 'Human Resources', 35, '2020-04-30 20:03:15', '2020-09-10 16:14:02'),
(36, 'Loren', 'Leaton', 'M', '1976-12-01', 'Porto', 'Portugal', 'St. Petersburg', 'Russia', 'lleatonz@dagondesign.com', '8393487270', 'Services', 36, '2020-06-13 16:22:00', '2020-09-13 15:32:30'),
(37, 'Kimberlee', 'O''Lagene', 'F', '1953-08-20', 'Munich', 'Germany', 'Minsk', 'Belarus', 'kolagene10@hatena.ne.jp', '4173659532', 'Marketing', 37, '2020-05-13 09:44:19', '2020-10-06 22:15:17'),
(38, 'Madelin', 'Howat', 'F', '1982-02-02', 'Ulme', 'Munich', 'Germany', 'Ukraine', 'mhowat11@prweb.com', '6411719823', 'Business Development', 38, '2020-02-23 07:01:21', '2020-03-08 07:44:33'),
(39, 'Mandel', 'Antonowicz', 'M', '1979-01-01', 'Lissabon', 'Portugal', 'St. Petersburg', 'Russia', 'mantonowicz12@seesaa.net', '6979574019', 'Research and Development', 39, '2020-05-21 20:03:55', '2020-05-29 06:05:22'),
(40, 'Jakie', 'Ridout', 'M', '1974-03-13', 'Lissabon', 'Portugal', 'St. Petersburg', 'Russia', 'jridout13@imdb.com', '4384994248', 'Sales', 40, '2020-06-07 21:47:30', '2020-04-16 09:24:15'),
(41, 'Philippe', 'Brandrick', 'F', '1980-05-10', 'Lissabon', 'Portugal', 'Moscow', 'Russia', 'pbrandrick14@smh.com.au', '2443813196', 'Research and Development', 41, '2020-02-02 13:09:20', '2020-01-05 16:44:52'),
(42, 'Barbi', 'Yashnov', 'F', '1956-06-16', 'Luxembourg', 'Luxembourg', 'Krasnoarmiys’k', 'Ukraine', 'byashnov15@imageshack.us', '8829813839', 'Sales', 42, '2020-10-24 13:18:27', '2020-02-16 11:14:29'),
(43, 'Cathee', 'Cristea', 'F', '1963-01-12', 'Luxembourg', 'Luxembourg', 'St. Petersburg', 'Russia', 'ccristea16@yellowpages.com', '8732478662', 'Human Resources', 43, '2020-09-14 08:00:54', '2020-09-08 16:04:58'),
(44, 'Gibbie', 'Lowfill', 'M', '1992-02-26', 'London', 'UK', 'Moscow', 'Russia', 'glowfill17@bloomberg.com', '6488946317', 'Business Development', 44, '2020-03-11 19:22:15', '2020-03-24 16:49:54'),
(45, 'Bax', 'Krolak', 'M', '2012-03-19', 'London', 'UK', 'Moscow', 'Russia', 'bkrolak18@usgs.gov', '1352708421', 'Support', 45, '2020-10-19 04:51:59', '2019-11-08 09:33:48'),
(46, 'Erastus', 'Sneller', 'M', '1985-09-09', 'London', 'UK', 'St. Petersburg', 'Russia', 'esneller19@house.gov', '4533713626', 'Services', 46, '2019-11-02 01:26:31', '2020-09-28 19:02:41'),
(47, 'Modestine', 'McLurg', 'F', '2020-01-27', 'Genova', 'Italy', 'Krasnoarmiys’k', 'Ukraine', 'mmclurg1a@seattletimes.com', '9474867375', 'Legal', 47, '2020-08-18 00:42:14', '2020-08-30 12:20:28'),
(48, 'Tad', 'McPike', 'M', '1948-03-06', 'Genova', 'Italy', 'Minsk', 'Belarus', 'tmcpike1b@nature.com', '2311146721', 'Support', 48, '2020-02-08 21:40:53', '2019-11-22 09:46:40'),
(49, 'Maison', 'Stroton', 'M', '2016-09-19', 'Zagreb', 'Croaty', 'Minsk', 'Belarus', 'mstroton1c@i2i.jp', '7862206494', 'Training', 49, '2020-05-11 22:49:08', '2020-10-13 10:29:46'),
(50, 'Adler', 'Conkey', 'M', '1960-12-07', 'Zagreb', 'Croaty', 'Moscow', 'Russia', 'aconkey1d@google.com.br', '5762956536', 'Research and Development', 50, '2019-12-10 06:51:38', '2019-10-30 13:55:22');

/*
DATA FOR TABLE: cities
*/

INSERT INTO cities (city, country) VALUES 
('Paris', 'France'), ('lyon', 'France'), ('Montpellier', 'France'), ('Nice', 'France'), ('New York', 'USA'),
('Orlando', 'USA'), ('Melbourne', 'USA'), ('Wellington', 'USA'), ('Berlin', 'Germany'), ('Dresden', 'Germany'),
('Munich', 'Germany'), ('Lissabon', 'Portugal'), ('Porto', 'Portugal'), ('Malaga', 'Spain'), ('Madrid', 'Spain'),
('Barcelona', 'Spain'), ('Bilbao', 'Spain'), ('Milan', 'Italy'), ('Genova', 'Italy'), ('Rome', 'Italy'),
('Venice', 'Italy'), ('Luxembourg', 'Luxembourg'), ('London', 'UK'), ('Zagreb', 'Croaty'), ('Warsaw', 'Poland');

/*
DATA FOR TABLE: tags
*/

INSERT INTO tags (id, name) VALUES 
(1, 'Reading'), (2, 'Going to Movies'), (3, 'Fishing'), (4, 'Gardening'), 
(5, 'Walking'), (6, 'Exercise'), (7, 'Listening to Music'), (8, 'Entertaining'), (9, 'Team Sports'),
(10, 'Shopping'), (11, 'Traveling'), (12, 'Golf'), (13, 'Relaxing'), (14, 'Buick'), (15, 'Oldsmobile'),
(16, 'Dodge'), (17, 'GMC'), (18, 'Audi'), (19, 'Mitsubishi'), (20, 'Playing Music'), (21, 'Housework'), 
(22, 'Bicycling'), (23, 'Hiking'), (24, 'Camping'), (25, 'Bowling'), (26, 'Dancing'), (27, 'Theater'), 
(28, 'Billiards'), (29, 'Beach'), (30, 'Volunteer Work');

/*
DATA FOR TABLE: user_tags
*/

INSERT INTO users_tags (user_id, tag_id) VALUES 
(1 , 1), (1 , 3), (1 , 5), (1 , 7), (1 , 13),
(2 , 2), (2 , 4), (2 , 7), (2 , 8), (2 , 26),
(3 , 29), (3 , 23), (3 , 19), (3 , 15), (3 , 3),
(10 , 1), (10 , 19), (10 , 21), (10 , 12), (10 , 26),
(25 , 6), (25 , 16), (25 , 18), (25 , 9), (25 , 11);

/*
DATA FOR TABLE: messages
*/

INSERT INTO messages (id, from_user_id, to_user_id, body, is_read, created_at) VALUES 
(1, 3, 1, 'Et similique ratione eum et dolorum ex similique. Dolor quia vel vitae quia et', 0, '2010-06-10 09:45:38'),
(2, 3, 12, 'Enim iure ut dolor et officiis non voluptatem. ', 1, '1985-04-13 08:32:54'),
(3, 1, 20, 'Repudiandae sint ut et et. Ft suscipit. Corrupti qui asperiores repellat dolor repellat', 0, '2010-11-05 23:44:26'),
(4, 2, 24, 'Delectus harum voluptates u nihil. Sapiente ex sint nihil fuga et exercitationem illum.', 1, '1992-08-26 02:37:11'),
(5, 2, 5, 'Rerum adieum possimus adipisci. Esse dolores et enim ea. Reprehenderit nisi nobis dolor qui.', 1, '1997-06-25 20:47:26'),
(6, 5, 3, 'Molestiaeonsectetur dolore saepofficia provident voluptatem. Consequuntur repudiandae quis rerum.', 0, '2012-06-22 09:11:30'),
(7, 1, 43, 'Deserunt iste distinctio similautem magni id modi fugit iste facere.', 1, '1987-01-20 02:44:38'),
(8, 7, 8, 'Corporis sed non quaue beatae id.', 0, '1978-04-21 02:14:41'),
(9, 9, 9, 'Unde esse dolor com pariatur nostrum porro earum qui itaque.', 0, '1989-01-22 11:45:41'),
 (10, 15, 10, 'Dignissiendis dignissiciunt molestias ut quos id. Mollitia vitae distinctio ad facilis voluptas a iusto.', 0, '1978-06-14 16:05:29'),
(11, 19, 11, 'Aut pariatur perspiciatis. Sequi minima vel quia.', 1, '1976-04-23 01:51:31'),
(12, 45, 3, 'Molestiae ea nulla enim manis illum minus. Ut quo temporibus culpa voluptas voluptas eos pariatur.', 1, '1978-02-03 00:43:33'),
(13, 43, 13, 'Omnis maxim Neque autem facilis occaecati provident. Quos nostrum ipsa aliquid magni.', 1, '1993-03-27 03:27:33'),
(14, 10, 14, 'Voluptas error et optio assumenda quas tenetur. Perspiciatis sint quia debitis veniam est.', 0, '1971-06-16 23:51:57'),
(15, 17, 15, 'In et ratione quos eligendi pea in et. In voluptatem non quia facilis porro corrupti.', 0, '2014-05-22 14:25:20'),
(16, 7, 16, 'Dolorum occaecati porro ex iusto ducimus.', 0, '2012-04-21 01:26:52'),
(17, 5, 17, 'Blanditiis unde et sed esse magni iure alias. eum rerum voluptate. Dolorem velit fuga neque qui.', 0, '1976-12-28 23:29:09');


/*
DATA FOR TABLE: invites
*/

insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (1, 1, 'Brandegee''s Buckwheat', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at', 'Paris', '66 Towne Place', 1, 6, '2020-02-28 20:39:55', '2020-09-12 09:29:36', '2020-10-30 01:28:01');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (2, 2, 'Cynometra', 'varius ut blandit non interdum in ante vestibulum ante ipsum', 'Paris', '58994 Stang Parkway', 2, 9, '2020-10-18 07:20:45', '2020-10-07 06:35:15', '2020-10-25 15:12:17');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (3, 3, 'Bluntlobe Cyanea', 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer', 'Paris', '1 Waubesa Place', 3, 4, '2020-06-15 15:44:23', '2020-09-15 07:25:42', '2020-10-25 01:58:00');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (4, 4, 'Hybrid Beardgrass', 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', 'Paris', '47 Dunning Parkway', 4, 5, '2020-04-11 20:25:22', '2020-10-08 18:56:14', '2020-10-27 11:16:32');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (5, 5, 'Annual Vetchling', 'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 'Paris', '7 Acker Lane', 5, 10, '2020-03-17 20:30:44', '2020-09-27 01:04:32', '2020-10-31 12:09:19');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (6, 6, 'Blisterwort', 'luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 'lyon', '21310 Memorial Junction', 6, 4, '2020-03-18 09:31:54', '2020-10-14 12:08:14', '2020-10-31 04:06:06');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (7, 7, 'Mt. Diablo Jewelflower', 'erat id mauris vulputate elementum nullam varius nulla facilisi cras', 'lyon', '33 Roth Way', 7, 1, '2020-06-03 00:09:39', '2020-09-17 01:48:51', '2020-10-29 09:02:37');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (8, 8, 'Sierra Tansymustard', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis', 'lyon', '0 Briar Crest Parkway', 8, 5, '2019-12-23 00:49:14', '2020-09-18 15:37:52', '2020-10-31 00:38:58');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (9, 9, 'Giant Sequoia', 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', 'lyon', '961 Hoepker Street', 9, 6, '2020-05-18 21:23:06', '2020-10-02 12:28:35', '2020-10-27 05:59:46');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (10, 10, 'Clover', 'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus', 'lyon', '73 Anzinger Circle', 10, 7, '2020-03-18 17:16:09', '2020-09-01 16:54:34', '2020-10-26 06:18:06');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (11, 11, 'Aster', 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', 'lyon', '7160 Londonderry Road', 11, 7, '2020-07-18 10:09:09', '2020-09-16 13:50:28', '2020-10-30 23:58:07');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (12, 12, 'Cyrtandra', 'blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue', 'lyon', '428 Grasskamp Road', 12, 4, '2020-09-20 00:37:01', '2020-10-05 16:17:38', '2020-10-30 15:40:55');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (13, 13, 'Mago', 'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis', 'lyon', '0780 Clove Junction', 13, 9, '2020-03-24 17:38:55', '2020-10-03 17:50:17', '2020-10-31 09:00:47');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (14, 14, 'Meesia Moss', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis', 'lyon', '9448 Melby Crossing', 14, 6, '2020-05-09 07:50:05', '2020-10-22 19:52:17', '2020-10-31 03:06:16');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (15, 15, 'Porter''s Licorice-root', 'placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt', 'Madrid', '05370 Rigney Trail', 15, 10, '2020-04-18 14:02:07', '2020-09-12 08:50:35', '2020-10-28 02:32:19');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (16, 16, 'Manatee River Airplant', 'in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis', 'Madrid', '98 Pierstorff Pass', 16, 5, '2020-02-05 03:27:40', '2020-10-22 00:42:36', '2020-10-29 13:23:39');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (17, 17, 'Hahala', 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', 'Madrid', '679 Crest Line Terrace', 17, 5, '2020-01-06 20:40:55', '2020-10-07 21:31:43', '2020-10-29 00:02:43');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (18, 18, 'Coastal Plain Balm', 'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus', 'Madrid', '88 Kenwood Alley', 18, 8, '2019-11-25 18:11:09', '2020-10-24 16:25:16', '2020-10-27 20:27:47');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (19, 19, 'Bladderfern', 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo', 'Madrid', '598 Forest Trail', 19, 7, '2020-02-10 10:05:11', '2020-09-18 15:11:18', '2020-10-28 12:19:46');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (20, 20, 'Prairie Bluebells', 'consequat metus sapien ut nunc vestibulum ante ipsum primis in', 'Madrid', '54 International Hill', 20, 7, '2019-12-23 14:03:36', '2020-10-14 14:19:07', '2020-10-25 21:57:55');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (21, 21, 'Twotooth Buckwheat', 'vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis', 'Porto', '17504 Vahlen Drive', 21, 5, '2020-02-08 04:26:12', '2020-10-04 01:06:13', '2020-10-30 02:07:44');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (22, 22, 'Bitterwood', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', 'Porto', '4 8th Way', 22, 4, '2020-03-13 04:55:22', '2020-10-15 07:30:57', '2020-10-30 01:44:02');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (23, 23, 'Quinineweed', 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum', 'Porto', '5 4th Park', 23, 2, '2020-07-17 00:16:26', '2020-10-18 18:31:07', '2020-10-28 21:38:36');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (24, 24, 'Bigleaf Lupine', 'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', 'Porto', '64391 Pearson Street', 24, 4, '2019-10-28 12:27:03', '2020-09-16 22:21:33', '2020-10-25 03:56:33');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (25, 25, 'Virginia Dayflower', 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', 'Porto', '024 Knutson Way', 25, 10, '2020-06-04 16:45:47', '2020-10-24 04:58:14', '2020-10-30 14:33:48');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (26, 26, 'Marantochloa', 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac', 'London', '140 East Parkway', 26, 10, '2020-07-10 19:39:20', '2020-10-02 17:41:23', '2020-10-28 04:25:31');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (27, 27, 'Dimeresia', 'tellus nisi eu orci mauris lacinia sapien quis libero nullam sit', 'London', '5194 Sloan Pass', 27, 1, '2020-08-11 08:27:38', '2020-09-09 21:51:22', '2020-10-31 22:06:13');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (28, 28, 'Lateleaf Oak', 'donec semper sapien a libero nam dui proin leo odio porttitor', 'London', '969 Schiller Pass', 28, 5, '2019-12-20 08:00:51', '2020-10-17 14:59:06', '2020-10-25 16:38:06');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (29, 29, 'Eggleaf Silktassel', 'pede justo eu massa donec dapibus duis at velit eu est', 'London', '82752 Warbler Street', 29, 6, '2020-07-17 11:31:41', '2020-10-06 21:16:09', '2020-10-29 06:46:00');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (30, 30, 'False Sand Post Oak', 'duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', 'Berlin', '941 Hollow Ridge Court', 30, 2, '2019-11-03 03:20:10', '2020-09-14 20:57:54', '2020-10-30 01:45:07');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (31, 31, 'Threadleaf Crowfoot', 'curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', 'Berlin', '41158 Morrow Place', 31, 4, '2019-12-09 22:03:42', '2020-09-13 23:45:50', '2020-10-29 08:09:49');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (32, 32, 'Willow Hawthorn', 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur', 'Berlin', '755 Corscot Center', 32, 5, '2020-02-15 20:33:30', '2020-09-28 12:25:31', '2020-10-30 22:11:02');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (33, 33, 'Showy Sunflower', 'duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus', 'Berlin', '51366 Ohio Parkway', 33, 8, '2020-09-09 02:35:42', '2020-09-16 15:31:14', '2020-10-30 13:31:04');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (34, 34, 'Star Of Bethlehem', 'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis', 'Berlin', '5 Washington Drive', 34, 5, '2020-05-26 09:47:19', '2020-09-01 18:30:09', '2020-10-27 11:12:47');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (35, 35, 'Flavoparmelia Lichen', 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', 'Barcelona', '030 Kennedy Center', 35, 7, '2020-04-21 09:25:35', '2020-09-22 14:43:35', '2020-10-27 06:58:41');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (36, 36, 'Smallflower False Foxglove', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien', 'Barcelona', '9 Kings Terrace', 36, 10, '2020-09-05 01:09:15', '2020-09-21 11:33:18', '2020-10-29 08:39:55');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (37, 37, 'Apache Beggarticks', 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio', 'Barcelona', '27 Anzinger Way', 37, 2, '2020-05-02 02:25:15', '2020-10-12 12:02:53', '2020-10-26 08:33:55');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (38, 38, 'Marigold', 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla', 'Barcelona', '067 Bartillon Trail', 38, 1, '2020-02-11 10:48:09', '2020-10-14 18:41:05', '2020-10-27 04:54:38');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (39, 39, 'Recurved Hypnum Moss', 'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut', 'Barcelona', '1073 Menomonie Plaza', 39, 8, '2020-09-03 21:34:45', '2020-09-13 17:37:05', '2020-10-30 03:01:43');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (40, 40, 'Fragrant White Sand Verbena', 'ac nulla sed vel enim sit amet nunc viverra dapibus nulla', 'Barcelona', '668 Manitowish Hill', 40, 4, '2020-01-12 09:39:30', '2020-10-20 20:36:32', '2020-10-28 04:53:22');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (41, 41, 'California Privet', 'ligula vehicula consequat morbi a ipsum integer a nibh in quis', 'Barcelona', '0138 Mitchell Hill', 41, 7, '2020-04-16 10:11:15', '2020-09-16 06:47:41', '2020-10-25 13:44:14');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (42, 42, 'Durum Wheat', 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis', 'Barcelona', '8857 Kingsford Hill', 42, 4, '2020-02-09 04:01:11', '2020-10-21 00:21:41', '2020-10-31 22:28:24');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (43, 43, 'Mexican Ricegrass', 'non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', 'Barcelona', '1542 Autumn Leaf Pass', 43, 6, '2019-11-10 03:44:58', '2020-10-19 17:58:51', '2020-10-26 06:45:29');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (44, 44, 'Sea Rush', 'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis', 'Barcelona', '4676 Claremont Park', 44, 1, '2020-10-20 03:39:51', '2020-10-05 12:27:24', '2020-10-26 18:35:16');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (45, 45, 'Case''s Milkvetch', 'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', 'Montpellier', '4066 Troy Trail', 45, 8, '2019-12-31 11:25:18', '2020-09-21 14:03:35', '2020-10-29 10:47:53');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (46, 46, 'Rice', 'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'Montpellier', '8766 Hoepker Circle', 46, 4, '2020-07-14 17:34:43', '2020-10-23 02:40:52', '2020-10-28 07:57:52');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (47, 47, 'Narrow-leaf Peppermint Gum', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur', 'Montpellier', '5 Sugar Alley', 47, 3, '2020-09-05 23:02:45', '2020-10-15 19:47:36', '2020-10-30 01:30:13');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (48, 48, 'Pygmy Aster', 'tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin', 'Montpellier', '28 Oriole Junction', 48, 10, '2020-05-30 13:40:23', '2020-10-13 05:52:55', '2020-10-26 16:15:25');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (49, 49, 'Desert Mariposa Lily', 'nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel', 'Montpellier', '79 Basil Place', 49, 4, '2020-06-14 16:28:54', '2020-09-10 23:06:45', '2020-10-25 10:37:22');
insert into invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) values (50, 50, 'Mauna Kea Dubautia', 'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus', 'Montpellier', '8235 Mccormick Park', 50, 9, '2020-05-05 20:07:14', '2020-10-01 12:44:00', '2020-10-31 16:03:56');
INSERT INTO invites (id, from_user_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) VALUES 
(51, 12, 'А кто со мной в Амстердам?', 'Ищу веселую и энергичную компанию', 'Paris', '7160 Londonderry Road', 11, 7, '2020-07-18 10:09:09', '2020-11-16 13:50:28', '2020-10-30 23:58:07');

/*
DATA FOR TABLE: tags_to_invites
*/

INSERT INTO tags_to_invites (invite_id, tag_id) VALUES 
(1 , 1), (1 , 3), (1 , 5), (11 , 7), (11 , 13),
(2 , 2), (20 , 4), (20 , 7), (20 , 8), (2 , 26),
(3 , 29), (3 , 23), (3 , 19), (3 , 15), (3 , 3),
(11 , 1), (11, 19), (11 , 21), (10 , 12), (10 , 26),
(21 , 6), (22 , 16), (25 , 18), (25 , 9), (25 , 11),
(31 , 5), (32 , 26), (32 , 25), (33 , 9), (33 , 11),
(26 , 6), (26 , 16), (27 , 18), (28 , 9), (29 , 11);
INSERT INTO tags_to_invites (invite_id, tag_id) VALUES  (51, 11)


/*
DATA FOR TABLE: invites_requests
*/
INSERT INTO invites_requests (from_user_id, to_invite_id, status) VALUES
(1, 3, 'requested'), (5, 1, 'requested'), (6, 3, 'approved'), (10, 2, 'requested'),
(11, 5, 'approved'), (12, 2, 'approved'), (10, 8, 'requested'), (22, 8, 'approved'), 
(11, 6, 'approved'), (10, 5, 'approved'), (15, 23, 'approved'), (9, 7, 'approved'),
(40, 20, 'declined'), (17, 20, 'requested'), (18, 23, 'declined'), (19, 23, 'requested'),
(31, 13, 'requested'), (23, 15, 'declined'), (41, 25, 'requested'), (21, 13, 'declined');

/*
DATA FOR TABLE: invites_comments
*/

INSERT INTO invites_comments (id, from_user_id, to_invite_id, to_user_id, body, created_at) VALUES 
(1, 3, 1, NULL, 'Et similique ratione eum et dolorum ex similique. Dolor quia vel vitae quia et', '2010-06-10 09:45:38'),
(2, 3, 12, 5, 'Enim iure ut dolor et officiis non voluptatem. ', '1985-04-13 08:32:54'),
(3, 1, 20, 3,'Repudiandae sint ut et et. Ft suscipit. Corrupti qui asperiores repellat dolor repellat', '2010-11-05 23:44:26'),
(4, 2, 24, NULL,'Delectus harum voluptates u nihil. Sapiente ex sint nihil fuga et exercitationem illum.', '1992-08-26 02:37:11'),
(5, 2, 5, NULL, 'Rerum adieum possimus adipisci. Esse dolores et enim ea. Reprehenderit nisi nobis dolor qui.', '1997-06-25 20:47:26'),
(6, 5, 3, NULL, 'Molestiaeonsectetur dolore saepofficia provident voluptatem. Consequuntur repudiandae quis rerum.', '2012-06-22 09:11:30'),
(7, 1, 43, 4, 'Deserunt iste distinctio similautem magni id modi fugit iste facere.', '1987-01-20 02:44:38'),
(8, 7, 8, 3,'Corporis sed non quaue beatae id.', '1978-04-21 02:14:41'),
(9, 9, 9, 5, 'Unde esse dolor com pariatur nostrum porro earum qui itaque.', '1989-01-22 11:45:41'),
 (10, 15, 10, 5, 'Dignissiendis dignissiciunt molestias ut quos id. Mollitia vitae distinctio ad facilis voluptas a iusto.', '1978-06-14 16:05:29'),
(11, 19, 11, NULL, 'Aut pariatur perspiciatis. Sequi minima vel quia.', '1976-04-23 01:51:31'),
(12, 45, 3, 3, 'Molestiae ea nulla enim manis illum minus. Ut quo temporibus culpa voluptas voluptas eos pariatur.', '1978-02-03 00:43:33'),
(13, 43, 13, 3, 'Omnis maxim Neque autem facilis occaecati provident. Quos nostrum ipsa aliquid magni.', '1993-03-27 03:27:33'),
(14, 10, 14, NULL, 'Voluptas error et optio assumenda quas tenetur. Perspiciatis sint quia debitis veniam est.', '1971-06-16 23:51:57'),
(15, 17, 15, NULL, 'In et ratione quos eligendi pea in et. In voluptatem non quia facilis porro corrupti.', '2014-05-22 14:25:20'),
(16, 7, 16, 5, 'Dolorum occaecati porro ex iusto ducimus.', '2012-04-21 01:26:52'),
(17, 5, 17, 8, 'Blanditiis unde et sed esse magni iure alias. eum rerum voluptate. Dolorem velit fuga neque qui.', '1976-12-28 23:29:09');

/*
DATA FOR TABLE: professionals 
- будет заполняться автоматически, с вводом описания от пользователя
*/

-- назначим нескольким пользователям статус профессионала в таблице users

UPDATE users 
	SET is_profi = 1 
    WHERE id IN (2, 19, 33, 36, 48);

-- Выведем их данные, чтобы посмотреть, применился ли update

SELECT id, 
	CONCAT(first_name, ' ', last_name) name_surname, 
    profession, 
    is_profi 
FROM users 
    WHERE id IN (2, 19, 33, 36, 48);

-- вставляем значения из users
INSERT INTO professionals (id, profession)
	SELECT id, profession 
		FROM users 
		WHERE is_profi = 1;
        
-- пользователь добавляет в описание свои суперспособности:
UPDATE professionals 
	SET description = 'Силовые тренировки в группах и индивидуально. Занятия в зале и на открытом воздухе' 
    WHERE id = 2;
    
-- тут заполним остальные поля сами, чтобы не было ему так одиноко в таблице:
UPDATE professionals 
	SET description = CASE
		WHEN id = 19 THEN 'Постригу и покрашу любую шевелюру и запилю ногти где угодно в Монпелье' 
		WHEN id = 33 THEN 'Прожженый юрист, приведу в порядок ваши документы. Переведу и составлю досье для подачи на что-нибудь'
		WHEN id = 36 THEN 'Уберу, почищу, помою, вынесу мусор, погуляю с вашей чихухахуа'
		WHEN id = 48 THEN 'Поддержу всех в любом нелегком деле'
    END;
SELECT * FROM professionals;

/*
DATA FOR TABLE: events
*/

INSERT INTO events (id, from_profi_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) VALUES 
(1, 48, 'Прошвырнусь с вами по магазинам, подберу гардероб', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at', 'Genova', '66 Towne Place', 1, 6, '2020-02-28 20:39:55', '2020-09-12 09:29:36', '2020-10-30 01:28:01'),
(2, 33, 'Лекция по основам заполнения анкет на ВНЖ', 'varius ut blandit non interdum in ante vestibulum ante ipsum', 'Porto', '58994 Stang Parkway', 2, 9, '2020-10-18 07:20:45', '2020-10-07 06:35:15', '2020-10-25 15:12:17'),
(3, 36, 'Сегодня при уборке кровати - вынесу мусор бесплатно', 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer', 'Porto', '1 Waubesa Place', 3, 4, '2020-06-15 15:44:23', '2020-09-15 07:25:42', '2020-10-25 01:58:00'),
(4, 2, 'Zumba возле Лувра', 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', 'Paris', '47 Dunning Parkway', 4, 5, '2020-04-11 20:25:22', '2020-10-08 18:56:14', '2020-10-27 11:16:32'),
(5, 33, 'Бесплатно проконсультирую по вопросам натурализации', 'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 'Porto', '7 Acker Lane', 5, 10, '2020-03-17 20:30:44', '2020-09-27 01:04:32', '2020-10-31 12:09:19'),
(6, 48, 'Поездка в Милан','asfgsghsfhs', 'Genova', '21310 Memorial Junction', 6, 4, '2020-03-18 09:31:54', '2020-10-14 12:08:14', '2020-10-31 04:06:06'),
(7, 48, 'Ищу модель для проведения фотосъемки', 'erat id mauris vulputate elementum nullam varius nulla facilisi cras', 'Genova', '33 Roth Way', 7, 1, '2020-06-03 00:09:39', '2020-09-17 01:48:51', '2020-10-29 09:02:37'),
(8, 2, 'STRONG в Aquaboulevard', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis', 'Paris', '0 Briar Crest Parkway', 8, 5, '2019-12-23 00:49:14', '2020-09-18 15:37:52', '2020-10-31 00:38:58'),
(9, 2, 'Йога у Людовика XIV', 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', 'Paris', '961 Hoepker Street', 9, 6, '2020-05-18 21:23:06', '2020-10-02 12:28:35', '2020-10-27 05:59:46'),
(10, 33, 'Детская вечеринка Юный адвокат', 'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus', 'Porto', '73 Anzinger Circle', 10, 7, '2020-03-18 17:16:09', '2020-09-01 16:54:34', '2020-10-26 06:18:06'),
(11, 19, 'Высажу ромашки', 'Покрашу дом и постригу кусты', 'Montpellier', '7160 Londonderry Road', 11, 7, '2020-07-18 10:09:09', '2020-09-16 13:50:28', '2020-10-30 23:58:07');
INSERT INTO events (id, from_profi_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) VALUES 
(12, 19, 'Высажу ромашки2', 'Покрашу дом и постригу кусты', 'Paris', '7160 Londonderry Road', 11, 7, '2020-07-18 10:09:09', '2020-11-16 13:50:28', '2020-10-30 23:58:07');
INSERT INTO events (id, from_profi_id, title, description, city, place, photo_id, number_of_participants, created_at, start_datetime, end_datetime) VALUES 
(13, 2, 'Поедем в Annecy', 'Возьму много людей', 'Paris', '7160 Londonderry Road', 11, 7, '2020-07-18 10:09:09', '2020-11-13 10:50:28', '2020-10-30 23:58:07');


/*
DATA FOR TABLE: events_requestss
*/

INSERT INTO events_requests (from_user_id, to_event_id, status) VALUES
(1, 4, 'requested'), (35, 2, 'requested'), (36, 5, 'approved'), (35, 2, 'paid'),
(41, 5, 'paid'), (12, 2, 'approved'), (10, 6, 'requested'), (5, 8, 'approved'), 
(11, 6, 'approved'), (10, 5, 'paid'), (7, 9, 'approved'), (9, 7, 'paid');

-- найдем города, из которых наши профи
SELECT professionals.id, users.city_of_residence FROM professionals JOIN users ON professionals.id = users.id GROUP BY id ORDER BY id ;

SELECT users.id FROM users JOIN events ON users.city_of_residence = events.city;

/*
DATA FOR TABLE: events_comments
*/

INSERT INTO events_comments (id, from_user_id, to_event_id, to_profi_id, body, created_at) VALUES 
(1, 3, 1, NULL, 'Et similique ratione eum et dolorum ex similique. Dolor quia vel vitae quia et', '2010-06-10 09:45:38'),
(2, 3, 12, 5, 'Enim iure ut dolor et officiis non voluptatem. ', '1985-04-13 08:32:54'),
(3, 1, 20, 3,'Repudiandae sint ut et et. Ft suscipit. Corrupti qui asperiores repellat dolor repellat', '2010-11-05 23:44:26'),
(4, 2, 24, NULL,'Delectus harum voluptates u nihil. Sapiente ex sint nihil fuga et exercitationem illum.', '1992-08-26 02:37:11'),
(5, 2, 5, NULL, 'Rerum adieum possimus adipisci. Esse dolores et enim ea. Reprehenderit nisi nobis dolor qui.', '1997-06-25 20:47:26'),
(6, 5, 3, NULL, 'Molestiaeonsectetur dolore saepofficia provident voluptatem. Consequuntur repudiandae quis rerum.', '2012-06-22 09:11:30'),
(7, 1, 4, NULL, 'Deserunt iste distinctio similautem magni id modi fugit iste facere.', '1987-01-20 02:44:38'),
(8, 7, 8, 3,'Corporis sed non quaue beatae id.', '1978-04-21 02:14:41'),
(9, 9, 9, 5, 'Unde esse dolor com pariatur nostrum porro earum qui itaque.', '1989-01-22 11:45:41'),
 (10, 1, 10, 5, 'Dignissiendis dignissiciunt molestias ut quos id. Mollitia vitae distinctio ad facilis voluptas a iusto.', '1978-06-14 16:05:29'),
(11, 1, 11, NULL, 'Aut pariatur perspiciatis. Sequi minima vel quia.', '1976-04-23 01:51:31');
/*
DATA FOR TABLE: tags_to_events
*/
INSERT INTO tags_to_events (event_id, tag_id) VALUES 
(1, 10), (1, 5), (1, 8), (2, 1), (2, 30),
(3, 30), (3, 12), (3, 21), (4, 6), (4, 8),
(4, 9), (4, 26), (5, 30), (5, 1), (6, 5),
(6, 11), (7, 8), (8, 6), (8, 9), (9, 4),
(9, 6), (9, 13), (10, 8), (11, 4), (11, 21);
INSERT INTO tags_to_events (event_id, tag_id) VALUES (13, 11);

/*
DATA FOR TABLE: photos
*/

INSERT INTO photos (id, user_id, invite_id, event_id, description, filename) VALUES 
('1', '1', '1', NULL, 'Mollitia non dolores blanditiis ullam. Ut iusto non magnam. Quia est tempore excepturi fugiat provident et.', 'http://lorempixel.com/640/480/1.jpg'),
('2', '1', '1', null , 'Repudiandae ipsam sint corrupti vero animi modi. Quaerat libero natus odio eligendi voluptas voluptatem. Iste assumenda sed rerum corporis.', 'http://lorempixel.com/640/480/2.jpg'),
('3', '1', '1', null,'Iure sit adipisci non cumque. Fugiat quasi perferendis magnam maxime maxime. Iure tempora a vel tempore dignissimos pariatur. Explicabo ut non qui iusto quia.', 'http://lorempixel.com/640/480/3.jpg'),
('5', '5', '2', null,'Sint esse perferendis fuga aut dignissimos. Reiciendis reprehenderit sapiente nemo cupiditate. Inventore qui reprehenderit nostrum quo omnis qui voluptatem. Sequi aspernatur non ipsum itaque assumenda et.', 'http://lorempixel.com/640/480/4.jpg'),
('6', '5', '2', null,'Non sequi deleniti nulla qui molestiae dolores. Earum adipisci deserunt et ut. Cumque nulla eveniet animi velit omnis. Eum expedita occaecati eveniet consequatur.', 'http://lorempixel.com/640/480/5.jpg'),
('7', '5', '2', null,'Ut voluptatibus cupiditate quia architecto minima. Ut maxime debitis natus similique praesentium odio distinctio. Ut fugit doloremque fugit animi quo laboriosam neque.', 'http://lorempixel.com/640/480/6.jpg'),
('8', '3', '3', null,'Omnis optio rerum id sit. Aliquam itaque architecto saepe quam. Qui et suscipit quis et fugiat quia rerum. Dignissimos nostrum eos eaque quae et nisi.', 'http://lorempixel.com/640/480/7.jpg'),
('9', '3', '3', null,'Natus iste perferendis qui sequi exercitationem occaecati. Aut incidunt odit accusantium quos. Vel architecto voluptatem enim officiis', 'http://lorempixel.com/640/480/8.jpg'),
('10', '3', '3', null, 'Ut facere deserunt et. Recusandae nulla minus accusamus laudantium. Vero et rerum quaerat error est vel ullam doloremque.', 'http://lorempixel.com/640/480/9.jpg'),
('11', '13', '4', null, 'Voluptatibus porro nemo eveniet ut recusandae. Esse eaque earum eligendi. Id quis velit ex laudantium. Sunt omnis harum provident.', 'http://lorempixel.com/640/480/10.jpg'),
('12', '15', '5', null,'Eligendi ut distinctio quia quisquam aut. Est unde voluptatem inventore occaecati. Tempore sapiente dolorum sit doloremque nostrum fuga sed. Consequatur et quam repudiandae.', 'http://lorempixel.com/640/480/11.jpg'),
('13', '13', null, '1', 'Qui dicta et nihil omnis. Vel consequuntur molestiae magnam accusamus molestiae. Commodi maiores natus rerum non in', 'http://lorempixel.com/640/480/12.jpg'),
('14', '13', null, '1','Quidem tenetur sit nulla. Ex dolorem veritatis architecto iste et. Sit magnam et aperiam ratione molestias praesentium ipsum. Esse laborum et quia praesentium et.', 'http://lorempixel.com/640/480/13.jpg'),
('15', '13', null,'1','Beatae exercitationem eos libero hic. Est sapiente sint dolorem optio quia dolore corporis. Eos ut similique aut harum placeat dolore quidem.', 'http://lorempixel.com/640/480/14.jpg'),
('16', '16', null, 1, 'Neque qui enim veniam impedit similique. Commodi id nisi accusamus est sed est minima nam', 'http://lorempixel.com/640/480/15.jpg'),
('17', '17', '6', null, 'Velit est aut occaecati ut aut. Eum voluptate maxime tempora quia enim impedit quae natus. Et aperiam nostrum eos. Minima soluta vitae laborum natus possimus in repellat.', 'http://lorempixel.com/640/480/16.jpg'),
('18', '17', '6', null, 'Quo sint vero et ullam totam sint numquam. Natus fuga repudiandae eaque nihil mollitia. Veritatis ut et et natus dolorum. Dolores temporibus quis voluptate beatae quia.', 'http://lorempixel.com/640/480/17.jpg'),
('19', '19', null, '2','Quis est provident ipsum sit. Enim quaerat expedita optio debitis et dolor soluta at. Unde a magnam consequatur aut eos.', 'http://lorempixel.com/640/480/18.jpg'),
('20', '20', '7', null, 'Exercitationem reprehenderit non ducimus dolores cum voluptas quae. Praesentium eius culpa quis dolore necessitatibus est', 'http://lorempixel.com/640/480/19.jpg'),
('21', '19', null, '2', 'Impedit repudiandae nostrum et odio eligendi soluta unde. Et aut fuga alias veniam. Nostrum et nulla ut qui', 'http://lorempixel.com/640/480/20.jpg'),
('22', '22', '8', null, 'Repellat id dolor cumque veniam ut suscipit laborum soluta. Soluta et vel recusandae vel. Laboriosam reiciendis magnam ut nulla.', 'http://lorempixel.com/640/480/21.jpg'),
('23', '22', '8', null, 'Expedita vero consequatur unde dignissimos in delectus.', 'http://lorempixel.com/640/480/22.jpg'),
('24', '24', null, '3','Aut quam amet sit illum. Nulla magnam aperiam fuga labore eum nihil', 'http://lorempixel.com/640/480/23.jpg'),
('25', '25', '9', null, 'Consectetur enim molestias autem ratione aspernatur et rerum', 'http://lorempixel.com/640/480/24.jpg'),
('26', '26', '10', null, 'Quaerat voluptatem blanditiis deleniti quia ut magnam aspernatur ea', 'http://lorempixel.com/640/480/25.jpg'),
('27', '27', null, '4', 'Recusandae sit molestiae atque minima sunt corrupti quaerat', 'http://lorempixel.com/640/480/26.jpg'),
('28', '27', null, '4', 'Molestias est quis culpa qui. Omnis vitae itaque suscipit nesciunt laboriosam tenetur ut.', 'http://lorempixel.com/640/480/27.jpg'),
('29', '29', null, '5', 'Repellendus temporibus ut et inventore quo omnis assumenda, Quidem sunt rem sint incidunt', 'http://lorempixel.com/640/480/28.jpg'),
('30', '29', null, '5', 'Autem optio laborum ut blanditiis repellendus dolores liInventore Perferendis natus sit incidunt voluptatibus eos ducimus rem at', 'http://lorempixel.com/640/480/29.jpg');









