
#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `media`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ФАМИЛИЯ',
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` char(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_email_idx` (`email`),
  KEY `users_phone_idx` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('1', 'Darryl', 'Hartmann', 'nlakin@example.org', '1-778-009-0', '4f36c5d05d92d528c8392effb976044d4e35815c', '1984-12-30 19:47:07');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('2', 'Idella', 'Hills', 'lucinda55@example.com', '(239)661-76', 'e0eed372d2bdda43ba61b89e3403920dbaa2e672', '1997-03-25 10:35:40');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('3', 'Loraine', 'Hyatt', 'kim93@example.net', '1-759-258-5', 'e8c4fdf8847d46e5ceae27df27e0b668d8263b86', '1992-01-13 18:23:04');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('4', 'Louisa', 'Ullrich', 'isteuber@example.net', '(136)335-11', 'e9c1f60159f83b3630786795959e8bc99f8bcc60', '1984-12-03 10:54:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('5', 'Paxton', 'Sanford', 'franz.lynch@example.com', '562-961-108', '3f21a5620701f8ecc04ba4f08ea9b7b076fa6f78', '1996-07-24 16:41:13');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('6', 'Carmine', 'Daniel', 'king.leatha@example.com', '495-431-051', 'b4573b3852e4e2065c2a591714bcdaa1a5ae4689', '2009-08-12 14:00:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('7', 'Sherman', 'Anderson', 'alta49@example.net', '422-262-927', '65a3f3a537465a9b369ccd8c380dd6462e303bdf', '1984-08-02 15:23:45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('8', 'Greyson', 'Steuber', 'marshall.rempel@example.org', '663-189-822', '70e3f337ebb612730c6c8bf9a6566d2a5501dd4d', '1971-12-03 17:00:47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('9', 'Alex', 'Bauch', 'steuber.norval@example.org', '158.594.209', '8b7f653a12d456cb37ecc6ca1cdd38ccc2867156', '1995-10-01 20:27:22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('10', 'Janis', 'Rosenbaum', 'floyd69@example.com', '(348)864-92', '12f0078e8ce1a77eb8b9087a262e92cee1d866b3', '2012-04-22 02:31:25');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('11', 'Loy', 'Nikolaus', 'kirstin83@example.com', '397.281.556', '21fcbe82ca8b3cf90ee0a87a6943e3f17f8346fb', '2011-05-21 07:44:10');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('12', 'Noah', 'Donnelly', 'roberta.herzog@example.net', '1-682-463-0', 'a9d3afe1e38310f909592ed84002c1a7ccafb5b7', '2002-02-02 08:43:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('13', 'Alberto', 'Roob', 'geoffrey35@example.net', '1-263-156-2', 'd4565fc34d54de6917c0281050a11045e5782bcd', '2020-03-29 17:13:14');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('14', 'Amara', 'Daniel', 'erdman.aniya@example.net', '809-299-491', '9bc7ee5747f19cdf8df71dc47f2c90aaf323a4c3', '1970-04-23 12:48:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('15', 'Mertie', 'Bartoletti', 'goodwin.lorena@example.org', '09344586242', 'ca37490ac6efe81177c81a833846311b7dcf9f88', '2009-10-16 01:53:29');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('16', 'Oswaldo', 'Bernier', 'zboncak.fay@example.org', '501.548.092', '8e215eac47e2f430ef2f599ad920c42c5bb47b09', '1976-12-30 21:56:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('17', 'Brown', 'Stark', 'orin33@example.org', '543-313-007', '19e2c3892c8c73cd78a3daec8d80c1869ecd10f9', '2002-12-16 21:07:44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('18', 'Emmy', 'Reichel', 'tyrel56@example.net', '1-978-293-5', 'e783d1b43cc988eed7aafe140186e47ecb5fcebc', '2003-02-17 15:22:12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('19', 'Twila', 'Miller', 'trisha.huels@example.net', '960-230-145', '5c5aaa3654a4815bdcaf2eb0a26522e91a00d146', '1999-04-30 08:57:15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('20', 'Bette', 'Barrows', 'lang.vivienne@example.com', '1-378-683-0', '63043d7c715891339cec821c9a7829ef0761c165', '1987-07-24 23:53:42');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('21', 'Noemie', 'Turcotte', 'abrown@example.org', '+40(9)76786', '48a6207847aea0071711d74b1462c889f72239d0', '1993-01-01 20:04:35');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('22', 'Aurelia', 'Balistreri', 'georgianna16@example.org', '(456)757-58', '2366c520a2412cc152121bc44687d883e89aedd0', '1998-01-31 16:19:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('23', 'Marty', 'Collier', 'cielo.ebert@example.com', '(156)313-41', 'd2439b883ca2fd11c6702cd614304acae7e0925f', '1993-07-05 02:06:26');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('24', 'Courtney', 'Wiegand', 'willie76@example.net', '129.016.150', '376e9f75c512938e60797bf99c4f02dbafb403cb', '2003-12-04 21:28:58');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('25', 'Doris', 'Koelpin', 'dooley.tamara@example.org', '985-515-948', '7fef1c95bd9c5ec308003239f2b92dd31224d1fd', '1985-09-22 11:17:38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('26', 'Romaine', 'Carroll', 'lila04@example.org', '04455321891', '1a7ef49749821de78ea47731d26db6dbd2575e3f', '2002-02-20 06:11:07');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('27', 'Reggie', 'Mante', 'hansen.linda@example.net', '1-034-327-6', '0f56178831094355bd7f31cbca9cd86a8f057f13', '1979-02-13 05:27:37');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('28', 'Sean', 'Mitchell', 'whand@example.net', '1-820-448-6', 'f32df13b7559f25bc4fcabdac3e98d8460694e1f', '1982-05-16 05:49:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('29', 'Adeline', 'Leuschke', 'rmonahan@example.org', '03749983210', 'b936eec08f9f4a9449c14cb7cad9ff9b6ea2a5f5', '2004-07-20 13:11:54');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('30', 'Leatha', 'Will', 'gmosciski@example.com', '(091)699-11', '0ba587dc23b36f802ca2aef98c5c097d9a893ab7', '2016-08-26 22:26:43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('31', 'Ladarius', 'Wunsch', 'fturner@example.org', '053-785-661', 'a33451b5fdd724d31232ef0557d80b16888ee719', '1974-08-28 18:03:25');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('32', 'Angelita', 'Blanda', 'hanna.schowalter@example.org', '1-346-198-7', '1682a1ce0aaaa52e5fd38a35403682f4c3f0cb1d', '1992-08-14 20:49:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('33', 'Mable', 'Wehner', 'adriana95@example.com', '523-638-044', '911c97503819b583fd8c2d935bbecccbf752aafc', '2008-05-21 04:27:30');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('34', 'Eda', 'Littel', 'sally59@example.com', '(352)131-90', '76dd7f13149280665da5fe8aa556795977801024', '2016-12-19 08:02:33');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('35', 'Fidel', 'Anderson', 'rhiannon.kiehn@example.com', '172-410-053', '40f9bf460f1ec714ec5b2ce276cd5a285a468c38', '2005-11-08 11:53:07');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('36', 'Leland', 'Auer', 'reina.dubuque@example.com', '1-778-352-7', '2b2d54bb6fea4c11b702641c972e6dcc426db73c', '2010-02-17 17:17:06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('37', 'Khalid', 'Barrows', 'kaia.ruecker@example.com', '881-758-355', '58db3462763f8e1138e73594ef8d5a6e4a034e1c', '2009-07-04 18:39:23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('38', 'Neoma', 'Graham', 'keshaun.volkman@example.org', '(583)739-13', '8a9c21081eba478a7dd925ed77188abe13241546', '1992-06-22 22:47:25');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('39', 'Lavon', 'Leannon', 'abernathy.constance@example.com', '07834041075', 'aa431f9bbca12f45877a41965c14086201b73baa', '2018-05-17 11:27:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('40', 'Lacey', 'Franecki', 'breitenberg.diamond@example.net', '527-389-148', '7fa3cba2a97791b596c0929ac0790161d4edfc89', '1970-02-02 10:33:45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('41', 'Ken', 'Reinger', 'crooks.larissa@example.org', '(570)072-15', 'b5f2c0d8cfade50fddefc06f5aae91cdf26e661f', '2009-06-15 04:53:03');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('42', 'Maxine', 'Hartmann', 'breanna.romaguera@example.net', '+97(2)21411', 'e1ebb34a10c954461f9712eac6e4e800e1b960a6', '2015-06-08 13:45:01');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('43', 'Anna', 'Ruecker', 'haley.o\'conner@example.org', '581-897-354', '715552c698bf58b634b7769be4fa4618984221b9', '2013-04-25 21:03:18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('44', 'Kyra', 'Rau', 'nwillms@example.org', '(884)321-91', '1718c1bacd7573e5255b840aefa8da69722a5699', '2004-02-19 15:39:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('45', 'Sydni', 'Erdman', 'ikertzmann@example.net', '09874350577', 'faed634737e59cbb1d81b9b0fd57ddf32ecebec3', '1989-05-25 18:02:58');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('46', 'Scarlett', 'Jacobson', 'nia38@example.org', '+38(8)79800', '59fe247c22d403951f0d08869c7aae9c51edc665', '1998-11-23 23:10:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('47', 'Velda', 'Greenfelder', 'klockman@example.org', '02712712617', '6c5a52f67125bfcb9145992d32fa4d3cc95985b8', '2019-06-08 15:25:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('48', 'Nathaniel', 'Bauch', 'elvie.schiller@example.net', '339-730-274', '040c80b53428d12cda8d0f1436ed572d0d798df6', '2003-08-02 18:49:59');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('49', 'Carlie', 'Funk', 'chelsea62@example.com', '(962)661-07', '57133d08f48bfab6f1513ccf0c2882763a7dd268', '1988-01-18 02:47:06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('50', 'Marlene', 'Tillman', 'knicolas@example.com', '950.130.281', '2d1d5aa94107c089e78cb2fd7f2018625b9ea3c5', '1992-02-20 00:43:09');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('51', 'Rasheed', 'Lang', 'alvera48@example.net', '087-213-461', '39e747807818df77d80b07778013e9a9598115c0', '2001-09-04 13:26:43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('52', 'Marie', 'Von', 'tyrese71@example.net', '(950)704-34', '3bc2c5c1560b482d69eddcdb1fcbf546bf4f7e39', '1995-03-25 19:34:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('53', 'Stuart', 'Wyman', 'lowell.will@example.net', '(840)065-31', '829607f2ff278d816e798681031b1953d20b3465', '1980-10-25 10:33:57');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('54', 'Herbert', 'Abshire', 'qmarquardt@example.net', '1-710-804-0', '17eb0a8142795985e6a55e12182f6c8b4a69f44e', '1995-11-24 16:32:16');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('55', 'Russ', 'Orn', 'wd\'amore@example.org', '1-303-694-8', '24a89e1b5a3b23d0e2f26c9f94853e6c205a7dff', '1986-02-26 15:06:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('56', 'America', 'Moore', 'santiago.hermann@example.net', '553.250.312', '3706cbb6bdcac56d3e810472a06af1046ae86bc4', '1975-03-06 14:20:41');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('57', 'Allison', 'Lesch', 'kassulke.candido@example.net', '1-297-564-8', '4298cddfeb860ff4fdace9d2b7bd818536c31397', '1971-10-28 06:52:06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('58', 'Dianna', 'Haley', 'madyson36@example.org', '305-405-013', '160fbea7b91e02515bed869e4e1c1a0b6557126d', '1978-11-15 17:38:20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('59', 'Sherwood', 'Schmeler', 'tyler.macejkovic@example.org', '473-825-857', '700dc401ee2d00f82e23436db0f49aec2565c473', '2019-04-02 13:57:18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('60', 'Logan', 'Nicolas', 'delaney94@example.net', '125.748.975', 'd41f27a3e81e1ea0b02663ac8296c6cae96b8d24', '2005-06-09 00:12:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('61', 'Mya', 'Hane', 'collins.jada@example.org', '850.951.288', '6b21236af157f22e2a433b7ad5e2ccf84f24ea71', '2007-05-05 00:45:05');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('62', 'Betty', 'Cummings', 'schumm.markus@example.org', '(582)088-21', '079d40bb2b28b3ddb9bf217d786a561b1ed6ecc8', '2009-07-02 00:01:43');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('63', 'Kelvin', 'Renner', 'verla.donnelly@example.com', '643.241.755', 'd36c116d9a43b6c93c139a342994cae2c0369be7', '1977-02-03 10:50:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('64', 'Carole', 'Labadie', 'rubie.romaguera@example.org', '(492)240-58', '87266c8a5998bf9197807effcdcd9fd190b51bd9', '1991-09-23 04:02:03');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('65', 'Tomasa', 'Leffler', 'nolan.fredrick@example.org', '00522208402', '757efd58acaad2309e684eac4802ad501726af8f', '1972-03-10 07:13:46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('66', 'Caitlyn', 'Herman', 'franecki.arvilla@example.net', '(726)817-87', '7a80ccc4328ab26f24ea6beea9f6fde370ceba56', '1992-10-25 13:08:15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('67', 'Liliana', 'Erdman', 'justine.maggio@example.net', '590.141.800', 'c449ca3f6a6980e1c8193647ea4b8e1b6567e339', '1975-05-13 06:31:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('68', 'Ashleigh', 'Sporer', 'coby.ullrich@example.net', '393-077-265', '884b5156cbe22048c507f9b07ee40b9055044860', '2004-02-17 14:30:18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('69', 'Pansy', 'Treutel', 'franecki.blanca@example.com', '891.880.832', '5be1cf0b9cfe8bd253eb2b6d46bc23be2b67f1e6', '2021-05-26 17:24:06');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('70', 'Erick', 'Effertz', 'claire51@example.net', '186.624.764', '7ae9696793f7d7779c99a75000baa4463631f4a5', '2006-06-06 20:38:31');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('71', 'Parker', 'Wolf', 'calista.gislason@example.com', '(119)285-69', '9824e9a64cd9026cd0047539b2e3221e13e9be80', '2014-12-13 04:30:44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('72', 'Krystel', 'Gleason', 'lframi@example.org', '1-055-176-5', '482202ba4fee3a41d8047ff94a7b8c7dfed7dece', '2020-10-02 16:37:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('73', 'Wava', 'Carter', 'nbayer@example.com', '06678922582', 'cf6dac44c2f2b1ffca3f6c52a32ea352117b3031', '1988-01-03 11:06:53');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('74', 'Carmine', 'O\'Keefe', 'white.alfonzo@example.org', '806.361.682', '8f5cc86d467a9d834f8620270d56b733d92d4c38', '1971-03-07 13:28:30');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('75', 'Frederik', 'Denesik', 'crona.lavon@example.net', '728.155.107', '878582eae1712b9c8a7261266626099a82c00b85', '1989-07-22 04:49:44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('76', 'Vicenta', 'Mueller', 'brain.jaskolski@example.com', '(818)645-20', 'd18006d4411bf9f314a98bd1566194fa20f2bc4a', '1995-07-05 16:38:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('77', 'Nat', 'Cruickshank', 'madie.brown@example.net', '456-508-994', '47be8cc29b2409a4dcd1c27504978f1950bbc7bd', '1991-01-29 04:25:54');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('78', 'Vilma', 'Wolff', 'wolf.kevin@example.com', '(488)655-01', '853c6acb2653eb8c9400c153086a8aa63f1c291e', '2019-05-07 19:24:32');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('79', 'Ila', 'Gulgowski', 'phayes@example.com', '071-828-214', '1f6632f84e65777274476857fef67fbdfdb8df55', '1979-05-26 01:27:18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('80', 'Serenity', 'Wisozk', 'loraine37@example.net', '1-953-595-2', 'eaa27a753afc3ab548eb4ab8d4f94af3642042cf', '1976-11-30 15:00:45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('81', 'Waylon', 'Carter', 'tkeebler@example.com', '1-033-916-1', '5e0ac97903a80eef5f5f74a1c23cd556458fc5a3', '1971-05-29 02:48:38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('82', 'Alize', 'Herzog', 'batz.ally@example.org', '854-028-676', '0b61fb45feeba70729f9f56d8c243d0a26fc5ad4', '2005-11-20 02:39:17');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('83', 'Nicolette', 'Franecki', 'susanna26@example.com', '172.154.671', '4919f694f98747525e8357b9a09e49a8173518b3', '2018-11-09 02:06:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('84', 'Peter', 'Moore', 'feeney.sim@example.com', '+50(6)59268', 'd1364ae4cc764e6c07c0f0e271609bf068fce6c0', '1996-08-14 11:32:55');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('85', 'Gordon', 'Jones', 'talon.schiller@example.net', '09237222168', '85bbed7a3140c731dd22be7fa0cc04135dfd004d', '2007-04-16 03:08:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('86', 'Junior', 'Ortiz', 'modesta.klocko@example.com', '770-159-594', 'f34a4139d4f763508cf705c0d1ae954dc69df335', '2015-11-04 23:36:34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('87', 'Demetrius', 'Miller', 'heathcote.rickie@example.net', '1-962-453-5', '922a2963aba32223b212b950ad02e3e97b0b5daf', '2011-12-12 09:19:36');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('88', 'Emil', 'Hansen', 'americo46@example.net', '058-458-860', 'd6e8323a633c78cb079d5b4101eeeae24b3e968d', '1971-08-04 23:28:38');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('89', 'Yessenia', 'Watsica', 'ralph19@example.net', '697.835.171', '6dac946d274b4b3ca6392e628684d0f389fe45dc', '2018-12-07 16:34:22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('90', 'Rory', 'Jacobson', 'aufderhar.brigitte@example.net', '(342)552-08', 'e441a6146ed0fc7c5f4ff6aaef5a99276b697ed7', '2011-08-21 01:28:30');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('91', 'Otho', 'Koch', 'wilderman.joan@example.com', '(567)868-91', '2830094c465aba74e7678bc5b53e4ba6004f6167', '1973-05-18 13:48:30');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('92', 'Reilly', 'Zieme', 'medhurst.ila@example.net', '164.213.148', '92c1b4fc03a92feeb770d8e715aa2edd280685a2', '1982-05-27 13:56:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('93', 'Ophelia', 'O\'Keefe', 'pouros.ford@example.com', '771-721-934', '3992a41fe386053603cb8ba9789290576ddf2c0a', '2012-05-30 11:21:00');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('94', 'Christop', 'O\'Conner', 'larkin.omer@example.com', '212.527.778', '0fa47024396ce29fd024d13a14c2021ba4a077e0', '1995-02-20 12:40:45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('95', 'Mattie', 'Johns', 'oberbrunner.hortense@example.net', '918.060.321', 'd2e305315d0915a2bd87abe46d1d292d895b7bee', '2005-07-01 21:24:35');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('96', 'Alexandrine', 'Bergstrom', 'ulices.block@example.com', '1-424-888-9', 'eaa72b41a8878e377cdf52476a2bbe58faab63c6', '1985-09-11 22:50:29');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('97', 'Monserrat', 'Pouros', 'reece18@example.org', '1-564-735-3', '8a0a727d292d9ce96de98cd7a4f5440870c9d94d', '2010-01-08 16:59:56');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('98', 'Aracely', 'Satterfield', 'koepp.adell@example.org', '(553)533-03', '989add86283428a42afc78f3252fc297a8c94d69', '2004-08-07 01:01:08');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('99', 'Hardy', 'Hintz', 'amir.hand@example.org', '799.895.820', '2ea23d1da7f1c98cba99bbf66dc6007f10404daa', '1989-04-04 08:52:28');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `password_hash`, `created_at`) VALUES ('100', 'Jay', 'Nienow', 'emely.beier@example.net', '(942)885-71', '9db9c7fd6622131ee035fa8f4703f1459ab4e89b', '2001-02-11 12:55:42');


#
# TABLE STRUCTURE FOR: communities
#
DROP TABLE IF EXISTS `communities_users`;
DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `communities_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('1', 'fugit', 'Et a eos vel. Consectetur est doloremque architecto beatae. Doloribus architecto non ut et et in dolores. Illo et ex facere est doloremque sed quae.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('2', 'sapiente', 'Iusto eos voluptate aut repellat error. Quis laborum officiis consequatur nostrum. Quibusdam id cumque in dolores.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('3', 'est', 'Saepe omnis ut voluptas quos enim recusandae rerum ipsum. Corporis voluptas laudantium aperiam dolores commodi in sint et. Non autem vel sequi est facilis. Quis quibusdam officiis illum dolore at et.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('4', 'ut', 'Ullam mollitia molestias nesciunt quia. Consequatur dolor ut architecto sint. Modi non rerum alias quibusdam. Eveniet distinctio quos dolorem ut inventore sed error.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('5', 'accusantium', 'Eveniet minima optio aliquam dolor. Quo omnis rem aut sit voluptates. Doloribus harum accusantium nemo aliquam quae impedit eaque. Autem sed animi voluptatibus consequatur ipsam voluptas.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('6', 'repellendus', 'Enim corrupti beatae harum perferendis. Voluptatem magnam est asperiores ut quidem aut autem. Omnis corrupti vel ducimus perspiciatis est sed. Sed repellendus inventore sit hic exercitationem eveniet dolorem.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('7', 'quod', 'Quis quia officia maxime ea. Numquam ea necessitatibus et porro. Ipsam quia labore iste laborum iure ex consequatur. Omnis eius eum maxime iure quo ut culpa. Voluptas quod sit eveniet ea tempora enim commodi.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('8', 'sit', 'Enim a vel fuga neque quibusdam ex. Voluptatibus minima sunt commodi sed qui quibusdam cupiditate. Est possimus expedita quis provident est sint modi amet. Quia blanditiis aut iste.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('9', 'enim', 'Quis assumenda sit qui explicabo eius quis architecto. Voluptas non commodi quos. Minima sunt rem occaecati.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('10', 'officia', 'Sunt et sed est dolor. Inventore optio labore natus vel. Quo ut rem expedita quibusdam aspernatur.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('11', 'ut', 'Ipsum explicabo hic quia nam. Officia et quisquam voluptates dignissimos ut rem quas. Reiciendis dolores quia nostrum ipsum.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('12', 'aliquid', 'Voluptate id necessitatibus id voluptatum. Officiis quasi expedita aut ut vel. Illum nostrum et sed odio. Ut blanditiis in laudantium corporis perferendis qui. Id et numquam quos nobis eos id omnis.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('13', 'corrupti', 'Nihil similique voluptate omnis nihil voluptatibus odit ipsam. Sunt et velit quibusdam deleniti repellendus necessitatibus ut. Autem in beatae quibusdam sequi fugit. Sapiente harum laborum hic dolorem beatae quisquam.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('14', 'nihil', 'Sed repellendus quo sint et quisquam excepturi illo ipsam. Error natus deserunt ut sit numquam aut. Adipisci perspiciatis delectus incidunt et consequuntur cumque.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('15', 'delectus', 'Labore quas libero dolore exercitationem aut sunt. Quisquam id eum fuga et. Ea perspiciatis libero earum sunt incidunt. Corrupti sequi consequatur iste illo minus accusantium.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('16', 'accusamus', 'Ad exercitationem voluptatem possimus est eligendi. Officia facere facilis odio et quidem. Doloribus laboriosam est et. Fuga facilis quod veniam quia velit dolor unde. Accusantium doloremque autem voluptas ea animi molestias hic.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('17', 'quis', 'Quos porro nostrum aliquid. Rerum modi et consequuntur qui qui. Aut nulla non molestiae saepe. Quia quia est id. Et ut corporis dolorem molestiae neque velit.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('18', 'omnis', 'Quia qui id ratione expedita fuga quia minima reiciendis. Deleniti vitae dolor perspiciatis molestiae sit laboriosam sint necessitatibus.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('19', 'laborum', 'Ea et iusto quos quisquam dolorum eos aut ea. Voluptatem vitae dolor ut magnam. Doloremque voluptates perspiciatis tempora aperiam eum nemo quia. Ratione eaque perferendis quae alias ut minima ipsa.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('20', 'non', 'Perferendis incidunt tempora quibusdam eum adipisci praesentium qui. Qui voluptates expedita omnis sed qui. Voluptatem et dolorem velit voluptatum porro.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('21', 'dignissimos', 'Repellat voluptates excepturi maxime a dolorum consectetur. Consequatur est nihil modi porro consequatur. Sequi ducimus laudantium dolor animi molestiae qui. Praesentium quod harum aut tenetur distinctio minima et.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('22', 'non', 'Earum iste possimus quis et beatae officiis dolor. Nisi aut quisquam distinctio eaque omnis. Ut eum facilis aut voluptates ea. Et adipisci aut consequatur.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('23', 'dolores', 'Ratione quasi consequatur quia itaque fuga. Ducimus sit nulla numquam totam voluptas qui ab consequuntur. Qui aut id quas delectus numquam sit dolores. Nisi labore unde impedit quia voluptatem.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('24', 'quae', 'Ipsa dolore ex voluptas ab deleniti. Qui pariatur ea consectetur. Quo placeat aut qui enim aliquid consequuntur iste.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('25', 'eaque', 'Veritatis harum mollitia maxime ut aperiam quas autem. Ut illum labore illo voluptatem amet aliquam fuga vel. Aspernatur sunt rem maiores expedita sed in magni non. Magni voluptates praesentium qui temporibus sint accusantium quas excepturi.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('26', 'quae', 'Eveniet fugiat quia adipisci et. Dolor velit id labore voluptatem. Et sint enim distinctio rerum. At consequatur adipisci adipisci consectetur aliquam velit dolorem.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('27', 'velit', 'Harum et sapiente eaque qui animi. Eum et aliquam ut quia consequuntur nesciunt.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('28', 'ea', 'Alias perspiciatis ut maxime voluptas quia ut ratione. Occaecati ea sit alias maxime dolores soluta vero. Sed beatae dicta unde autem eos. Eum eos a maiores eaque.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('29', 'delectus', 'Ipsam vitae placeat id. Laborum adipisci soluta eaque. Deserunt quibusdam quas inventore quis delectus. Praesentium aliquam aut quia magnam.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('30', 'expedita', 'Illo est quia vitae assumenda pariatur nihil. Voluptas officia mollitia beatae.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('31', 'rem', 'Ab debitis omnis cupiditate sint. Et est magni inventore corporis dolore porro esse repellendus. Ipsa harum voluptas aut dolor error a recusandae.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('32', 'eaque', 'Iusto voluptas assumenda et sed accusantium tempore. Vero quos ipsum ea fugit eius tempora. Omnis suscipit voluptas porro ipsum voluptatibus. Et eaque minima et quo natus libero.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('33', 'molestiae', 'Vero culpa debitis accusantium quos veniam. Qui mollitia culpa magni in. Dolores at qui ea voluptate et totam. Et voluptas voluptatem dignissimos nemo et voluptas quia.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('34', 'omnis', 'Ea ea consectetur neque eligendi quos ipsum ipsam. Qui veritatis est odit consequatur mollitia ducimus enim. Recusandae ut sunt explicabo voluptatem aspernatur cumque distinctio quidem.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('35', 'magnam', 'Sapiente qui doloremque deleniti autem molestias. At nostrum qui pariatur et sapiente modi. Quasi animi ad quod. Dolores rerum hic fugit. Repellat magnam nihil eaque dolorum.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('36', 'sed', 'Reiciendis voluptas id ullam iste dolore vel. Sequi quis fugit voluptas ut quam voluptatem aut est. Nihil accusamus non a ad pariatur nulla.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('37', 'ea', 'Sed sapiente fugiat aut. Molestias ratione dolore harum autem ullam. Deleniti voluptate qui voluptas qui et.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('38', 'doloribus', 'Laboriosam eligendi beatae omnis debitis. Eos autem aliquid error et sunt quia dolor eius. Minus expedita qui quam est consectetur. Dolores velit ea ut impedit et.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('39', 'maxime', 'Facere et sit quaerat rerum sed libero nihil nam. Dolor est aut adipisci nulla. Ut aliquam quos architecto quo dolores quo.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('40', 'sunt', 'Sed quibusdam ducimus omnis nisi maxime autem ducimus. Voluptate odit a illo. Placeat quia quia architecto aut. Sed laboriosam sed voluptas.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('41', 'culpa', 'Est explicabo debitis eaque. Dolorum eos fugiat est eum voluptates occaecati.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('42', 'eum', 'Culpa sapiente reprehenderit deleniti. Odit praesentium pariatur minus voluptatem sit ab veritatis. Voluptatum maiores magnam dolore qui consequuntur odio et.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('43', 'dicta', 'Perferendis qui quos enim ut voluptates quam quibusdam recusandae. Est vitae ea quam minima. Et veniam qui et. Et hic repudiandae quod esse mollitia atque.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('44', 'repellendus', 'Nihil amet dolores voluptate est distinctio culpa. Illo dolore vero illo perspiciatis. Voluptatem at ab nobis amet velit vero sunt. Autem sit libero in saepe.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('45', 'occaecati', 'Consequatur iure amet quaerat. Iure impedit enim quibusdam iure et exercitationem sed enim. Accusamus error minus sed optio.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('46', 'ab', 'Necessitatibus sed quas doloribus quia. Sit dolor assumenda totam pariatur maxime eos qui. Aut qui minus laudantium architecto soluta. Vero et in dolorum magni reprehenderit nostrum.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('47', 'totam', 'Consequatur molestias nulla animi dolor. Sed id dolorem aut et consequuntur dolor. Repudiandae deserunt ut magnam. Et atque at ut suscipit.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('48', 'illum', 'Suscipit harum aut explicabo est quidem labore et. Inventore dicta distinctio nesciunt fuga sit. Non magnam non omnis reiciendis quia culpa quod. Accusantium non dolorum reiciendis tenetur aut provident eum quidem.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('49', 'perspiciatis', 'Et aut amet corrupti quo ipsa. Error provident omnis doloribus. Quae eveniet possimus modi dolores.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('50', 'consequuntur', 'Ut neque quia minima eos ex quia. Ut nisi tenetur sapiente aliquid optio aut impedit. Voluptatem quis et ut et ab consequatur minima. Veniam itaque perspiciatis vel eius doloribus delectus.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('51', 'saepe', 'Est quia deserunt eius rem saepe ab debitis laboriosam. Sit aperiam vitae et eveniet recusandae rerum. Cupiditate in est mollitia eum corporis. Sint rerum error modi maxime porro.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('52', 'ut', 'Eius quisquam rerum vel alias. Repellendus iure alias eum placeat. Aut ipsa deleniti quia.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('53', 'ea', 'Non laudantium enim molestiae rem libero minima blanditiis velit. Quo itaque quia fuga error voluptatem. Eos esse explicabo adipisci consequatur ab repudiandae.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('54', 'qui', 'Quia amet sed excepturi. Nobis eum delectus rerum sed est. Aut eos sequi magni ut alias dignissimos odit ad. Eveniet voluptatibus architecto harum et eius quis.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('55', 'et', 'Nihil omnis dolore cum quo. Illo culpa exercitationem ipsam reprehenderit perferendis atque minima. Quo quos est est ut omnis explicabo aut.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('56', 'quia', 'Quo aspernatur qui est aperiam. Facilis corrupti esse architecto optio quasi. At minus ut sequi et eveniet recusandae voluptatem. Aliquam eum aut sunt error assumenda beatae.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('57', 'qui', 'Dolorum harum vero consequuntur aut omnis iure repudiandae. Sint temporibus quis facere velit. Necessitatibus nam architecto enim. Consequatur incidunt et rerum voluptatem autem totam.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('58', 'ducimus', 'Quos doloremque qui a dolores repudiandae consequuntur consequatur aut. Facilis odio molestiae ut deleniti dicta consequatur voluptatem. Totam totam eos optio officia perspiciatis alias. Ea illo vero totam dicta repudiandae sunt nam.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('59', 'et', 'Beatae maxime minima unde molestias accusantium non. Aut molestias dolores id suscipit vel sunt fugit. Ex placeat illum id repellat omnis. Qui ut nulla ullam reiciendis.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('60', 'modi', 'Quia qui et provident fuga optio magnam cupiditate nostrum. Et sit quaerat quaerat est minus totam. Quam ex vel voluptas. Ea non ex nulla et nobis omnis aut repudiandae. Corrupti voluptate eos animi atque ratione consequatur.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('61', 'est', 'Non sequi nobis cumque iste doloremque temporibus. Est earum quibusdam velit voluptas quia error.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('62', 'et', 'Labore at sit quo. Numquam et atque nostrum iure odio beatae. Nostrum distinctio temporibus eum at magni sed.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('63', 'temporibus', 'Similique consequatur qui sit necessitatibus nihil necessitatibus. Illo corporis nam sed eaque tenetur recusandae earum. Harum a ut sint inventore omnis eum ut at.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('64', 'enim', 'Nihil molestias provident nulla esse laborum. Cumque et voluptatem corporis voluptas neque itaque doloribus consequatur. Vero rem itaque non et voluptas.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('65', 'dicta', 'Perferendis quia itaque eum aspernatur deserunt voluptas ex. Laboriosam rerum aut repudiandae ad.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('66', 'esse', 'Soluta quia eos et assumenda aut. Ipsam hic aliquid hic quae. Aperiam qui et voluptas iste id quo eum. Sint cupiditate aut consectetur minima rerum. Eius laudantium sed delectus ipsam voluptas ut officiis.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('67', 'libero', 'Consequatur velit magni numquam aut non. Molestias veritatis voluptatum minima dicta tenetur ab fugiat. Aut tempore reprehenderit aut reprehenderit.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('68', 'ratione', 'Corporis impedit fugit omnis. Autem molestiae at aut laborum. Omnis ratione non tenetur.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('69', 'id', 'Eos totam laudantium et corrupti dolor sint dolorum. Blanditiis optio aspernatur aspernatur magnam. Minus commodi ea est vero voluptas odit amet. Repudiandae ea nisi libero et porro.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('70', 'dolorem', 'Quia officiis iusto iure maiores impedit quod architecto asperiores. Est minima dolor illum est culpa. Sed quia laborum sit ratione culpa. Tenetur ut quas deleniti dolorum quo commodi in pariatur.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('71', 'aperiam', 'At maiores impedit quos non non dolores voluptatem. Dolores eveniet repellendus ut a non ut ab. Ex inventore sit possimus eligendi mollitia neque ipsa. Tempore nulla recusandae aut inventore vel ab occaecati.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('72', 'vel', 'Voluptatem omnis consectetur reiciendis enim ipsum repellendus alias porro. Non ut excepturi quia vel saepe corporis eum. Corporis consectetur dignissimos expedita rem vero dolore voluptatem.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('73', 'sunt', 'Dicta quia corporis et quae numquam. Facere dolores voluptatum reprehenderit commodi sed.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('74', 'cum', 'Modi quisquam quibusdam reprehenderit atque minus dolorum. Nihil eum est eum autem. A laborum occaecati optio neque. Labore optio qui ea omnis autem.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('75', 'ut', 'Deleniti dolores vitae voluptatem culpa eveniet et molestias. Est voluptate in et ratione ipsam voluptatem. Quia consectetur voluptas consequatur nulla sequi maxime exercitationem. Atque tempore possimus esse odit et.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('76', 'saepe', 'Voluptatem qui et cumque vitae. Quos laudantium et sit perferendis qui repellendus non maxime. Iste nobis non voluptatem nisi quam reprehenderit tempore. Voluptatum dolor occaecati accusamus et.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('77', 'excepturi', 'Expedita dolorum culpa accusantium sunt. Necessitatibus quia consequatur sit aut. Maiores adipisci omnis molestiae odit et.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('78', 'minus', 'Excepturi enim similique enim ab. Quam est recusandae rerum ipsum. Et voluptas voluptas sit recusandae. Possimus sunt adipisci qui consequuntur corrupti.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('79', 'minima', 'Id quos omnis dolore voluptate labore et. Ad molestias amet voluptatem et. Itaque ducimus aut blanditiis dolorum aut.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('80', 'dolor', 'Consequuntur sed nobis velit aliquam. Qui mollitia quas quia et et aspernatur harum quas. Provident et et quo perferendis cum iste unde.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('81', 'blanditiis', 'Omnis ducimus fugit culpa quaerat rerum omnis aliquam. Iste magnam assumenda quaerat pariatur veniam. Et ipsa eaque qui veritatis eum amet modi. Ab deserunt porro beatae labore aliquam quae.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('82', 'quia', 'Ut id dolorum sapiente. At ipsam aut earum fugiat rerum. Quis non veritatis maxime qui qui omnis sit.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('83', 'et', 'Libero reiciendis labore asperiores odit at at. Doloribus quia temporibus laudantium eligendi. Accusantium laborum quod sit non ut in eos. Consequatur odio alias odio ex.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('84', 'rem', 'Dolore eius error amet culpa asperiores. Atque iusto qui eum. Commodi assumenda molestiae amet consectetur officia et magnam.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('85', 'sunt', 'Minus deleniti totam enim omnis. Consequatur iusto quia quae similique velit. Id porro sequi suscipit nam expedita.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('86', 'est', 'Laborum qui quidem expedita non. Distinctio sit ab possimus repudiandae voluptatem. Dolor impedit quo voluptatem et iusto quia.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('87', 'voluptas', 'Harum recusandae et accusamus qui. Amet et laudantium at. Sapiente enim et perferendis iure. Aut vel consequatur suscipit.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('88', 'perferendis', 'Maxime vel accusamus expedita cum. Iure corrupti omnis ipsum dolorem. In quia temporibus aut dolore. Temporibus dignissimos ullam sint sunt voluptatem tenetur nulla qui.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('89', 'dolores', 'Aut blanditiis minima voluptatem iusto mollitia. Eaque suscipit voluptatibus minima modi quisquam magni voluptatum ut. Velit sed commodi rem perferendis. Sequi et et dolorem ut deleniti.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('90', 'necessitatibus', 'Placeat fuga error adipisci. Ut eum magni possimus expedita blanditiis amet architecto. Voluptatem voluptate mollitia rerum commodi reiciendis. Consequatur commodi aut veritatis quis nam enim.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('91', 'velit', 'Alias ducimus non harum quisquam. Aspernatur veritatis aliquid quia ab illum assumenda accusantium. Hic accusamus quaerat expedita qui quod dignissimos nobis rem.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('92', 'omnis', 'Alias autem maxime voluptates officia ab. Ut dolorem rerum et. Facere placeat maiores ratione et iste est.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('93', 'optio', 'Dicta assumenda sed hic aut vero est voluptatem. Hic consequatur quos odit facilis laboriosam voluptatem. Voluptates laboriosam ad saepe aut quas.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('94', 'quibusdam', 'Deleniti voluptatum blanditiis earum libero nihil voluptate. Ratione ea ipsum porro accusantium voluptatem dolorem similique. Hic reiciendis praesentium aspernatur nihil. Ipsum perferendis ratione quidem sunt id nulla magni.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('95', 'sed', 'Qui ex quidem fugit necessitatibus molestias non. Omnis sunt distinctio rerum eos fugiat et. Praesentium rerum alias autem qui aliquid tempora pariatur. Fugit delectus pariatur delectus excepturi inventore.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('96', 'quidem', 'Eaque quia autem omnis molestias. Tempora rem veniam repellendus rerum. Placeat non ab et adipisci. Dolorem saepe dolore officia sed sapiente sit cum. Ut animi qui deleniti.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('97', 'commodi', 'Cum ut aspernatur quos dolorum ipsa. Adipisci tenetur quas eveniet et veniam et. Perspiciatis harum ducimus eos. Laboriosam at ipsam facere aut.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('98', 'sapiente', 'Ea est et nemo aut. Voluptates ducimus dignissimos voluptates consequatur dolorum quos aperiam. Officiis in pariatur voluptatum vel non incidunt eos consequatur. Reiciendis dolorem et fugiat assumenda. Ipsam animi dolor reprehenderit autem conse');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('99', 'iure', 'Qui ex libero dolores accusantium quia quod. Quidem saepe amet quasi qui et ipsum quasi magnam.');
INSERT INTO `communities` (`id`, `name`, `description`) VALUES ('100', 'aliquid', 'Odit voluptas voluptatem fuga ut rerum consequuntur. Assumenda quibusdam dolores accusamus consectetur in asperiores assumenda.');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `communities_users_comm_idx` (`community_id`),
  KEY `communities_users_users_idx` (`user_id`),
  CONSTRAINT `communities_users_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `communities_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('1', '1', '2014-05-22 19:37:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('2', '2', '1974-01-29 02:20:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('3', '3', '1981-12-31 12:22:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('4', '4', '1971-11-27 08:34:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('5', '5', '1973-01-28 13:07:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('6', '6', '2011-10-13 01:46:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('7', '7', '1998-12-03 17:02:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('8', '8', '1982-02-10 14:52:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('9', '9', '2016-06-19 05:03:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('10', '10', '1996-05-31 10:56:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('11', '11', '2005-09-06 18:01:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('12', '12', '1993-03-06 00:42:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('13', '13', '1999-03-19 06:09:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('14', '14', '1971-06-01 05:54:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('15', '15', '2017-05-17 17:58:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('16', '16', '1988-11-07 02:27:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('17', '17', '1971-09-02 18:52:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('18', '18', '2006-08-14 14:13:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('19', '19', '2002-02-27 02:46:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('20', '20', '1989-06-17 22:09:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('21', '21', '1974-04-07 18:32:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('22', '22', '2011-01-01 12:03:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('23', '23', '2009-06-24 18:45:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('24', '24', '2007-09-19 14:18:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('25', '25', '1991-05-12 06:48:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('26', '26', '2021-05-09 14:16:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('27', '27', '1980-09-11 11:54:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('28', '28', '2015-05-19 02:55:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('29', '29', '1988-12-04 15:51:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('30', '30', '1978-05-23 02:37:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('31', '31', '2018-06-17 06:07:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('32', '32', '1992-07-04 14:22:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('33', '33', '2011-03-08 11:07:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('34', '34', '1998-11-17 22:06:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('35', '35', '1977-04-11 05:12:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('36', '36', '1997-11-07 22:45:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('37', '37', '1980-07-10 23:19:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('38', '38', '1979-10-26 19:13:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('39', '39', '1978-07-13 19:14:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('40', '40', '1996-11-14 06:21:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('41', '41', '1998-11-01 14:01:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('42', '42', '2013-10-22 19:14:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('43', '43', '2015-12-24 03:37:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('44', '44', '1983-08-31 16:48:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('45', '45', '1992-03-08 05:07:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('46', '46', '1982-11-18 20:56:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('47', '47', '1984-07-22 20:34:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('48', '48', '2013-02-11 14:35:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('49', '49', '1998-01-08 21:00:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('50', '50', '1995-05-08 19:52:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('51', '51', '1991-03-24 18:14:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('52', '52', '2013-05-04 22:18:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('53', '53', '2007-11-05 10:54:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('54', '54', '1980-11-30 12:29:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('55', '55', '2012-11-20 22:37:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('56', '56', '1973-03-07 04:15:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('57', '57', '1970-08-12 12:04:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('58', '58', '1984-12-02 18:47:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('59', '59', '1987-03-30 07:41:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('60', '60', '1976-03-24 17:02:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('61', '61', '1978-07-16 14:10:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('62', '62', '1982-08-27 01:45:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('63', '63', '1983-10-24 06:29:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('64', '64', '1973-12-11 15:28:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('65', '65', '1970-12-17 00:52:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('66', '66', '1999-02-23 04:36:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('67', '67', '1988-01-13 07:51:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('68', '68', '1990-01-31 02:00:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('69', '69', '2010-02-20 17:20:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('70', '70', '1998-08-13 20:18:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('71', '71', '1974-07-14 13:30:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('72', '72', '2002-09-30 01:58:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('73', '73', '1978-06-07 21:24:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('74', '74', '1994-04-22 17:13:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('75', '75', '1985-05-06 15:35:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('76', '76', '2014-01-11 06:09:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('77', '77', '1999-11-28 08:02:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('78', '78', '1994-06-06 12:39:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('79', '79', '1974-02-08 13:41:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('80', '80', '2005-10-18 23:13:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('81', '81', '1981-06-09 06:49:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('82', '82', '1986-10-26 17:47:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('83', '83', '1986-01-02 05:14:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('84', '84', '2004-04-06 16:31:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('85', '85', '2008-03-15 05:28:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('86', '86', '2007-02-28 12:55:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('87', '87', '2012-03-18 05:17:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('88', '88', '2013-07-07 09:12:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('89', '89', '1970-04-06 13:02:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('90', '90', '1977-12-16 14:09:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('91', '91', '2011-10-06 17:42:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('92', '92', '2002-12-17 02:04:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('93', '93', '2010-08-17 15:40:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('94', '94', '1999-04-26 14:46:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('95', '95', '2019-09-12 14:42:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('96', '96', '2012-02-15 10:51:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('97', '97', '1981-07-20 21:58:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('98', '98', '2011-09-04 21:16:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('99', '99', '2003-02-23 01:02:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('100', '100', '2003-09-26 05:05:00');

#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'dicta');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'eaque');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'odit');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'ut');


#
# TABLE STRUCTURE FOR: friend_requests
#

DROP TABLE IF EXISTS `friend_requests`;

CREATE TABLE `friend_requests` (
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `accepted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`from_user_id`,`to_user_id`),
  KEY `fk_friend_requests_from_user_idx` (`from_user_id`),
  KEY `fk_friend_requests_to_user_idx` (`to_user_id`),
  CONSTRAINT `fk_friend_requests_users_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_requests_users_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (43,29,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (75,42,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (37,75,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (38,88,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (95,82,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (43,74,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (99,24,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (75,14,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (64,66,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (27,83,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (100,44,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (2,15,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (58,26,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (14,19,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (6,61,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (45,21,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (81,44,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (86,3,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (16,74,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (7,98,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (58,21,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (82,99,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (63,30,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (8,62,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (83,77,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (36,17,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (58,94,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (49,45,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (29,2,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (25,98,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (6,53,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (57,51,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (40,34,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (58,76,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (21,88,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (76,57,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (39,42,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (70,57,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (29,70,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (65,10,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (46,23,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (83,26,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (100,35,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (97,17,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (23,94,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (60,90,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (4,10,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (4,32,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (58,47,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (38,54,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (11,59,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (4,90,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (54,16,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (51,19,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (98,10,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (50,31,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (65,29,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (56,86,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (41,63,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (81,64,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (11,17,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (83,15,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (32,62,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (71,65,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (13,56,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (70,19,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (47,16,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (44,56,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (52,63,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (68,76,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (63,85,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (90,52,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (30,5,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (44,64,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (96,39,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (17,71,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (25,6,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (2,77,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (75,38,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (27,8,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (17,26,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (13,3,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (99,75,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (47,36,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (63,81,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (2,37,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (35,48,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (11,1,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (48,19,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (83,40,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (86,70,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (96,37,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (22,23,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (13,64,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (46,76,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (93,5,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (16,29,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (67,54,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (2,98,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (88,80,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (83,9,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (78,99,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (72,99,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (55,72,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (67,43,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (22,84,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (47,73,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (2,89,0);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (71,64,1);
INSERT IGNORE INTO `friend_requests` (`from_user_id`,`to_user_id`,`accepted`) VALUES (30,19,1);


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_types_id` int(10) unsigned NOT NULL,
  `file_name` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '/files/folder/img.png',
  `file_size` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `media_users_idx` (`user_id`),
  KEY `media_media_types_idx` (`media_types_id`),
  CONSTRAINT `fk_media_media_types` FOREIGN KEY (`media_types_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `fk_media_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('1', '1', 1, 'sed', '858', '1972-10-11 15:17:31');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('2', '2', 2, 'facere', '3540', '1991-10-10 00:15:22');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('3', '3', 3, 'veniam', '82', '2007-08-07 13:48:51');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('4', '4', 4, 'veniam', '635325', '2015-10-29 12:43:02');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('5', '5', 1, 'iure', '74220459', '1987-01-09 19:49:08');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('6', '6', 2, 'minus', '219', '1993-09-02 09:05:42');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('7', '7', 3, 'a', '17636863', '1975-03-30 21:33:54');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('8', '8', 4, 'et', '0', '1986-07-08 02:31:18');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('9', '9', 1, 'amet', '52', '1987-01-14 17:21:45');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('10', '10', 2, 'saepe', '4452632', '1972-12-13 17:12:45');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('11', '11', 3, 'sequi', '33451544', '1981-03-03 16:22:14');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('12', '12', 4, 'ratione', '1', '1980-12-31 00:31:05');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('13', '13', 1, 'dolor', '962783', '1986-11-10 03:29:40');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('14', '14', 2, 'voluptatem', '651', '2011-10-16 17:27:42');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('15', '15', 3, 'natus', '782', '1992-09-23 02:53:12');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('16', '16', 4, 'facilis', '808212', '1973-12-26 12:33:37');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('17', '17', 1, 'minus', '926', '1978-09-13 04:51:16');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('18', '18', 2, 'quam', '6', '1992-07-26 03:40:10');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('19', '19', 3, 'quam', '34636', '2017-11-28 09:24:58');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('20', '20', 4, 'nulla', '39928', '2002-01-02 04:54:44');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('21', '21', 1, 'eligendi', '364112486', '1998-11-29 17:11:32');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('22', '22', 2, 'assumenda', '715959552', '1982-11-03 19:23:14');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('23', '23', 3, 'dolor', '93', '2021-01-20 07:59:25');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('24', '24', 4, 'modi', '83', '1998-08-30 23:02:49');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('25', '25', 1, 'accusamus', '710784507', '2016-03-14 07:57:38');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('26', '26', 2, 'quibusdam', '448655748', '2016-02-09 18:33:01');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('27', '27', 3, 'hic', '4', '1986-10-24 00:02:24');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('28', '28', 4, 'tempora', '5237757', '1999-06-18 05:44:43');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('29', '29', 1, 'laboriosam', '5711999', '2014-01-30 21:32:07');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('30', '30', 2, 'sit', '5174', '1999-08-18 08:11:08');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('31', '31', 3, 'ab', '13212', '2002-06-30 22:08:06');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('32', '32', 4, 'deleniti', '27913787', '1997-07-24 04:17:25');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('33', '33', 1, 'iusto', '15453', '2008-08-08 02:26:50');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('34', '34', 2, 'placeat', '1138176', '1987-06-10 16:21:35');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('35', '35', 3, 'dolorem', '118', '1978-09-20 20:05:09');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('36', '36', 4, 'qui', '68', '2019-03-04 16:34:48');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('37', '37', 1, 'et', '1870692', '2016-01-29 07:00:41');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('38', '38', 2, 'cupiditate', '719624466', '2011-06-05 21:49:33');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('39', '39', 3, 'ut', '953970', '1976-05-16 09:43:28');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('40', '40', 4, 'ut', '8897', '1994-03-27 20:47:18');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('41', '41', 1, 'qui', '314', '2015-03-29 14:03:36');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('42', '42', 2, 'ut', '2056', '1974-01-14 18:10:52');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('43', '43', 3, 'aut', '86752030', '1973-04-24 17:27:29');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('44', '44', 4, 'autem', '99', '1973-09-19 00:49:53');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('45', '45', 1, 'sint', '13333', '1985-03-20 15:32:06');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('46', '46', 2, 'quod', '8125571', '2007-06-20 12:43:35');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('47', '47', 3, 'reiciendis', '0', '2007-12-02 04:01:22');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('48', '48', 4, 'est', '0', '2017-06-20 08:09:01');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('49', '49', 1, 'quam', '636588', '1991-03-14 22:05:30');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('50', '50', 2, 'eaque', '463', '1977-06-04 07:02:37');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('51', '51', 3, 'voluptatem', '791703', '2018-08-07 18:59:51');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('52', '52', 4, 'voluptatum', '49026670', '2003-10-11 16:00:18');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('53', '53', 1, 'error', '1404867', '2001-04-20 17:29:56');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('54', '54', 2, 'veniam', '28617', '2004-12-24 11:28:22');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('55', '55', 3, 'necessitatibus', '0', '2009-10-24 15:56:34');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('56', '56', 4, 'totam', '1312', '1999-11-05 16:29:08');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('57', '57', 1, 'eius', '6166', '1993-08-21 11:04:54');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('58', '58', 2, 'unde', '0', '2010-12-20 23:07:29');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('59', '59', 3, 'ducimus', '889', '1991-05-14 10:32:25');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('60', '60', 4, 'necessitatibus', '8158907', '1999-03-03 07:12:54');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('61', '61', 1, 'odio', '680785277', '1984-12-31 02:33:06');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('62', '62', 2, 'soluta', '1073361', '2009-09-26 23:53:30');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('63', '63', 3, 'et', '3', '1973-04-20 23:04:26');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('64', '64', 4, 'qui', '3', '1981-04-17 14:44:56');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('65', '65', 1, 'quo', '4375', '2007-04-24 13:54:30');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('66', '66', 2, 'et', '847199', '1981-11-05 19:50:00');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('67', '67', 3, 'vel', '61', '2002-06-20 11:14:27');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('68', '68', 4, 'deleniti', '1', '2008-11-03 22:25:15');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('69', '69', 1, 'velit', '39', '2015-06-20 07:12:30');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('70', '70', 2, 'labore', '671', '1989-09-13 01:04:27');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('71', '71', 3, 'saepe', '2369198', '2007-07-17 20:46:29');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('72', '72', 4, 'modi', '148', '1974-02-13 23:04:29');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('73', '73', 1, 'blanditiis', '9', '1972-06-19 09:20:02');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('74', '74', 2, 'odit', '48851346', '1991-11-03 06:18:09');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('75', '75', 3, 'dolorem', '9890993', '2003-10-02 05:29:35');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('76', '76', 4, 'quo', '751714', '1986-01-05 21:46:56');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('77', '77', 1, 'tempore', '5522844', '1992-11-23 16:46:58');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('78', '78', 2, 'adipisci', '2144', '1971-10-24 13:07:25');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('79', '79', 3, 'nisi', '53918393', '1984-09-07 02:45:43');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('80', '80', 4, 'et', '511767', '2019-04-03 21:38:48');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('81', '81', 1, 'quibusdam', '5513', '1973-06-04 00:00:27');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('82', '82', 2, 'in', '195', '1971-11-03 16:47:04');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('83', '83', 3, 'excepturi', '28358', '1978-04-23 22:40:54');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('84', '84', 4, 'placeat', '689005', '2003-11-25 20:31:24');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('85', '85', 1, 'fugiat', '9234164', '1982-11-21 22:09:41');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('86', '86', 2, 'exercitationem', '6399216', '1972-10-04 22:05:03');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('87', '87', 3, 'repellendus', '4310', '1990-04-19 03:32:54');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('88', '88', 4, 'quis', '2696511', '1975-04-19 15:50:18');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('89', '89', 1, 'consequatur', '7', '1976-08-05 18:41:34');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('90', '90', 2, 'ut', '35982116', '2001-11-16 16:26:06');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('91', '91', 3, 'reprehenderit', '402614114', '1983-11-05 16:31:56');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('92', '92', 4, 'incidunt', '1', '2011-06-15 15:54:33');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('93', '93', 1, 'voluptas', '58744', '2003-10-02 15:32:02');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('94', '94', 2, 'dolorem', '0', '2019-06-30 21:17:13');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('95', '95', 3, 'eligendi', '0', '1989-08-12 10:59:34');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('96', '96', 4, 'velit', '731975', '2014-07-24 10:03:47');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('97', '97', 1, 'est', '2766284', '2012-11-16 08:13:29');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('98', '98', 2, 'delectus', '95', '1988-01-23 10:12:27');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('99', '99', 3, 'quis', '640', '1972-02-09 23:43:49');
INSERT INTO `media` (`id`, `user_id`, `media_types_id`, `file_name`, `file_size`, `created_at`) VALUES ('100', '100', 4, 'veniam', '6', '1992-11-18 03:20:21');



#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `txt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delivered` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `fk_messages_from_user_idx` (`from_user_id`),
  KEY `fk_messages_to_user_idx` (`to_user_id`),
  CONSTRAINT `fk_messages_users_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_users_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Nesciunt facere doloribus voluptatem ut praesentium quia. Rem ea et quidem labore excepturi sapiente et. Corporis error autem laboriosam eius. Alias vitae consequatur aut nihil et et sapiente dolore.', 1, '2013-11-06 07:57:39', '1979-06-26 12:41:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Ut molestias neque facilis fugiat eos officiis. Reiciendis repellat ut magni est ipsum. Tempore iure quis neque eveniet temporibus sint esse. Unde iusto officiis non aut autem.', 1, '1987-03-11 09:39:24', '2011-12-16 00:54:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Ipsa nisi ut eveniet consequuntur. Ratione est ea eveniet suscipit. Harum ut libero et sed. Assumenda sapiente aut quia qui. Veritatis dolor ut eaque deserunt.', 0, '2002-04-10 18:27:13', '2001-04-05 05:30:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Aspernatur quis in aut. Sint accusamus sit quia et aut voluptatibus. Consequatur sit rem cum dolore consequatur.', 1, '1972-08-26 05:22:54', '1973-07-01 15:33:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Officia facere minima saepe optio nemo ab quis. Sint voluptas deleniti eum ipsam et praesentium.', 1, '1978-09-11 01:00:21', '2013-08-08 06:44:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'Quas praesentium quae et dolorem dignissimos qui molestiae. Est beatae est dolor doloremque.', 0, '2020-12-17 03:17:15', '1973-06-07 17:25:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('7', '7', '7', 'Ut omnis eos voluptates quidem. Magnam nihil alias possimus delectus qui earum saepe. Quasi perferendis aut tenetur delectus cumque perspiciatis aut.', 1, '1990-05-09 06:52:54', '1999-12-31 15:30:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('8', '8', '8', 'Omnis sed rem molestias libero laborum voluptatum. Quod enim sint itaque aut nostrum et beatae. Soluta consequatur modi nihil consequatur et dolores ea voluptate.', 1, '1998-08-30 18:23:24', '2016-10-05 14:01:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('9', '9', '9', 'Est modi quae consequuntur vel. Repudiandae quia recusandae dolor at et ipsum non.', 0, '2012-08-13 16:16:49', '1979-01-28 03:20:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('10', '10', '10', 'Accusamus blanditiis placeat commodi dolores sint dolor deleniti. Possimus quia omnis eius rerum quis laudantium ex qui. Ut ut minima rerum nostrum.', 1, '1970-07-12 06:40:33', '1970-10-03 11:55:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('11', '11', '11', 'Molestiae voluptas voluptatem quae quis enim eius amet. Error libero dolor nemo nihil. Adipisci perferendis dolor eligendi quod aut asperiores. Corrupti aliquam aut libero.', 0, '1976-08-03 06:56:59', '2005-03-14 21:13:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('12', '12', '12', 'Dolores vel exercitationem id non nihil sit. Sunt harum aut minima eius fugit. Et odio ipsum molestiae porro.', 1, '1975-09-05 21:59:37', '2012-12-03 20:33:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('13', '13', '13', 'Excepturi voluptate veritatis quos qui et provident. Voluptas quae est assumenda possimus sint. Quasi nobis sint id in debitis. A blanditiis et minus ut.', 1, '1997-05-17 00:54:42', '1983-11-17 23:18:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('14', '14', '14', 'Consequatur odio temporibus autem fugiat autem sint explicabo. Exercitationem dolores excepturi nesciunt.', 1, '1983-03-24 23:35:45', '1978-08-22 07:00:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('15', '15', '15', 'Saepe assumenda a quia qui id consectetur. Voluptas libero itaque corporis voluptatem at harum placeat. Est dolorem aperiam odio repudiandae placeat.', 0, '1981-10-21 02:28:13', '1980-11-05 06:45:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('16', '16', '16', 'Nostrum distinctio voluptate consequatur in error cupiditate nihil. Ex est est nemo minus est. Expedita qui atque iste qui amet. Ut eum dolores quasi ea ut.', 0, '2008-06-06 02:26:53', '1993-03-05 16:36:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('17', '17', '17', 'Accusantium et et tempore tenetur nihil rerum. Error asperiores numquam repellendus animi. Soluta voluptates natus magnam odit et tempora iusto. Amet illum accusamus hic consequatur molestiae velit.', 1, '2016-10-03 09:17:02', '1991-05-18 05:29:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('18', '18', '18', 'Soluta quia laborum quis rerum delectus non. Aspernatur dolor animi velit eaque eos sit nisi dolore. Aperiam iusto sed qui dolore eos tenetur. Tempora minima consequuntur beatae eaque fugiat et.', 1, '1973-11-08 17:40:52', '2009-12-10 21:10:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('19', '19', '19', 'Dolor dignissimos commodi doloremque natus repellat corrupti. Magni aut nisi dolores minima ducimus. Ipsa et tenetur dignissimos ea.', 0, '1997-05-25 02:59:34', '1986-09-10 20:48:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('20', '20', '20', 'Vel laborum dolorem assumenda. Autem saepe et voluptate corporis hic culpa libero. Et ut velit tempora cumque aspernatur blanditiis. In deserunt praesentium nulla hic.', 0, '1978-05-15 12:16:12', '1975-12-12 21:28:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('21', '21', '21', 'Quidem quia placeat enim ipsum cum eos quia. Et libero eligendi quas laborum. Modi quasi sunt a dolor voluptatem architecto. Qui officiis deserunt qui necessitatibus.', 0, '1997-03-24 05:21:31', '1984-09-17 20:18:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('22', '22', '22', 'Expedita culpa exercitationem non rerum iure ab quaerat sint. Repudiandae qui ea eligendi porro recusandae est et. Asperiores ad non dolorem cumque totam.', 0, '2005-07-28 04:53:30', '1986-10-30 19:18:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('23', '23', '23', 'Dolores soluta ex ab modi nisi facere assumenda perspiciatis. Autem vel est sapiente dolorem itaque provident ipsum. Quidem et labore quia laborum quia.', 1, '1989-12-29 08:05:32', '2010-05-24 22:48:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('24', '24', '24', 'Dolores cumque numquam minus saepe. Assumenda vitae rem voluptas nihil. Reiciendis eius fugiat ut autem doloremque voluptatem.', 1, '2009-11-25 03:15:06', '1988-03-09 11:24:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('25', '25', '25', 'Sed modi ea voluptatem quod esse aliquam. Sint dolorum molestiae voluptatum. Aliquid accusantium et officiis necessitatibus eveniet dolore vero.', 0, '1985-05-13 19:42:02', '1982-08-13 10:03:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('26', '26', '26', 'Ullam ratione laborum magni quia. Voluptas minima beatae facere et quaerat. Debitis dolores aut blanditiis dolor non. Amet libero quia animi.', 0, '1974-01-07 06:33:35', '1975-12-30 17:09:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('27', '27', '27', 'Expedita explicabo autem et illum ipsum rem eligendi. Hic nulla omnis aliquam voluptatem libero. Deserunt ipsum fuga corporis dolorem voluptatem totam numquam.', 1, '1973-09-07 08:22:06', '2004-02-05 15:56:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('28', '28', '28', 'Quia perspiciatis aperiam necessitatibus rerum beatae praesentium quos. Est numquam odit cumque alias nesciunt ut. Non rerum qui est quo aut.', 0, '2004-08-27 18:10:47', '2003-01-26 15:42:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('29', '29', '29', 'Placeat sunt autem quia et consequuntur incidunt. Est doloremque ipsam debitis aliquid. Dolor rerum id voluptatem ut.', 0, '2015-04-12 06:36:08', '1987-10-22 20:22:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('30', '30', '30', 'Dolores recusandae quasi aperiam libero maiores cum quos. Eum aut cumque voluptatem et dolorem recusandae. Et modi ipsam molestias doloremque. Itaque qui nisi officiis unde cupiditate.', 0, '1976-03-01 10:42:36', '1984-03-16 11:38:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('31', '31', '31', 'Fuga minima doloremque commodi sint quis. Itaque animi quae quas dolores delectus. Voluptatem iure ut rerum aut consequatur cum amet cum.\nEa vel quia occaecati et non. Sunt quis fugit dolore.', 0, '2011-06-26 03:25:38', '2008-02-11 13:54:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('32', '32', '32', 'Id odio amet et perferendis. Aut maxime repellendus ab possimus qui neque minus modi. Quisquam voluptate omnis voluptatem non.', 0, '1985-07-03 10:18:42', '1971-09-10 11:15:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('33', '33', '33', 'Consequatur molestiae dolores dolorem adipisci. Voluptas id labore quis quam aliquid et. Iusto voluptas ipsum consequatur illo illo tempora reprehenderit. Autem sint dicta ut voluptates omnis unde.', 1, '1996-01-14 09:04:47', '2009-04-03 03:16:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('34', '34', '34', 'Eius vero hic sint eos. Aut excepturi unde autem qui ut magnam. Aliquam pariatur aut quis rerum facere accusantium. Nihil et minima dolores excepturi.', 0, '1985-12-17 08:49:10', '2006-01-27 08:24:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('35', '35', '35', 'Et corrupti sed eligendi porro beatae cumque possimus. Iusto consectetur et sunt possimus numquam repellendus quasi. Similique dolorem architecto consectetur earum magni quae maiores sint.', 1, '2010-07-19 07:39:59', '1977-10-12 00:32:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('36', '36', '36', 'Placeat illum officia labore natus a. Est voluptatem fugit eaque at ad dolor aut et. Sed voluptatem quasi aut similique repellendus natus.', 1, '2001-04-20 23:50:01', '2002-09-23 22:05:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('37', '37', '37', 'Fugit rem illo eaque autem quia. Dolorem libero ad deleniti.', 0, '1999-08-02 04:55:35', '2004-05-05 20:20:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('38', '38', '38', 'Qui nostrum enim qui a sed tempora. Aut nam unde et facere sed sed est. Incidunt nobis sint tempore.', 0, '1995-12-18 23:30:23', '2004-01-20 13:38:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('39', '39', '39', 'Enim molestias qui id adipisci. Voluptatem dolore ad doloremque excepturi quia. Sint id aliquam voluptas labore et.', 1, '1974-11-27 19:00:05', '1975-07-06 02:23:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('40', '40', '40', 'Quia ex unde est consequatur odio quidem. Vel ut blanditiis aperiam molestias ea doloribus molestiae. Quas accusantium assumenda fuga ullam.', 0, '1977-11-03 20:14:56', '2017-03-21 03:20:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('41', '41', '41', 'Provident sunt nulla iure at et dolor. Et quod eos odio qui fugiat assumenda qui iste. Earum perspiciatis eum aliquid ea rem ad ratione.', 0, '2017-07-13 07:04:59', '1977-01-04 07:07:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('42', '42', '42', 'Voluptas voluptas est rem facilis illo. Quis quis impedit explicabo velit exercitationem. Possimus itaque exercitationem consequatur magnam iusto.', 1, '1995-02-07 10:42:19', '1997-02-23 15:56:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('43', '43', '43', 'Illum harum placeat dolor sit sit recusandae illum. Facere asperiores quaerat aliquam sed sint excepturi dolores. Et eveniet doloremque vel similique libero ut temporibus.', 0, '1972-10-27 18:01:47', '1997-02-24 08:14:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('44', '44', '44', 'Quasi a et dolorem reiciendis rem voluptas at. Perferendis omnis cupiditate numquam maiores quis vel. Qui necessitatibus harum ad autem ea. Architecto voluptatibus rerum enim soluta ex quos et non.', 0, '2014-01-20 05:19:37', '1989-07-16 06:47:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('45', '45', '45', 'Odit minima eos non tempore molestiae quisquam. Non odit dolores autem dolorem ut qui alias. Quia nam et quis. Unde et est aut pariatur ratione quidem officia quaerat.', 1, '1978-10-10 20:21:26', '1997-09-16 11:20:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('46', '46', '46', 'Id ex cumque a nisi eos. Et temporibus ad vel corrupti. Soluta aspernatur est sed error ullam ipsam. Incidunt illo in inventore autem libero aspernatur. Eligendi et qui aut.', 1, '2001-12-22 04:04:56', '1974-10-30 05:03:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('47', '47', '47', 'Et aut dolorem eum porro est. Nemo et quia qui omnis perspiciatis et fugit. Deserunt dicta soluta iste.', 1, '1975-07-01 21:11:38', '2008-03-26 10:47:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('48', '48', '48', 'Similique est sint in est. Quia quia optio quo deleniti molestias. Nam vitae dolores sunt unde.', 0, '2011-08-25 02:49:11', '2006-08-26 09:15:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('49', '49', '49', 'Occaecati minima nobis repellat. Temporibus enim eos architecto necessitatibus. Eos recusandae reprehenderit reiciendis debitis sunt minus vero. Iusto dolorem et consectetur ut.', 1, '2003-09-08 11:28:05', '1998-02-17 12:32:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('50', '50', '50', 'Optio ut tempore quod atque aut. Eaque reiciendis earum ea quia non. Enim illum recusandae aspernatur praesentium. Et voluptas repellat vero omnis.', 1, '1999-04-23 16:08:34', '2000-02-03 19:36:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('51', '51', '51', 'Nisi excepturi facilis sit quaerat possimus quas rerum. Officiis vero numquam quis et.', 0, '1974-03-08 09:37:24', '1974-10-18 07:17:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('52', '52', '52', 'Facilis rem est ducimus voluptate. Corrupti inventore non distinctio voluptatem. Quidem autem quia sunt laboriosam magni maxime. Quo dolorum molestiae aut ab itaque.', 1, '2009-09-07 00:46:58', '2009-05-14 22:21:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('53', '53', '53', 'Ducimus facilis porro fugit natus. Corrupti in similique numquam ex. Animi enim minima inventore reprehenderit expedita. Et commodi dicta culpa reprehenderit.', 0, '2016-02-17 01:26:28', '1993-08-08 22:32:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('54', '54', '54', 'Autem tenetur quia iusto est id voluptas deleniti. Ea placeat autem cumque enim. Qui vero officiis saepe inventore deleniti.', 1, '2016-02-13 23:24:32', '1999-12-16 14:56:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('55', '55', '55', 'Voluptatem sapiente necessitatibus asperiores facere deleniti quo. Porro voluptates et expedita non molestiae voluptatem. Excepturi tenetur ab qui quae ut.', 0, '2012-05-21 14:15:16', '2013-12-05 07:14:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('56', '56', '56', 'Quis quod aut explicabo omnis necessitatibus. Id vel quae quia debitis odio. Velit autem ut ad cupiditate temporibus. Accusantium molestias expedita exercitationem.', 0, '1990-11-01 13:37:21', '1999-12-16 09:14:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('57', '57', '57', 'Rerum molestiae aspernatur dolorem. Quis ad facilis vitae eligendi. Voluptates enim est voluptatem nisi. Dolores et quo pariatur quis est.', 1, '1999-07-31 07:14:50', '1992-03-11 07:20:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('58', '58', '58', 'Cum saepe aut enim saepe consequatur. Maxime omnis facere totam quis. Commodi laudantium quisquam nesciunt ipsum rem. Nostrum enim blanditiis distinctio officia architecto.', 1, '1991-07-28 17:45:26', '1979-08-14 03:03:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('59', '59', '59', 'Consectetur adipisci nemo aut vel minus consequatur. Dolores adipisci id tempora sed sit. Maxime harum animi laudantium ad sint id necessitatibus commodi. At nemo et ex fugiat iure quo.', 1, '2004-11-21 18:58:59', '1991-12-29 14:43:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('60', '60', '60', 'Dolores consequatur voluptatem pariatur nemo nam ullam provident ut. Vitae natus excepturi blanditiis a ea rerum et. Et accusamus a atque. Hic et adipisci temporibus ipsa repudiandae laboriosam.', 1, '2017-03-21 07:32:12', '2013-12-23 03:15:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('61', '61', '61', 'Consequatur distinctio dolorem illo recusandae est et tempora. Soluta tempora quis blanditiis nobis ratione. Repellat impedit adipisci omnis consequuntur enim.', 0, '1998-12-30 20:55:15', '1991-09-18 17:07:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('62', '62', '62', 'Quia repellendus rerum in beatae. Nihil praesentium quas nihil incidunt corrupti. Eius architecto adipisci libero nemo cupiditate et.', 1, '2011-05-28 02:52:29', '2005-02-08 02:04:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('63', '63', '63', 'Officia iure autem qui aspernatur animi nesciunt. Quia itaque ex voluptatum alias neque nemo consectetur modi. Et praesentium facilis atque corrupti aperiam.', 1, '2003-06-25 04:10:43', '1998-08-28 07:37:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('64', '64', '64', 'Nemo tempora harum assumenda at accusamus sed. Voluptatum sit et sed. Perspiciatis ratione alias eius blanditiis quia minus iste.', 0, '1998-09-22 20:20:20', '1994-04-06 13:31:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('65', '65', '65', 'Facere inventore natus ea esse. Similique dolores voluptatem id perspiciatis corrupti. Quisquam accusantium omnis iste omnis vel cumque dolorem.', 1, '2006-06-03 01:13:20', '2015-08-07 10:17:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('66', '66', '66', 'Repellendus porro ratione sunt molestiae corporis. Corrupti vitae laboriosam est autem eveniet. Sit ullam voluptas eum est.', 0, '1984-10-01 15:14:40', '1985-07-28 16:30:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('67', '67', '67', 'Fuga ut enim harum provident autem eos. Veritatis cum occaecati harum rem recusandae culpa. Possimus aliquam deserunt aut beatae et. Fugiat officia placeat mollitia soluta ea fugiat.', 1, '1970-07-01 10:15:11', '1975-05-14 10:02:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('68', '68', '68', 'Consequatur dolor ut dolor aut debitis. Eos earum quisquam error ut aut consequuntur. Quia deleniti autem quia ut amet est deleniti.', 1, '2002-07-06 23:32:43', '2002-06-06 14:37:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('69', '69', '69', 'Consequatur sed similique ipsam provident. Quo quasi repellendus minima voluptas aut. Accusamus expedita qui ut eaque tempore adipisci et. Est consequatur ut quos dicta et sed.', 0, '2009-10-30 01:34:33', '1982-10-15 01:32:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('70', '70', '70', 'Porro fuga laudantium tempore quo quo minus perspiciatis. Sint eos aut corporis exercitationem sit. Non asperiores cum eum sit consequatur ea quidem. Ut optio quo ut.', 0, '1985-04-08 13:54:09', '1981-01-21 20:24:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('71', '71', '71', 'Molestiae impedit quis dolor quia. Voluptas mollitia nulla occaecati. Dolorem beatae quidem earum iusto labore id id. Ratione facilis esse commodi culpa debitis.', 1, '2015-07-24 09:46:10', '1984-11-09 23:57:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('72', '72', '72', 'Voluptatem autem neque dolore. Dolorum et ea et ducimus vel molestias. Illum cum quas culpa modi ut quo sed quibusdam. Non cupiditate sit nihil in cupiditate voluptatem.', 1, '2013-05-17 16:19:30', '2014-04-13 05:02:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('73', '73', '73', 'Delectus quis sint alias nostrum odit tempora aut corrupti. Non quos sint quia fugiat. Consequatur maxime ea itaque molestiae aliquam cumque. Sunt delectus magni molestias in.', 1, '1997-12-18 02:35:28', '2003-11-24 12:56:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('74', '74', '74', 'Aperiam non harum iusto aspernatur magni repellendus ipsa. Ipsa voluptatem et excepturi quia molestias consequatur fugiat. Veritatis consequatur sunt odit.', 1, '1979-12-22 12:11:39', '2019-10-03 14:03:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('75', '75', '75', 'Inventore nemo voluptas ad enim est eum illo. Maiores recusandae ducimus consectetur voluptatem impedit corporis iusto.', 0, '1973-08-05 21:42:13', '1970-11-29 09:44:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('76', '76', '76', 'Dolorem dolores et et exercitationem. Qui fugiat distinctio facere quis iusto sunt qui. Voluptas quo animi assumenda dolorem ipsum doloribus omnis. Et quo eos porro.', 0, '2000-03-11 00:12:57', '1995-05-17 20:56:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('77', '77', '77', 'Temporibus et perferendis recusandae voluptatem ipsa nihil eos. Ut quidem unde architecto. Sunt suscipit aspernatur rem et odio illum deleniti.', 0, '1998-08-30 00:22:52', '2019-08-08 22:29:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('78', '78', '78', 'Excepturi placeat voluptates ut aliquid alias. Velit sint pariatur laborum esse voluptatem. Iure dolores nihil exercitationem rerum quisquam aliquam. Similique animi aut hic et.', 0, '1983-08-22 09:49:07', '2011-04-04 18:24:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('79', '79', '79', 'Aliquam delectus omnis a voluptas ducimus sit cum. Laudantium vel nobis molestiae esse.', 1, '1971-11-13 09:51:50', '2005-05-01 08:06:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('80', '80', '80', 'Aliquam ea repudiandae fuga similique quae et. Laboriosam et et distinctio beatae quam amet. Et sunt dicta ut iure exercitationem.', 1, '1985-12-23 14:31:43', '2004-11-11 14:52:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('81', '81', '81', 'Inventore sint ea facere perspiciatis blanditiis. Molestias perspiciatis molestiae quo explicabo molestiae omnis voluptate hic. Illo eum magni est rerum velit dolor.', 1, '1994-05-29 16:19:02', '1983-04-22 01:20:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('82', '82', '82', 'Eius quasi dolores ut voluptatem. Et sint doloribus asperiores error rerum iste. Vitae occaecati et voluptate assumenda quisquam. Corporis eos accusantium dolor ad.', 1, '1994-01-06 14:49:56', '1995-04-08 16:17:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('83', '83', '83', 'Aut voluptas laudantium voluptates excepturi. Esse omnis ex dolor velit velit laboriosam nihil voluptas. Neque enim ea sit sed.', 1, '2012-12-28 06:11:37', '1972-06-09 12:51:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('84', '84', '84', 'Sed consequatur expedita perferendis omnis vitae autem ipsam. Rem eius qui aut et. Et porro dolores aut maxime consectetur placeat aut deserunt.', 0, '1977-12-07 04:28:31', '1996-10-03 18:31:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('85', '85', '85', 'Recusandae ea nam similique modi officiis tempora odio. Quia accusamus blanditiis est culpa doloremque numquam aut. Veniam molestias ut voluptates.', 1, '2008-07-27 20:04:14', '2001-02-11 00:35:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('86', '86', '86', 'Distinctio blanditiis rem voluptatem ea quo. Rerum et dolore est nulla quos consequatur minus. Molestiae est harum dolorem sit quo et qui.', 1, '1995-11-02 16:27:35', '1988-01-26 01:31:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('87', '87', '87', 'Sit quia minima ipsam. Similique suscipit exercitationem dolores rerum sed doloremque. Voluptates quis nihil necessitatibus sunt consequatur et deleniti.', 1, '2013-12-18 12:04:16', '1976-05-10 03:51:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('88', '88', '88', 'Sit provident delectus voluptatem aut est. Labore sunt et voluptas perspiciatis dolores et. Sapiente et mollitia qui quas voluptatem esse et.', 0, '1972-08-26 21:11:52', '1989-10-26 19:05:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('89', '89', '89', 'Ut fugiat saepe et voluptatem harum. Et expedita natus ea. Adipisci optio earum beatae voluptatum quasi ea.', 0, '1992-08-27 19:03:52', '1971-10-14 14:53:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('90', '90', '90', 'Placeat consequatur facere minima officiis. Quidem rerum aspernatur veniam fugit quam. Aut aliquid magnam quos excepturi. Consequatur natus est tenetur accusantium dignissimos.', 0, '2003-06-11 17:50:19', '1971-05-01 23:04:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('91', '91', '91', 'Eos eum velit a odio possimus quos ipsa. Numquam in quis eius architecto autem. Quo molestiae aut ut amet ut ut ea.', 0, '1970-04-10 00:38:23', '2002-04-26 00:13:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('92', '92', '92', 'Non ut molestiae dolorem omnis neque voluptatum. Voluptates ratione est est quibusdam magni. Et deleniti esse distinctio sunt eveniet consequuntur.', 1, '1980-08-15 07:48:46', '1972-08-25 21:13:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('93', '93', '93', 'Aspernatur eligendi unde nesciunt ut assumenda. Inventore et ut et deleniti. Ducimus ad necessitatibus vitae. Est voluptatum est eum ullam dolorem.', 1, '1990-11-05 12:47:17', '2016-03-10 00:20:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('94', '94', '94', 'Nobis cupiditate non est dolorem. Quasi repudiandae animi sint sit eum aut repudiandae. Fuga fuga minima ut in quia. Dolores necessitatibus beatae nesciunt quia.', 0, '1995-03-01 11:16:57', '2012-08-20 01:53:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('95', '95', '95', 'Beatae id aperiam iusto. Esse est soluta incidunt voluptatem aut sint ea.', 0, '2006-10-16 08:04:31', '1976-01-27 01:19:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('96', '96', '96', 'Eveniet aut voluptatum excepturi ut. Veniam optio commodi repellendus quod dolorem possimus. Voluptate consequatur voluptatum esse. Id sed enim officiis accusamus omnis et.', 1, '1978-10-13 16:43:14', '1997-10-31 09:52:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('97', '97', '97', 'Nam totam rerum et ut suscipit voluptatum. A veritatis quae ut molestiae et aut adipisci. Sapiente quod quis sed omnis et repudiandae.', 0, '2010-11-26 13:18:22', '2019-10-06 08:19:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('98', '98', '98', 'Blanditiis qui neque rerum. Quaerat placeat perspiciatis voluptas quia totam omnis.', 1, '1974-02-09 14:30:41', '1980-08-18 11:31:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('99', '99', '99', 'Qui culpa vero alias quis et est sunt quia. Quia reiciendis aut ut vel aperiam est minima. Reiciendis facere corrupti sit minus necessitatibus dolorem corrupti.', 1, '2009-09-14 19:16:53', '1989-05-12 02:46:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `txt`, `is_delivered`, `created_at`, `updated_at`) VALUES ('100', '100', '100', 'Nemo aperiam quidem fuga amet ut illo facilis. Numquam veritatis recusandae eos esse minus est.', 1, '1978-03-16 22:54:23', '2015-01-04 08:28:20');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `gender` enum('f','m','x') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date NOT NULL,
  `photo_id` int(10) unsigned DEFAULT NULL,
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('1', 'm', '2014-09-16', 3, 'Theodoreberg', 'Algeria');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('2', 'f', '2001-05-18', 7, 'North Rafaela', 'Northern Mariana Islands');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('3', 'x', '2013-03-30', 0, 'East Elijahborough', 'Saint Helena');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('4', 'f', '2020-09-06', 4, 'Handton', 'Myanmar');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('5', 'f', '2008-04-11', 1, 'Edisonfurt', 'Thailand');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('6', 'x', '1991-02-18', 4, 'North Rosaliahaven', 'Romania');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('7', 'f', '1998-02-23', 6, 'East Hattieville', 'Madagascar');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('8', 'm', '1976-06-24', 9, 'Bettieberg', 'Iran');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('9', 'f', '2009-05-05', 1, 'Lake Alysson', 'Angola');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('10', 'x', '1972-07-22', 4, 'East Kaciemouth', 'Oman');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('11', 'x', '1975-04-16', 9, 'East Shaniya', 'Cape Verde');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('12', 'x', '1999-05-14', 2, 'North Aletha', 'Niue');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('13', 'f', '1978-11-18', 0, 'New Joesph', 'Niger');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('14', 'm', '2002-11-24', 0, 'Bayermouth', 'United States of America');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('15', 'x', '2001-10-12', 3, 'Purdyfort', 'Paraguay');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('16', 'x', '1987-04-29', 5, 'Wilsonshire', 'Kuwait');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('17', 'x', '2015-09-07', 9, 'North Cooper', 'Dominica');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('18', 'f', '1994-06-17', 1, 'Schoenchester', 'Ghana');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('19', 'x', '1995-07-31', 6, 'Lake Felicia', 'Mayotte');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('20', 'x', '1981-02-06', 3, 'Kesslerville', 'Gibraltar');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('21', 'f', '1996-04-22', 2, 'New Courtney', 'Togo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('22', 'm', '1977-11-23', 3, 'Wiegandview', 'Taiwan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('23', 'm', '1984-01-27', 3, 'Jaskolskimouth', 'Saint Kitts and Nevis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('24', 'm', '2000-11-20', 9, 'Jefferyfort', 'Hungary');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('25', 'f', '1987-01-04', 2, 'Port Julianachester', 'Denmark');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('26', 'x', '1996-10-22', 1, 'North Betsymouth', 'Iraq');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('27', 'f', '1991-03-13', 9, 'Lake Kianbury', 'Guinea');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('28', 'x', '1988-03-31', 0, 'Teresaberg', 'Equatorial Guinea');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('29', 'f', '2006-11-20', 6, 'Wizaborough', 'Nicaragua');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('30', 'f', '2018-10-08', 6, 'Erdmanshire', 'Turkey');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('31', 'f', '1971-12-28', 5, 'Clementinahaven', 'Bouvet Island (Bouvetoya)');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('32', 'm', '2012-06-16', 9, 'Lake Maudchester', 'Switzerland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('33', 'x', '1995-07-16', 4, 'North Quentinfurt', 'Haiti');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('34', 'm', '2011-02-28', 0, 'Dollyfurt', 'Niue');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('35', 'm', '1989-02-02', 3, 'New Felixchester', 'Azerbaijan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('36', 'x', '1986-07-14', 0, 'Enricoville', 'Armenia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('37', 'x', '1973-08-02', 3, 'New Pasquale', 'Namibia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('38', 'f', '1975-03-09', 2, 'North Markhaven', 'Albania');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('39', 'f', '1995-09-03', 2, 'Lakinhaven', 'Benin');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('40', 'f', '1971-05-13', 6, 'Jailynfort', 'Paraguay');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('41', 'x', '1999-05-04', 7, 'Lake Brook', 'Albania');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('42', 'f', '2007-11-16', 4, 'East Kendall', 'Equatorial Guinea');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('43', 'f', '2011-08-20', 9, 'Pedrostad', 'Luxembourg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('44', 'm', '2013-08-01', 1, 'North Ramiro', 'Niue');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('45', 'x', '1987-10-24', 9, 'East Amie', 'Saint Martin');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('46', 'f', '2005-07-03', 8, 'North Trenton', 'Saudi Arabia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('47', 'm', '1992-03-21', 1, 'Claudineburgh', 'Belarus');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('48', 'f', '1978-03-16', 3, 'Cristtown', 'Greenland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('49', 'x', '1980-04-14', 9, 'Lake Leatha', 'Somalia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('50', 'm', '2009-07-09', 7, 'Forestside', 'Mozambique');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('51', 'f', '2008-12-21', 6, 'Karianeland', 'South Georgia and the South Sandwich Islands');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('52', 'x', '1972-12-09', 3, 'Grantland', 'Bhutan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('53', 'f', '1974-05-25', 9, 'Cheyennemouth', 'Cyprus');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('54', 'x', '1986-02-10', 5, 'North Jay', 'British Virgin Islands');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('55', 'f', '2015-09-23', 3, 'Lake Lorenafort', 'Peru');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('56', 'f', '1977-04-23', 8, 'Andersonchester', 'British Indian Ocean Territory (Chagos Archipelago)');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('57', 'm', '2019-08-24', 9, 'Mikaylamouth', 'Bahrain');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('58', 'f', '1975-01-12', 7, 'West Catalinaborough', 'Liberia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('59', 'f', '2016-08-21', 3, 'South Margaretta', 'Burundi');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('60', 'f', '1990-06-08', 8, 'Rosenbaumville', 'Somalia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('61', 'x', '1995-12-15', 6, 'South Vivienstad', 'Guinea-Bissau');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('62', 'x', '2014-01-14', 1, 'Thielmouth', 'Liechtenstein');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('63', 'm', '2010-07-20', 5, 'Port Walton', 'Netherlands Antilles');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('64', 'x', '2010-07-02', 7, 'New Sherman', 'Senegal');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('65', 'x', '1989-10-07', 1, 'Dareberg', 'Kyrgyz Republic');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('66', 'f', '2020-07-22', 8, 'North Jacklyn', 'Nigeria');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('67', 'm', '1991-11-19', 4, 'New Keeleyburgh', 'Maldives');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('68', 'f', '2012-05-09', 7, 'West Tremayneberg', 'Belgium');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('69', 'm', '2019-01-02', 0, 'Morissettestad', 'Antarctica (the territory South of 60 deg S)');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('70', 'm', '1987-03-16', 1, 'Giuseppeview', 'Tonga');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('71', 'm', '2005-07-05', 0, 'Reillyville', 'Hong Kong');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('72', 'x', '2009-03-22', 4, 'South Rupert', 'Sri Lanka');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('73', 'x', '1975-07-16', 2, 'Port Kellyton', 'Mauritius');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('74', 'x', '1988-08-24', 5, 'South Dennisbury', 'Poland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('75', 'x', '2012-07-05', 8, 'Gregoriochester', 'Mauritania');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('76', 'x', '1976-09-29', 7, 'New Tonitown', 'Brazil');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('77', 'm', '1991-01-30', 6, 'West Alexanne', 'Pakistan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('78', 'f', '1989-03-13', 2, 'Mathewview', 'Bhutan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('79', 'x', '1982-12-31', 6, 'Brandoburgh', 'Turkmenistan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('80', 'm', '1971-05-24', 0, 'Annamarieville', 'Mozambique');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('81', 'f', '1984-11-07', 8, 'New Bertram', 'Saint Kitts and Nevis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('82', 'f', '2007-06-19', 0, 'Parisview', 'Azerbaijan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('83', 'f', '2018-07-21', 0, 'Wiltonberg', 'Rwanda');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('84', 'x', '1971-03-13', 5, 'Miaton', 'Libyan Arab Jamahiriya');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('85', 'm', '2003-01-15', 7, 'New Blanca', 'Kiribati');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('86', 'm', '2013-04-25', 8, 'East Assunta', 'Reunion');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('87', 'x', '2002-05-07', 3, 'South Gertrudeshire', 'Iceland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('88', 'x', '1970-10-29', 0, 'Lake Cassie', 'Uzbekistan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('89', 'x', '1981-09-22', 7, 'West Candida', 'Marshall Islands');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('90', 'm', '1983-08-31', 2, 'Port Rowena', 'Cambodia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('91', 'm', '2012-05-16', 3, 'Abdullahshire', 'Sudan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('92', 'x', '2013-08-16', 0, 'Hilpertchester', 'Georgia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('93', 'f', '2015-08-30', 0, 'Corkerystad', 'Cook Islands');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('94', 'm', '1989-05-19', 0, 'Staceyshire', 'Luxembourg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('95', 'm', '1994-08-25', 1, 'South Kelliport', 'Kyrgyz Republic');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('96', 'f', '1975-06-30', 6, 'South Nelda', 'Peru');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('97', 'x', '1971-09-15', 9, 'Lynchport', 'Bulgaria');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('98', 'm', '2003-03-13', 8, 'Lawsonview', 'Palestinian Territory');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('99', 'f', '2006-02-14', 9, 'Jordanville', 'Tanzania');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`) VALUES ('100', 'x', '2006-04-09', 2, 'Maximilliantown', 'Peru');




