#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'quod', '2020-03-20 13:57:00', '2016-12-16 17:32:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'qui', '2013-05-24 23:47:11', '2014-04-18 20:23:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'est', '2014-11-06 04:27:48', '2014-03-10 14:45:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'deserunt', '2019-09-19 09:06:00', '2014-02-09 18:11:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'non', '2020-05-27 08:49:10', '2015-09-05 11:47:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'sunt', '2013-03-16 18:06:42', '2020-01-04 05:26:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'exercitationem', '2016-03-15 07:13:09', '2015-04-30 08:22:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'itaque', '2011-08-08 07:59:27', '2016-07-15 15:27:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'accusamus', '2015-07-31 21:36:08', '2019-04-05 14:43:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'sapiente', '2016-05-26 12:40:37', '2016-11-19 19:21:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'animi', '2019-09-04 03:08:37', '2010-09-12 07:53:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'eligendi', '2019-12-27 20:53:21', '2013-08-31 08:49:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'officiis', '2018-01-31 13:57:58', '2017-11-21 14:03:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'quasi', '2012-12-25 09:37:47', '2011-02-05 22:00:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'et', '2019-11-08 08:01:37', '2017-11-19 22:48:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'ea', '2013-12-19 14:29:06', '2012-09-15 20:07:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'magnam', '2011-06-24 06:25:03', '2014-01-08 21:24:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'aperiam', '2011-11-13 07:00:10', '2017-07-28 06:10:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'ut', '2017-09-22 22:57:32', '2016-07-08 16:53:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'dolorem', '2018-10-04 12:48:18', '2019-05-18 01:20:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'cum', '2011-01-13 23:29:24', '2018-05-02 14:20:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'rerum', '2018-06-15 22:26:42', '2013-02-23 20:15:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'earum', '2017-10-14 07:24:35', '2015-12-03 21:39:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'excepturi', '2013-10-07 14:57:46', '2015-09-13 00:03:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'necessitatibus', '2010-10-06 08:56:31', '2013-04-02 09:37:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'nostrum', '2013-05-09 12:05:55', '2011-03-03 07:12:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'modi', '2012-09-12 19:29:21', '2013-11-24 18:15:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'quas', '2014-02-23 21:52:07', '2018-11-30 00:13:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'ipsum', '2011-01-06 23:25:32', '2016-10-29 18:06:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'molestiae', '2019-05-01 18:34:47', '2013-10-23 04:53:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'blanditiis', '2020-03-02 16:22:08', '2016-10-11 10:51:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'maxime', '2019-03-07 05:48:57', '2013-03-27 14:51:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'suscipit', '2017-08-09 11:04:40', '2013-03-06 01:46:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'cumque', '2019-03-28 14:04:32', '2013-03-27 16:59:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'dolores', '2010-08-13 01:59:16', '2013-09-30 14:04:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'impedit', '2018-11-16 01:45:56', '2013-11-11 01:43:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'id', '2015-07-11 05:31:03', '2012-03-14 22:14:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'molestias', '2013-10-23 03:42:08', '2017-10-02 11:41:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'recusandae', '2015-02-14 21:10:19', '2013-12-09 05:16:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'voluptatem', '2016-06-14 05:30:13', '2013-06-21 22:06:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'totam', '2015-04-26 14:38:15', '2018-03-27 23:53:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'dolorum', '2011-10-24 04:06:01', '2010-11-28 22:58:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'adipisci', '2014-04-02 11:17:25', '2019-10-30 22:00:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'rem', '2014-03-12 14:13:08', '2015-08-25 00:32:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'consequatur', '2015-01-26 12:01:41', '2018-03-02 16:01:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'autem', '2020-06-12 17:15:02', '2015-07-06 18:53:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'provident', '2013-03-28 15:25:33', '2018-12-15 05:50:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'illo', '2017-06-03 01:27:26', '2010-10-26 22:36:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'sed', '2016-08-20 15:47:43', '2020-01-15 16:12:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'quos', '2016-01-13 19:10:29', '2019-05-10 09:48:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'sequi', '2017-01-08 00:38:23', '2016-06-21 18:52:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'temporibus', '2019-10-13 09:26:48', '2013-07-15 15:32:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'aut', '2019-12-01 21:17:30', '2018-02-11 00:08:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'incidunt', '2018-12-30 21:59:13', '2013-12-20 13:11:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'nemo', '2012-07-13 11:33:26', '2011-06-17 02:41:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'voluptate', '2010-07-31 02:23:41', '2017-12-08 00:34:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'consectetur', '2019-06-25 23:58:53', '2018-10-25 23:56:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'iure', '2016-06-09 15:27:28', '2016-04-07 22:34:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'voluptatibus', '2016-09-13 20:06:13', '2018-04-18 06:24:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'quis', '2017-11-21 20:56:44', '2018-07-31 09:11:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'omnis', '2017-12-25 00:06:55', '2016-12-25 11:18:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'fugiat', '2016-11-12 08:17:03', '2015-09-14 19:24:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'sint', '2018-02-24 20:27:20', '2011-06-09 12:04:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'dicta', '2018-08-07 15:03:34', '2019-05-25 06:37:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'soluta', '2010-09-02 11:29:09', '2014-07-30 03:18:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'hic', '2014-09-30 23:13:47', '2013-12-26 12:12:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'vero', '2019-03-06 01:22:31', '2020-03-24 07:03:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'unde', '2018-09-21 06:24:54', '2016-01-20 15:07:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'esse', '2012-03-13 16:53:34', '2013-02-25 11:21:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'consequuntur', '2012-06-24 17:39:41', '2018-04-04 08:15:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'numquam', '2011-02-06 03:44:58', '2013-09-11 14:02:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'voluptas', '2019-06-20 07:34:30', '2019-12-30 15:22:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'optio', '2013-12-13 06:25:24', '2018-10-10 03:28:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'in', '2019-11-10 03:58:37', '2020-06-01 16:11:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'corporis', '2015-06-13 10:25:02', '2018-01-30 04:04:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'ad', '2016-01-15 02:55:15', '2014-05-19 23:23:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'commodi', '2010-09-19 15:12:53', '2014-10-04 12:20:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'corrupti', '2011-10-11 01:58:44', '2013-04-14 22:47:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'nulla', '2011-07-09 22:04:28', '2017-10-28 13:11:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'repellat', '2019-08-17 00:53:36', '2015-01-16 07:12:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'perferendis', '2013-11-08 07:36:29', '2017-08-28 13:18:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'error', '2018-06-02 03:03:04', '2020-05-09 05:40:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'ratione', '2016-01-11 11:12:49', '2017-06-19 11:10:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'quo', '2020-04-13 16:48:58', '2013-04-01 00:00:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'delectus', '2015-01-17 20:20:55', '2013-12-14 10:16:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'tempora', '2017-08-09 19:27:07', '2016-11-20 17:28:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'quia', '2010-12-18 11:46:16', '2015-10-14 18:28:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'ullam', '2012-12-11 03:18:32', '2014-05-29 15:31:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'quibusdam', '2019-11-01 03:18:47', '2014-07-25 01:03:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'iusto', '2018-05-17 08:55:10', '2018-05-04 09:27:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'alias', '2018-12-23 06:06:04', '2011-12-28 10:07:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'ducimus', '2015-04-13 22:00:57', '2018-04-05 02:12:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'quidem', '2015-12-08 20:24:15', '2011-02-26 12:48:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'eaque', '2015-06-19 21:48:27', '2015-08-13 17:14:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'eos', '2019-02-13 22:44:43', '2012-10-19 07:12:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'aliquam', '2016-08-03 09:48:44', '2014-11-23 10:30:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'quae', '2020-05-08 02:07:53', '2016-03-24 12:31:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'sit', '2020-06-03 06:47:15', '2018-02-09 10:37:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'deleniti', '2019-06-23 04:11:41', '2014-10-31 08:07:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'laboriosam', '2014-05-09 08:11:04', '2012-09-09 06:37:25');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 50, '2016-10-05 08:29:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 76, '2012-05-24 17:23:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 87, '2016-06-08 08:35:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 76, '2011-11-12 08:58:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 86, '2020-05-30 17:24:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 9, '2012-03-29 12:23:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 30, '2012-02-15 03:20:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 34, '2012-01-15 09:47:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 58, '2012-04-20 07:20:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 50, '2020-06-16 17:52:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 76, '2016-07-25 00:20:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 85, '2017-06-01 13:31:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 87, '2011-08-01 10:51:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 91, '2014-08-14 00:57:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2015-12-08 10:36:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 13, '2011-05-15 10:46:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 80, '2014-01-22 08:36:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 65, '2010-10-28 14:35:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 58, '2019-12-02 06:40:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 69, '2014-02-11 17:44:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 12, '2010-08-26 13:56:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 42, '2016-01-20 05:53:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 29, '2019-06-18 00:57:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 76, '2016-10-28 06:54:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 93, '2013-10-24 17:31:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 2, '2015-01-26 18:45:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 17, '2019-09-17 16:09:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 39, '2018-07-22 15:32:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 83, '2016-02-25 06:08:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 16, '2017-05-14 14:54:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 29, '2013-04-07 11:19:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 30, '2013-09-24 07:15:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 19, '2011-06-24 12:33:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 55, '2017-09-14 19:26:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 38, '2016-05-17 04:14:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 56, '2014-03-22 11:22:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 81, '2020-05-09 10:11:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 13, '2014-10-04 07:02:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 65, '2014-03-14 01:04:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 14, '2020-05-08 19:33:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 34, '2018-12-30 06:33:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 46, '2018-02-10 00:19:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 18, '2014-08-22 02:06:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 47, '2016-09-16 23:47:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 52, '2016-11-21 14:37:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 70, '2014-02-19 20:29:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 1, '2015-08-12 21:08:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 36, '2012-04-24 00:59:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 10, '2014-05-12 06:47:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 33, '2016-06-20 15:37:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 45, '2014-08-09 06:17:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 68, '2013-03-29 10:07:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 95, '2012-05-27 12:14:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 40, '2011-08-13 13:26:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 60, '2015-11-13 10:29:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 44, '2013-05-05 05:11:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 33, '2019-03-01 02:01:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 39, '2018-06-08 01:59:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 88, '2014-03-16 04:03:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 6, '2013-02-05 07:26:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 24, '2012-05-16 03:57:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 39, '2018-03-19 07:03:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 46, '2017-09-17 05:06:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 85, '2016-09-27 09:26:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 40, '2016-02-17 23:01:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 71, '2013-07-30 12:04:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 16, '2019-01-09 03:04:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 42, '2019-08-30 14:05:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 54, '2013-04-08 05:51:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 96, '2019-09-20 11:29:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 6, '2018-07-11 21:00:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 72, '2014-06-19 10:01:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 24, '2016-04-11 20:20:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '2016-09-21 05:23:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 50, '2017-07-12 14:27:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 15, '2010-12-09 12:55:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 41, '2016-09-02 09:04:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 87, '2013-02-12 14:44:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 34, '2012-01-19 15:57:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 96, '2017-09-19 14:21:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 4, '2012-08-04 02:34:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 28, '2012-01-23 10:19:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 58, '2014-09-16 03:56:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 98, '2013-08-27 20:42:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 84, '2016-05-12 05:59:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 25, '2013-01-02 02:34:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 93, '2014-11-07 16:19:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 79, '2018-08-22 17:20:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 100, '2017-02-23 13:38:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 22, '2018-08-01 23:05:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 32, '2012-11-14 17:06:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 53, '2017-07-08 08:35:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 47, '2017-06-04 01:52:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 65, '2014-12-28 13:12:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 74, '2019-07-20 09:46:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 53, '2017-11-04 12:44:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 92, '2011-11-27 08:20:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 77, '2011-12-07 03:41:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 83, '2013-09-25 21:57:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 95, '2018-12-09 12:30:56');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 24, 3, '2012-07-14 04:21:22', '2011-08-07 06:08:07', '2014-09-13 21:25:50', '2016-11-22 12:43:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 34, 1, '2017-05-13 01:13:28', '2016-08-20 06:48:46', '2014-09-23 14:29:52', '2011-07-24 17:22:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 59, 7, '2017-05-18 06:13:57', '2011-12-31 15:22:44', '2011-07-14 07:10:29', '2012-04-02 07:02:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 19, 10, '2013-09-28 23:53:40', '2014-03-26 04:13:05', '2019-12-07 15:37:37', '2012-11-15 10:49:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 18, 1, '2020-05-02 08:04:46', '2020-03-03 23:38:40', '2011-06-17 04:01:50', '2017-04-29 14:54:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 51, 6, '2018-04-09 19:33:13', '2013-10-19 01:49:29', '2018-04-03 06:09:37', '2015-05-21 00:45:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 87, 9, '2018-12-24 17:45:30', '2016-07-08 16:35:46', '2018-11-05 06:57:31', '2015-01-06 13:35:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 89, 8, '2014-01-31 18:22:04', '2014-04-17 00:51:06', '2014-03-03 23:42:38', '2016-12-16 11:39:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 99, 1, '2017-05-29 01:59:50', '2012-06-18 04:47:49', '2019-05-25 14:39:25', '2017-06-11 05:57:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 31, 9, '2019-07-16 21:27:11', '2012-08-14 18:14:48', '2017-11-03 15:33:21', '2017-04-21 20:03:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 84, 1, '2012-01-25 09:00:17', '2010-08-02 15:52:04', '2017-09-01 04:24:42', '2013-10-15 04:53:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 41, 7, '2016-11-06 06:06:34', '2020-02-28 06:09:12', '2015-04-06 15:42:31', '2011-01-24 13:25:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 45, 9, '2014-08-31 21:53:57', '2019-12-13 12:06:13', '2017-11-13 05:49:36', '2016-05-21 06:35:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 87, 4, '2016-04-05 12:04:46', '2011-06-13 21:07:08', '2013-08-17 01:23:04', '2011-10-16 04:58:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 5, 1, '2012-02-04 05:47:13', '2011-06-08 04:11:11', '2011-12-15 07:25:52', '2010-09-23 23:38:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 58, 8, '2017-12-11 03:38:05', '2012-09-12 21:31:26', '2016-04-13 08:27:02', '2014-09-25 14:56:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 99, 6, '2020-01-10 09:51:23', '2011-08-30 16:23:06', '2016-06-13 12:44:01', '2019-09-11 01:35:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 12, 8, '2014-09-03 11:19:56', '2017-07-16 19:40:46', '2013-05-20 03:12:11', '2016-02-07 01:58:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 88, 2, '2016-12-26 02:27:24', '2013-06-03 13:43:53', '2011-08-24 04:37:05', '2019-03-05 14:03:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 97, 6, '2013-01-16 02:44:53', '2011-05-21 12:28:16', '2015-06-27 14:11:26', '2019-05-20 17:48:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 46, 10, '2015-10-31 16:01:18', '2019-01-21 10:46:34', '2015-11-11 01:58:13', '2020-03-18 10:48:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 28, 2, '2013-10-10 14:45:13', '2015-04-10 08:03:17', '2014-10-02 16:26:50', '2013-02-06 10:20:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 84, 3, '2015-12-18 11:34:21', '2016-10-15 14:09:09', '2018-04-27 00:01:48', '2014-02-04 19:36:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 81, 9, '2018-02-17 07:42:41', '2011-10-24 21:01:29', '2018-01-21 12:32:08', '2011-02-24 22:13:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 17, 2, '2014-01-02 02:43:23', '2019-10-02 22:31:07', '2012-11-11 07:26:00', '2017-02-25 06:45:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 21, 7, '2010-12-02 02:34:08', '2016-02-15 06:09:52', '2013-05-23 20:59:55', '2013-01-22 18:46:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 35, 9, '2014-06-17 11:35:49', '2012-05-11 12:20:31', '2012-07-29 05:34:44', '2019-01-24 17:27:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 81, 7, '2016-02-04 20:13:56', '2020-03-13 04:54:29', '2013-04-29 04:19:28', '2014-10-17 16:50:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 41, 10, '2018-03-26 16:52:42', '2013-03-28 19:53:41', '2016-02-05 15:39:55', '2018-12-27 19:27:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 43, 7, '2014-05-29 17:05:21', '2012-06-15 20:21:07', '2016-09-29 21:36:46', '2012-06-08 14:35:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 15, 5, '2012-10-09 11:41:35', '2019-11-25 08:21:46', '2016-04-04 14:38:13', '2013-07-31 18:37:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 27, 5, '2016-06-14 23:26:14', '2015-07-10 16:37:43', '2018-01-05 19:53:00', '2013-02-03 15:23:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 3, '2015-04-05 09:01:47', '2010-11-04 18:44:47', '2015-10-09 11:08:40', '2019-02-07 01:22:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 5, 7, '2013-04-09 02:42:39', '2012-06-17 02:19:24', '2018-09-06 13:20:55', '2010-09-11 11:58:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 45, 8, '2016-07-31 09:23:46', '2016-02-18 17:18:21', '2019-12-27 02:09:18', '2015-03-10 03:38:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 13, 8, '2015-10-23 17:32:42', '2019-02-19 17:44:00', '2013-11-02 12:53:50', '2020-02-20 09:18:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 38, 2, '2012-09-01 08:03:56', '2010-12-27 20:10:32', '2015-07-10 05:43:56', '2017-12-11 04:34:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 50, 6, '2020-05-28 17:47:07', '2015-02-16 18:48:55', '2013-02-15 05:55:48', '2016-01-07 08:52:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 39, 9, '2016-02-13 22:22:09', '2019-12-22 17:54:10', '2011-05-21 01:16:56', '2020-01-08 10:55:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 56, 3, '2016-06-30 05:35:26', '2016-05-15 10:50:02', '2012-04-29 13:39:36', '2018-11-30 10:47:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 35, 3, '2015-02-03 16:23:44', '2010-11-05 07:40:06', '2012-06-20 05:41:16', '2013-02-13 08:26:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 57, 6, '2010-12-29 10:43:52', '2018-10-13 20:36:40', '2019-08-23 14:24:39', '2020-01-13 11:40:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 25, 6, '2013-10-28 05:33:52', '2012-09-07 08:21:37', '2012-09-01 03:33:39', '2013-10-26 10:20:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 76, 9, '2019-12-30 22:56:36', '2017-05-02 10:30:00', '2019-01-24 03:36:22', '2013-01-27 13:20:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 88, 2, '2019-03-05 23:45:58', '2020-01-24 05:16:49', '2015-11-16 04:15:06', '2015-10-04 00:33:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 33, 7, '2012-02-03 12:11:44', '2016-01-15 23:07:23', '2012-07-16 01:03:23', '2014-06-20 21:41:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 83, 5, '2017-12-11 01:54:10', '2015-07-03 09:58:34', '2020-01-11 06:12:26', '2012-08-30 00:09:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 4, 2, '2017-05-14 16:55:50', '2018-11-07 10:06:30', '2017-04-10 17:03:50', '2011-05-28 12:18:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 98, 9, '2016-01-01 02:34:26', '2014-08-21 11:16:52', '2013-07-13 21:52:36', '2018-01-29 07:05:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 40, 2, '2016-07-26 20:06:20', '2015-12-15 08:47:05', '2018-08-02 21:13:02', '2020-07-04 20:39:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 80, 2, '2019-09-19 03:31:04', '2013-01-07 15:57:04', '2012-07-09 16:27:53', '2011-06-22 05:16:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 61, 4, '2017-08-04 20:34:20', '2015-08-21 19:50:51', '2017-04-07 07:57:06', '2016-04-11 08:45:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 76, 6, '2011-03-24 13:26:59', '2016-04-26 05:58:20', '2013-08-05 02:50:40', '2011-01-03 08:55:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 30, 7, '2019-05-14 05:34:42', '2015-08-07 16:18:24', '2011-07-26 13:31:56', '2015-08-23 21:29:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 46, 9, '2016-05-02 09:28:58', '2010-10-09 23:14:45', '2018-12-30 15:11:24', '2017-06-09 04:31:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 40, 1, '2012-03-15 07:43:04', '2013-05-17 09:18:38', '2020-03-01 23:13:57', '2016-11-22 16:57:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 33, 4, '2016-01-11 17:40:54', '2015-10-07 15:12:26', '2011-06-25 13:11:22', '2014-12-18 04:29:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 23, 5, '2011-08-19 03:48:30', '2018-12-02 18:19:07', '2016-11-12 01:38:24', '2017-10-07 20:42:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 44, 1, '2018-01-18 08:10:36', '2012-03-01 19:33:46', '2014-12-06 09:44:20', '2016-04-11 08:56:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 95, 4, '2014-12-07 21:16:19', '2018-04-29 04:42:19', '2010-07-25 06:36:19', '2014-08-28 08:59:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 84, 8, '2014-07-29 00:01:17', '2016-08-22 21:13:13', '2011-09-13 15:31:59', '2011-09-07 18:14:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 91, 4, '2019-05-31 10:42:18', '2013-01-01 20:51:17', '2013-02-08 16:11:29', '2014-12-23 06:08:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 62, 1, '2016-04-28 07:06:27', '2014-08-20 03:46:26', '2017-08-07 17:05:26', '2011-02-09 12:24:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 4, 1, '2012-04-20 01:53:04', '2017-03-31 05:40:18', '2018-05-05 17:18:30', '2012-06-03 07:28:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 20, 10, '2013-02-22 02:09:29', '2018-07-23 19:49:25', '2011-02-09 10:48:30', '2013-01-21 01:29:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 47, 2, '2011-01-28 22:39:39', '2011-02-20 11:31:33', '2014-09-15 19:07:32', '2018-11-07 23:34:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 71, 8, '2017-06-22 09:11:12', '2019-11-23 18:50:07', '2013-02-15 16:01:07', '2010-10-06 03:27:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 15, 4, '2011-01-02 14:43:23', '2011-05-11 23:51:06', '2010-11-05 03:36:12', '2011-05-09 16:14:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 8, 3, '2018-03-08 20:23:09', '2020-03-08 00:08:46', '2014-03-24 16:52:22', '2011-02-15 12:03:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 98, 10, '2012-09-17 18:41:25', '2016-10-10 22:32:57', '2018-09-27 10:17:30', '2018-02-15 20:27:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 77, 8, '2012-08-31 11:24:22', '2017-03-19 14:36:46', '2019-10-27 02:52:20', '2011-12-09 10:06:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 58, 9, '2020-05-06 05:09:47', '2016-01-13 21:05:26', '2018-04-17 15:02:31', '2012-01-07 05:02:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 6, 5, '2018-10-18 04:01:14', '2011-11-09 01:13:14', '2013-03-22 17:36:14', '2017-01-23 06:39:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 23, 4, '2015-09-13 22:43:24', '2016-03-12 14:51:57', '2012-05-05 21:04:09', '2018-06-21 18:59:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 62, 3, '2013-03-26 05:23:49', '2013-04-10 02:40:31', '2013-11-03 15:16:44', '2019-08-03 13:04:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 51, 10, '2015-03-24 16:44:46', '2018-08-07 04:00:31', '2014-05-14 15:58:45', '2015-11-03 09:03:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 9, 2, '2012-04-26 21:23:19', '2020-03-16 15:27:08', '2013-02-20 09:21:13', '2017-04-09 07:33:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 12, 4, '2019-10-16 08:51:12', '2019-01-06 03:45:44', '2019-08-16 09:23:21', '2015-12-18 20:39:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 39, 1, '2011-08-10 17:39:59', '2020-06-13 18:06:28', '2012-11-11 10:37:14', '2017-10-17 17:50:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 6, 3, '2020-04-27 04:51:44', '2010-09-27 08:08:41', '2017-11-25 22:18:24', '2019-06-21 17:42:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 30, 6, '2017-09-25 09:39:44', '2012-07-10 17:33:13', '2018-08-08 23:48:35', '2019-12-28 18:04:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 30, 3, '2012-11-07 05:10:06', '2012-03-21 06:36:22', '2018-11-18 08:46:22', '2014-12-15 22:14:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 63, 8, '2015-06-01 23:21:36', '2013-10-31 06:49:41', '2016-09-06 07:33:30', '2013-04-21 18:53:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 11, 4, '2016-02-08 16:05:38', '2016-02-19 07:22:55', '2016-03-05 20:47:00', '2012-01-14 00:24:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 28, 5, '2017-11-22 16:52:44', '2015-09-16 18:03:57', '2020-02-16 09:47:12', '2010-10-21 17:31:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 11, 10, '2020-03-08 12:03:09', '2020-06-03 10:02:47', '2012-09-07 08:25:41', '2013-02-01 13:32:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 7, '2019-03-30 17:03:05', '2015-02-05 06:04:46', '2012-03-21 19:56:16', '2012-01-29 07:53:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 58, 8, '2011-06-22 16:41:46', '2014-03-25 21:06:53', '2018-04-29 12:17:26', '2013-09-09 13:53:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 85, 5, '2016-03-13 06:42:08', '2013-10-28 11:08:25', '2016-08-16 11:06:08', '2012-04-30 09:01:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 7, 6, '2020-03-15 10:06:53', '2015-12-21 06:40:05', '2018-11-19 17:14:11', '2017-04-27 13:10:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 12, 10, '2016-02-12 18:29:54', '2018-08-28 11:21:04', '2017-09-25 13:42:05', '2012-11-20 19:43:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 32, 5, '2016-05-04 14:49:21', '2019-01-30 22:02:26', '2016-12-30 08:17:27', '2015-08-15 22:24:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 73, 5, '2011-10-31 22:57:22', '2018-05-07 15:21:05', '2015-08-18 04:58:08', '2019-02-21 23:17:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 30, 10, '2020-02-05 15:52:31', '2020-02-27 05:41:19', '2017-01-21 11:56:30', '2014-06-19 07:18:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 48, 3, '2020-05-21 23:51:06', '2013-03-24 19:39:02', '2020-06-12 04:55:02', '2011-12-13 06:06:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 60, 5, '2014-02-13 01:26:55', '2020-05-19 13:34:53', '2014-03-23 12:41:09', '2011-12-09 18:40:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 80, 4, '2011-04-10 16:46:00', '2012-02-16 18:32:27', '2015-10-14 08:05:28', '2012-06-12 07:52:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 94, 10, '2012-09-17 07:24:05', '2019-01-25 18:22:35', '2016-09-05 13:35:10', '2016-10-27 01:32:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 67, 7, '2017-07-02 12:24:24', '2010-10-05 12:17:52', '2017-05-18 03:04:11', '2017-03-28 21:13:13');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'placeat', '2015-06-15 10:14:29', '2011-05-22 04:57:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'nemo', '2010-08-08 05:20:58', '2016-12-30 10:09:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'laboriosam', '2019-02-07 03:42:21', '2016-09-14 16:57:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'at', '2018-10-13 01:25:54', '2017-07-22 13:27:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'fugit', '2018-03-30 06:13:29', '2013-02-01 05:05:20');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'ut', '2019-04-21 10:13:28', '2016-05-31 18:31:07');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'atque', '2015-11-24 05:13:32', '2014-02-21 03:41:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'vero', '2016-08-02 21:17:44', '2020-05-06 14:34:08');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'maxime', '2013-08-12 01:40:36', '2016-05-20 11:45:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'qui', '2011-09-07 06:29:40', '2017-05-17 16:02:20');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 21, 'et', 823093, '5', 1, '2015-07-22 05:56:52', '2013-02-26 11:18:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 33, 'quis', 992783, '3', 2, '2017-11-29 12:07:44', '2014-12-06 13:54:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 71, 'non', 250567, '8', 3, '2016-12-02 14:17:30', '2015-11-28 16:57:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 68, 'aut', 575880, '3', 1, '2015-07-13 09:21:07', '2010-11-25 05:31:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 63, 'iusto', 278164, '6', 2, '2016-08-26 04:27:53', '2019-01-07 12:14:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 15, 'ut', 139380, '8', 3, '2012-07-13 13:08:50', '2019-11-24 09:42:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 25, 'rerum', 101775, '1', 1, '2014-04-20 22:21:13', '2011-03-16 00:50:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 40, 'fuga', 507533, '3', 2, '2013-07-19 04:21:03', '2017-04-18 02:10:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 62, 'qui', 766637, '3', 3, '2012-03-15 14:21:55', '2014-06-29 08:43:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 65, 'vel', 800876, '6', 1, '2016-07-13 10:48:46', '2010-09-08 06:13:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 17, 'error', 634660, '8', 2, '2017-06-29 13:48:00', '2017-09-15 22:45:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 18, 'distinctio', 188811, '1', 3, '2012-08-11 16:39:39', '2010-11-05 04:15:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 64, 'hic', 296607, '6', 1, '2020-05-15 20:29:30', '2019-12-23 23:21:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 26, 'iusto', 668345, '9', 2, '2020-07-19 06:28:05', '2012-03-16 16:48:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 84, 'est', 800121, '4', 3, '2010-11-23 12:44:50', '2017-08-15 07:16:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 32, 'ratione', 261386, '6', 1, '2011-03-03 16:02:05', '2018-01-19 09:02:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 79, 'eum', 92940, '7', 2, '2012-07-24 04:51:42', '2013-12-29 09:37:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 25, 'amet', 12308, '8', 3, '2014-09-05 09:55:46', '2014-03-01 10:35:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 60, 'molestias', 234419, '6', 1, '2016-07-31 05:06:36', '2019-02-01 16:59:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 91, 'enim', 135198, '1', 2, '2011-04-05 09:45:31', '2015-11-30 22:24:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 3, 'praesentium', 280075, '3', 3, '2017-11-15 05:48:03', '2014-10-29 22:04:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'qui', 211426, '5', 1, '2020-02-27 18:14:28', '2019-11-13 07:24:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 71, 'nesciunt', 26463, '1', 2, '2012-11-04 21:27:05', '2018-08-11 00:06:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 73, 'accusantium', 439565, '5', 3, '2018-04-09 05:21:30', '2014-07-01 23:59:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 42, 'nulla', 987132, '7', 1, '2018-02-07 18:41:57', '2010-09-21 07:45:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 27, 'cumque', 115055, '5', 2, '2010-12-22 02:43:00', '2010-12-23 03:59:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 75, 'reprehenderit', 691175, '4', 3, '2013-06-30 05:34:17', '2019-10-02 18:44:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 56, 'at', 86525, '3', 1, '2014-03-02 19:06:19', '2018-03-25 07:39:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 12, 'repellendus', 460306, '9', 2, '2017-10-10 08:42:44', '2011-07-09 14:57:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 71, 'velit', 647167, '3', 3, '2013-05-12 02:28:19', '2016-02-08 00:56:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 12, 'inventore', 847517, '3', 1, '2013-09-17 07:03:56', '2016-02-13 10:55:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 33, 'sed', 699939, '7', 2, '2017-11-30 22:12:39', '2015-02-22 03:29:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 3, 'fuga', 336697, '7', 3, '2020-03-18 17:03:38', '2018-08-31 18:43:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 82, 'aut', 908927, '5', 1, '2016-07-02 07:16:32', '2011-04-09 05:23:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 100, 'aut', 978453, '2', 2, '2016-11-27 14:50:54', '2016-02-16 23:05:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 65, 'vero', 401896, '4', 3, '2020-06-25 02:39:32', '2011-02-24 04:57:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 97, 'aliquam', 292270, '3', 1, '2015-02-22 04:18:12', '2019-12-05 04:09:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 24, 'officiis', 491826, '1', 2, '2011-10-02 08:44:40', '2017-06-13 04:59:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 5, 'est', 816354, '8', 3, '2016-03-19 10:17:36', '2014-09-29 16:18:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 58, 'fugit', 531231, '2', 1, '2018-07-29 23:17:56', '2014-07-03 12:27:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 89, 'non', 756170, '6', 2, '2016-08-22 18:55:13', '2013-01-29 10:12:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 22, 'illo', 944108, '6', 3, '2017-02-01 10:51:17', '2014-04-26 14:58:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 76, 'cupiditate', 473731, '4', 1, '2016-03-25 23:01:59', '2012-06-04 07:16:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 53, 'aut', 20138, '7', 2, '2013-10-17 22:01:39', '2012-10-17 12:21:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 47, 'necessitatibus', 228131, '2', 3, '2016-01-17 17:24:55', '2020-05-24 10:49:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 59, 'in', 437153, '3', 1, '2018-07-05 19:37:38', '2015-01-18 00:57:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 84, 'eos', 975766, '3', 2, '2018-04-20 05:52:44', '2010-10-26 02:59:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 25, 'culpa', 76629, '5', 3, '2011-12-22 15:56:43', '2016-07-28 00:58:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 83, 'facilis', 37819, '6', 1, '2013-06-24 11:16:17', '2011-04-30 06:04:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 43, 'vitae', 881947, '3', 2, '2013-06-02 22:15:04', '2019-11-09 10:23:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 15, 'excepturi', 43601, '4', 3, '2014-10-21 04:47:43', '2012-11-24 09:28:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 86, 'nemo', 636140, '7', 1, '2015-09-03 05:43:08', '2019-01-03 05:25:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 64, 'occaecati', 861667, '9', 2, '2015-11-02 00:33:28', '2020-02-02 17:17:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 86, 'et', 918024, '2', 3, '2020-06-14 12:01:04', '2015-11-02 18:50:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 58, 'consequuntur', 64752, '4', 1, '2014-12-31 12:15:16', '2013-05-17 04:54:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 6, 'corporis', 169362, '6', 2, '2012-02-26 19:50:34', '2013-06-02 00:32:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 12, 'ratione', 155399, '6', 3, '2015-07-08 12:08:15', '2020-07-14 14:39:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 32, 'perspiciatis', 382885, '5', 1, '2014-11-03 05:58:26', '2020-03-07 00:03:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 61, 'numquam', 334945, '7', 2, '2013-02-28 20:34:54', '2018-05-16 22:56:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 23, 'odit', 667154, '4', 3, '2013-08-21 20:43:32', '2014-02-12 09:59:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 2, 'iste', 544657, '2', 1, '2019-11-22 07:18:49', '2012-03-02 09:11:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 73, 'ea', 753229, '4', 2, '2018-03-04 18:47:17', '2010-11-06 09:53:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 56, 'doloremque', 75611, '7', 3, '2011-03-07 04:05:48', '2011-02-21 03:03:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 4, 'maxime', 613406, '5', 1, '2014-12-20 19:42:19', '2013-07-31 09:31:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 54, 'ut', 888063, '9', 2, '2019-01-18 03:25:33', '2012-02-05 18:25:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 55, 'dolore', 837179, '5', 3, '2020-07-22 11:41:35', '2014-04-23 17:21:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 69, 'maxime', 317217, '4', 1, '2013-05-24 23:29:58', '2011-01-26 21:55:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 50, 'sed', 430657, '5', 2, '2016-10-12 19:02:22', '2015-10-18 23:32:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 79, 'ipsa', 644085, '2', 3, '2015-08-19 10:16:27', '2017-06-14 01:06:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 74, 'iusto', 830441, '3', 1, '2012-09-29 12:45:03', '2017-03-25 03:40:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 8, 'dolores', 2179, '9', 2, '2017-10-02 16:13:38', '2011-04-08 04:22:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 68, 'reprehenderit', 23629, '4', 3, '2015-05-07 21:48:41', '2018-05-01 21:19:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 95, 'in', 972758, '3', 1, '2019-06-20 04:50:07', '2018-02-18 13:57:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 83, 'ea', 181498, '2', 2, '2012-04-20 15:34:30', '2013-10-22 20:51:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 20, 'ut', 900368, '5', 3, '2015-12-20 05:25:36', '2016-07-14 05:52:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 41, 'vel', 891558, '2', 1, '2011-03-21 12:32:31', '2012-10-24 03:48:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 42, 'amet', 582837, '2', 2, '2013-01-20 20:28:15', '2012-03-27 08:12:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 3, 'ipsa', 342449, '9', 3, '2020-03-27 20:43:24', '2011-09-26 06:48:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 65, 'magni', 997915, '9', 1, '2019-08-19 15:55:45', '2010-10-16 03:53:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 25, 'totam', 684981, '4', 2, '2012-03-21 21:17:52', '2019-08-12 05:38:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 45, 'id', 567384, '9', 3, '2020-02-06 21:45:51', '2018-06-27 12:46:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 80, 'excepturi', 651952, '7', 1, '2015-05-27 10:11:48', '2018-12-11 02:49:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 10, 'aut', 73251, '2', 2, '2016-05-04 08:05:56', '2012-12-19 01:35:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 9, 'rem', 678647, '6', 3, '2013-03-11 13:30:43', '2017-09-14 06:43:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 65, 'et', 643459, '4', 1, '2014-01-08 09:40:21', '2012-07-04 23:13:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 68, 'error', 196608, '4', 2, '2015-11-20 21:14:27', '2012-07-30 12:51:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 14, 'qui', 397545, '9', 3, '2011-03-11 17:37:03', '2015-11-19 20:25:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 76, 'eaque', 25305, '4', 1, '2011-06-19 20:06:20', '2012-01-27 15:28:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 99, 'itaque', 327275, '5', 2, '2015-01-07 18:12:18', '2012-03-25 03:08:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 75, 'deleniti', 916697, '2', 3, '2011-05-20 14:07:29', '2012-02-18 16:22:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 99, 'dolorum', 233224, '3', 1, '2012-09-14 14:49:05', '2011-09-17 01:48:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 1, 'voluptatem', 541084, '9', 2, '2016-11-01 11:45:34', '2014-03-27 13:42:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 47, 'enim', 715625, '2', 3, '2014-06-18 04:09:34', '2017-07-28 09:40:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 54, 'fuga', 53544, '1', 1, '2019-03-14 17:44:36', '2016-03-11 08:43:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 5, 'ipsum', 271092, '8', 2, '2015-05-15 23:03:05', '2017-01-22 20:55:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 1, 'qui', 375299, '4', 3, '2013-02-18 08:39:08', '2016-05-12 22:52:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 9, 'consequatur', 429860, '9', 1, '2013-12-02 07:13:04', '2011-11-25 11:19:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 73, 'veritatis', 719291, '6', 2, '2018-01-04 15:43:07', '2014-05-08 20:12:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 51, 'ut', 838658, '9', 3, '2016-09-03 19:46:41', '2013-04-15 09:22:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 88, 'et', 555625, '4', 1, '2013-06-07 14:51:41', '2013-02-11 00:11:57');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'photo', '2019-07-25 00:29:17', '2012-05-01 09:22:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'audio', '2010-08-01 08:56:40', '2013-07-16 18:01:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'video', '2014-03-15 14:24:32', '2016-11-05 12:56:13');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 97, 93, 'I know!\' exclaimed Alice, who always took a minute or two, it was very likely it can talk: at any rate, the Dormouse turned out, and, by the little thing sobbed again (or grunted, it was a.', 1, 0, '2013-03-24 00:01:35', '2014-05-18 23:06:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 8, 50, 'Alice crouched down among the people near the door of which was the BEST butter,\' the March Hare. Alice sighed wearily. \'I think I could, if I fell off the mushroom, and crawled away in the.', 0, 1, '2011-06-14 06:41:33', '2014-03-13 02:02:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 100, 7, 'Her chin was pressed hard against it, that attempt proved a failure. Alice heard the King said, with a knife, it usually bleeds; and she hastily dried her eyes immediately met those of a good deal.', 0, 0, '2011-07-15 13:41:53', '2015-12-03 15:05:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 27, 79, 'Alice; \'I daresay it\'s a very good height indeed!\' said the Cat, as soon as the whole party look so grave that she had plenty of time as she spoke--fancy CURTSEYING as you\'re falling through the.', 1, 0, '2014-08-20 05:01:52', '2017-11-07 17:07:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 55, 6, 'This time Alice waited patiently until it chose to speak again. The rabbit-hole went straight on like a frog; and both the hedgehogs were out of the jurors were all writing very busily on slates..', 0, 0, '2013-06-21 23:27:23', '2015-12-16 21:27:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 42, 66, 'Mock Turtle said: \'advance twice, set to work nibbling at the Hatter, \'when the Queen shouted at the top of the reeds--the rattling teacups would change to dull reality--the grass would be the best.', 0, 1, '2020-05-25 16:09:42', '2010-09-17 23:34:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 62, 30, 'Alice\'s shoulder, and it sat for a long tail, certainly,\' said Alice in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the Hatter, who turned pale and.', 1, 0, '2015-10-09 22:43:26', '2017-10-30 20:53:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 59, 63, 'Dormouse, without considering at all fairly,\' Alice began, in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So they had at the house, and the cool.', 0, 1, '2010-08-05 11:44:58', '2020-04-20 21:05:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 7, 62, 'Dormouse\'s place, and Alice called after it; and while she was playing against herself, for she had asked it aloud; and in a few minutes it seemed quite natural); but when the tide rises and sharks.', 1, 1, '2017-09-01 04:12:01', '2014-09-21 13:11:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 33, 55, 'Alice noticed, had powdered hair that WOULD always get into that beautiful garden--how IS that to be done, I wonder?\' Alice guessed who it was, and, as the game was going a journey, I should think.', 0, 0, '2011-01-01 01:04:00', '2010-07-31 17:54:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 63, 71, 'This answer so confused poor Alice, that she had brought herself down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two. \'They couldn\'t have wanted it much,\' said the Duck: \'it\'s.', 1, 0, '2011-12-21 03:25:30', '2015-04-30 10:18:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 65, 55, 'She had not as yet had any sense, they\'d take the place of the Rabbit\'s voice; and Alice joined the procession, wondering very much pleased at having found out a new idea to Alice, and she crossed.', 0, 1, '2011-12-10 16:49:10', '2013-10-21 22:50:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 26, 8, 'King in a trembling voice:-- \'I passed by his garden, and marked, with one eye; but to her that she never knew whether it was a paper label, with the Dormouse. \'Fourteenth of March, I think that.', 0, 0, '2015-01-23 09:33:12', '2011-05-06 11:24:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 40, 74, 'The Mouse only shook its head down, and felt quite strange at first; but she had sat down in a hoarse growl, \'the world would go anywhere without a grin,\' thought Alice; \'I must be getting somewhere.', 1, 1, '2013-08-25 14:20:15', '2013-02-23 01:24:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 46, 33, 'Alice thought to herself, rather sharply; \'I advise you to leave off this minute!\' She generally gave herself very good advice, (though she very soon finished off the fire, stirring a large cauldron.', 1, 0, '2019-07-02 07:15:43', '2011-03-21 07:41:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 39, 42, 'Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not join the dance? Will you, won\'t you, will you, old fellow?\' The Mock Turtle said: \'advance twice, set to work throwing.', 0, 1, '2018-11-29 09:45:52', '2020-06-24 01:49:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 25, 47, 'At this moment the door with his head!\' she said, by way of nursing it, (which was to twist it up into the teapot. \'At any rate a book of rules for shutting people up like telescopes: this time she.', 0, 1, '2011-11-26 01:58:41', '2015-07-15 01:00:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 92, 24, 'I wonder what was going to do that,\' said the Cat. \'Do you mean that you had been running half an hour or so, and were resting in the face. \'I\'ll put a white one in by mistake; and if it had.', 1, 0, '2017-01-03 04:28:44', '2012-10-11 23:04:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 54, 18, 'The rabbit-hole went straight on like a thunderstorm. \'A fine day, your Majesty!\' the Duchess asked, with another dig of her voice. Nobody moved. \'Who cares for you?\' said Alice, surprised at her.', 0, 0, '2020-05-26 02:05:51', '2017-08-06 08:41:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 2, 8, 'The first question of course had to stop and untwist it. After a minute or two, which gave the Pigeon in a natural way. \'I thought it must be shutting up like a tunnel for some time after the.', 0, 1, '2018-01-10 09:58:35', '2014-08-26 13:48:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 23, 43, 'Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon went on. \'I do,\' Alice hastily replied; \'at least--at least I mean what I used to read fairy-tales, I fancied.', 0, 1, '2020-05-30 20:23:53', '2013-04-08 00:33:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 74, 85, 'King, and the baby with some difficulty, as it didn\'t much matter which way she put them into a graceful zigzag, and was in livery: otherwise, judging by his garden.\"\' Alice did not notice this last.', 1, 0, '2016-03-05 17:25:15', '2014-03-18 02:30:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 73, 33, 'Duck: \'it\'s generally a ridge or furrow in the pool rippling to the Knave of Hearts, who only bowed and smiled in reply. \'Please come back again, and we won\'t talk about trouble!\' said the Mock.', 0, 0, '2016-10-30 04:07:06', '2017-08-20 09:28:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 47, 80, 'Alice; \'I daresay it\'s a very respectful tone, but frowning and making quite a long way back, and see that queer little toss of her voice, and see what I get\" is the same when I learn music.\' \'Ah!.', 1, 0, '2019-11-17 08:38:44', '2018-10-08 10:55:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 94, 80, 'Alice noticed, had powdered hair that WOULD always get into the sea, some children digging in the wood,\' continued the Pigeon, but in a whisper.) \'That would be worth the trouble of getting her.', 0, 1, '2012-12-04 23:11:22', '2012-12-11 23:32:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 34, 57, 'And so she went on in a dreamy sort of lullaby to it as a lark, And will talk in contemptuous tones of the March Hare went on. \'Would you tell me,\' said Alice, in a very fine day!\' said a whiting to.', 1, 0, '2016-03-17 14:12:45', '2020-01-14 17:08:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 50, 99, 'Queen. \'You make me smaller, I suppose.\' So she sat down at them, and considered a little, \'From the Queen. First came ten soldiers carrying clubs; these were all in bed!\' On various pretexts they.', 1, 0, '2013-07-05 23:16:01', '2011-03-26 19:49:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 11, 76, 'I shall be punished for it flashed across her mind that she had found the fan and the little passage: and THEN--she found herself at last it sat down again into its mouth again, and Alice was.', 1, 1, '2019-04-25 12:46:19', '2011-07-30 10:39:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 7, 50, 'Cat. \'I don\'t even know what they\'re about!\' \'Read them,\' said the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked along the sea-shore--\' \'Two lines!\' cried the Mouse, in a few.', 1, 0, '2012-12-23 20:09:45', '2011-12-03 07:25:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 49, 52, 'An enormous puppy was looking down with wonder at the bottom of a large mushroom growing near her, about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions,.', 0, 1, '2013-11-02 01:42:16', '2012-11-03 11:10:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 82, 88, 'I shall have to beat time when I got up very carefully, nibbling first at one and then added them up, and reduced the answer to it?\' said the King, \'that only makes the world you fly, Like a.', 1, 1, '2012-01-26 16:02:16', '2012-08-11 05:47:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 93, 6, 'CAN I have dropped them, I wonder?\' As she said this she looked up, but it puzzled her very earnestly, \'Now, Dinah, tell me the truth: did you do lessons?\' said Alice, in a low trembling voice,.', 0, 1, '2018-10-28 20:55:38', '2016-10-13 15:53:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 35, 84, 'Alice said very politely, \'for I never understood what it might end, you know,\' said the White Rabbit read:-- \'They told me you had been jumping about like that!\' But she waited patiently. \'Once,\'.', 1, 1, '2018-08-30 00:28:20', '2017-12-31 04:58:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 29, 88, 'Dinah, and saying to herself, \'I don\'t see,\' said the Caterpillar. Alice said very politely, \'for I can\'t take more.\' \'You mean you can\'t be civil, you\'d better ask HER about it.\' (The jury all.', 1, 1, '2014-12-25 02:37:50', '2020-04-03 01:23:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 2, 31, 'Mock Turtle replied, counting off the top of its mouth open, gazing up into hers--she could hear the Rabbit in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a.', 0, 1, '2010-08-22 01:02:05', '2010-11-07 06:37:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 96, 24, 'MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'I\'ve tried the effect of lying down on one of the lefthand bit of the singers in the middle, wondering how she would gather about her.', 0, 0, '2015-10-18 17:08:28', '2010-12-15 22:31:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 74, 70, 'She got up in spite of all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was just saying to herself \'Now I can find them.\' As she said to herself as she was now more than nine feet.', 1, 0, '2010-10-30 21:23:52', '2014-07-10 16:59:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 9, 47, 'Alice. \'I\'ve read that in some book, but I don\'t care which happens!\' She ate a little pattering of footsteps in the distance would take the hint; but the Gryphon never learnt it.\' \'Hadn\'t time,\'.', 1, 1, '2019-10-24 08:57:26', '2013-05-08 18:12:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 2, 56, 'Australia?\' (and she tried her best to climb up one of them even when they had settled down in a low, trembling voice. \'There\'s more evidence to come yet, please your Majesty,\' said Alice more.', 1, 1, '2016-06-14 12:28:48', '2020-01-21 01:06:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 26, 96, 'Gryphon. \'Turn a somersault in the face. \'I\'ll put a white one in by mistake; and if I know I have done that, you know,\' said the Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you.', 0, 0, '2013-06-11 16:21:48', '2018-11-24 00:31:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 36, 59, 'PROVES his guilt,\' said the Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to Alice; and Alice joined the procession, wondering very much at this, she came upon.', 0, 0, '2015-03-29 16:10:21', '2012-08-26 17:39:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 52, 85, 'Dinah my dear! Let this be a book of rules for shutting people up like a thunderstorm. \'A fine day, your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to.', 1, 1, '2011-03-23 00:21:02', '2011-12-05 04:13:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 58, 62, 'There was a dead silence. Alice was more and more puzzled, but she heard a little bottle on it, (\'which certainly was not a regular rule: you invented it just now.\' \'It\'s the stupidest tea-party I.', 1, 0, '2019-11-27 21:28:49', '2015-03-27 20:42:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 61, 64, 'Majesty,\' said Alice to herself, being rather proud of it: \'No room! No room!\' they cried out when they met in the direction in which case it would feel with all her riper years, the simple rules.', 1, 0, '2019-05-02 21:56:43', '2012-05-17 16:57:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 11, 9, 'Hatter said, tossing his head sadly. \'Do I look like one, but the Mouse was swimming away from him, and said \'No, never\') \'--so you can have no answers.\' \'If you please, sir--\' The Rabbit started.', 0, 0, '2020-06-30 08:29:13', '2016-01-10 06:28:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 15, 92, 'King. The next witness would be grand, certainly,\' said Alice, (she had kept a piece of it at all,\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed for Mabel! I\'ll try if.', 1, 1, '2017-07-07 20:29:54', '2017-12-04 16:03:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 97, 8, 'I am, sir,\' said Alice; \'you needn\'t be so stingy about it, so she went on, \'and most of \'em do.\' \'I don\'t know what they\'re about!\' \'Read them,\' said the King. On this the White Rabbit returning,.', 1, 1, '2015-11-04 00:44:57', '2016-10-17 11:37:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 98, 31, 'This time Alice waited till she had gone through that day. \'A likely story indeed!\' said the Gryphon: and Alice looked very anxiously into its face in her hands, and she felt a violent shake at the.', 0, 0, '2016-09-25 21:33:09', '2012-09-17 18:03:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 91, 27, 'Dodo had paused as if he had never forgotten that, if you want to see the Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in the wind, and was going to happen next..', 1, 1, '2010-08-08 18:33:41', '2017-09-28 15:33:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 19, 92, 'This seemed to Alice with one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice to herself, \'the way all the arches are gone from this morning,\' said Alice.', 1, 0, '2014-12-25 19:41:50', '2019-09-09 19:17:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 57, 14, 'As there seemed to rise like a tunnel for some time busily writing in his turn; and both creatures hid their faces in their paws. \'And how do you know about this business?\' the King said to herself,.', 0, 0, '2014-10-04 07:15:17', '2013-06-26 07:34:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 16, 31, 'IS that to be Number One,\' said Alice. \'That\'s very important,\' the King said to Alice; and Alice looked up, but it puzzled her very much of it altogether; but after a few minutes, and she tried her.', 0, 1, '2016-09-26 04:05:26', '2016-02-12 10:06:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 83, 25, 'SHE, of course,\' the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the jelly-fish out of a dance is it?\' he said, turning to the jury. They were indeed a.', 0, 0, '2016-09-30 22:01:55', '2011-11-03 15:09:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 77, 85, 'It did so indeed, and much sooner than she had found the fan and gloves, and, as the March Hare said--\' \'I didn\'t!\' the March Hare. \'Sixteenth,\' added the Dormouse. \'Don\'t talk nonsense,\' said Alice.', 0, 0, '2017-08-11 15:26:14', '2014-05-31 23:06:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 81, 2, 'Alice alone with the words don\'t FIT you,\' said the Cat. \'I don\'t know what \"it\" means well enough, when I was going to happen next. \'It\'s--it\'s a very poor speaker,\' said the King: \'however, it may.', 0, 0, '2014-12-03 15:24:35', '2017-12-31 21:18:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 80, 16, 'Dodo, \'the best way you go,\' said the Hatter asked triumphantly. Alice did not get hold of this ointment--one shilling the box-- Allow me to introduce it.\' \'I don\'t see,\' said the March Hare. Visit.', 1, 0, '2011-02-10 19:19:30', '2017-01-30 04:28:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 61, 31, 'THAT direction,\' the Cat remarked. \'Don\'t be impertinent,\' said the Gryphon. \'Then, you know,\' the Mock Turtle sighed deeply, and began, in a tone of great curiosity. \'Soles and eels, of course,\'.', 1, 0, '2012-03-07 21:17:50', '2018-10-30 09:45:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 1, 18, 'Caterpillar contemptuously. \'Who are YOU?\' said the Cat, and vanished again. Alice waited till the Pigeon in a moment that it would not allow without knowing how old it was, and, as there was.', 0, 0, '2015-02-07 13:20:29', '2016-12-23 01:03:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 92, 61, 'The rabbit-hole went straight on like a candle. I wonder if I\'ve kept her eyes filled with cupboards and book-shelves; here and there. There was a most extraordinary noise going on shrinking.', 0, 1, '2018-08-20 10:53:01', '2015-11-05 17:06:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 82, 3, 'Paris is the same tone, exactly as if nothing had happened. \'How am I to get in?\' she repeated, aloud. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what am I then? Tell me that.', 0, 0, '2010-09-23 02:45:36', '2018-04-16 21:55:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 70, 96, 'COULD! I\'m sure I don\'t put my arm round your waist,\' the Duchess replied, in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I don\'t like them!\'.', 0, 0, '2016-09-05 11:52:21', '2010-08-04 21:02:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 95, 66, 'Alice, and she set to work very carefully, with one of the sea.\' \'I couldn\'t afford to learn it.\' said the King said to the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the.', 1, 1, '2010-08-29 19:34:07', '2015-06-30 18:10:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 3, 92, 'Alice, \'shall I NEVER get any older than I am very tired of being all alone here!\' As she said this, she was coming to, but it puzzled her very earnestly, \'Now, Dinah, tell me who YOU are, first.\'.', 0, 1, '2016-01-29 07:00:01', '2013-05-16 12:25:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 97, 94, 'There\'s no pleasing them!\' Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a soothing tone: \'don\'t be angry about it. And yet I wish I could show you our cat Dinah: I think.', 0, 0, '2020-01-18 15:26:50', '2015-06-26 10:29:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 18, 15, 'Alice, who felt very lonely and low-spirited. In a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the air, and came flying down upon her: she gave her.', 1, 0, '2013-07-17 14:44:01', '2016-07-19 06:30:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 86, 75, 'Hatter, \'I cut some more bread-and-butter--\' \'But what did the archbishop find?\' The Mouse looked at the Lizard in head downwards, and the King said to Alice. \'Only a thimble,\' said Alice.', 1, 0, '2019-12-27 10:14:15', '2018-01-10 13:34:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 29, 1, 'Alice, as the White Rabbit blew three blasts on the top of her childhood: and how she was now only ten inches high, and was going to turn round on its axis--\' \'Talking of axes,\' said the Queen, but.', 1, 1, '2018-09-07 17:11:01', '2016-03-13 22:59:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 5, 12, 'Queen,\' and she was now only ten inches high, and her eyes anxiously fixed on it, (\'which certainly was not a bit of the deepest contempt. \'I\'ve seen a rabbit with either a waistcoat-pocket, or a.', 1, 1, '2017-01-02 19:13:38', '2010-11-10 11:11:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 26, 82, 'She said this last word with such a simple question,\' added the Dormouse. \'Write that down,\' the King put on one knee as he fumbled over the jury-box with the grin, which remained some time busily.', 1, 1, '2016-08-11 23:38:25', '2012-06-02 20:26:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 96, 6, 'You\'re mad.\' \'How do you know I\'m mad?\' said Alice. \'Why, there they are!\' said the Dodo could not think of nothing better to say to itself, half to herself, \'to be going messages for a moment that.', 1, 0, '2010-08-25 18:22:54', '2010-10-07 06:34:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 83, 75, 'Pigeon in a great hurry, muttering to itself \'Then I\'ll go round a deal faster than it does.\' \'Which would NOT be an old Turtle--we used to know. Let me see: four times six is thirteen, and four.', 0, 0, '2015-06-03 02:20:03', '2018-10-30 22:01:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 22, 44, 'As for pulling me out of court! Suppress him! Pinch him! Off with his nose Trims his belt and his friends shared their never-ending meal, and the little golden key was lying under the table: she.', 1, 0, '2019-01-06 08:15:07', '2012-01-16 04:26:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 5, 23, 'YOU.--Come, I\'ll take no denial; We must have been changed for Mabel! I\'ll try if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried.', 1, 1, '2018-01-15 02:37:40', '2011-10-12 20:36:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 62, 97, 'IV. The Rabbit started violently, dropped the white kid gloves while she remembered the number of executions the Queen merely remarking that a moment\'s pause. The only things in the pool, and the.', 0, 0, '2015-09-17 02:17:38', '2011-10-30 23:43:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 83, 43, 'YOU do it!--That I won\'t, then!--Bill\'s to go down the bottle, saying to herself what such an extraordinary ways of living would be quite as much as she picked up a little while, however, she waited.', 0, 1, '2014-12-31 14:14:26', '2010-09-09 04:47:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 99, 53, 'Stole the Tarts? The King and the March Hare, \'that \"I breathe when I grow at a king,\' said Alice. \'I\'m glad they don\'t give birthday presents like that!\' said Alice timidly. \'Would you like to have.', 0, 0, '2014-04-27 10:59:43', '2012-09-08 15:39:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 38, 94, 'YOUR watch tell you my history, and you\'ll understand why it is to find that she let the jury--\' \'If any one left alive!\' She was a most extraordinary noise going on rather better now,\' she said,.', 0, 0, '2016-04-05 23:48:53', '2011-06-19 03:06:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 18, 41, 'Alice\'s shoulder as he spoke, and the White Rabbit read out, at the window.\' \'THAT you won\'t\' thought Alice, \'and those twelve creatures,\' (she was so ordered about in the wood, \'is to grow to my.', 1, 1, '2017-01-17 14:04:50', '2013-12-07 06:47:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 86, 15, 'King: \'leave out that it ought to have the experiment tried. \'Very true,\' said the King eagerly, and he checked himself suddenly: the others took the place of the country is, you see, so many.', 0, 0, '2011-06-20 07:16:48', '2019-05-21 15:31:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 34, 3, 'Alice remained looking thoughtfully at the end.\' \'If you didn\'t sign it,\' said Alice timidly. \'Would you like the three were all turning into little cakes as they would call after her: the last few.', 0, 1, '2018-06-26 00:32:10', '2016-12-06 12:24:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 30, 19, 'So she began looking at them with the name of nearly everything there. \'That\'s the reason so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t believe there\'s an atom of meaning in it,\'.', 1, 1, '2011-04-29 05:05:32', '2015-02-25 11:22:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 78, 58, 'I get\" is the capital of Paris, and Paris is the use of a candle is blown out, for she could not help bursting out laughing: and when she found she could not help thinking there MUST be more to be.', 0, 0, '2013-01-02 19:53:28', '2020-03-10 02:31:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 20, 83, 'Alice waited patiently until it chose to speak again. In a minute or two, they began solemnly dancing round and get in at the top with its arms folded, quietly smoking a long breath, and till the.', 1, 0, '2019-05-06 23:48:38', '2013-12-15 01:03:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 69, 46, 'I am now? That\'ll be a book written about me, that there was nothing on it in a sort of life! I do it again and again.\' \'You are old, Father William,\' the young lady to see if he doesn\'t begin.\' But.', 0, 0, '2015-06-19 19:58:19', '2017-02-06 01:20:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 64, 65, 'Alice again, in a low, timid voice, \'If you please, sir--\' The Rabbit Sends in a tone of great dismay, and began bowing to the Cheshire Cat: now I shall fall right THROUGH the earth! How funny it\'ll.', 1, 1, '2015-08-16 19:22:17', '2011-10-22 08:37:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 51, 47, 'No, no! You\'re a serpent; and there\'s no use going back to yesterday, because I was a treacle-well.\' \'There\'s no such thing!\' Alice was not a moment to be listening, so she helped herself to some.', 1, 1, '2011-04-03 06:27:02', '2016-10-18 23:00:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 39, 73, 'Hatter continued, \'in this way:-- \"Up above the world am I? Ah, THAT\'S the great hall, with the end of the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice severely..', 0, 0, '2016-11-10 00:20:43', '2010-09-12 22:23:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 90, 44, 'And yet you incessantly stand on their throne when they liked, so that by the way I ought to eat or drink anything; so I\'ll just see what was coming. It was high time to hear his history. I must.', 1, 1, '2015-10-07 06:48:18', '2011-08-25 20:04:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 95, 52, 'I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go down--Here, Bill! the master says you\'re to go from here?\' \'That depends a good deal frightened at the house, and the whole window!\' \'Sure, it.', 1, 1, '2012-10-03 09:19:01', '2017-02-13 21:21:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 40, 78, 'OURS they had to stoop to save her neck would bend about easily in any direction, like a writing-desk?\' \'Come, we shall have some fun now!\' thought Alice. \'I\'ve so often read in the after-time, be.', 1, 0, '2016-12-23 10:19:31', '2013-03-31 04:25:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 94, 39, 'I\'d only been the whiting,\' said the Duchess; \'and most things twinkled after that--only the March Hare,) \'--it was at in all my limbs very supple By the time they had been for some time without.', 1, 1, '2010-11-06 21:37:54', '2017-04-23 20:16:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 30, 32, 'Alice, and her face like the right house, because the Duchess sang the second thing is to find that she was not otherwise than what it was: she was now, and she set off at once, in a game of play.', 1, 1, '2011-12-21 16:02:54', '2014-12-29 01:52:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 33, 48, 'King replied. Here the Dormouse shall!\' they both bowed low, and their curls got entangled together. Alice laughed so much at this, that she let the jury--\' \'If any one of the edge of her or of.', 0, 1, '2015-06-08 07:54:13', '2013-07-18 10:14:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 72, 18, 'Alice could only see her. She is such a thing before, and he checked himself suddenly: the others looked round also, and all the while, till at last came a rumbling of little cartwheels, and the.', 0, 1, '2018-09-06 08:36:23', '2018-01-30 02:40:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 62, 6, 'I can remember feeling a little three-legged table, all made a rush at the stick, and made a rush at Alice as he spoke, \'we were trying--\' \'I see!\' said the Duchess, as she was small enough to get.', 1, 1, '2019-05-02 16:42:26', '2015-11-04 02:36:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 21, 91, 'So you see, as well to introduce it.\' \'I don\'t see,\' said the Queen, but she saw in another moment, splash! she was surprised to find that she began again. \'I wonder what I like\"!\' \'You might just.', 1, 1, '2019-05-22 07:44:29', '2013-08-16 14:54:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 25, 98, 'Her chin was pressed so closely against her foot, that there ought! And when I was sent for.\' \'You ought to be told so. \'It\'s really dreadful,\' she muttered to herself, as she could. \'The game\'s.', 0, 0, '2014-07-05 04:12:11', '2013-04-15 17:23:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 49, 45, 'So she called softly after it, \'Mouse dear! Do come back and see after some executions I have to go from here?\' \'That depends a good way off, and that if something wasn\'t done about it in less than.', 1, 1, '2012-04-25 08:43:25', '2018-01-19 18:46:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 81, 18, 'Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and went on muttering over the wig,.', 1, 1, '2019-07-26 05:01:03', '2019-04-06 13:42:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 90, 44, 'Then came a rumbling of little Alice herself, and nibbled a little of it?\' said the Caterpillar. \'Is that the meeting adjourn, for the pool rippling to the dance. Will you, won\'t you, will you join.', 1, 0, '2019-07-01 17:51:53', '2016-07-05 18:41:26');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'm', '2020-01-31', 'East Lance', 'Malaysia', '2017-12-11 18:15:10', '2013-04-13 13:06:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'f', '1933-05-12', 'Connville', 'Niue', '2012-08-17 02:32:47', '2019-06-28 13:48:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'f', '1931-04-04', 'Bogisichfort', 'Kazakhstan', '2018-08-27 15:23:27', '2019-01-15 19:59:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '1921-06-09', 'Lake Camdenburgh', 'Maldives', '2018-11-30 02:31:16', '2018-03-21 11:53:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'f', '1923-07-03', 'South Daphneefort', 'Finland', '2016-01-04 23:25:06', '2019-12-05 00:42:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '1927-08-24', 'South Zolaborough', 'United Kingdom', '2013-04-24 14:47:56', '2012-12-27 12:54:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'm', '1941-09-03', 'North Jevonburgh', 'Norway', '2017-01-11 21:54:23', '2015-02-14 07:40:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'f', '1926-03-30', 'New Oswaldotown', 'Guinea-Bissau', '2012-10-30 00:20:25', '2014-12-06 02:00:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'f', '1941-08-07', 'Sawaynfort', 'Lesotho', '2015-01-01 10:10:25', '2010-10-11 10:24:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '1987-03-24', 'New Alekshire', 'Honduras', '2016-07-05 04:43:53', '2015-08-08 06:43:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'm', '1921-03-13', 'South Lucasport', 'United States of America', '2014-05-04 16:31:42', '2013-01-05 02:17:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'm', '1970-05-07', 'New Marinashire', 'Maldives', '2013-07-09 15:40:43', '2011-12-20 20:01:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'f', '1986-05-10', 'South Marley', 'Cuba', '2011-09-10 14:36:27', '2011-01-23 17:00:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'f', '2016-09-25', 'Starkstad', 'Western Sahara', '2011-12-18 20:08:45', '2011-06-09 21:50:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'm', '1945-10-19', 'Moenburgh', 'French Southern Territories', '2017-02-12 23:13:23', '2011-04-09 21:21:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'f', '1936-06-23', 'Adrienneville', 'Kenya', '2020-02-09 23:04:33', '2020-05-14 23:20:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'm', '1959-12-19', 'New Kamron', 'Cameroon', '2013-12-18 19:01:17', '2018-10-14 11:52:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'f', '2016-04-18', 'Lake Diamondburgh', 'Hong Kong', '2014-05-09 08:51:34', '2011-09-10 13:26:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'f', '1974-02-01', 'New Desmond', 'Yemen', '2016-06-15 09:29:52', '2011-05-24 21:51:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'm', '1989-01-14', 'Coltonfurt', 'Tunisia', '2014-09-15 12:01:09', '2017-03-06 08:56:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'm', '1966-08-18', 'Beahanberg', 'Niue', '2016-03-04 05:47:25', '2015-03-28 21:06:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'm', '2002-12-09', 'New Waino', 'Senegal', '2017-04-01 23:43:09', '2015-10-10 17:59:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'm', '1930-03-30', 'Morarmouth', 'Central African Republic', '2018-03-22 19:22:57', '2019-05-12 01:14:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'm', '2010-06-04', 'Nicolasstad', 'Bangladesh', '2014-09-20 13:52:46', '2016-12-02 21:08:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'm', '1971-08-11', 'South Bruce', 'Kiribati', '2012-10-09 15:34:43', '2015-02-10 13:55:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'f', '1963-01-20', 'Fernberg', 'Tanzania', '2016-04-29 04:08:13', '2016-05-20 01:46:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'm', '1991-02-19', 'West Novella', 'Turkey', '2013-06-30 05:07:24', '2013-12-28 08:17:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'm', '2010-12-23', 'East Aylin', 'Tanzania', '2014-11-25 07:00:04', '2019-05-10 15:27:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'm', '1949-07-13', 'Stammfort', 'Luxembourg', '2010-08-19 02:01:26', '2017-07-18 14:35:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '1943-03-10', 'Tillmanfurt', 'Reunion', '2018-01-06 16:03:29', '2011-04-03 11:49:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'f', '1938-10-10', 'South Deangelo', 'Georgia', '2011-12-15 18:54:12', '2011-10-26 21:40:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'f', '1964-05-23', 'East Gillian', 'Kiribati', '2012-07-20 12:56:30', '2015-12-28 23:31:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'f', '1922-06-20', 'Feeststad', 'Nauru', '2014-01-26 11:48:25', '2015-04-12 01:14:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'm', '1996-02-22', 'North Myrtis', 'Sao Tome and Principe', '2015-10-26 06:28:56', '2016-01-09 00:04:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'f', '2003-07-06', 'Myrnaville', 'China', '2012-10-17 19:28:13', '2011-02-13 17:22:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'f', '1927-07-22', 'Strackeburgh', 'Timor-Leste', '2018-09-29 09:20:55', '2020-04-15 09:09:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '1927-02-23', 'North Daphney', 'Western Sahara', '2017-01-26 01:04:56', '2017-03-17 13:02:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'f', '1993-12-04', 'Swaniawskiborough', 'Kiribati', '2010-11-17 13:06:13', '2019-10-17 03:25:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'f', '1944-11-16', 'East Bartholomestad', 'Spain', '2020-03-21 21:04:08', '2010-08-30 07:03:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'm', '1951-12-06', 'Port Elsietown', 'Russian Federation', '2020-01-31 18:23:34', '2013-11-22 02:22:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'f', '2001-08-23', 'South Elliotchester', 'Holy See (Vatican City State)', '2016-08-02 12:15:19', '2013-11-19 15:06:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'm', '1922-05-27', 'Port Effie', 'Belize', '2018-11-29 19:58:07', '2018-07-06 03:09:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'f', '2001-09-21', 'Margarettastad', 'Vietnam', '2014-08-03 14:13:04', '2017-04-17 19:28:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'f', '2015-07-03', 'Port Nichole', 'Latvia', '2011-01-01 08:03:43', '2019-05-24 08:26:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'm', '2010-05-18', 'Sophialand', 'Guyana', '2012-08-17 01:56:34', '2012-09-11 00:26:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'f', '1958-09-22', 'West Namefurt', 'Palestinian Territory', '2013-01-28 17:35:02', '2015-08-18 14:26:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'm', '1939-08-29', 'Hagenesburgh', 'El Salvador', '2018-07-12 02:31:04', '2012-09-26 03:04:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'f', '2016-11-24', 'Rosschester', 'Finland', '2013-07-26 23:21:55', '2018-02-20 17:55:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'm', '1986-06-02', 'Floyview', 'Myanmar', '2015-05-08 12:27:53', '2020-04-29 06:26:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'f', '1952-01-31', 'Legrosfort', 'Colombia', '2016-09-20 21:19:32', '2017-02-21 18:18:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'm', '2006-08-05', 'Verlaborough', 'Madagascar', '2018-02-05 11:48:29', '2010-08-10 15:09:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'm', '1948-03-17', 'Millsberg', 'Armenia', '2019-08-10 04:14:42', '2014-12-01 12:03:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'm', '1985-06-13', 'Rivertown', 'Niger', '2015-02-06 19:43:33', '2015-11-01 14:52:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '1988-12-18', 'East Andrestad', 'Ethiopia', '2011-09-02 23:55:26', '2017-09-27 02:29:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'm', '1944-04-17', 'Trevionstad', 'Yemen', '2016-04-25 13:17:54', '2012-12-24 05:32:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'f', '1988-06-05', 'Elisefurt', 'Switzerland', '2018-03-10 12:34:35', '2012-05-30 05:00:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'm', '1957-03-07', 'New Mara', 'Malaysia', '2012-08-24 19:04:55', '2012-12-17 21:47:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'f', '1981-05-23', 'Port Nedrabury', 'Libyan Arab Jamahiriya', '2011-01-15 18:34:55', '2011-01-04 04:17:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'f', '2018-10-01', 'East Maverick', 'Cyprus', '2015-05-05 15:02:05', '2012-06-30 03:17:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'm', '1937-08-12', 'Keyshawnview', 'Swaziland', '2011-07-05 20:18:25', '2014-08-08 20:33:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'm', '1942-12-26', 'Arvidtown', 'Luxembourg', '2011-12-15 00:55:48', '2017-08-23 22:04:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'm', '1977-02-15', 'Jocelynville', 'Trinidad and Tobago', '2017-07-24 08:13:21', '2016-08-11 10:01:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'm', '1955-10-12', 'New Catherinemouth', 'Montserrat', '2012-07-14 01:41:21', '2015-04-17 11:41:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'f', '2001-04-16', 'Lake Caitlyn', 'Eritrea', '2019-04-27 18:30:07', '2010-08-08 12:10:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'm', '1987-08-28', 'Yostburgh', 'Georgia', '2012-05-11 03:24:09', '2015-09-09 00:24:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'm', '1952-07-02', 'Ortizmouth', 'Micronesia', '2017-12-25 13:30:11', '2019-06-28 06:38:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'm', '1950-06-08', 'Heleneborough', 'Israel', '2019-05-30 21:55:17', '2016-08-22 06:39:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'f', '1928-07-14', 'Hazelshire', 'Antarctica (the territory South of 60 deg S)', '2017-02-08 03:20:12', '2013-04-29 01:42:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'm', '1934-04-19', 'Port Lauriannefort', 'Argentina', '2017-09-25 16:51:44', '2016-03-06 13:46:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'm', '1927-03-01', 'Macfort', 'Norfolk Island', '2014-12-19 17:54:27', '2016-05-31 09:45:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'f', '1988-11-18', 'Jastmouth', 'Greenland', '2014-04-20 17:06:51', '2016-03-03 10:32:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'm', '1942-01-12', 'New Archborough', 'Egypt', '2019-08-08 08:35:35', '2019-06-11 04:07:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'm', '1935-02-09', 'South Theodora', 'American Samoa', '2018-02-02 00:53:13', '2016-10-26 18:53:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'm', '1973-06-07', 'Demondburgh', 'Slovakia (Slovak Republic)', '2013-11-14 09:40:04', '2015-05-23 08:11:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'm', '1921-04-09', 'Lake Raheemfort', 'Gambia', '2020-02-04 22:57:11', '2018-07-07 13:41:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'm', '1992-06-29', 'Abshirestad', 'Yemen', '2017-09-03 09:37:54', '2013-01-21 15:02:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'm', '1949-04-06', 'Lake Narciso', 'Marshall Islands', '2014-10-12 17:37:14', '2019-12-21 04:07:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'f', '1956-06-14', 'Spinkaton', 'Belize', '2014-12-02 03:40:26', '2014-03-01 21:11:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'm', '1963-01-06', 'Desireeville', 'Gambia', '2016-04-13 10:13:38', '2019-01-17 13:44:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'f', '1985-05-31', 'Feesttown', 'Indonesia', '2010-08-03 03:38:12', '2014-11-22 00:39:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'm', '1967-12-05', 'Rippinstad', 'Serbia', '2012-08-20 12:13:42', '2018-04-26 09:30:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'f', '2014-08-20', 'South Dominiquefurt', 'Isle of Man', '2017-12-03 11:05:41', '2013-12-10 05:38:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'm', '1936-02-11', 'South Jeremy', 'Swaziland', '2019-10-02 02:58:51', '2016-12-19 13:35:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'f', '1934-03-06', 'South Sigurd', 'Gabon', '2015-04-14 17:51:00', '2012-06-11 06:57:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'm', '1937-10-21', 'Klingport', 'Nicaragua', '2016-10-24 15:45:09', '2014-12-31 23:55:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'f', '2017-06-26', 'Gustmouth', 'Qatar', '2014-07-01 22:26:02', '2016-06-10 13:59:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'f', '1922-01-03', 'Elmerton', 'Georgia', '2020-05-26 08:40:57', '2016-03-07 16:38:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'm', '1971-06-28', 'West Brandoport', 'Saint Lucia', '2013-07-18 19:31:58', '2016-06-13 03:50:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'f', '1999-10-28', 'Lake Armandoshire', 'Bosnia and Herzegovina', '2010-10-25 02:30:43', '2012-06-01 00:06:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'f', '1952-08-19', 'South Mustafatown', 'Holy See (Vatican City State)', '2010-08-06 22:55:27', '2010-10-04 18:51:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'f', '2010-09-30', 'Krisburgh', 'Falkland Islands (Malvinas)', '2016-11-19 09:03:30', '2013-06-04 08:00:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'm', '1944-01-04', 'Kochmouth', 'Burundi', '2018-08-11 21:17:01', '2017-01-07 06:44:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'f', '1985-05-07', 'Lake Elton', 'Montenegro', '2014-04-13 23:47:20', '2013-12-25 13:07:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'f', '1952-08-03', 'North Angela', 'Thailand', '2012-01-26 19:22:32', '2016-08-26 17:45:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'm', '1952-04-09', 'Loweton', 'Brazil', '2012-03-27 14:26:02', '2011-04-01 14:14:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'f', '1930-02-27', 'New Murielfurt', 'Micronesia', '2019-03-17 08:21:04', '2019-08-16 04:02:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'm', '2007-06-27', 'South Nettieport', 'Gabon', '2016-04-19 02:59:34', '2013-07-29 21:52:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'm', '1931-10-21', 'North Gerry', 'Trinidad and Tobago', '2011-04-01 20:49:41', '2019-01-18 21:14:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'f', '1941-11-27', 'East Aryanna', 'Isle of Man', '2014-06-26 06:09:30', '2018-11-14 14:59:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'm', '2020-01-08', 'Flaviemouth', 'Mauritania', '2019-09-15 05:52:40', '2013-03-15 22:20:08');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Maybell', 'Johnson', 'lempi.mcdermott@example.org', '164-790-4280x479', '2015-11-03 11:41:26', '2016-09-14 10:29:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Lexus', 'Turcotte', 'rmraz@example.org', '1-573-910-4680x989', '2015-04-10 09:59:50', '2017-02-16 11:09:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Vito', 'Parisian', 'jamil19@example.org', '01153973569', '2011-03-02 20:21:01', '2018-10-02 20:42:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Domenic', 'Fritsch', 'shea.little@example.org', '810-704-3212x68347', '2010-11-13 11:26:22', '2019-01-03 08:05:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Cole', 'Ondricka', 'payton.cummerata@example.net', '371.661.9217', '2011-05-23 13:32:29', '2011-03-22 04:49:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Collin', 'Cronin', 'rex.stiedemann@example.org', '1-908-258-2614', '2017-04-01 04:56:41', '2018-10-27 10:51:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Ibrahim', 'Lueilwitz', 'vandervort.marc@example.net', '834.163.2526x3631', '2020-05-29 09:10:57', '2019-11-04 06:18:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Colton', 'Crist', 'jkerluke@example.net', '1-668-337-3972', '2011-08-17 07:26:56', '2014-10-23 20:36:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Alyson', 'Kerluke', 'ziemann.mylene@example.com', '196-084-2922x0197', '2010-10-08 07:00:38', '2018-04-30 10:35:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Magnus', 'Durgan', 'florida.schoen@example.com', '+19(2)2923774859', '2020-05-24 23:28:02', '2010-09-22 03:26:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Dale', 'Schneider', 'schmitt.demetris@example.com', '09434566388', '2017-06-07 03:18:06', '2012-01-23 08:10:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Willard', 'Hane', 'itzel.hammes@example.com', '769-195-0667', '2013-08-16 17:22:45', '2011-11-03 18:56:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Junius', 'Buckridge', 'porter.gulgowski@example.com', '287-158-5948x5895', '2011-10-26 16:42:06', '2013-08-03 06:49:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Juliet', 'Kuhn', 'ressie.nicolas@example.com', '001.315.0124', '2019-12-23 16:24:16', '2017-07-18 04:13:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Enola', 'Hessel', 'erling41@example.net', '05668156770', '2018-11-13 22:58:32', '2018-11-09 02:00:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Angelica', 'Block', 'torrey.yost@example.org', '03844219916', '2014-07-29 07:04:04', '2020-03-30 09:29:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Aliza', 'Harris', 'ludie78@example.net', '(269)807-8576x74671', '2018-07-06 10:56:18', '2013-04-29 00:46:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Alene', 'Greenfelder', 'vincenzo62@example.net', '+28(3)7133613665', '2019-06-01 07:58:16', '2017-08-18 04:40:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Cordelia', 'Labadie', 'cremin.allen@example.com', '1-394-284-1997x698', '2014-04-07 03:52:07', '2016-04-05 08:31:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Brandyn', 'Schumm', 'augusta.quigley@example.org', '(378)573-8232', '2015-04-17 22:26:27', '2016-04-08 05:13:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Anya', 'O\'Kon', 'abby68@example.com', '+96(1)4907429505', '2013-10-15 07:21:36', '2018-12-02 20:35:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Vinnie', 'Schroeder', 'becker.tillman@example.org', '+67(4)1508082617', '2012-05-23 09:18:42', '2020-05-04 22:11:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Torrey', 'Orn', 'jerald85@example.net', '294-702-4968x220', '2011-05-09 12:58:00', '2010-10-31 21:14:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Elisa', 'Emard', 'delbert08@example.com', '(255)792-3679', '2015-02-26 01:06:35', '2019-04-27 15:21:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Nigel', 'McDermott', 'joel.jakubowski@example.org', '265-746-9663x0031', '2017-12-17 08:27:27', '2016-05-06 16:41:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Sydnie', 'Von', 'jeffry.pfannerstill@example.com', '(113)197-9529', '2016-05-13 20:42:53', '2013-06-10 12:31:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Tate', 'Littel', 'rusty.cummings@example.org', '+37(5)9416402927', '2018-06-15 01:18:54', '2010-10-25 20:45:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'John', 'Kunze', 'maybell.satterfield@example.org', '(931)013-3589x038', '2019-12-14 17:22:34', '2013-12-29 12:56:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Marlon', 'Buckridge', 'larson.kristian@example.org', '1-400-805-9771', '2016-08-23 14:22:32', '2017-01-22 22:22:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Tressie', 'Rau', 'francis.huels@example.net', '07915523095', '2015-01-10 05:41:20', '2014-08-30 06:22:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Madie', 'Altenwerth', 'harmon94@example.com', '(826)115-5459x8218', '2017-05-23 08:16:03', '2014-08-03 11:23:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Suzanne', 'Stroman', 'satterfield.michelle@example.com', '513.056.5430', '2010-10-14 00:10:33', '2019-03-19 09:19:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Kaylah', 'Schoen', 'sim13@example.com', '515-194-6181x39607', '2016-10-31 10:21:44', '2012-05-25 12:22:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Amari', 'Kuhlman', 'bartell.ismael@example.org', '178.203.4550x527', '2012-01-04 07:49:26', '2019-06-10 22:46:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Sharon', 'Nitzsche', 'jewel.buckridge@example.net', '(095)580-6270', '2016-09-30 17:57:24', '2017-11-22 03:52:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Carmella', 'Tremblay', 'wilkinson.margarita@example.net', '+70(0)2095931486', '2014-03-02 07:31:50', '2017-02-03 00:25:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Eda', 'Schimmel', 'vhomenick@example.org', '1-883-881-4939', '2020-06-12 10:17:17', '2011-03-25 13:54:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Dessie', 'McKenzie', 'kunze.jovanny@example.net', '158-969-1736', '2012-01-06 02:22:25', '2012-11-13 07:41:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Iva', 'Roberts', 'russel.arianna@example.net', '(462)002-0228x0626', '2011-10-11 22:17:50', '2017-10-15 21:35:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Titus', 'Lindgren', 'carmine.wyman@example.com', '134-048-6815x091', '2010-10-23 13:52:01', '2013-10-13 23:51:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Dejuan', 'King', 'bupton@example.org', '544-057-6594', '2019-06-26 13:35:42', '2016-10-12 18:53:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Laurine', 'Kreiger', 'corkery.jayda@example.net', '584-965-8682x62730', '2013-08-24 02:15:59', '2012-09-18 10:48:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Clementine', 'Walter', 'lavinia.o\'keefe@example.com', '628-366-3263x524', '2016-07-25 16:58:25', '2012-10-13 00:42:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Leora', 'Friesen', 'tschinner@example.net', '327-274-9080x7775', '2015-05-29 11:29:49', '2012-06-29 01:34:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Loraine', 'Willms', 'upton.florian@example.net', '666-391-9831', '2011-11-19 14:02:13', '2016-03-20 12:12:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Carissa', 'Kuhn', 'akoepp@example.com', '375.233.3825x45534', '2016-05-11 06:53:45', '2010-12-03 11:49:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Mona', 'Braun', 'rossie63@example.net', '04722146640', '2012-07-25 07:27:28', '2019-07-05 10:21:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Kareem', 'Ratke', 'retta10@example.com', '909.388.3486x8981', '2016-11-02 11:09:41', '2016-08-26 05:18:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Leopoldo', 'Fay', 'lera34@example.net', '514-281-4998x5581', '2014-02-27 10:47:38', '2015-04-09 12:02:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Anjali', 'Farrell', 'tyra90@example.net', '+63(0)3528534749', '2011-06-10 21:07:23', '2011-04-28 12:19:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Graciela', 'Hettinger', 'qjakubowski@example.org', '1-334-213-7725x37589', '2019-12-23 07:48:42', '2017-09-13 07:01:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Lauren', 'Franecki', 'abdul.cummerata@example.org', '649-218-6388', '2010-10-21 07:22:54', '2015-06-26 22:56:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Sincere', 'Brown', 'ceasar.blanda@example.org', '04690208400', '2011-01-24 20:35:27', '2020-07-04 07:24:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Telly', 'Lebsack', 'kennedi36@example.com', '145.072.2887', '2013-06-04 05:44:42', '2015-08-24 07:38:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Monty', 'Spinka', 'lula.howe@example.org', '09038306474', '2019-12-08 01:05:21', '2016-12-07 16:58:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Keith', 'Streich', 'paxton.shields@example.com', '898-639-5089x70074', '2013-05-02 08:34:07', '2013-12-20 10:50:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Elise', 'Mraz', 'geichmann@example.com', '(467)733-9709', '2018-01-19 13:04:48', '2016-11-16 12:07:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Lillian', 'Torphy', 'lmcglynn@example.net', '1-555-298-5123x80125', '2015-09-01 09:39:27', '2020-07-21 08:32:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Lenna', 'Kuhic', 'rashad62@example.com', '819-396-7887x5981', '2016-05-29 01:47:27', '2013-11-26 06:00:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Marquis', 'Cassin', 'jazlyn.auer@example.org', '579-802-0410', '2018-07-28 12:12:44', '2014-04-17 06:52:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Dawson', 'Kiehn', 'isac.larson@example.org', '302-978-3409x20587', '2017-12-11 05:19:41', '2017-05-31 19:01:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Madge', 'Dibbert', 'carole01@example.com', '1-106-656-6820x1758', '2019-07-13 00:14:41', '2016-03-17 06:42:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Jedediah', 'Boyle', 'collier.marcelo@example.org', '(934)114-3099x33398', '2017-02-25 10:19:47', '2010-12-21 14:19:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Adrien', 'Emmerich', 'gudrun75@example.com', '1-966-726-3539', '2018-03-22 14:26:16', '2012-11-04 12:42:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Grayce', 'Bogan', 'keven41@example.net', '875-049-5293', '2010-11-18 09:18:54', '2016-12-17 15:25:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Rosemarie', 'Klein', 'jonas.haag@example.org', '735-492-7997x019', '2011-11-19 03:11:37', '2019-05-29 01:17:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Magdalen', 'Rowe', 'owolf@example.net', '443-439-2541', '2013-12-11 10:52:18', '2012-05-21 09:12:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Elena', 'Kuphal', 'wilford82@example.com', '464.665.0263', '2018-06-04 13:34:06', '2010-08-14 03:55:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Gordon', 'Parker', 'caleb.wehner@example.org', '09537880289', '2018-10-11 23:43:34', '2011-09-16 08:51:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Eliezer', 'McCullough', 'wallace28@example.net', '(664)944-3069', '2013-06-06 20:25:22', '2016-10-13 09:23:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Mose', 'Kuhn', 'dayana.romaguera@example.com', '292.601.1057x9027', '2013-07-13 17:04:06', '2014-10-01 22:42:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Demarco', 'Homenick', 'arvilla79@example.net', '1-141-471-7283x5276', '2012-09-20 22:54:35', '2019-10-17 03:20:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Oda', 'Jacobson', 'salvatore41@example.org', '1-665-269-7242', '2016-11-21 15:59:47', '2019-12-07 00:08:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Andy', 'Langworth', 'jamaal46@example.net', '(886)580-9785x14804', '2016-10-16 08:49:25', '2013-01-27 20:30:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Beryl', 'Champlin', 'neha22@example.com', '08295538467', '2017-05-14 00:49:24', '2010-09-19 13:52:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Scottie', 'Kuphal', 'ibernhard@example.com', '1-892-705-6734x194', '2014-08-03 03:29:07', '2016-07-06 20:56:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Chaz', 'Flatley', 'kurt58@example.com', '(130)980-0116x1484', '2018-11-10 14:50:29', '2013-11-20 21:18:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Bella', 'Raynor', 'brice.hilpert@example.net', '(992)752-6344x62222', '2013-01-20 00:57:25', '2016-11-25 08:16:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Jefferey', 'Auer', 'hkunze@example.com', '1-218-183-5404', '2010-09-04 01:52:02', '2016-02-13 13:06:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Clint', 'Luettgen', 'vance38@example.com', '(591)204-4361', '2016-05-08 02:17:01', '2012-03-10 08:51:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Ashley', 'Purdy', 'kiehn.kelley@example.net', '(918)175-0128x8723', '2011-08-04 08:26:34', '2019-12-14 13:59:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Dena', 'Roberts', 'morris60@example.org', '08338843944', '2018-12-02 14:23:50', '2013-07-01 02:33:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Vernon', 'Kerluke', 'odell.wilkinson@example.org', '556-070-4459', '2014-06-29 03:40:53', '2012-09-24 20:53:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Hermina', 'Rowe', 'reynolds.danny@example.com', '592-604-7215x8131', '2013-06-04 16:00:21', '2012-08-09 07:02:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Gerardo', 'Dickinson', 'deborah.parker@example.net', '984.535.0136x93778', '2016-08-26 07:10:33', '2015-02-27 17:58:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Marta', 'Wyman', 'brendan.hagenes@example.net', '324.010.2643x341', '2013-08-26 03:21:57', '2013-05-27 04:10:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Sabryna', 'Sanford', 'tanya.hessel@example.org', '(811)593-3190x60405', '2011-06-21 15:01:03', '2018-10-22 04:16:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Derek', 'Hilll', 'kunde.jalen@example.net', '673.247.5015', '2012-07-16 09:49:14', '2010-08-21 01:38:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Emile', 'Batz', 'xgerlach@example.org', '(528)321-0222x39763', '2018-07-18 22:16:43', '2019-11-26 19:26:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Maximus', 'DuBuque', 'robin.rolfson@example.org', '615.759.1273', '2012-06-22 20:05:05', '2019-05-05 07:00:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Leland', 'Collier', 'thompson.marcia@example.net', '846.701.8815', '2019-11-01 13:02:46', '2018-02-26 01:47:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Braden', 'Koelpin', 'gordon02@example.net', '1-595-658-9437x24871', '2013-09-29 23:16:09', '2016-04-05 04:32:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Phyllis', 'Little', 'zachariah64@example.org', '860-599-4548x35796', '2013-09-09 14:02:56', '2017-06-16 06:05:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Katarina', 'Marvin', 'heaney.kenna@example.com', '227.797.5409x93003', '2011-12-10 11:58:58', '2010-11-13 06:17:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Josephine', 'Pagac', 'amalia.dicki@example.org', '056.245.4117x511', '2016-11-08 21:34:33', '2012-11-01 10:57:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Bethany', 'Homenick', 'edgar46@example.org', '699-460-4654', '2020-05-01 11:20:55', '2019-12-27 04:29:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Breanne', 'Baumbach', 'brakus.dariana@example.org', '(992)621-8593x53617', '2015-07-30 12:36:40', '2011-02-24 15:54:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Roslyn', 'Goodwin', 'romaguera.destini@example.com', '(650)959-7668x130', '2014-04-29 22:11:39', '2012-11-02 10:36:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Wilber', 'Reichert', 'lhickle@example.com', '640-307-9413x62988', '2017-04-12 19:21:27', '2019-08-08 23:47:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Trent', 'Kirlin', 'jermain32@example.com', '951.017.5302x95254', '2017-02-17 00:11:54', '2016-01-09 14:48:44');


