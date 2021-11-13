/*
 Navicat MySQL Data Transfer

 Source Server         : taitamfc
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : vaoboapi

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 13/11/2021 16:10:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_bets
-- ----------------------------
DROP TABLE IF EXISTS `app_bets`;
CREATE TABLE `app_bets`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `start_date` datetime NULL DEFAULT NULL,
  `crawled` tinyint NULL DEFAULT NULL,
  `imported` tinyint NULL DEFAULT 0,
  `created_at` datetime NULL DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'publish',
  `source_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_bets
-- ----------------------------

-- ----------------------------
-- Table structure for app_card_league_tables
-- ----------------------------
DROP TABLE IF EXISTS `app_card_league_tables`;
CREATE TABLE `app_card_league_tables`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `card_id` int NULL DEFAULT NULL,
  `card_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_card_league_tables
-- ----------------------------

-- ----------------------------
-- Table structure for app_cards
-- ----------------------------
DROP TABLE IF EXISTS `app_cards`;
CREATE TABLE `app_cards`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `card_id` int NULL DEFAULT NULL,
  `card_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_cards
-- ----------------------------

-- ----------------------------
-- Table structure for app_filter_details
-- ----------------------------
DROP TABLE IF EXISTS `app_filter_details`;
CREATE TABLE `app_filter_details`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `match_id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stadium` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `home_ico` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `away_ico` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pro_access` tinyint NULL DEFAULT NULL,
  `games_links` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `league_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `m_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pred_exist` tinyint NULL DEFAULT NULL,
  `locked_for_uefa` tinyint NULL DEFAULT NULL,
  `locked_for_fifa` tinyint NULL DEFAULT NULL,
  `meta` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cards` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `league_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `league_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_filter_details
-- ----------------------------

-- ----------------------------
-- Table structure for app_filter_semilars
-- ----------------------------
DROP TABLE IF EXISTS `app_filter_semilars`;
CREATE TABLE `app_filter_semilars`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `match_id` int NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_filter_semilars
-- ----------------------------

-- ----------------------------
-- Table structure for app_filters
-- ----------------------------
DROP TABLE IF EXISTS `app_filters`;
CREATE TABLE `app_filters`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `system_id` int NULL DEFAULT NULL,
  `league_id` int NULL DEFAULT NULL,
  `game_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `league_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `home_team` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `away_team` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hw_prc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hw_odd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dr_prc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dr_odd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aw_prc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aw_odd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o2_prc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `o2_odd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u2_prc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u2_odd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `by_prc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `by_odd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bn_prc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bn_odd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tooltip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tooltip_prc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tooltip_odd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `l_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ht_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `at_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'publish',
  `crawled` tinyint NULL DEFAULT 0,
  `crawled_detail` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_filters
-- ----------------------------

-- ----------------------------
-- Table structure for app_final_doidau
-- ----------------------------
DROP TABLE IF EXISTS `app_final_doidau`;
CREATE TABLE `app_final_doidau`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `home_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `home_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_date` datetime NULL DEFAULT NULL,
  `crawled` tinyint(1) NULL DEFAULT 0,
  `imported` tinyint NULL DEFAULT 0,
  `hot` tinyint NULL DEFAULT 0,
  `created_at` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'publish',
  `away_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `away_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h2h_games` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `recent_games` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `team_stats` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `post_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_final_doidau
-- ----------------------------
INSERT INTO `app_final_doidau` VALUES (1, 'Saipa ', 'https://static.fctables.com/upload/images/18x18/8e/8ecvv57ae5681c066a/saipa.gif', '/h2h/kheybar-khorramabad/saipa/', '2021-11-12 18:45:00', 0, 0, 1, NULL, '/h2h/kheybar-khorramabad/saipa/', 'publish', 'Kheybar Khorramabad', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (2, 'Moldova ', 'https://static.fctables.com/upload/images/18x18/1w/1wc8a57b477b6aac5b/moldova.png', '/h2h/moldova/scotland/', '2021-11-13 01:00:00', 0, 0, 1, NULL, '/h2h/moldova/scotland/', 'publish', 'Scotland', 'https://static.fctables.com/upload/images/18x18/1a/1a67o57b477b09b74e/scotland.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (3, 'Italy ', 'https://static.fctables.com/upload/images/18x18/hi/hi8om57b477aca4c6b/italy.png', '/h2h/italy/switzerland/', '2021-11-13 03:45:00', 0, 0, 1, NULL, '/h2h/italy/switzerland/', 'publish', 'Switzerland', 'https://static.fctables.com/upload/images/18x18/hf/hf7kj57b477b6b86b9/switzerland.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (4, 'Austria ', 'https://static.fctables.com/upload/images/18x18/w5/w5aq357b477ac53c94/austria.png', '/h2h/austria/israel/', '2021-11-13 03:45:00', 0, 0, 1, NULL, '/h2h/austria/israel/', 'publish', 'Israel', 'https://static.fctables.com/upload/images/18x18/q2/q24k957b477adf3858/israel.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (5, 'Andorra ', 'https://static.fctables.com/upload/images/18x18/82/82ikz57b477bb0d6c5/andorra.png', '/h2h/andorra/poland/', '2021-11-13 03:45:00', 0, 0, 1, NULL, '/h2h/andorra/poland/', 'publish', 'Poland', 'https://static.fctables.com/upload/images/18x18/43/43uvu57b477b6a1b4a/poland.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (6, 'England ', 'https://static.fctables.com/upload/images/18x18/6l/6lez857b477ae05120/england.png', '/h2h/albania/england/', '2021-11-13 03:45:00', 0, 0, 1, NULL, '/h2h/albania/england/', 'publish', 'Albania', 'https://static.fctables.com/upload/images/18x18/q8/q8j2157b477acdef35/albania.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (7, 'Hungary ', 'https://static.fctables.com/upload/images/18x18/3k/3krag57b477b7031e5/hungary.png', '/h2h/hungary/san-marino/', '2021-11-13 03:45:00', 0, 0, 1, NULL, '/h2h/hungary/san-marino/', 'publish', 'San Marino', 'https://static.fctables.com/upload/images/18x18/hd/hdp0e57b477bfab4df/san-marino.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (8, 'Uruguay ', 'https://static.fctables.com/upload/images/18x18/6l/6lw9y57b477aea2540/uruguay.png', '/h2h/argentina1/uruguay/', '2021-11-13 07:00:00', 0, 0, 1, NULL, '/h2h/argentina1/uruguay/', 'publish', 'Argentina', 'https://static.fctables.com/upload/images/18x18/t8/t8uan57b477ae781f1/argentina.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (9, 'Djibouti ', '/images/no-logo.gif', '/h2h/algeria/djibouti/', '2021-11-12 21:00:00', 0, 0, 0, NULL, '/h2h/algeria/djibouti/', 'publish', 'Algeria', 'https://static.fctables.com/upload/images/18x18/2z/2zex857b477bfa56bf/algeria.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (10, 'Burkina Faso ', 'https://static.fctables.com/upload/images/18x18/3n/3n5z857b477dcb45a8/burkina-faso.png', '/h2h/burkina-faso/niger/', '2021-11-12 21:00:00', 0, 0, 0, NULL, '/h2h/burkina-faso/niger/', 'publish', 'Niger', 'https://static.fctables.com/upload/images/18x18/ly/lyr4f57b477c12b059/niger.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (11, 'Gabon ', 'https://static.fctables.com/upload/images/18x18/4g/4gosf57b477c0c7bab/gabon.png', '/h2h/gabon/libya/', '2021-11-13 00:00:00', 0, 0, 0, NULL, '/h2h/gabon/libya/', 'publish', 'Libya', 'https://static.fctables.com/upload/images/18x18/qx/qxny957b477c1c9dbb/libya.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (12, 'Guinea ', 'https://static.fctables.com/upload/images/18x18/e4/e4wm257b477e192422/guinea.png', '/h2h/guinea/guinea-bissau/', '2021-11-13 00:00:00', 0, 0, 0, NULL, '/h2h/guinea/guinea-bissau/', 'publish', 'Guinea-Bissau', 'https://static.fctables.com/upload/images/18x18/c8/c8j1h57b477e95e394/guinea-bissau.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (13, 'Metz ', 'https://static.fctables.com/upload/images/18x18/bm/bm59k5a940d56b91d6/fc_metz_logo.png', '/h2h/kaiserslautern/metz/', '2021-11-12 22:00:00', 0, 0, 0, NULL, '/h2h/kaiserslautern/metz/', 'publish', 'Kaiserslautern', 'https://static.fctables.com/upload/images/18x18/zy/zymnm57b477b76ded1/kaiserslautern.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (14, 'St. Gallen ', 'https://static.fctables.com/upload/images/18x18/3i/3iuyy57b477b985a72/st-gallen.png', '/h2h/fc-wacker-innsbruck/st-gallen/', '2021-11-12 23:00:00', 0, 0, 0, NULL, '/h2h/fc-wacker-innsbruck/st-gallen/', 'publish', 'FC Wacker Innsbruck', 'https://static.fctables.com/upload/images/18x18/df/dfjyd57b477bad1c04/fc-wacker-innsbruck.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (15, 'Norway U21 ', '/images/no-logo.gif', '/h2h/finland-u21/norway-u21/', '2021-11-13 01:00:00', 0, 0, 0, NULL, '/h2h/finland-u21/norway-u21/', 'publish', 'Finland U21', 'https://static.fctables.com/upload/images/18x18/tg/tg0ja57b477c0dfa86/finland-u21.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (16, 'Azerbaijan U21 ', 'https://static.fctables.com/upload/images/18x18/09/09yzc57b477c365384/azerbaijan-u21.png', '/h2h/austria-u21/azerbaijan-u21/', '2021-11-13 01:00:00', 0, 0, 0, NULL, '/h2h/austria-u21/azerbaijan-u21/', 'publish', 'Austria U21', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (17, 'Hungary U21 ', 'https://static.fctables.com/upload/images/18x18/fb/fbkyh57b477c218d57/hungary-u21.png', '/h2h/hungary-u21/latvia-u21/', '2021-11-13 00:45:00', 0, 0, 0, NULL, '/h2h/hungary-u21/latvia-u21/', 'publish', 'Latvia U21', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (18, 'Russia U21 ', 'https://static.fctables.com/upload/images/18x18/uh/uhdgw57b477c359fb8/russia-u21.png', '/h2h/russia-u21/slovakia-u21/', '2021-11-13 01:00:00', 0, 0, 0, NULL, '/h2h/russia-u21/slovakia-u21/', 'publish', 'Slovakia U21', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (19, 'N.Ireland U21 ', '/images/no-logo.gif', '/h2h/lithuania-u21/nireland-u21/', '2021-11-12 22:00:00', 0, 0, 0, NULL, '/h2h/lithuania-u21/nireland-u21/', 'publish', 'Lithuania U21', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (20, 'Greece U21 ', 'https://static.fctables.com/upload/images/18x18/m5/m536s57b477bfc217c/greece-u21.png', '/h2h/belarus-u21/greece-u21/', '2021-11-12 22:00:00', 0, 0, 0, NULL, '/h2h/belarus-u21/greece-u21/', 'publish', 'Belarus U21', 'https://static.fctables.com/upload/images/18x18/kc/kcdy057b477ae24528/belarus-u21.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (21, 'Cyprus U21 ', '/images/no-logo.gif', '/h2h/cyprus-u21/portugal-u21/', '2021-11-13 00:00:00', 0, 0, 0, NULL, '/h2h/cyprus-u21/portugal-u21/', 'publish', 'Portugal U21', 'https://static.fctables.com/upload/images/18x18/96/96ggj57b477bfc74bb/portugal-u21.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (22, 'Liechtenstein U21 ', '/images/no-logo.gif', '/h2h/iceland-u21/liechtenstein-u21/', '2021-11-12 22:00:00', 0, 0, 0, NULL, '/h2h/iceland-u21/liechtenstein-u21/', 'publish', 'Iceland U21', 'https://static.fctables.com/upload/images/18x18/pz/pzi3c57b477ae2c002/iceland-u21.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (23, 'Sweden U21 ', '/images/no-logo.gif', '/h2h/bosnia-herzegovina-u21/sweden-u21/', '2021-11-13 01:00:00', 0, 0, 0, NULL, '/h2h/bosnia-herzegovina-u21/sweden-u21/', 'publish', 'Bosnia-Herzegovina U21', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (24, 'Slovenia U21 ', 'https://static.fctables.com/upload/images/18x18/qd/qdiql57b477bfbc82e/slovenia-u21.png', '/h2h/albania-u21/slovenia-u21/', '2021-11-13 01:00:00', 0, 0, 0, NULL, '/h2h/albania-u21/slovenia-u21/', 'publish', 'Albania U21', 'https://static.fctables.com/upload/images/18x18/6w/6w05h57b477c3502a4/albania-u21.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (25, 'Serbia U21 ', '/images/no-logo.gif', '/h2h/faroe-islands-u21/serbia-u21/', '2021-11-13 01:00:00', 0, 0, 0, NULL, '/h2h/faroe-islands-u21/serbia-u21/', 'publish', 'Faroe Islands U21', 'https://static.fctables.com/upload/images/18x18/cm/cm3385939a7277bea2/faroe-islan.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (26, 'Puszcza Niepolomice ', 'https://static.fctables.com/upload/images/18x18/at/atbrb57b477db49bba/puszcza-niepolomice.png', '/h2h/puszcza-niepolomice/stomil-olsztyn/', '2021-11-13 01:00:00', 0, 0, 0, NULL, '/h2h/puszcza-niepolomice/stomil-olsztyn/', 'publish', 'Stomil Olsztyn', 'https://static.fctables.com/upload/images/18x18/4q/4qd9o57ae3eec307fc/stomil-olsztyn.jpg', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (27, 'Resovia ', '/images/no-logo.gif', '/h2h/odra-opole/resovia/', '2021-11-13 00:30:00', 0, 0, 0, NULL, '/h2h/odra-opole/resovia/', 'publish', 'Odra Opole', 'https://static.fctables.com/upload/images/18x18/sk/skuhy5cc8302d14444/odra-opole.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (28, 'Chojniczanka Chojnice ', 'https://static.fctables.com/upload/images/18x18/7z/7z46s57ae3f02a5024/chojniczanka-chojnice.jpg', '/h2h/chojniczanka-chojnice/kks-1925-kalisz/', '2021-11-13 01:00:00', 0, 0, 0, NULL, '/h2h/chojniczanka-chojnice/kks-1925-kalisz/', 'publish', 'KKS 1925 Kalisz', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (29, 'Inter Zapresic ', 'https://static.fctables.com/upload/images/18x18/69/69qgv57b477cf53643/inter-zapresic.png', '/h2h/inter-zapresic/osijek-b/', '2021-11-13 00:00:00', 0, 0, 0, NULL, '/h2h/inter-zapresic/osijek-b/', 'publish', 'Osijek B', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (30, 'FC Avanhard Kramatorsk ', '/images/no-logo.gif', '/h2h/ahrobiznes-volochysk/fc-avanhard-kramatorsk/', '2021-11-12 19:15:00', 0, 0, 0, NULL, '/h2h/ahrobiznes-volochysk/fc-avanhard-kramatorsk/', 'publish', 'Ahrobiznes Volochysk', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (31, 'Olimpik Donetsk ', 'https://static.fctables.com/upload/images/18x18/yi/yi1t057b477d0e36ba/olimpik-donetsk.png', '/h2h/nyva-ternopil/olimpik-donetsk/', '2021-11-12 20:15:00', 0, 0, 0, NULL, '/h2h/nyva-ternopil/olimpik-donetsk/', 'publish', 'Nyva Ternopil', 'https://static.fctables.com/upload/images/18x18/il/ilbkz57b0c9015ad28/nyva-ternopil.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (32, 'Yessentuki ', '/images/no-logo.gif', '/h2h/legion-dynamo/yessentuki/', '2021-11-12 19:00:00', 0, 0, 0, NULL, '/h2h/legion-dynamo/yessentuki/', 'publish', 'Legion Dynamo', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (33, 'Tuapse ', '/images/no-logo.gif', '/h2h/anzhi-makhachkala/tuapse/', '2021-11-12 19:00:00', 0, 0, 0, NULL, '/h2h/anzhi-makhachkala/tuapse/', 'publish', 'Anzhi Makhachkala', 'https://static.fctables.com/upload/images/18x18/0j/0jyb957b477b465696/anzhi-makhachkala.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (34, 'Irtysh ', '/images/no-logo.gif', '/h2h/irtysh/lada-togliati/', '2021-11-12 21:00:00', 0, 0, 0, NULL, '/h2h/irtysh/lada-togliati/', 'publish', 'Lada Togliati', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (35, 'Slovacko ', 'https://static.fctables.com/upload/images/18x18/30/30udh57b477d04299d/slovacko.png', '/h2h/karvina/slovacko/', '2021-11-13 00:00:00', 0, 0, 0, NULL, '/h2h/karvina/slovacko/', 'publish', 'Karvina', 'https://static.fctables.com/upload/images/18x18/wb/wbulu57b477d0b9b3c/karvina.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (36, 'Blessing FC ', '/images/no-logo.gif', '/h2h/blessing-fc/maniema-union/', '2021-11-12 21:30:00', 0, 0, 0, NULL, '/h2h/blessing-fc/maniema-union/', 'publish', 'Maniema Union', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (37, 'Bibiani Gold Stars ', '/images/no-logo.gif', '/h2h/bibiani-gold-stars/kotoko/', '2021-11-12 23:00:00', 0, 0, 0, NULL, '/h2h/bibiani-gold-stars/kotoko/', 'publish', 'Kotoko', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (38, 'Paykan ', 'https://static.fctables.com/upload/images/18x18/to/to7wg57b477ebd86a0/paykan.png', '/h2h/paykan/zob-ahan/', '2021-11-12 20:30:00', 0, 0, 0, NULL, '/h2h/paykan/zob-ahan/', 'publish', 'Zob Ahan', 'https://static.fctables.com/upload/images/18x18/70/70h1157b477b13ef7a/zob-ahan.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (39, 'Khooshe Talaee Sana Saveh ', '/images/no-logo.gif', '/h2h/khooshe-talaee-sana-saveh/mes-kerman/', '2021-11-12 18:45:00', 0, 0, 0, NULL, '/h2h/khooshe-talaee-sana-saveh/mes-kerman/', 'publish', 'Mes Kerman', 'https://static.fctables.com/upload/images/18x18/s8/s8tyj57b477dbea6e2/mes-kerman.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (40, 'Esteghlal Molasani ', '/images/no-logo.gif', '/h2h/esteghlal-khuzestan/esteghlal-molasani/', '2021-11-12 18:45:00', 0, 0, 0, NULL, '/h2h/esteghlal-khuzestan/esteghlal-molasani/', 'publish', 'Esteghlal Khuzestan', 'https://static.fctables.com/upload/images/18x18/jl/jlurn57b477ee08b80/esteghlal-khuzestan.png', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (41, 'Arman Gahar Sirjan ', '/images/no-logo.gif', '/h2h/arman-gahar-sirjan/fc-vista-turbine/', '2021-11-12 18:45:00', 0, 0, 0, NULL, '/h2h/arman-gahar-sirjan/fc-vista-turbine/', 'publish', 'FC Vista Turbine', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (42, 'Machine Sazi FC ', 'https://static.fctables.com/upload/images/18x18/13/13tlb57b477fd66610/machine-sazi-fc.png', '/h2h/machine-sazi-fc/qashqai/', '2021-11-12 18:45:00', 0, 0, 0, NULL, '/h2h/machine-sazi-fc/qashqai/', 'publish', 'Qashqai', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (43, 'Shahrdari Hamedan ', '/images/no-logo.gif', '/h2h/rayka-babol/shahrdari-hamedan/', '2021-11-12 18:45:00', 0, 0, 0, NULL, '/h2h/rayka-babol/shahrdari-hamedan/', 'publish', 'Rayka Babol', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (44, 'Malavan ', 'https://static.fctables.com/upload/images/18x18/95/953qo57b477dbbe1e0/malavan.png', '/h2h/malavan/pars-jonoubi-jam-bushehr/', '2021-11-12 18:45:00', 0, 0, 0, NULL, '/h2h/malavan/pars-jonoubi-jam-bushehr/', 'publish', 'Pars Jonoubi Jam Bushehr', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (45, 'Shahin ', '/images/no-logo.gif', '/h2h/shahin/shahrdari-astara/', '2021-11-12 18:45:00', 0, 0, 0, NULL, '/h2h/shahin/shahrdari-astara/', 'publish', 'Shahrdari Astara', '/images/no-logo.gif', NULL, NULL, NULL, NULL);
INSERT INTO `app_final_doidau` VALUES (46, 'Shams Azar Qazvin ', '/images/no-logo.gif', '/h2h/mes-shahr-babak/shams-azar-qazvin/', '2021-11-12 18:45:00', 0, 0, 0, NULL, '/h2h/mes-shahr-babak/shams-azar-qazvin/', 'publish', 'Mes Shahr Babak', '/images/no-logo.gif', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for app_final_soikeo
-- ----------------------------
DROP TABLE IF EXISTS `app_final_soikeo`;
CREATE TABLE `app_final_soikeo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `source_id` int NULL DEFAULT NULL,
  `league_id` int NULL DEFAULT NULL,
  `league_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `league_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `home_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `away_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_date` datetime NULL DEFAULT NULL,
  `home_team` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `away_team` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `crawled` tinyint NULL DEFAULT 0,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `game_date_origin` datetime NULL DEFAULT NULL,
  `body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_final_soikeo
-- ----------------------------
INSERT INTO `app_final_soikeo` VALUES (1, 905588, 1263, 'FIFA World Cup qualification (AFC)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4186.png', 'https://static.soccerpet.com/logo/ImgStore/4206.png', '0000-00-00 00:00:00', 'Australia', 'Saudi Arabia', 0, '/prediction/1x2/905588/', NULL, '2021-11-11 17:10:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (2, 905609, 1263, 'FIFA World Cup qualification (AFC)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4197.png', 'https://static.soccerpet.com/logo/ImgStore/4210.png', '0000-00-00 00:00:00', 'Korea Republic', 'United Arab Emirates', 0, '/prediction/1x2/905609/', NULL, '2021-11-11 19:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (3, 905590, 1263, 'FIFA World Cup qualification (AFC)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4212.png', 'https://static.soccerpet.com/logo/ImgStore/4192.png', '0000-00-00 00:00:00', 'Vietnam', 'Japan', 0, '/prediction/1x2/905590/', NULL, '2021-11-11 20:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (4, 905608, 1263, 'FIFA World Cup qualification (AFC)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4200.png', 'https://static.soccerpet.com/logo/ImgStore/4303.png', '0000-00-00 00:00:00', 'Lebanon', 'Iran', 0, '/prediction/1x2/905608/', NULL, '2021-11-11 20:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (5, 906865, 1259, 'FIFA World Cup qualification (CAF)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/5411.png', 'https://static.soccerpet.com/logo/ImgStore/4278.png', '0000-00-00 00:00:00', 'Ethiopia', 'Ghana', 0, '/prediction/1x2/906865/', NULL, '2021-11-11 21:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (6, 906895, 1259, 'FIFA World Cup qualification (CAF)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4289.png', 'https://static.soccerpet.com/logo/ImgStore/4182.png', '0000-00-00 00:00:00', 'Uganda', 'Kenya', 0, '/prediction/1x2/906895/', NULL, '2021-11-11 21:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (7, 906859, 1259, 'FIFA World Cup qualification (CAF)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4183.png', 'https://static.soccerpet.com/logo/ImgStore/4272.png', '0000-00-00 00:00:00', 'Rwanda', 'Mali', 0, '/prediction/1x2/906859/', NULL, '2021-11-12 00:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (8, 905599, 1684, 'FIFA World Cup qualification (UEFA)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4332.png', '0000-00-00 00:00:00', 'Russia', 'Cyprus', 0, '/prediction/1x2/905599/', NULL, '2021-11-12 01:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (9, 905613, 1684, 'FIFA World Cup qualification (UEFA)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4339.png', 'https://static.soccerpet.com/logo/ImgStore/4317.png', '0000-00-00 00:00:00', 'Armenia', 'North Macedonia', 0, '/prediction/1x2/905613/', NULL, '2021-11-12 01:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (10, 905615, 1684, 'FIFA World Cup qualification (UEFA)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4327.png', 'https://static.soccerpet.com/logo/ImgStore/4340.png', '0000-00-00 00:00:00', 'Azerbaijan', 'Luxembourg', 0, '/prediction/1x2/905615/', NULL, '2021-11-12 01:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (11, 905616, 1684, 'FIFA World Cup qualification (UEFA)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4195.png', 'https://static.soccerpet.com/logo/ImgStore/0.png', '0000-00-00 00:00:00', 'Georgia', 'Sweden', 0, '/prediction/1x2/905616/', NULL, '2021-11-12 01:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (12, 905607, 1263, 'FIFA World Cup qualification (AFC)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4220.png', 'https://static.soccerpet.com/logo/ImgStore/4198.png', '0000-00-00 00:00:00', 'Iraq', 'Syrian', 0, '/prediction/1x2/905607/', NULL, '2021-11-12 01:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (13, 909241, 215, 'International Friendly', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/5089.png', 'https://static.soccerpet.com/logo/ImgStore/4193.png', '0000-00-00 00:00:00', 'Serbia', 'Qatar', 0, '/prediction/1x2/909241/', NULL, '2021-11-12 01:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (14, 909243, 215, 'International Friendly', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/5097.png', 'https://static.soccerpet.com/logo/ImgStore/4316.png', '0000-00-00 00:00:00', 'Ukraine', 'Bulgaria', 0, '/prediction/1x2/909243/', NULL, '2021-11-12 01:30:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (15, 909245, 215, 'International Friendly', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4338.png', 'https://static.soccerpet.com/logo/ImgStore/4202.png', '0000-00-00 00:00:00', 'Czech', 'Kuwait', 0, '/prediction/1x2/909245/', NULL, '2021-11-12 01:30:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (16, 905601, 1684, 'FIFA World Cup qualification (UEFA)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4334.png', 'https://static.soccerpet.com/logo/ImgStore/4320.png', '0000-00-00 00:00:00', 'Malta', 'Croatia', 0, '/prediction/1x2/905601/', NULL, '2021-11-12 03:45:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (17, 905604, 1684, 'FIFA World Cup qualification (UEFA)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4337_0.png', 'https://static.soccerpet.com/logo/ImgStore/5096.png', '0000-00-00 00:00:00', 'Slovakia', 'Slovenia', 0, '/prediction/1x2/905604/', NULL, '2021-11-12 03:45:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (18, 905614, 1684, 'FIFA World Cup qualification (UEFA)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/5082.png', 'https://static.soccerpet.com/logo/ImgStore/4324.png', '0000-00-00 00:00:00', 'Germany', 'Liechtenstein', 0, '/prediction/ah/905614/', NULL, '2021-11-12 03:45:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (19, 905617, 1684, 'FIFA World Cup qualification (UEFA)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/5094.png', 'https://static.soccerpet.com/logo/ImgStore/4330.png', '0000-00-00 00:00:00', 'Romania', 'Iceland', 0, '/prediction/1x2/905617/', NULL, '2021-11-12 03:45:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (20, 905618, 1684, 'FIFA World Cup qualification (UEFA)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/5099.png', 'https://static.soccerpet.com/logo/ImgStore/4322.png', '0000-00-00 00:00:00', 'Ireland', 'Portugal', 0, '/prediction/1x2/905618/', NULL, '2021-11-12 03:45:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (21, 905619, 1684, 'FIFA World Cup qualification (UEFA)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4331.png', 'https://static.soccerpet.com/logo/ImgStore/4313.png', '0000-00-00 00:00:00', 'Greece', 'Spain', 0, '/prediction/1x2/905619/', NULL, '2021-11-12 03:45:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (22, 905262, 266, 'Brazil Serie A', 'https://static.soccerpet.com/logo/lealogo/266.png', 'https://static.soccerpet.com/logo/ImgStore/20737.png', 'https://static.soccerpet.com/logo/ImgStore/11669.png', '0000-00-00 00:00:00', 'Fortaleza', 'Sao Paulo', 0, '/prediction/1x2/905262/', NULL, '2021-11-11 08:30:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (23, 905278, 266, 'Brazil Serie A', 'https://static.soccerpet.com/logo/lealogo/266.png', 'https://static.soccerpet.com/logo/ImgStore/15292.png', 'https://static.soccerpet.com/logo/ImgStore/15299.png', '0000-00-00 00:00:00', 'Juventude', 'Internacional RS', 0, '/prediction/1x2/905278/', NULL, '2021-11-11 08:30:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (24, 905293, 266, 'Brazil Serie A', 'https://static.soccerpet.com/logo/lealogo/266.png', 'https://static.soccerpet.com/logo/ImgStore/26783.png', 'https://static.soccerpet.com/logo/ImgStore/22506.png', '0000-00-00 00:00:00', 'Sport Club Recife PE', 'America MG', 0, '/prediction/1x2/905293/', NULL, '2021-11-11 08:30:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (25, 904841, 220, 'Brazil Serie B', 'https://static.soccerpet.com/logo/lealogo/220.png', 'https://static.soccerpet.com/logo/ImgStore/31979.png', 'https://static.soccerpet.com/logo/ImgStore/20790.png', '0000-00-00 00:00:00', 'CRB AL', 'Londrina PR', 0, '/prediction/1x2/904841/', NULL, '2021-11-11 08:30:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (26, 904853, 220, 'Brazil Serie B', 'https://static.soccerpet.com/logo/lealogo/220.png', 'https://static.soccerpet.com/logo/ImgStore/15308.png', 'https://static.soccerpet.com/logo/ImgStore/15313.png', '0000-00-00 00:00:00', 'Goias', 'Coritiba PR', 0, '/prediction/1x2/904853/', NULL, '2021-11-11 08:30:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (27, 904863, 220, 'Brazil Serie B', 'https://static.soccerpet.com/logo/lealogo/220.png', 'https://static.soccerpet.com/logo/ImgStore/11663.png', 'https://static.soccerpet.com/logo/ImgStore/11661.png', '0000-00-00 00:00:00', 'Vasco da Gama', 'Vitoria BA', 0, '/prediction/1x2/904863/', NULL, '2021-11-11 08:30:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (28, 905605, 1267, 'UEFA - EURO U21 Qualifying', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/0.png', '0000-00-00 00:00:00', 'Croatia U21', 'Estonia U21', 0, '/prediction/1x2/905605/', NULL, '2021-11-12 01:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (29, 905592, 1263, 'FIFA World Cup qualification (AFC)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4199.png', 'https://static.soccerpet.com/logo/ImgStore/4196.png', '0000-00-00 00:00:00', 'China', 'Oman', 0, '/prediction/over-under/905592/', NULL, '2021-11-11 23:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (30, 905294, 1685, 'FIFA World Cup qualification (CONMEBOL)', 'https://static.soccerpet.com/logo/ImgStore/0.png', 'https://static.soccerpet.com/logo/ImgStore/4308.png', 'https://static.soccerpet.com/logo/ImgStore/4312.png', '0000-00-00 00:00:00', 'Ecuador', 'Venezuela', 0, '/prediction/1x2/905294/', NULL, '2021-11-12 05:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (31, 905271, 266, 'Brazil Serie A', 'https://static.soccerpet.com/logo/lealogo/266.png', 'https://static.soccerpet.com/logo/ImgStore/15304.png', 'https://static.soccerpet.com/logo/ImgStore/20754.png', '0000-00-00 00:00:00', 'Flamengo', 'Bahia BA', 0, '/prediction/over-under/905271/', NULL, '2021-11-12 06:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (32, 904857, 220, 'Brazil Serie B', 'https://static.soccerpet.com/logo/lealogo/220.png', 'https://static.soccerpet.com/logo/ImgStore/20785.png', 'https://static.soccerpet.com/logo/ImgStore/20758.png', '0000-00-00 00:00:00', 'Sampaio Correa', 'Vila Nova', 0, '/prediction/over-under/904857/', NULL, '2021-11-12 06:00:00', NULL);
INSERT INTO `app_final_soikeo` VALUES (33, 904861, 220, 'Brazil Serie B', 'https://static.soccerpet.com/logo/lealogo/220.png', 'https://static.soccerpet.com/logo/ImgStore/11733.png', 'https://static.soccerpet.com/logo/ImgStore/11654.png', '0000-00-00 00:00:00', 'Ponte Preta', 'Botafogo RJ', 0, '/prediction/ah/904861/', NULL, '2021-11-12 06:00:00', NULL);

-- ----------------------------
-- Table structure for app_fixtures
-- ----------------------------
DROP TABLE IF EXISTS `app_fixtures`;
CREATE TABLE `app_fixtures`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_fixtures
-- ----------------------------

-- ----------------------------
-- Table structure for app_h2h
-- ----------------------------
DROP TABLE IF EXISTS `app_h2h`;
CREATE TABLE `app_h2h`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `home_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `home_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `crawled` tinyint NULL DEFAULT NULL,
  `imported` tinyint NULL DEFAULT 0,
  `hot` tinyint NULL DEFAULT 0,
  `created_at` datetime NULL DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'publish',
  `away_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `away_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h2h_games` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `recent_games` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `team_stats` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `post_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_h2h
-- ----------------------------

-- ----------------------------
-- Table structure for app_identifi_leagues
-- ----------------------------
DROP TABLE IF EXISTS `app_identifi_leagues`;
CREATE TABLE `app_identifi_leagues`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `league_id` int NULL DEFAULT NULL,
  `col_1` int NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `league_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `league_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `col_2` int NULL DEFAULT NULL,
  `crawled` tinyint NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_identifi_leagues
-- ----------------------------

-- ----------------------------
-- Table structure for app_identifi_raws
-- ----------------------------
DROP TABLE IF EXISTS `app_identifi_raws`;
CREATE TABLE `app_identifi_raws`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `match_id` int NULL DEFAULT NULL,
  `league_id` int NULL DEFAULT NULL,
  `col_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `col_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `col_3` int NULL DEFAULT NULL,
  `home` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `col_4` int NULL DEFAULT NULL,
  `away` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `col_5` int NULL DEFAULT NULL,
  `col_6` int NULL DEFAULT NULL,
  `col_7` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crawled` tinyint NULL DEFAULT 0,
  `imported` tinyint NULL DEFAULT 0,
  `updated_at` datetime NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `league_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_identifi_raws
-- ----------------------------

-- ----------------------------
-- Table structure for app_identifies
-- ----------------------------
DROP TABLE IF EXISTS `app_identifies`;
CREATE TABLE `app_identifies`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `league_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `match_time` datetime NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'publish',
  `match_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `home_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `away_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `home_main_players` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `home_sub_players` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `away_main_players` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `away_sub_players` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `h2h` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `home_recent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `away_recent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `odds` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `home_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `away_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `home_injury_players` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `home_hanging_players` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `away_injury_players` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `away_hanging_players` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `text_doi_dau` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `text_tt_home` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `text_tt_away` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `comp_odds` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `talking_numbers` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_identifies
-- ----------------------------

-- ----------------------------
-- Table structure for app_rankings
-- ----------------------------
DROP TABLE IF EXISTS `app_rankings`;
CREATE TABLE `app_rankings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `updated_at` datetime NULL DEFAULT NULL,
  `stt` int NULL DEFAULT NULL,
  `tran` int NULL DEFAULT NULL,
  `thang` int NULL DEFAULT NULL,
  `hoa` int NULL DEFAULT NULL,
  `thua` int NULL DEFAULT NULL,
  `ban_thang` int NULL DEFAULT NULL,
  `ban_thua` int NULL DEFAULT NULL,
  `ti_le` int NULL DEFAULT NULL,
  `diem` int NULL DEFAULT NULL,
  `recent_records` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_rankings
-- ----------------------------

-- ----------------------------
-- Table structure for app_results
-- ----------------------------
DROP TABLE IF EXISTS `app_results`;
CREATE TABLE `app_results`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_results
-- ----------------------------

-- ----------------------------
-- Table structure for app_tips
-- ----------------------------
DROP TABLE IF EXISTS `app_tips`;
CREATE TABLE `app_tips`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `game_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `game_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `league` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'publish',
  `source_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `home` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `away` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `odds_in_tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tipster_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `odds` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `home_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `away_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source_tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source_tips_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crawled` tinyint NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `game_start` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_tips
-- ----------------------------

-- ----------------------------
-- Table structure for app_type_rankings
-- ----------------------------
DROP TABLE IF EXISTS `app_type_rankings`;
CREATE TABLE `app_type_rankings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `crawled` tinyint NULL DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'publish',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_type_rankings
-- ----------------------------

-- ----------------------------
-- Table structure for app_videos
-- ----------------------------
DROP TABLE IF EXISTS `app_videos`;
CREATE TABLE `app_videos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `home_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `away_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `home_result` int NULL DEFAULT NULL,
  `away_result` int NULL DEFAULT NULL,
  `start_date` datetime NULL DEFAULT NULL,
  `crawled` tinyint NULL DEFAULT NULL,
  `imported` tinyint NULL DEFAULT 0,
  `created_at` datetime NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'publish',
  `match_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `stats` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `events` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `league_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `home_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `away_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_videos
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
