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

 Date: 11/11/2021 21:24:31
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
