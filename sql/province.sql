/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50738 (5.7.38)
 Source Host           : localhost:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 50738 (5.7.38)
 File Encoding         : 65001

 Date: 18/12/2024 19:06:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '国家Id',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `spell` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '拼写',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '编码',
  `remark` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标志',
  `sort_code` int(11) NOT NULL DEFAULT '0' COMMENT '排序码',
  `longitude` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '经度',
  `latitude` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '纬度',
  `version` int(11) NOT NULL,
  `is_valid` int(1) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `province_countryid` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Province_省';

-- ----------------------------
-- Records of province
-- ----------------------------
BEGIN;
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('1', '001', '北京市', '', '', '', 1, 116.395825, 39.919316, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('10', '001', '江苏省', '', '', '', 11, 118.799346, 32.057481, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('11', '001', '浙江省', '', '', '', 12, 122.138252, 30.028006, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('12', '001', '安徽省', '', '', '', 13, 117.290173, 31.859827, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('13', '001', '福建省', '', '', '', 14, 119.306649, 26.072831, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('14', '001', '江西省', '', '', '', 15, 117.056722, 28.249583, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('15', '001', '山东省', '', '', '', 16, 115.457036, 35.250060, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('16', '001', '河南省', '', '', '', 17, 115.656259, 34.416793, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('17', '001', '湖北省', '', '', '', 18, 114.307001, 30.592276, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('18', '001', '湖南省', '', '', '', 19, 113.132111, 29.367557, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('19', '001', '广东省', '', '', '', 20, 113.278904, 23.130418, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('2', '001', '天津市', '', '', '', 2, 117.208513, 39.145721, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('20', '001', '海南省', '', '', '', 24, 110.350924, 20.039052, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('21', '001', '广西壮族自治区', '', '', '', 28, 108.361708, 21.627512, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('22', '001', '甘肃省', '', '', '', 21, 103.829629, 36.067260, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('23', '001', '陕西省', '', '', '', 27, 108.949074, 34.265629, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('24', '001', '新疆维吾尔自治区', '', '', '', 31, 82.992128, 46.754930, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('25', '001', '青海省', '', '', '', 26, 100.929245, 36.953733, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('26', '001', '宁夏回族自治区', '', '', '', 30, 106.228326, 38.485677, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('27', '001', '重庆市', '', '', '', 4, 106.532935, 29.561195, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('28', '001', '四川省', '', '', '', 22, 104.074247, 30.662797, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('29', '001', '贵州省', '', '', '', 23, 106.680431, 26.599158, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('3', '001', '河北省', '', '', '', 5, 114.496205, 36.619389, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('30', '001', '云南省', '', '', '', 25, 100.797840, 22.008870, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('31', '001', '西藏自治区', '', '', '', 29, 91.130863, 29.661427, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('32', '169', '台湾省', '', '', '', 7, 121.513488, 25.066344, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('33', '100', '澳门特别行政区', '', '', '', 33, 113.573904, 22.167305, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('34', '071', '香港特别行政区', '', '', '', 34, 114.188424, 22.305891, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('4', '001', '山西省', '', '', '', 6, 112.438822, 39.334882, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('5', '001', '内蒙古自治区', '', '', '', 32, 119.768871, 49.213879, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('6', '001', '辽宁省', '', '', '', 8, 123.438540, 41.808000, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('7', '001', '吉林省', '', '', '', 9, 125.333764, 43.858206, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('8', '001', '黑龙江省', '', '', '', 10, 126.429474, 41.943820, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
INSERT INTO `province` (`id`, `country_id`, `name`, `spell`, `code`, `remark`, `sort_code`, `longitude`, `latitude`, `version`, `is_valid`, `create_time`, `update_time`) VALUES ('9', '001', '上海市', '', '', '', 3, 121.479850, 31.232366, 0, 1, '2024-12-18 00:00:00', '2024-12-18 00:00:00');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
