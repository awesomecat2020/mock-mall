/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50710
 Source Host           : localhost:3306
 Source Schema         : mall

 Target Server Type    : MySQL
 Target Server Version : 50710
 File Encoding         : 65001

 Date: 17/11/2022 00:37:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attr_value
-- ----------------------------
DROP TABLE IF EXISTS `attr_value`;
CREATE TABLE `attr_value`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性值',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '属性值' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  `type` int(11) NOT NULL COMMENT '类型 1：销售属性；2：非关键属性',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `format` int(11) NOT NULL COMMENT '格式 1：选项；2：文本；3：数值；4：百分比',
  `source` int(11) NOT NULL COMMENT '来源 1：系统生成；2：商家自定义',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '属性' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `image_url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片地址',
  `background_color` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '背景色',
  `module_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块id',
  `type` int(5) NOT NULL COMMENT '轮播图类型 1：商品 2：分类',
  `sort` int(11) NOT NULL COMMENT '轮播图展示顺序',
  `show` tinyint(1) NOT NULL COMMENT '是否展示',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '轮播图 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES ('c-10011', 'http://122.152.205.72:88/group1/M00/00/05/CpoxxF0ZmG-ALsPRAAEX2Gk9FUg848.png', '#f44661', 'nut-1004', 1, 1, 1, 0, 1, '2022-06-07 23:56:18', '2022-06-07 23:56:18');
INSERT INTO `carousel` VALUES ('c-10013', 'http://122.152.205.72:88/group1/M00/00/05/CpoxxF0ZmHiAWwR7AAFdqZHw8jU876.png', '#000240', '51', 2, 2, 1, 0, 1, '2022-06-07 23:56:18', '2022-06-07 23:56:18');
INSERT INTO `carousel` VALUES ('c-10015', 'http://122.152.205.72:88/group1/M00/00/05/CpoxxF0ZmHuAPlXvAAFe-H5_-Nw961.png', '#ff9801', 'cake-1006', 1, 3, 1, 0, 1, '2022-06-07 23:56:18', '2022-06-07 23:56:18');
INSERT INTO `carousel` VALUES ('c-10021', 'http://122.152.205.72:88/group1/M00/00/05/CpoxxF0ZmH6AeuRrAAEZviPhyQ0768.png', '#55be59', '133', 2, 4, 1, 0, 1, '2022-06-07 23:56:18', '2022-06-07 23:56:18');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `type` int(11) NOT NULL COMMENT '分类类型',
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '父id',
  `level` int(11) NOT NULL DEFAULT 1 COMMENT '层级',
  `image` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类图',
  `logo` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `slogan` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '口号',
  `bg_color` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '背景颜色',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台类目 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '甜点/蛋糕', 1, '0', 1, 'http://122.152.205.72:88/foodie/category/cake.png', 'img/cake.png', '每一道甜品都能打开你的味蕾', '#fe7a65', 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('10', '生鲜/蔬果', 1, '0', 1, 'http://122.152.205.72:88/foodie/category/meat2.png', 'img/food.png', '新鲜少不了，每日蔬果生鲜', '#6cc67c', 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('100', '武汉鸭脖', 3, '21', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('101', '鸭锁骨', 3, '21', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('102', '鸭胗', 3, '21', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('103', '鸭翅', 3, '21', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('104', '网红坚果', 3, '22', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('105', '瓜子', 3, '22', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('106', '碧根果', 3, '22', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('107', '松子', 3, '22', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('108', '山核桃', 3, '22', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('109', '开心果', 3, '22', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('11', '蛋糕', 2, '1', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('110', '腰果', 3, '22', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('111', '网红锅巴', 3, '23', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('112', '蛋黄锅巴', 3, '23', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('113', '水果糖', 3, '24', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('114', '薄荷糖', 3, '24', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('115', '夹心糖', 3, '24', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('116', '奶糖', 3, '24', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('117', '喜糖', 3, '24', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('118', '麦芽糖', 3, '24', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('119', '话梅', 3, '25', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('12', '点心', 2, '1', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('120', '果干', 3, '25', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('121', '草莓干', 3, '25', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('122', '芒果干', 3, '25', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('123', '菠萝干', 3, '25', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('124', '山楂糕', 3, '25', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('125', '黑巧克力', 3, '26', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('126', '白巧克力', 3, '26', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('127', '夹心巧克力', 3, '26', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('128', '榛果巧克力', 3, '26', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('129', '日本生巧', 3, '26', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('13', '饼干', 2, '2', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('130', '果肉布丁', 3, '27', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('131', '果冻碎碎冰', 3, '27', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('132', '果汁果冻', 3, '27', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('133', '帝王蟹', 3, '29', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('134', '大龙虾', 3, '29', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('135', '鲍鱼', 3, '29', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('136', '海参', 3, '29', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('137', '鱿鱼', 3, '29', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('138', '三文鱼', 3, '29', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('139', '扇贝', 3, '29', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('14', '薯片', 2, '2', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('140', '干贝', 3, '30', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('141', '海苔', 3, '30', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('142', '虾仁', 3, '30', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('143', '海鱼干', 3, '30', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('144', '水蜜桃茶', 3, '33', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('145', '白桃乌龙茶', 3, '33', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('146', '柠檬片', 3, '33', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('147', '白茶', 3, '31', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('148', '红茶', 3, '31', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('149', '绿茶', 3, '31', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('15', '虾条', 2, '2', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('150', '铁观音', 3, '31', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('151', '胖大海', 3, '31', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('152', '碧螺春', 3, '31', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('153', '速冲奶茶', 3, '32', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('154', '珍珠奶茶', 3, '32', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('155', '袋装奶茶', 3, '32', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('156', '英式奶茶', 3, '32', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('157', '黄瓜', 3, '34', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('158', '芋头', 3, '34', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('159', '玉米', 3, '34', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('16', '肉铺', 2, '3', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('160', '南瓜', 3, '34', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('161', '荸荠', 3, '34', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('162', '山药', 3, '34', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('163', '秋葵', 3, '34', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('164', '红薯/紫薯', 3, '34', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('165', '土豆', 3, '34', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('166', '水蜜桃', 3, '35', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('167', '西瓜', 3, '35', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('168', '苹果', 3, '35', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('169', '凤梨', 3, '35', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('17', '肉松', 2, '3', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('170', '草莓', 3, '35', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('171', '葡萄', 3, '35', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('172', '杨梅', 3, '35', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('173', '牛排', 3, '36', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('174', '鸡肉', 3, '36', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('175', '猪肉', 3, '36', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('176', '羊肉', 3, '36', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('177', '蹄子', 3, '36', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('178', '糖醋排骨', 3, '36', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('18', '香肠', 2, '3', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('19', '豆干', 2, '4', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('2', '饼干/膨化', 1, '0', 1, 'http://122.152.205.72:88/foodie/category/cookies.png', 'img/cookies.png', '嘎嘣脆，一听到声音就开吃', '#f59cec', 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('20', '干笋', 2, '4', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('21', '鸭脖', 2, '4', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('22', '坚果', 2, '5', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('23', '锅巴', 2, '5', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('24', '糖果', 2, '6', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('25', '蜜饯', 2, '6', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('26', '巧克力', 2, '7', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('27', '果冻', 2, '7', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('29', '海鲜', 2, '8', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('3', '熟食/肉类', 1, '0', 1, 'http://122.152.205.72:88/foodie/category/meat.png', 'img/meat.png', '食肉者最爱绝佳美食', '#b474fe', 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('30', '海味', 2, '8', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('31', '茶叶', 2, '9', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('32', '奶茶', 2, '9', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('33', '果茶', 2, '9', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('34', '蔬菜', 2, '10', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('35', '水果', 2, '10', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('36', '肉类', 2, '10', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('37', '蒸蛋糕', 3, '11', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('38', '软面包', 3, '11', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('39', '脱水蛋糕', 3, '11', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('4', '素食/卤味', 1, '0', 1, 'http://122.152.205.72:88/foodie/category/duck.png', 'img/luwei.png', '香辣甜辣麻辣，辣了才有味', '#82ceff', 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('40', '马卡龙', 3, '11', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('41', '甜甜圈', 3, '11', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('42', '三明治', 3, '11', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('43', '铜锣烧', 3, '11', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('44', '肉松饼', 3, '12', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('45', '华夫饼', 3, '12', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('46', '沙琪玛', 3, '12', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('47', '鸡蛋卷', 3, '12', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('48', '蛋饼', 3, '12', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('49', '凤梨酥', 3, '12', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('5', '坚果/炒货', 1, '0', 1, 'http://122.152.205.72:88/foodie/category/nut.png', 'img/jianguo.png', '酥脆无比，休闲最佳', '#c6a868', 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('50', '手撕面包', 3, '12', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('51', '苏打饼干', 3, '13', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('52', '夹心饼干', 3, '13', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('53', '闲饼干', 3, '13', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('54', '甜饼干', 3, '13', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('55', '威化饼干', 3, '13', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('56', '酥饼干', 3, '13', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('57', '曲奇', 3, '13', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('58', '无糖饼干', 3, '13', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('59', '早餐饼干', 3, '13', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('6', '糖果/蜜饯', 1, '0', 1, 'http://122.152.205.72:88/foodie/category/mango.png', 'img/sweet.png', '甜味是爱美者的最爱', '#6bdea7', 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('60', '薯条', 3, '14', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('61', '薯片', 3, '14', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('62', '山药薯片', 3, '14', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('63', '网红薯片', 3, '14', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('64', '蛋黄薯片', 3, '14', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('65', '虾条', 3, '15', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('66', '怀旧虾条', 3, '15', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('67', '8090后虾条', 3, '15', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('68', '进口虾条', 3, '15', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('69', 'DIY虾条', 3, '15', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('7', '巧克力', 1, '0', 1, 'http://122.152.205.72:88/foodie/category/chocolate.png', 'img/chocolate.png', '美容养颜，男女都爱', '#f8c375', 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('73', '猪肉脯', 3, '16', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('74', '牛肉脯', 3, '16', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('75', '鸡肉脯', 3, '16', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('76', '散装肉脯', 3, '16', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('77', '猪肉干', 3, '16', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('78', '牛肉干', 3, '16', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('79', '牛肉粒', 3, '16', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('8', '海鲜/海味', 1, '0', 1, 'http://122.152.205.72:88/foodie/category/crab.png', 'img/lobster.png', '吃货们怎么能少了海鲜呢？', '#84affe', 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('80', '牛肉松', 3, '17', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('81', '猪肉松', 3, '17', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('82', '儿童肉松', 3, '17', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('83', '腊味香肠', 3, '18', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('84', '广式香肠', 3, '18', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('85', '火腿肠', 3, '18', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('86', '烤肠', 3, '18', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('87', '鸡肉肠', 3, '18', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('88', '鱼肠', 3, '18', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('89', '酒味香肠', 3, '18', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('9', '花茶/果茶', 1, '0', 1, 'http://122.152.205.72:88/foodie/category/tea.png', 'img/tea.png', '绿茶红茶怎能少得了', '#ff9229', 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('90', '香菇', 3, '19', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('91', '零食', 3, '19', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('92', '豆腐干', 3, '19', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('93', '辣条', 3, '19', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('94', '泡椒脆笋', 3, '20', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('95', '野生笋干', 3, '20', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('96', '扁尖笋', 3, '20', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('97', '农家笋', 3, '20', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('98', '卤味鸭脖', 3, '21', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');
INSERT INTO `category` VALUES ('99', '麻辣鸭脖', 3, '21', 1, NULL, NULL, NULL, NULL, 0, 1, '2022-06-07 23:56:34', '2022-06-07 23:56:34');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品主键id',
  `entity_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺实体id',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `category_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类id',
  `price` int(11) NOT NULL DEFAULT 1 COMMENT '价格',
  `status` int(5) NOT NULL COMMENT '上下架状态,1:上架 2:下架',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品描述',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('bingan-1001', "000000", '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '51', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/bingan-1001/img1.png\"><img src=\"http://122.152.205.72:88/foodie/bingan-1001/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('bingan-1002', "000000", '【天天吃货】男人最爱 秋葵饼干 嘎嘣脆', '51', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/bingan-1002/img1.png\"><img src=\"http://122.152.205.72:88/foodie/bingan-1002/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('bingan-1003', "000000", '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '51', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/bingan-1003/img1.png\"><img src=\"http://122.152.205.72:88/foodie/bingan-1003/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('bingan-1004', "000000", '【天天吃货】可爱美丽甜甜圈 最美下午茶', '51', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/bingan-1004/img1.png\"><img src=\"http://122.152.205.72:88/foodie/bingan-1004/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('bingan-1005', "000000", '【天天吃货】夹心吐司面包 早餐面包 早点早饭', '51', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/bingan-1005/img1.png\"><img src=\"http://122.152.205.72:88/foodie/bingan-1005/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('bingan-1006', "000000", '【天天吃货】夹心吐司面包 全麦面包 早点早饭', '51', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/bingan-1006/img1.png\"><img src=\"http://122.152.205.72:88/foodie/bingan-1006/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-1001', "000000", '【天天吃货】真香预警 超级好吃 手撕面包 儿童早餐早饭', '37', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-1001/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-1001/img2.png\"><img src=\"http://122.152.205.72:88/foodie/cake-1001/img3.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-1002', "000000", '【天天吃货】网红烘焙蛋糕 好吃的蛋糕', '37', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-1002/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-1002/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-1003', "000000", '【天天吃货】超好吃华夫饼 美食诱惑 下午茶', '37', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-1003/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-1003/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-1004', "000000", '【天天吃货】美味沙琪玛 超棒下午茶', '37', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-1004/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-1004/img2.png\"><img src=\"http://122.152.205.72:88/foodie/cake-1004/img3.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-1005', "000000", '【天天吃货】进口美食凤梨酥', '37', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-1005/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-1005/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-1006', "000000", '【天天吃货】机器猫最爱 铜锣烧 最美下午茶', '37', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-1006/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-1006/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-37', "000000", '好吃蛋糕甜点蒸蛋糕', '37', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-37/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-37/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-38', "000000", '好吃蛋糕甜点软面包', '38', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-38/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-38/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-39', "000000", '好吃蛋糕甜点脱水蛋糕', '39', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-39/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-39/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-42', "000000", '好吃蛋糕甜点脱水蛋糕', '42', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-42/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-42/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-44', "000000", '好吃蛋糕甜点软面包', '44', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-44/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-44/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-47', "000000", '好吃鸡蛋卷 来自日本进口', '47', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-47/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-47/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cake-48', "000000", '好吃蛋饼 来自日本进口', '48', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cake-48/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cake-48/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('candy-1001', "000000", '【天天吃货】薄荷糖 清凉口气清新 开会必备', '113', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/candy-1001/img1.png\"><img src=\"http://122.152.205.72:88/foodie/candy-1001/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('candy-1002', "000000", '【天天吃货】休闲奶糖 零食 好吃的不得了', '113', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/candy-1002/img1.png\"><img src=\"http://122.152.205.72:88/foodie/candy-1002/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('candy-1003', "000000", '【天天吃货】休闲麦芽糖 零食糖果 儿时记忆', '113', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/candy-1003/img1.png\"><img src=\"http://122.152.205.72:88/foodie/candy-1003/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('candy-1004', "000000", '【天天吃货】休闲山楂糕 零食糖果 下午茶', '113', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/candy-1004/img1.png\"><img src=\"http://122.152.205.72:88/foodie/candy-1004/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('candy-1005', "000000", '【天天吃货】菠萝干 最佳下午茶', '113', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/candy-1005/img1.png\"><img src=\"http://122.152.205.72:88/foodie/candy-1005/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('candy-1006', "000000", '【天天吃货】芒果干 女女最爱 最佳下午茶', '113', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/candy-1006/img1.png\"><img src=\"http://122.152.205.72:88/foodie/candy-1006/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-1001', "000000", '【天天吃货】黑巧克力 送人必备 最佳下午茶', '125', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-1001/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-1001/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-1002', "000000", '【天天吃货】黑巧克力豆 儿时记忆 好吃噢', '125', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-1002/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-1002/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-1003', "000000", '【天天吃货】巧克力甜甜圈 最棒下午茶 美眉最爱', '125', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-1003/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-1003/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-1004', "000000", '【天天吃货】水果布丁果冻 最棒下午茶 儿童最爱', '125', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-1004/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-1004/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-1005', "000000", '【天天吃货】果肉布丁 最棒下午茶 儿童最爱', '125', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-1005/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-1005/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-1006', "000000", '【天天吃货】玫瑰花水果布丁 最棒下午茶 美眉最爱', '125', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-1006/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-1006/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-125', "000000", '进口泰国黑巧克力 情人节必备', '125', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-125/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-125/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-127', "000000", '进口香港夹心巧克力 情人节必备', '127', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-127/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-127/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-128', "000000", '榛果巧克力 喜事必备送人最佳', '128', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-128/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-128/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-129', "000000", '进口日本生巧 必备送人最佳', '129', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-129/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-129/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-130', "000000", '美味果肉布丁 儿童父母必备', '130', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-130/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-130/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-131', "000000", '美味果冻碎碎冰 冰箱家族最爱', '131', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-131/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-131/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('chocolate-132', "000000", '美味果汁果冻布丁 儿童爱吃父母必备', '132', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/chocolate-132/img1.png\"><img src=\"http://122.152.205.72:88/foodie/chocolate-132/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-51', "000000", '嘎嘣脆酥酥麻麻饼干 休闲食品下午茶最爱', '51', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-51/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-51/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-52', "000000", '夹心饼干美味下午茶', '52', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-52/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-52/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-53', "000000", '【天天吃货】儿童饼干 成人饼干 趣趣闲闲', '53', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-53/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-53/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-54', "000000", '甜甜美食饼干 儿童最爱', '54', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-54/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-54/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-55', "000000", '超级好吃巧克力威化饼干 女女最爱', '55', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-55/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-55/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-56', "000000", '甜甜美食饼干 儿童最爱', '56', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-56/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-56/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-57', "000000", '好吃下午茶曲奇饼干', '57', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-57/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-57/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-58', "000000", '【天天吃货】无糖者最爱无糖饼干 酥酥脆脆', '58', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-58/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-58/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-59', "000000", '【天天吃货】儿童饼干 早餐必备', '59', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-59/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-59/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-60', "000000", '儿时记忆儿时最爱 好吃回味薯条', '60', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-60/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-60/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-62', "000000", '美食推荐 山药鼠标美味养生', '62', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-62/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-62/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-63', "000000", '超级好吃巧克力威化饼干 女女最爱', '63', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-63/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-63/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-64', "000000", '【天天吃货】正宗网红超好吃蛋黄薯片', '64', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-64/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-64/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-65', "000000", '【天天吃货】休闲虾条 进口虾条 超美味下午茶', '65', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-65/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-65/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('cookies-68', "000000", '进口虾条奇趣好吃不嫌多', '68', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/cookies-68/img1.png\"><img src=\"http://122.152.205.72:88/foodie/cookies-68/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-1001', "000000", '【天天吃货】特产糖醋排骨 美味佳肴 下酒菜 居家必备', '157', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-1001/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-1001/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-1002', "000000", '【天天吃货】农家有机红薯紫薯 农家菜 其乐融融', '157', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-1002/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-1002/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-1003', "000000", '【天天吃货】正宗阳山水蜜桃 汁多肉肥 香甜可口', '157', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-1003/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-1003/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-1004', "000000", '【天天吃货】正宗草莓 又大又可口 儿童必吃水果', '157', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-1004/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-1004/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-1005', "000000", '【天天吃货】正宗进口牛排 沙朗菲力牛排 男人最爱', '157', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-1005/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-1005/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-1006', "000000", '【天天吃货】正宗农家自种南瓜 香甜可口 早餐必备', '157', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-1006/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-1006/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-74', "000000", '香港进口牛肉脯 香甜可口', '74', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-74/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-74/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-75', "000000", '澳门进口鸡肉脯 香甜可口下酒菜', '75', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-75/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-75/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-76', "000000", '台湾进口散装肉脯 香甜可口', '76', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-76/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-76/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-761', "000000", '香港散装肉脯进口 香甜可口', '76', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-761/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-761/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-77', "000000", '台湾进口散装肉干 香甜可口', '77', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-77/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-77/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-78', "000000", '香港进口牛肉干 香甜可口', '78', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-78/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-78/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-80', "000000", '香港进口牛肉松 香甜可口', '80', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-80/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-80/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-81', "000000", '台湾进口猪肉松 香甜可口', '81', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-81/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-81/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-82', "000000", '台湾进口儿童肉松 香甜可口', '82', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-82/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-82/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-83', "000000", '香港进口腊味香肠 香甜可口', '83', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-83/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-83/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-84', "000000", '东北广式香肠 香甜可口下酒菜', '84', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-84/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-84/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-85', "000000", '美国进口火腿肠 香甜可口下酒菜', '85', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-85/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-85/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-86', "000000", '香港进口腊味香肠 香甜可口', '86', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-86/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-86/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-87', "000000", '澳门进口鸡肉肠 香甜可口下酒菜', '87', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-87/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-87/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-88', "000000", '香港进口鱼肠 香甜可口', '88', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-88/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-88/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('food-89', "000000", '香港进口酒味腊肠 香甜可口下酒菜', '89', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/food-89/img1.png\"><img src=\"http://122.152.205.72:88/foodie/food-89/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-1001', "000000", '【天天吃货】酥肉 鸡肉猪肉牛肉 脆酥香', '73', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-1001/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-1001/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-1002', "000000", '【天天吃货】肉铺 鸡肉猪肉牛肉 甜辣香', '73', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-1002/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-1002/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-1003', "000000", '【天天吃货】肉粒 猪肉粒牛肉粒鸡肉粒 粒粒香', '73', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-1003/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-1003/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-1004', "000000", '【天天吃货】肉松 猪肉牛肉鸡肉 早饭配菜儿童最爱', '73', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-1004/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-1004/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-1005', "000000", '【天天吃货】腊肠 猪肉牛肉鸡肉 肉类最佳下饭菜', '73', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-1005/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-1005/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-1006', "000000", '【天天吃货】烤肠 猪肉牛肉鸡肉 肉类最佳零食', '73', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-1006/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-1006/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-157', "000000", '新鲜黄瓜 农家自种', '157', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-157/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-157/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-158', "000000", '新鲜芋头 农家有机芋头', '158', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-158/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-158/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-159', "000000", '新鲜采摘玉米 浓香好吃', '159', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-159/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-159/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-160', "000000", '顺丰闪电发货 新鲜自种南瓜', '160', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-160/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-160/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-161', "000000", '台湾进口荸荠 香甜可口', '161', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-161/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-161/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-162', "000000", '新鲜农家山药 有机山药', '162', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-162/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-162/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-163', "000000", '新鲜农家秋葵 有机栽培', '163', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-163/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-163/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-164', "000000", '新鲜红薯紫薯 有机农家自种', '164', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-164/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-164/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-165', "000000", '新鲜土豆 农家自种', '165', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-165/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-165/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-166', "000000", '阳山水蜜桃 谁能多汁 无锡特产', '166', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-166/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-166/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-167', "000000", '西瓜8424 本土好吃的瓜', '167', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-167/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-167/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-168', "000000", '新鲜农家苹果 有机栽培', '168', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-168/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-168/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-169', "000000", '台湾进口凤梨 香甜可口', '169', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-169/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-169/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-170', "000000", '台湾进口草莓 香甜可口', '170', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-170/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-170/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-171', "000000", '新鲜农家葡萄 有机栽培', '171', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-171/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-171/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-173', "000000", '顺丰闪电发货 新鲜牛排', '173', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-173/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-173/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-174', "000000", '顺丰闪电发货 新鲜鸡肉鸡胸', '174', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-174/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-174/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-175', "000000", '新鲜猪肉 冰箱家族最爱', '175', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-175/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-175/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-176', "000000", '新鲜羊肉 无膻味', '176', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-176/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-176/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-177', "000000", '鲜嫩猪蹄子蹄髈 好吃哟', '177', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-177/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-177/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-178', "000000", '鲜嫩糖醋排骨 无锡特产', '178', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-178/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-178/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('meat-72', "000000", '新鲜采摘的杨梅 非常好吃', '172', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/meat-72/img1.png\"><img src=\"http://122.152.205.72:88/foodie/meat-72/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-1001', "000000", '【天天吃货】进口美国松子 口味齐全', '104', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-1001/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-1001/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-1002', "000000", '【天天吃货】农家锅巴 农家乐 有机菜', '104', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-1002/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-1002/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-1003', "000000", '【天天吃货】进口碧根果 养生补脑最佳零食', '104', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-1003/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-1003/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-1004', "000000", '【天天吃货】进口核桃 养生补脑最佳零食', '104', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-1004/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-1004/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-1005', "000000", '【天天吃货】野生开心果 养生补脑最佳零食', '104', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-1005/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-1005/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-1006', "000000", '【天天吃货】野生腰果 养生补脑最佳零食', '104', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-1006/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-1006/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-104', "000000", '进口坚果大杂烩 好吃又回味', '104', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-104/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-104/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-105', "000000", '美国进口香瓜子 年货必备', '105', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-105/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-105/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-106', "000000", '进口碧根果 美味实在下午茶', '106', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-106/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-106/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-107', "000000", '巴西进口松子 年货必备', '107', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-107/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-107/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-108', "000000", '美国进口山核桃 年货必备', '108', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-108/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-108/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-109', "000000", '美国进口开心果 年货必备', '109', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-109/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-109/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-110', "000000", '进口腰果 美味实在下午茶', '110', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-110/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-110/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('nut-111', "000000", '网红锅巴 美味实在下午茶', '111', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/nut-111/img1.png\"><img src=\"http://122.152.205.72:88/foodie/nut-111/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-1001', "000000", '【天天吃货】熟食龙虾虾尾 最棒下酒菜 聚会聚餐', '133', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-1001/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-1001/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-1002', "000000", '【天天吃货】盒装扇贝肉 海鲜最佳下酒菜', '133', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-1002/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-1002/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-1003', "000000", '【天天吃货】帝王蟹 餐桌霸气大菜 聚会有面子', '133', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-1003/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-1003/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-1004', "000000", '【天天吃货】澳洲大龙虾 餐桌霸气大菜 聚会有面子', '133', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-1004/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-1004/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-1005', "000000", '【天天吃货】精品海味 鱿鱼丝 美眉爱吃零食', '133', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-1005/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-1005/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-1006', "000000", '【天天吃货】精品海味 干虾仁 可生吃 美眉爱吃零食', '133', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-1006/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-1006/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-133', "000000", '超级美味海鲜帝王蟹 聚餐有面子必备', '133', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-133/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-133/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-134', "000000", '超级美味海鲜澳洲大龙虾 聚餐有面子必备', '134', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-134/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-134/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-135', "000000", '美味海鲜 美味鲍鱼 海货好吃海鲜', '135', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-135/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-135/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-136', "000000", '美味海参 聚餐有面子', '136', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-136/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-136/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-137', "000000", '美味海鲜 美味鱿鱼鱿鱼丝 海货好吃海鲜', '137', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-137/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-137/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-138', "000000", '美味三文鱼 寿司 聚会必备', '138', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-138/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-138/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-139', "000000", '美味海鲜 扇贝肉 聚会必备', '139', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-139/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-139/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-140', "000000", '海鲜干贝 炒菜增味必备', '140', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-140/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-140/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-141', "000000", '美味海苔 儿童还吃', '141', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-141/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-141/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-142', "000000", '美味海鲜 干虾仁 炒菜必备海鲜', '142', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-142/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-142/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('seafood-143', "000000", '美味海鱼干 家中囤货必备', '143', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/seafood-143/img1.png\"><img src=\"http://122.152.205.72:88/foodie/seafood-143/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-100', "000000", '新鲜卤辣鸭脖 香甜可口', '100', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-100/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-100/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-1001', "000000", '【天天吃货】武汉鸭脖 卤味齐全 香辣麻辣', '90', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-1001/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-1001/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-1002', "000000", '【天天吃货】武汉鸭胗 卤味齐全 香辣麻辣', '90', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-1002/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-1002/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-1003', "000000", '【天天吃货】武汉鸭翅 卤味齐全 香辣麻辣', '90', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-1003/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-1003/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-1004', "000000", '【天天吃货】豆腐干 卤味齐全 香辣麻辣', '90', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-1004/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-1004/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-1005', "000000", '【天天吃货】农家乐农家菜 香喷喷野生笋干', '90', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-1005/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-1005/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-1006', "000000", '【天天吃货】儿时记忆 辣条 香辣麻辣', '90', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-1006/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-1006/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-101', "000000", '新鲜卤味鸭锁骨 香甜可口', '101', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-101/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-101/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-102', "000000", '新鲜鸭胗 香甜可口', '102', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-102/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-102/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-103', "000000", '新鲜卤鸭翅 香甜可口', '103', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-103/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-103/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-90', "000000", '新鲜卤辣香菇 香甜可口', '90', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-90/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-90/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-92', "000000", '甜辣苏州有名豆腐干 好吃呦~', '92', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-92/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-92/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-93', "000000", '儿时回味 儿时记忆辣条', '93', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-93/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-93/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-94', "000000", '好吃香辣泡椒脆笋', '94', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-94/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-94/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-95', "000000", '农家有机笋干 香甜可口', '95', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-95/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-95/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('snacks-97', "000000", '好吃香辣农家笋 有机食物香喷喷', '94', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/snacks-97/img1.png\"><img src=\"http://122.152.205.72:88/foodie/snacks-97/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('suger-113', "000000", '儿童爱吃水果糖 无添加剂', '113', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/suger-113/img1.png\"><img src=\"http://122.152.205.72:88/foodie/suger-113/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('suger-115', "000000", '酒味夹心糖 休闲食品', '115', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/suger-115/img1.png\"><img src=\"http://122.152.205.72:88/foodie/suger-115/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('suger-116', "000000", '儿童爱吃奶糖 休闲食品', '116', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/suger-116/img1.png\"><img src=\"http://122.152.205.72:88/foodie/suger-116/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('suger-117', "000000", '中式结婚喜糖 好彩头', '117', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/suger-117/img1.png\"><img src=\"http://122.152.205.72:88/foodie/suger-117/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('suger-118', "000000", '儿时记忆麦芽糖 休闲食品', '118', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/suger-118/img1.png\"><img src=\"http://122.152.205.72:88/foodie/suger-118/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('suger-119', "000000", '好吃零食话梅 休闲食品', '119', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/suger-119/img1.png\"><img src=\"http://122.152.205.72:88/foodie/suger-119/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('suger-121', "000000", '好吃零食草莓干 休闲食品', '121', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/suger-121/img1.png\"><img src=\"http://122.152.205.72:88/foodie/suger-121/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('suger-124', "000000", '儿童爱吃山楂糕 无添加剂', '124', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/suger-124/img1.png\"><img src=\"http://122.152.205.72:88/foodie/suger-124/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-1001', "000000", '【天天吃货】美眉最爱奶茶 下午茶 零食休闲', '144', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-1001/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-1001/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-1002', "000000", '【天天吃货】精品龙井茶 居家必备 喝茶最佳', '144', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-1002/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-1002/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-1003', "000000", '【天天吃货】精品碧螺春 居家必备茶叶 喝茶最佳', '144', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-1003/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-1003/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-1004', "000000", '【天天吃货】精品胖大海 送人必备茶叶 喝茶最佳', '144', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-1004/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-1004/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-1005', "000000", '【天天吃货】精品柠檬片 美眉最爱 泡茶喝茶最佳', '144', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-1005/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-1005/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-1006', "000000", '【天天吃货】冬日必备红茶 养生必备 女女最爱', '144', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-1006/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-1006/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-144', "000000", '清爽可口蜜桃茶 夏天必备', '144', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-144/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-144/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-145', "000000", '养生碧螺春 春夏必备', '145', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-145/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-145/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-146', "000000", '养生必备柠檬片泡枸杞 清爽可口', '146', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-146/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-146/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-147', "000000", '清爽可口白茶 夏天必备', '147', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-147/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-147/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-148', "000000", '养生茶必喝红茶 秋冬必备', '148', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-148/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-148/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-149', "000000", '养生茶必喝绿茶 名目清爽', '149', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-149/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-149/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-150', "000000", '清爽可口铁观音 夏天必备', '150', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-150/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-150/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-151', "000000", '养生必备胖大海 清爽可口', '151', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-151/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-151/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-152', "000000", '养生茶白桃乌龙茶 春夏必备', '152', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-152/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-152/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');
INSERT INTO `item` VALUES ('tea-153', "000000", '美女最爱下午茶 奶茶泡泡更悠闲', '153', 1, 1, '<p>超级好吃、非常好吃</p><img src=\"http://122.152.205.72:88/foodie/tea-153/img1.png\"><img src=\"http://122.152.205.72:88/foodie/tea-153/img2.png\">', 0, 1, '2022-06-08 00:00:41', '2022-06-08 00:00:41');

-- ----------------------------
-- Table structure for item_attr
-- ----------------------------
DROP TABLE IF EXISTS `item_attr`;
CREATE TABLE `item_attr`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  `entity_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺实体id',
  `item_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品id',
  `attr_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性id',
  `attr_value_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性值id',
  `attr_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性名称',
  `attr_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性值',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `sort` int(11) NOT NULL DEFAULT 1 COMMENT '顺序',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_comment
-- ----------------------------
DROP TABLE IF EXISTS `item_comment`;
CREATE TABLE `item_comment`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id主键',
  `entity_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺实体id',
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id 用户名须脱敏',
  `item_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品id',
  `item_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `item_spec_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品规格id 可为空',
  `sepc_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格名称 可为空',
  `comment_level` int(11) NOT NULL COMMENT '评价等级 1：好评 2：中评 3：差评',
  `content` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评价内容',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评价表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_comment
-- ----------------------------
INSERT INTO `item_comment` VALUES ('1', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '草莓味', 1, '很棒', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('10', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '草莓味', 2, 'very good', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('11', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '香草味', 3, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('12', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '香草味', 1, '非常不错！~', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('13', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '香草味', 2, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('14', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '香草味', 2, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('15', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('16', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '香草味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('17', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('18', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('19', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 2, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('190729AYHX8M55KP', "000000", '1908017YR51G1XWH', 'cake-1002', '【天天吃货】网红烘焙蛋糕 好吃的蛋糕', '4', '原味', 1, '哈哈哈', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('190729AYHX8M55KR', "000000", '1908017YR51G1XWH', 'cake-1006', '【天天吃货】机器猫最爱 铜锣烧 最美下午茶', 'cake-1006-spec-1', '草莓味', 2, '的地位', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('2', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('20', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('21', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 2, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('22', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('3', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('31', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 2, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('4', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('5', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('6', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 2, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('7', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('8', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 3, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');
INSERT INTO `item_comment` VALUES ('9', "000000", '1908017YR51G1XWH', 'cake-1001', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', 'bingan-1001-spec-1', '原味', 1, '非常好吃', 0, 1, '2022-06-08 00:02:57', '2022-06-08 00:02:57');

-- ----------------------------
-- Table structure for item_img
-- ----------------------------
DROP TABLE IF EXISTS `item_img`;
CREATE TABLE `item_img`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片主键',
  `entity_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺实体id',
  `item_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品外键id',
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片地址',
  `sort` int(11) NOT NULL COMMENT '图片顺序，从小到大',
  `main` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否主图，1：是，0：否',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品图片 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_img
-- ----------------------------
INSERT INTO `item_img` VALUES ('1', '000000', 'cake-1001', 'http://122.152.205.72:88/foodie/cake-1001/img1.png', 0, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('2', '000000', 'cake-1001', 'http://122.152.205.72:88/foodie/cake-1001/img2.png', 1, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('3', '000000', 'cake-1001', 'http://122.152.205.72:88/foodie/cake-1001/img3.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('4', '000000', 'cake-1002', 'http://122.152.205.72:88/foodie/cake-1002/img1.png', 0, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('5', '000000', 'cake-1002', 'http://122.152.205.72:88/foodie/cake-1002/img2.png', 1, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('6', '000000', 'cake-1003', 'http://122.152.205.72:88/foodie/cake-1003/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('7', '000000', 'cake-1003', 'http://122.152.205.72:88/foodie/cake-1003/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1001-img-1', '000000', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1001-img-2', '000000', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1002-img-1', '000000', 'bingan-1002', 'http://122.152.205.72:88/foodie/bingan-1002/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1002-img-2', '000000', 'bingan-1002', 'http://122.152.205.72:88/foodie/bingan-1002/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1003-img-1', '000000', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1003-img-2', '000000', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1004-img-1', '000000', 'bingan-1004', 'http://122.152.205.72:88/foodie/bingan-1004/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1004-img-2', '000000', 'bingan-1004', 'http://122.152.205.72:88/foodie/bingan-1004/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1005-img-1', '000000', 'bingan-1005', 'http://122.152.205.72:88/foodie/bingan-1005/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1005-img-2', '000000', 'bingan-1005', 'http://122.152.205.72:88/foodie/bingan-1005/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1006-img-1', '000000', 'bingan-1006', 'http://122.152.205.72:88/foodie/bingan-1006/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('bingan-1006-img-2', '000000', 'bingan-1006', 'http://122.152.205.72:88/foodie/bingan-1006/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-1004-img-1', '000000', 'cake-1004', 'http://122.152.205.72:88/foodie/cake-1004/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-1004-img-2', '000000', 'cake-1004', 'http://122.152.205.72:88/foodie/cake-1004/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-1004-img-3', '000000', 'cake-1004', 'http://122.152.205.72:88/foodie/cake-1004/img3.png', 3, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-1005-img-1', '000000', 'cake-1005', 'http://122.152.205.72:88/foodie/cake-1005/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-1005-img-2', '000000', 'cake-1005', 'http://122.152.205.72:88/foodie/cake-1005/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-1006-img-1', '000000', 'cake-1006', 'http://122.152.205.72:88/foodie/cake-1006/img1.png', 1, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-1006-img-2', '000000', 'cake-1006', 'http://122.152.205.72:88/foodie/cake-1006/img2.png', 2, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-37-img-1', '000000', 'cake-37', 'http://122.152.205.72:88/foodie/cake-37/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-37-img-2', '000000', 'cake-37', 'http://122.152.205.72:88/foodie/cake-37/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-38-img-1', '000000', 'cake-38', 'http://122.152.205.72:88/foodie/cake-38/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-38-img-2', '000000', 'cake-38', 'http://122.152.205.72:88/foodie/cake-38/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-39-img-1', '000000', 'cake-39', 'http://122.152.205.72:88/foodie/cake-39/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-39-img-2', '000000', 'cake-39', 'http://122.152.205.72:88/foodie/cake-39/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-42-img-1', '000000', 'cake-42', 'http://122.152.205.72:88/foodie/cake-42/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-42-img-2', '000000', 'cake-42', 'http://122.152.205.72:88/foodie/cake-42/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-44-img-1', '000000', 'cake-44', 'http://122.152.205.72:88/foodie/cake-44/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-44-img-2', '000000', 'cake-44', 'http://122.152.205.72:88/foodie/cake-44/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-47-img-1', '000000', 'cake-47', 'http://122.152.205.72:88/foodie/cake-47/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-47-img-2', '000000', 'cake-47', 'http://122.152.205.72:88/foodie/cake-47/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-48-img-1', '000000', 'cake-48', 'http://122.152.205.72:88/foodie/cake-48/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cake-48-img-2', '000000', 'cake-48', 'http://122.152.205.72:88/foodie/cake-48/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1001-img-1', '000000', 'candy-1001', 'http://122.152.205.72:88/foodie/candy-1001/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1001-img-2', '000000', 'candy-1001', 'http://122.152.205.72:88/foodie/candy-1001/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1002-img-1', '000000', 'candy-1002', 'http://122.152.205.72:88/foodie/candy-1002/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1002-img-2', '000000', 'candy-1002', 'http://122.152.205.72:88/foodie/candy-1002/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1003-img-1', '000000', 'candy-1003', 'http://122.152.205.72:88/foodie/candy-1003/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1003-img-2', '000000', 'candy-1003', 'http://122.152.205.72:88/foodie/candy-1003/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1004-img-1', '000000', 'candy-1004', 'http://122.152.205.72:88/foodie/candy-1004/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1004-img-2', '000000', 'candy-1004', 'http://122.152.205.72:88/foodie/candy-1004/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1005-img-1', '000000', 'candy-1005', 'http://122.152.205.72:88/foodie/candy-1005/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1005-img-2', '000000', 'candy-1005', 'http://122.152.205.72:88/foodie/candy-1005/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1006-img-1', '000000', 'candy-1006', 'http://122.152.205.72:88/foodie/candy-1006/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('candy-1006-img-2', '000000', 'candy-1006', 'http://122.152.205.72:88/foodie/candy-1006/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1001-img-1', '000000', 'chocolate-1001', 'http://122.152.205.72:88/foodie/chocolate-1001/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1001-img-2', '000000', 'chocolate-1001', 'http://122.152.205.72:88/foodie/chocolate-1001/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1002-img-1', '000000', 'chocolate-1002', 'http://122.152.205.72:88/foodie/chocolate-1002/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1002-img-2', '000000', 'chocolate-1002', 'http://122.152.205.72:88/foodie/chocolate-1002/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1003-img-1', '000000', 'chocolate-1003', 'http://122.152.205.72:88/foodie/chocolate-1003/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1003-img-2', '000000', 'chocolate-1003', 'http://122.152.205.72:88/foodie/chocolate-1003/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1004-img-1', '000000', 'chocolate-1004', 'http://122.152.205.72:88/foodie/chocolate-1004/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1004-img-2', '000000', 'chocolate-1004', 'http://122.152.205.72:88/foodie/chocolate-1004/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1005-img-1', '000000', 'chocolate-1005', 'http://122.152.205.72:88/foodie/chocolate-1005/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1005-img-2', '000000', 'chocolate-1005', 'http://122.152.205.72:88/foodie/chocolate-1005/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1006-img-1', '000000', 'chocolate-1006', 'http://122.152.205.72:88/foodie/chocolate-1006/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-1006-img-2', '000000', 'chocolate-1006', 'http://122.152.205.72:88/foodie/chocolate-1006/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-125-img-1', '000000', 'chocolate-125', 'http://122.152.205.72:88/foodie/chocolate-125/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-125-img-2', '000000', 'chocolate-125', 'http://122.152.205.72:88/foodie/chocolate-125/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-127-img-1', '000000', 'chocolate-127', 'http://122.152.205.72:88/foodie/chocolate-127/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-127-img-2', '000000', 'chocolate-127', 'http://122.152.205.72:88/foodie/chocolate-127/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-128-img-1', '000000', 'chocolate-128', 'http://122.152.205.72:88/foodie/chocolate-128/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-128-img-2', '000000', 'chocolate-128', 'http://122.152.205.72:88/foodie/chocolate-128/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-129-img-1', '000000', 'chocolate-129', 'http://122.152.205.72:88/foodie/chocolate-129/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-129-img-2', '000000', 'chocolate-129', 'http://122.152.205.72:88/foodie/chocolate-129/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-130-img-1', '000000', 'chocolate-130', 'http://122.152.205.72:88/foodie/chocolate-130/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-130-img-2', '000000', 'chocolate-130', 'http://122.152.205.72:88/foodie/chocolate-130/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-131-img-1', '000000', 'chocolate-131', 'http://122.152.205.72:88/foodie/chocolate-131/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-131-img-2', '000000', 'chocolate-131', 'http://122.152.205.72:88/foodie/chocolate-131/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-132-img-1', '000000', 'chocolate-132', 'http://122.152.205.72:88/foodie/chocolate-132/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('chocolate-132-img-2', '000000', 'chocolate-132', 'http://122.152.205.72:88/foodie/chocolate-132/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-51-img-1', '000000', 'cookies-51', 'http://122.152.205.72:88/foodie/cookies-51/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-51-img-2', '000000', 'cookies-51', 'http://122.152.205.72:88/foodie/cookies-51/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-52-img-1', '000000', 'cookies-52', 'http://122.152.205.72:88/foodie/cookies-52/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-52-img-2', '000000', 'cookies-52', 'http://122.152.205.72:88/foodie/cookies-52/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-53-img-1', '000000', 'cookies-53', 'http://122.152.205.72:88/foodie/cookies-53/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-53-img-2', '000000', 'cookies-53', 'http://122.152.205.72:88/foodie/cookies-53/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-54-img-1', '000000', 'cookies-54', 'http://122.152.205.72:88/foodie/cookies-54/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-54-img-2', '000000', 'cookies-54', 'http://122.152.205.72:88/foodie/cookies-54/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-55-img-1', '000000', 'cookies-55', 'http://122.152.205.72:88/foodie/cookies-55/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-55-img-2', '000000', 'cookies-55', 'http://122.152.205.72:88/foodie/cookies-55/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-56-img-1', '000000', 'cookies-56', 'http://122.152.205.72:88/foodie/cookies-56/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-56-img-2', '000000', 'cookies-56', 'http://122.152.205.72:88/foodie/cookies-56/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-57-img-1', '000000', 'cookies-57', 'http://122.152.205.72:88/foodie/cookies-57/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-57-img-2', '000000', 'cookies-57', 'http://122.152.205.72:88/foodie/cookies-57/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-58-img-1', '000000', 'cookies-58', 'http://122.152.205.72:88/foodie/cookies-58/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-58-img-2', '000000', 'cookies-58', 'http://122.152.205.72:88/foodie/cookies-58/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-59-img-1', '000000', 'cookies-59', 'http://122.152.205.72:88/foodie/cookies-59/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-59-img-2', '000000', 'cookies-59', 'http://122.152.205.72:88/foodie/cookies-59/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-60-img-1', '000000', 'cookies-60', 'http://122.152.205.72:88/foodie/cookies-60/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-60-img-2', '000000', 'cookies-60', 'http://122.152.205.72:88/foodie/cookies-60/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-62-img-1', '000000', 'cookies-62', 'http://122.152.205.72:88/foodie/cookies-62/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-62-img-2', '000000', 'cookies-62', 'http://122.152.205.72:88/foodie/cookies-62/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-63-img-1', '000000', 'cookies-63', 'http://122.152.205.72:88/foodie/cookies-63/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-63-img-2', '000000', 'cookies-63', 'http://122.152.205.72:88/foodie/cookies-63/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-64-img-1', '000000', 'cookies-64', 'http://122.152.205.72:88/foodie/cookies-64/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-64-img-2', '000000', 'cookies-64', 'http://122.152.205.72:88/foodie/cookies-64/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-65-img-1', '000000', 'cookies-65', 'http://122.152.205.72:88/foodie/cookies-65/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-65-img-2', '000000', 'cookies-65', 'http://122.152.205.72:88/foodie/cookies-65/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-68-img-1', '000000', 'cookies-68', 'http://122.152.205.72:88/foodie/cookies-68/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('cookies-68-img-2', '000000', 'cookies-68', 'http://122.152.205.72:88/foodie/cookies-68/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1001-img-1', '000000', 'food-1001', 'http://122.152.205.72:88/foodie/food-1001/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1001-img-2', '000000', 'food-1001', 'http://122.152.205.72:88/foodie/food-1001/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1002-img-1', '000000', 'food-1002', 'http://122.152.205.72:88/foodie/food-1002/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1002-img-2', '000000', 'food-1002', 'http://122.152.205.72:88/foodie/food-1002/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1003-img-1', '000000', 'food-1003', 'http://122.152.205.72:88/foodie/food-1003/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1003-img-2', '000000', 'food-1003', 'http://122.152.205.72:88/foodie/food-1003/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1004-img-1', '000000', 'food-1004', 'http://122.152.205.72:88/foodie/food-1004/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1004-img-2', '000000', 'food-1004', 'http://122.152.205.72:88/foodie/food-1004/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1005-img-1', '000000', 'food-1005', 'http://122.152.205.72:88/foodie/food-1005/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1005-img-2', '000000', 'food-1005', 'http://122.152.205.72:88/foodie/food-1005/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1006-img-1', '000000', 'food-1006', 'http://122.152.205.72:88/foodie/food-1006/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-1006-img-2', '000000', 'food-1006', 'http://122.152.205.72:88/foodie/food-1006/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-74-img-1', '000000', 'food-74', 'http://122.152.205.72:88/foodie/food-74/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-74-img-2', '000000', 'food-74', 'http://122.152.205.72:88/foodie/food-74/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-75-img-1', '000000', 'food-75', 'http://122.152.205.72:88/foodie/food-75/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-75-img-2', '000000', 'food-75', 'http://122.152.205.72:88/foodie/food-75/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-76-img-1', '000000', 'food-76', 'http://122.152.205.72:88/foodie/food-76/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-76-img-2', '000000', 'food-76', 'http://122.152.205.72:88/foodie/food-76/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-761-img-1', '000000', 'food-761', 'http://122.152.205.72:88/foodie/food-761/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-761-img-2', '000000', 'food-761', 'http://122.152.205.72:88/foodie/food-761/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-77-img-1', '000000', 'food-77', 'http://122.152.205.72:88/foodie/food-77/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-77-img-2', '000000', 'food-77', 'http://122.152.205.72:88/foodie/food-77/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-78-img-1', '000000', 'food-78', 'http://122.152.205.72:88/foodie/food-78/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-78-img-2', '000000', 'food-78', 'http://122.152.205.72:88/foodie/food-78/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-80-img-1', '000000', 'food-80', 'http://122.152.205.72:88/foodie/food-80/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-80-img-2', '000000', 'food-80', 'http://122.152.205.72:88/foodie/food-80/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-81-img-1', '000000', 'food-81', 'http://122.152.205.72:88/foodie/food-81/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-81-img-2', '000000', 'food-81', 'http://122.152.205.72:88/foodie/food-81/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-82-img-1', '000000', 'food-82', 'http://122.152.205.72:88/foodie/food-82/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-82-img-2', '000000', 'food-82', 'http://122.152.205.72:88/foodie/food-82/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-83-img-1', '000000', 'food-83', 'http://122.152.205.72:88/foodie/food-83/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-83-img-2', '000000', 'food-83', 'http://122.152.205.72:88/foodie/food-83/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-84-img-1', '000000', 'food-84', 'http://122.152.205.72:88/foodie/food-84/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-84-img-2', '000000', 'food-84', 'http://122.152.205.72:88/foodie/food-84/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-85-img-1', '000000', 'food-85', 'http://122.152.205.72:88/foodie/food-85/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-85-img-2', '000000', 'food-85', 'http://122.152.205.72:88/foodie/food-85/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-86-img-1', '000000', 'food-86', 'http://122.152.205.72:88/foodie/food-86/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-86-img-2', '000000', 'food-86', 'http://122.152.205.72:88/foodie/food-86/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-87-img-1', '000000', 'food-87', 'http://122.152.205.72:88/foodie/food-87/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-87-img-2', '000000', 'food-87', 'http://122.152.205.72:88/foodie/food-87/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-88-img-1', '000000', 'food-88', 'http://122.152.205.72:88/foodie/food-88/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-88-img-2', '000000', 'food-88', 'http://122.152.205.72:88/foodie/food-88/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-89-img-1', '000000', 'food-89', 'http://122.152.205.72:88/foodie/food-89/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('food-89-img-2', '000000', 'food-89', 'http://122.152.205.72:88/foodie/food-89/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1001-img-1', '000000', 'meat-1001', 'http://122.152.205.72:88/foodie/meat-1001/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1001-img-2', '000000', 'meat-1001', 'http://122.152.205.72:88/foodie/meat-1001/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1002-img-1', '000000', 'meat-1002', 'http://122.152.205.72:88/foodie/meat-1002/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1002-img-2', '000000', 'meat-1002', 'http://122.152.205.72:88/foodie/meat-1002/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1003-img-1', '000000', 'meat-1003', 'http://122.152.205.72:88/foodie/meat-1003/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1003-img-2', '000000', 'meat-1003', 'http://122.152.205.72:88/foodie/meat-1003/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1004-img-1', '000000', 'meat-1004', 'http://122.152.205.72:88/foodie/meat-1004/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1004-img-2', '000000', 'meat-1004', 'http://122.152.205.72:88/foodie/meat-1004/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1005-img-1', '000000', 'meat-1005', 'http://122.152.205.72:88/foodie/meat-1005/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1005-img-2', '000000', 'meat-1005', 'http://122.152.205.72:88/foodie/meat-1005/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1006-img-1', '000000', 'meat-1006', 'http://122.152.205.72:88/foodie/meat-1006/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-1006-img-2', '000000', 'meat-1006', 'http://122.152.205.72:88/foodie/meat-1006/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-157-img-1', '000000', 'meat-157', 'http://122.152.205.72:88/foodie/meat-157/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-157-img-2', '000000', 'meat-157', 'http://122.152.205.72:88/foodie/meat-157/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-158-img-1', '000000', 'meat-158', 'http://122.152.205.72:88/foodie/meat-158/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-158-img-2', '000000', 'meat-158', 'http://122.152.205.72:88/foodie/meat-158/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-159-img-1', '000000', 'meat-159', 'http://122.152.205.72:88/foodie/meat-159/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-159-img-2', '000000', 'meat-159', 'http://122.152.205.72:88/foodie/meat-159/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-160-img-1', '000000', 'meat-160', 'http://122.152.205.72:88/foodie/meat-160/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-160-img-2', '000000', 'meat-160', 'http://122.152.205.72:88/foodie/meat-160/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-161-img-1', '000000', 'meat-161', 'http://122.152.205.72:88/foodie/meat-161/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-161-img-2', '000000', 'meat-161', 'http://122.152.205.72:88/foodie/meat-161/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-162-img-1', '000000', 'meat-162', 'http://122.152.205.72:88/foodie/meat-162/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-162-img-2', '000000', 'meat-162', 'http://122.152.205.72:88/foodie/meat-162/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-163-img-1', '000000', 'meat-163', 'http://122.152.205.72:88/foodie/meat-163/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-163-img-2', '000000', 'meat-163', 'http://122.152.205.72:88/foodie/meat-163/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-164-img-1', '000000', 'meat-164', 'http://122.152.205.72:88/foodie/meat-164/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-164-img-2', '000000', 'meat-164', 'http://122.152.205.72:88/foodie/meat-164/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-165-img-1', '000000', 'meat-165', 'http://122.152.205.72:88/foodie/meat-165/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-165-img-2', '000000', 'meat-165', 'http://122.152.205.72:88/foodie/meat-165/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-166-img-1', '000000', 'meat-166', 'http://122.152.205.72:88/foodie/meat-166/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-166-img-2', '000000', 'meat-166', 'http://122.152.205.72:88/foodie/meat-166/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-167-img-1', '000000', 'meat-167', 'http://122.152.205.72:88/foodie/meat-167/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-167-img-2', '000000', 'meat-167', 'http://122.152.205.72:88/foodie/meat-167/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-168-img-1', '000000', 'meat-168', 'http://122.152.205.72:88/foodie/meat-168/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-168-img-2', '000000', 'meat-168', 'http://122.152.205.72:88/foodie/meat-168/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-169-img-1', '000000', 'meat-169', 'http://122.152.205.72:88/foodie/meat-169/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-169-img-2', '000000', 'meat-169', 'http://122.152.205.72:88/foodie/meat-169/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-170-img-1', '000000', 'meat-170', 'http://122.152.205.72:88/foodie/meat-170/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-170-img-2', '000000', 'meat-170', 'http://122.152.205.72:88/foodie/meat-170/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-171-img-1', '000000', 'meat-171', 'http://122.152.205.72:88/foodie/meat-171/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-171-img-2', '000000', 'meat-171', 'http://122.152.205.72:88/foodie/meat-171/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-173-img-1', '000000', 'meat-173', 'http://122.152.205.72:88/foodie/meat-173/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-173-img-2', '000000', 'meat-173', 'http://122.152.205.72:88/foodie/meat-173/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-174-img-1', '000000', 'meat-174', 'http://122.152.205.72:88/foodie/meat-174/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-174-img-2', '000000', 'meat-174', 'http://122.152.205.72:88/foodie/meat-174/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-175-img-1', '000000', 'meat-175', 'http://122.152.205.72:88/foodie/meat-175/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-175-img-2', '000000', 'meat-175', 'http://122.152.205.72:88/foodie/meat-175/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-176-img-1', '000000', 'meat-176', 'http://122.152.205.72:88/foodie/meat-176/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-176-img-2', '000000', 'meat-176', 'http://122.152.205.72:88/foodie/meat-176/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-177-img-1', '000000', 'meat-177', 'http://122.152.205.72:88/foodie/meat-177/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-177-img-2', '000000', 'meat-177', 'http://122.152.205.72:88/foodie/meat-177/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-178-img-1', '000000', 'meat-178', 'http://122.152.205.72:88/foodie/meat-178/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-178-img-2', '000000', 'meat-178', 'http://122.152.205.72:88/foodie/meat-178/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-72-img-1', '000000', 'meat-72', 'http://122.152.205.72:88/foodie/meat-72/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('meat-72-img-2', '000000', 'meat-72', 'http://122.152.205.72:88/foodie/meat-72/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1001-img-1', '000000', 'nut-1001', 'http://122.152.205.72:88/foodie/nut-1001/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1001-img-2', '000000', 'nut-1001', 'http://122.152.205.72:88/foodie/nut-1001/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1002-img-1', '000000', 'nut-1002', 'http://122.152.205.72:88/foodie/nut-1002/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1002-img-2', '000000', 'nut-1002', 'http://122.152.205.72:88/foodie/nut-1002/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1003-img-1', '000000', 'nut-1003', 'http://122.152.205.72:88/foodie/nut-1003/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1003-img-2', '000000', 'nut-1003', 'http://122.152.205.72:88/foodie/nut-1003/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1004-img-1', '000000', 'nut-1004', 'http://122.152.205.72:88/foodie/nut-1004/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1004-img-2', '000000', 'nut-1004', 'http://122.152.205.72:88/foodie/nut-1004/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1005-img-1', '000000', 'nut-1005', 'http://122.152.205.72:88/foodie/nut-1005/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1005-img-2', '000000', 'nut-1005', 'http://122.152.205.72:88/foodie/nut-1005/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1006-img-1', '000000', 'nut-1006', 'http://122.152.205.72:88/foodie/nut-1006/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-1006-img-2', '000000', 'nut-1006', 'http://122.152.205.72:88/foodie/nut-1006/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-104-img-1', '000000', 'nut-104', 'http://122.152.205.72:88/foodie/nut-104/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-104-img-2', '000000', 'nut-104', 'http://122.152.205.72:88/foodie/nut-104/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-105-img-1', '000000', 'nut-105', 'http://122.152.205.72:88/foodie/nut-105/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-105-img-2', '000000', 'nut-105', 'http://122.152.205.72:88/foodie/nut-105/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-106-img-1', '000000', 'nut-106', 'http://122.152.205.72:88/foodie/nut-106/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-106-img-2', '000000', 'nut-106', 'http://122.152.205.72:88/foodie/nut-106/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-107-img-1', '000000', 'nut-107', 'http://122.152.205.72:88/foodie/nut-107/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-107-img-2', '000000', 'nut-107', 'http://122.152.205.72:88/foodie/nut-107/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-108-img-1', '000000', 'nut-108', 'http://122.152.205.72:88/foodie/nut-108/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-108-img-2', '000000', 'nut-108', 'http://122.152.205.72:88/foodie/nut-108/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-109-img-1', '000000', 'nut-109', 'http://122.152.205.72:88/foodie/nut-109/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-109-img-2', '000000', 'nut-109', 'http://122.152.205.72:88/foodie/nut-109/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-110-img-1', '000000', 'nut-110', 'http://122.152.205.72:88/foodie/nut-110/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-110-img-2', '000000', 'nut-110', 'http://122.152.205.72:88/foodie/nut-110/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-111-img-1', '000000', 'nut-111', 'http://122.152.205.72:88/foodie/nut-111/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('nut-111-img-2', '000000', 'nut-111', 'http://122.152.205.72:88/foodie/nut-111/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1001-img-1', '000000', 'seafood-1001', 'http://122.152.205.72:88/foodie/seafood-1001/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1001-img-2', '000000', 'seafood-1001', 'http://122.152.205.72:88/foodie/seafood-1001/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1002-img-1', '000000', 'seafood-1002', 'http://122.152.205.72:88/foodie/seafood-1002/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1002-img-2', '000000', 'seafood-1002', 'http://122.152.205.72:88/foodie/seafood-1002/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1003-img-1', '000000', 'seafood-1003', 'http://122.152.205.72:88/foodie/seafood-1003/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1003-img-2', '000000', 'seafood-1003', 'http://122.152.205.72:88/foodie/seafood-1003/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1004-img-1', '000000', 'seafood-1004', 'http://122.152.205.72:88/foodie/seafood-1004/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1004-img-2', '000000', 'seafood-1004', 'http://122.152.205.72:88/foodie/seafood-1004/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1005-img-1', '000000', 'seafood-1005', 'http://122.152.205.72:88/foodie/seafood-1005/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1005-img-2', '000000', 'seafood-1005', 'http://122.152.205.72:88/foodie/seafood-1005/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1006-img-1', '000000', 'seafood-1006', 'http://122.152.205.72:88/foodie/seafood-1006/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-1006-img-2', '000000', 'seafood-1006', 'http://122.152.205.72:88/foodie/seafood-1006/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-133-img-1', '000000', 'seafood-133', 'http://122.152.205.72:88/foodie/seafood-133/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-133-img-2', '000000', 'seafood-133', 'http://122.152.205.72:88/foodie/seafood-133/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-134-img-1', '000000', 'seafood-134', 'http://122.152.205.72:88/foodie/seafood-134/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-134-img-2', '000000', 'seafood-134', 'http://122.152.205.72:88/foodie/seafood-134/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-135-img-1', '000000', 'seafood-135', 'http://122.152.205.72:88/foodie/seafood-135/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-135-img-2', '000000', 'seafood-135', 'http://122.152.205.72:88/foodie/seafood-135/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-136-img-1', '000000', 'seafood-136', 'http://122.152.205.72:88/foodie/seafood-136/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-136-img-2', '000000', 'seafood-136', 'http://122.152.205.72:88/foodie/seafood-136/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-137-img-1', '000000', 'seafood-137', 'http://122.152.205.72:88/foodie/seafood-137/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-137-img-2', '000000', 'seafood-137', 'http://122.152.205.72:88/foodie/seafood-137/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-138-img-1', '000000', 'seafood-138', 'http://122.152.205.72:88/foodie/seafood-138/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-138-img-2', '000000', 'seafood-138', 'http://122.152.205.72:88/foodie/seafood-138/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-139-img-1', '000000', 'seafood-139', 'http://122.152.205.72:88/foodie/seafood-139/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-139-img-2', '000000', 'seafood-139', 'http://122.152.205.72:88/foodie/seafood-139/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-140-img-1', '000000', 'seafood-140', 'http://122.152.205.72:88/foodie/seafood-140/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-140-img-2', '000000', 'seafood-140', 'http://122.152.205.72:88/foodie/seafood-140/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-141-img-1', '000000', 'seafood-141', 'http://122.152.205.72:88/foodie/seafood-141/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-141-img-2', '000000', 'seafood-141', 'http://122.152.205.72:88/foodie/seafood-141/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-142-img-1', '000000', 'seafood-142', 'http://122.152.205.72:88/foodie/seafood-142/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-142-img-2', '000000', 'seafood-142', 'http://122.152.205.72:88/foodie/seafood-142/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-143-img-1', '000000', 'seafood-143', 'http://122.152.205.72:88/foodie/seafood-143/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('seafood-143-img-2', '000000', 'seafood-143', 'http://122.152.205.72:88/foodie/seafood-143/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-100-img-1', '000000', 'snacks-100', 'http://122.152.205.72:88/foodie/snacks-100/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-100-img-2', '000000', 'snacks-100', 'http://122.152.205.72:88/foodie/snacks-100/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1001-img-1', '000000', 'snacks-1001', 'http://122.152.205.72:88/foodie/snacks-1001/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1001-img-2', '000000', 'snacks-1001', 'http://122.152.205.72:88/foodie/snacks-1001/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1002-img-1', '000000', 'snacks-1002', 'http://122.152.205.72:88/foodie/snacks-1002/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1002-img-2', '000000', 'snacks-1002', 'http://122.152.205.72:88/foodie/snacks-1002/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1003-img-1', '000000', 'snacks-1003', 'http://122.152.205.72:88/foodie/snacks-1003/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1003-img-2', '000000', 'snacks-1003', 'http://122.152.205.72:88/foodie/snacks-1003/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1004-img-1', '000000', 'snacks-1004', 'http://122.152.205.72:88/foodie/snacks-1004/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1004-img-2', '000000', 'snacks-1004', 'http://122.152.205.72:88/foodie/snacks-1004/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1005-img-1', '000000', 'snacks-1005', 'http://122.152.205.72:88/foodie/snacks-1005/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1005-img-2', '000000', 'snacks-1005', 'http://122.152.205.72:88/foodie/snacks-1005/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1006-img-1', '000000', 'snacks-1006', 'http://122.152.205.72:88/foodie/snacks-1006/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-1006-img-2', '000000', 'snacks-1006', 'http://122.152.205.72:88/foodie/snacks-1006/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-101-img-1', '000000', 'snacks-101', 'http://122.152.205.72:88/foodie/snacks-101/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-101-img-2', '000000', 'snacks-101', 'http://122.152.205.72:88/foodie/snacks-101/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-102-img-1', '000000', 'snacks-102', 'http://122.152.205.72:88/foodie/snacks-102/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-102-img-2', '000000', 'snacks-102', 'http://122.152.205.72:88/foodie/snacks-102/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-103-img-1', '000000', 'snacks-103', 'http://122.152.205.72:88/foodie/snacks-103/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-103-img-2', '000000', 'snacks-103', 'http://122.152.205.72:88/foodie/snacks-103/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-90-img-1', '000000', 'snacks-90', 'http://122.152.205.72:88/foodie/snacks-90/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-90-img-2', '000000', 'snacks-90', 'http://122.152.205.72:88/foodie/snacks-90/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-92-img-1', '000000', 'snacks-92', 'http://122.152.205.72:88/foodie/snacks-92/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-92-img-2', '000000', 'snacks-92', 'http://122.152.205.72:88/foodie/snacks-92/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-93-img-1', '000000', 'snacks-93', 'http://122.152.205.72:88/foodie/snacks-93/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-93-img-2', '000000', 'snacks-93', 'http://122.152.205.72:88/foodie/snacks-93/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-94-img-1', '000000', 'snacks-94', 'http://122.152.205.72:88/foodie/snacks-94/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-94-img-2', '000000', 'snacks-94', 'http://122.152.205.72:88/foodie/snacks-94/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-95-img-1', '000000', 'snacks-95', 'http://122.152.205.72:88/foodie/snacks-95/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-95-img-2', '000000', 'snacks-95', 'http://122.152.205.72:88/foodie/snacks-95/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-97-img-1', '000000', 'snacks-97', 'http://122.152.205.72:88/foodie/snacks-97/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('snacks-97-img-2', '000000', 'snacks-97', 'http://122.152.205.72:88/foodie/snacks-97/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-113-img-1', '000000', 'suger-113', 'http://122.152.205.72:88/foodie/suger-113/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-113-img-2', '000000', 'suger-113', 'http://122.152.205.72:88/foodie/suger-113/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-115-img-1', '000000', 'suger-115', 'http://122.152.205.72:88/foodie/suger-115/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-115-img-2', '000000', 'suger-115', 'http://122.152.205.72:88/foodie/suger-115/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-116-img-1', '000000', 'suger-116', 'http://122.152.205.72:88/foodie/suger-116/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-116-img-2', '000000', 'suger-116', 'http://122.152.205.72:88/foodie/suger-116/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-117-img-1', '000000', 'suger-117', 'http://122.152.205.72:88/foodie/suger-117/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-117-img-2', '000000', 'suger-117', 'http://122.152.205.72:88/foodie/suger-117/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-118-img-1', '000000', 'suger-118', 'http://122.152.205.72:88/foodie/suger-118/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-118-img-2', '000000', 'suger-118', 'http://122.152.205.72:88/foodie/suger-118/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-119-img-1', '000000', 'suger-119', 'http://122.152.205.72:88/foodie/suger-119/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-119-img-2', '000000', 'suger-119', 'http://122.152.205.72:88/foodie/suger-119/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-121-img-1', '000000', 'suger-121', 'http://122.152.205.72:88/foodie/suger-121/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-121-img-2', '000000', 'suger-121', 'http://122.152.205.72:88/foodie/suger-121/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-124-img-1', '000000', 'suger-124', 'http://122.152.205.72:88/foodie/suger-124/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('suger-124-img-2', '000000', 'suger-124', 'http://122.152.205.72:88/foodie/suger-124/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1001-img-1', '000000', 'tea-1001', 'http://122.152.205.72:88/foodie/tea-1001/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1001-img-2', '000000', 'tea-1001', 'http://122.152.205.72:88/foodie/tea-1001/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1002-img-1', '000000', 'tea-1002', 'http://122.152.205.72:88/foodie/tea-1002/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1002-img-2', '000000', 'tea-1002', 'http://122.152.205.72:88/foodie/tea-1002/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1003-img-1', '000000', 'tea-1003', 'http://122.152.205.72:88/foodie/tea-1003/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1003-img-2', '000000', 'tea-1003', 'http://122.152.205.72:88/foodie/tea-1003/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1004-img-1', '000000', 'tea-1004', 'http://122.152.205.72:88/foodie/tea-1004/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1004-img-2', '000000', 'tea-1004', 'http://122.152.205.72:88/foodie/tea-1004/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1005-img-1', '000000', 'tea-1005', 'http://122.152.205.72:88/foodie/tea-1005/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1005-img-2', '000000', 'tea-1005', 'http://122.152.205.72:88/foodie/tea-1005/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1006-img-1', '000000', 'tea-1006', 'http://122.152.205.72:88/foodie/tea-1006/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-1006-img-2', '000000', 'tea-1006', 'http://122.152.205.72:88/foodie/tea-1006/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-144-img-1', '000000', 'tea-144', 'http://122.152.205.72:88/foodie/tea-144/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-144-img-2', '000000', 'tea-144', 'http://122.152.205.72:88/foodie/tea-144/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-145-img-1', '000000', 'tea-145', 'http://122.152.205.72:88/foodie/tea-145/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-145-img-2', '000000', 'tea-145', 'http://122.152.205.72:88/foodie/tea-145/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-146-img-1', '000000', 'tea-146', 'http://122.152.205.72:88/foodie/tea-146/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-146-img-2', '000000', 'tea-146', 'http://122.152.205.72:88/foodie/tea-146/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-147-img-1', '000000', 'tea-147', 'http://122.152.205.72:88/foodie/tea-147/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-147-img-2', '000000', 'tea-147', 'http://122.152.205.72:88/foodie/tea-147/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-148-img-1', '000000', 'tea-148', 'http://122.152.205.72:88/foodie/tea-148/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-148-img-2', '000000', 'tea-148', 'http://122.152.205.72:88/foodie/tea-148/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-149-img-1', '000000', 'tea-149', 'http://122.152.205.72:88/foodie/tea-149/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-149-img-2', '000000', 'tea-149', 'http://122.152.205.72:88/foodie/tea-149/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-150-img-1', '000000', 'tea-150', 'http://122.152.205.72:88/foodie/tea-150/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-150-img-2', '000000', 'tea-150', 'http://122.152.205.72:88/foodie/tea-150/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-151-img-1', '000000', 'tea-151', 'http://122.152.205.72:88/foodie/tea-151/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-151-img-2', '000000', 'tea-151', 'http://122.152.205.72:88/foodie/tea-151/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-152-img-1', '000000', 'tea-152', 'http://122.152.205.72:88/foodie/tea-152/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-152-img-2', '000000', 'tea-152', 'http://122.152.205.72:88/foodie/tea-152/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-153-img-1', '000000', 'tea-153', 'http://122.152.205.72:88/foodie/tea-153/img1.png', 1, 1, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');
INSERT INTO `item_img` VALUES ('tea-153-img-2', '000000', 'tea-153', 'http://122.152.205.72:88/foodie/tea-153/img2.png', 2, 0, 0, 1, '2022-06-08 00:03:07', '2022-06-08 00:03:07');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `entity_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺实体id',
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `receiver_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人快照',
  `receiver_mobile` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人手机号快照',
  `receiver_address` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货地址快照',
  `total_amount` int(11) NOT NULL COMMENT '订单总价格',
  `actual_amount` int(11) NOT NULL COMMENT '实际支付总价格',
  `post_amount` int(11) NOT NULL COMMENT '邮费;默认可以为零，代表包邮',
  `pay_kind` int(11) NOT NULL COMMENT '支付方式',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家留言',
  `ext` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '扩展字段',
  `has_comment` tinyint(1) NOT NULL COMMENT '买家是否评价;1：已评价，0：未评价',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间（成交时间）',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('190827F2R9A6ZT2W', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 15000, 15000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190827F4AK12R30H', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 2, 'abc你好', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190827H703M977C0', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190827H7WD2TCNHH', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 15000, 15000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190827H87MFB2RAW', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190828F6B6FYBXP0', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190828FFTCMT6XKP', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190828FG7Z8A44X4', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190828FKGK0DF614', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190828FSTH66FAY8', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190829022A38YXKP', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('19082903XD76YGTC', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('19082906Z4PBR968', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190829081HY6G91P', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('1908290848R4WCBC', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('19082908GR4GCWSW', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190829092XFBGKWH', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 1, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('1908290HGH9AS8ZC', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 2, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190829F5Z0YKD968', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 2, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190829F61X4WMAK4', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 2, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190829F6FTBRA4BC', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 2, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190829F6NT8B0SFW', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 2, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190829F7DDGZW280', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 2, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190830BPTHGSZN54', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 2, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190830BW77HM55KP', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 2, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');
INSERT INTO `order` VALUES ('190830BZ5B5R7KWH', '000000', '1908189H7TNWDTXP', 'jack', '13333333333', '北京 北京 东城区 123', 25000, 23000, 0, 2, '', NULL, 0, 0, 0, '2022-06-08 00:04:34', '2022-06-08 00:04:34');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键id',
  `entity_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺实体id',
  `order_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '归属订单id',
  `item_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品id',
  `item_img` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品图片',
  `item_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `item_spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '规格json',
  `has_comment` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否评论',
  `price` int(11) NOT NULL COMMENT '单价',
  `num` int(11) NOT NULL COMMENT '购买数量',
  `actual_fee` int(11) NOT NULL COMMENT '实付金额',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单明细表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('190827F2R9C5HA3C', '000000', '190827F2R9A6ZT2W', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190827F4AK1T68M8', '000000', '190827F4AK12R30H', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190827F4AK2N3168', '000000', '190827F4AK12R30H', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190827H703NGAHSW', '000000', '190827H703M977C0', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190827H703PM2B7C', '000000', '190827H703M977C0', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190827H7WD3SPZ2W', '000000', '190827H7WD2TCNHH', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190827H87MGDSGTC', '000000', '190827H87MFB2RAW', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190827H87MHNXX68', '000000', '190827H87MFB2RAW', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190828F6B6H4G72W', '000000', '190828F6B6FYBXP0', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190828F6B6KAMHDP', '000000', '190828F6B6FYBXP0', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190828FFTCNXYP28', '000000', '190828FFTCMT6XKP', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190828FFTCPRTCM8', '000000', '190828FFTCMT6XKP', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190828FG7ZA594ZC', '000000', '190828FG7Z8A44X4', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190828FG7ZBRN354', '000000', '190828FG7Z8A44X4', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190828FKGK1T12A8', '000000', '190828FKGK0DF614', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190828FKGK2XPWSW', '000000', '190828FKGK0DF614', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190828FSTH7965AW', '000000', '190828FSTH66FAY8', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190828FSTH852XYW', '000000', '190828FSTH66FAY8', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829022A57GCM8', '000000', '190829022A38YXKP', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829022A6PDTXP', '000000', '190829022A38YXKP', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('19082903XD866T9P', '000000', '19082903XD76YGTC', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('19082903XD95G2W0', '000000', '19082903XD76YGTC', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('19082906Z4S3FSA8', '000000', '19082906Z4PBR968', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('19082906Z4TD1MNC', '000000', '19082906Z4PBR968', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829081HZ2C1KP', '000000', '190829081HY6G91P', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829081HZY8S5P', '000000', '190829081HY6G91P', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('1908290848S44NXP', '000000', '1908290848R4WCBC', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('1908290848T01CDP', '000000', '1908290848R4WCBC', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('19082908GR5FR494', '000000', '19082908GR4GCWSW', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('19082908GR6769YW', '000000', '19082908GR4GCWSW', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829092XG40TF8', '000000', '190829092XFBGKWH', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829092XGR2F5P', '000000', '190829092XFBGKWH', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('1908290HGHA37FK4', '000000', '1908290HGH9AS8ZC', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('1908290HGHATPP6W', '000000', '1908290HGH9AS8ZC', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829F5Z10SWY3C', '000000', '190829F5Z0YKD968', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829F5Z1308G0H', '000000', '190829F5Z0YKD968', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829F61X5ZA51P', '000000', '190829F61X4WMAK4', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829F61X6T6XKP', '000000', '190829F61X4WMAK4', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829F6FTCK6WZC', '000000', '190829F6FTBRA4BC', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829F6FTDD3KGC', '000000', '190829F6FTBRA4BC', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829F6NT93F04H', '000000', '190829F6NT8B0SFW', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829F6NT9TZ5S8', '000000', '190829F6NT8B0SFW', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829F7DDHTPSW0', '000000', '190829F7DDGZW280', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190829F7DDKH60DP', '000000', '190829F7DDGZW280', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190830BPTHMKCYRP', '000000', '190830BPTHGSZN54', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190830BPTHR8FNC0', '000000', '190830BPTHGSZN54', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190830BW77X8C280', '000000', '190830BW77HM55KP', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190830BW77YWS0DP', '000000', '190830BW77HM55KP', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190830BZ5B6TZC94', '000000', '190830BZ5B5R7KWH', 'bingan-1001', 'http://122.152.205.72:88/foodie/bingan-1001/img1.png', '【天天吃货】彩虹马卡龙 下午茶 美眉最爱', '芒果口味', 0, 15000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');
INSERT INTO `order_item` VALUES ('190830BZ5B7NW4X4', '000000', '190830BZ5B5R7KWH', 'bingan-1003', 'http://122.152.205.72:88/foodie/bingan-1003/img1.png', '【天天吃货】可爱动物饼干 儿童早餐 孩子最爱', '草莓水果', 0, 8000, 1, 0, 0, 1, '2022-06-08 00:04:41', '2022-06-08 00:04:41');

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单ID;对应订单表的主键id',
  `entity_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺实体id',
  `status` int(11) NOT NULL COMMENT '订单状态',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付成功时间;对应[20:已付款，待发货]状态',
  `deliver_time` datetime(0) NULL DEFAULT NULL COMMENT '发货时间;对应[30：已发货，待收货]状态',
  `success_time` datetime(0) NULL DEFAULT NULL COMMENT '交易成功时间;对应[40：交易成功]状态',
  `close_time` datetime(0) NULL DEFAULT NULL COMMENT '交易关闭时间;对应[50：交易关闭]状态',
  `comment_time` datetime(0) NULL DEFAULT NULL COMMENT '留言时间;用户在交易成功后的留言时间',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '订单创建时间;对应[10:待付款]状态',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单状态表;订单的每个状态更改都需要进行记录\r\n10：待付款  20：已付款，待发货  30：已发货，待收货（7天自动确认）  40：交易成功（此时可以评价）50：交易关闭（待付款时，用户取消 或 长时间未付款，系统识别后自动关闭）\r\n退货/退货，此分支流程不做，所以不加入' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_status
-- ----------------------------
INSERT INTO `order_status` VALUES ('190827F2R9A6ZT2W', '000000', 20, '2019-08-28 18:59:34', NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190827F4AK12R30H', '000000', 20, '2019-08-28 21:47:17', NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190827H703M977C0', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190827H7WD2TCNHH', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190827H87MFB2RAW', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190828F6B6FYBXP0', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190828FFTCMT6XKP', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190828FG7Z8A44X4', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190828FKGK0DF614', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190828FSTH66FAY8', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190829022A38YXKP', '000000', 50, '2019-08-29 00:06:27', NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('19082903XD76YGTC', '000000', 20, '2019-08-29 00:12:05', NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('19082906Z4PBR968', '000000', 20, '2019-08-29 00:21:45', NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190829081HY6G91P', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('1908290848R4WCBC', '000000', 20, '2019-08-29 00:24:47', NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('19082908GR4GCWSW', '000000', 20, '2019-08-29 00:26:04', NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190829092XFBGKWH', '000000', 20, '2019-08-29 00:27:29', NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('1908290HGH9AS8ZC', '000000', 20, '2019-08-29 00:50:00', NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190829F5Z0YKD968', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190829F61X4WMAK4', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190829F6FTBRA4BC', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190829F6NT8B0SFW', '000000', 50, NULL, NULL, NULL, '2019-08-30 00:49:42', NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190829F7DDGZW280', '000000', 20, '2019-08-29 20:15:30', NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190830BPTHGSZN54', '000000', 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190830BW77HM55KP', '000000', 20, '2019-08-30 16:39:30', NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');
INSERT INTO `order_status` VALUES ('190830BZ5B5R7KWH', '000000', 20, '2019-08-30 16:48:36', NULL, NULL, NULL, NULL, 0, 1, '2022-06-08 00:04:45', '2022-06-08 00:04:45');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `realname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `face` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '头像',
  `mobile` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `sex` int(11) NULL DEFAULT NULL COMMENT '性别 1:男  0:女  2:保密',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1908017YR51G1XWH', 'imooc', 'Qpf0SxOVUjUkWySXOZ16kw==', 'imooc', NULL, 'http://122.152.205.72:88/group1/M00/00/05/CpoxxFw_8_qAIlFXAAAcIhVPdSg994.png', NULL, NULL, 2, '1900-01-01', 0, 1, '2022-06-08 00:04:50', '2022-06-08 00:04:50');
INSERT INTO `user` VALUES ('190815GTKCBSS7MW', 'test', 'Qpf0SxOVUjUkWySXOZ16kw==', 'test', NULL, 'http://122.152.205.72:88/group1/M00/00/05/CpoxxFw_8_qAIlFXAAAcIhVPdSg994.png', NULL, NULL, 2, '1900-01-01', 0, 1, '2022-06-08 00:04:50', '2022-06-08 00:04:50');
INSERT INTO `user` VALUES ('190816HH9RDPD6Y8', 'abc', 'Qpf0SxOVUjUkWySXOZ16kw==', 'abc', NULL, 'http://122.152.205.72:88/group1/M00/00/05/CpoxxFw_8_qAIlFXAAAcIhVPdSg994.png', NULL, NULL, 2, '1900-01-01', 0, 1, '2022-06-08 00:04:50', '2022-06-08 00:04:50');
INSERT INTO `user` VALUES ('1908189H7TNWDTXP', 'imooc123', 'Qpf0SxOVUjUkWySXOZ16kw==', 'imooc123', NULL, 'http://122.152.205.72:88/group1/M00/00/05/CpoxxFw_8_qAIlFXAAAcIhVPdSg994.png', NULL, NULL, 2, '1900-01-01', 0, 1, '2022-06-08 00:04:50', '2022-06-08 00:04:50');
INSERT INTO `user` VALUES ('190818A4HC2BPDP0', 'test123', 'Qpf0SxOVUjUkWySXOZ16kw==', 'test123', NULL, 'http://122.152.205.72:88/group1/M00/00/05/CpoxxFw_8_qAIlFXAAAcIhVPdSg994.png', NULL, NULL, 2, '1900-01-01', 0, 1, '2022-06-08 00:04:50', '2022-06-08 00:04:50');
INSERT INTO `user` VALUES ('190818AWZ22872FW', '1imooc', 'Qpf0SxOVUjUkWySXOZ16kw==', '1imooc', NULL, 'http://122.152.205.72:88/group1/M00/00/05/CpoxxFw_8_qAIlFXAAAcIhVPdSg994.png', NULL, NULL, 2, '1900-01-01', 0, 1, '2022-06-08 00:04:50', '2022-06-08 00:04:50');

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '地址主键id',
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '关联用户id',
  `receiver` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收件人姓名',
  `mobile` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收件人手机号',
  `province` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省份',
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '城市',
  `district` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '区县',
  `detail` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `extand` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '扩展字段',
  `is_default` int(11) NULL DEFAULT NULL COMMENT '是否默认地址',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户地址表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('190825CG3AA14Y3C', '1908189H7TNWDTXP', 'jack', '13333333333', '北京', '北京', '东城区', '123', NULL, 1, 0, 1, '2022-06-08 00:04:54', '2022-06-08 00:04:54');
INSERT INTO `user_address` VALUES ('190825CG4ZCSSWM8', '1908189H7TNWDTXP', 'abc', '13666666666', '北京', '北京', '东城区', '345', NULL, 0, 0, 1, '2022-06-08 00:04:54', '2022-06-08 00:04:54');

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `item_sku`;
CREATE TABLE `item_sku`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键id',
  `entity_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '店铺实体id',
  `item_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品id',
  `status` int(5) NOT NULL DEFAULT 0 COMMENT 'sku 状态',
  `image` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  `sell_attr` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '销售属性',
  `price` int(10) NOT NULL DEFAULT 0 COMMENT '价格',
  `version` int(11) NOT NULL DEFAULT 0 COMMENT '版本号',
  `is_valid` int(1) NOT NULL DEFAULT 1 COMMENT '是否有效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品 SKU 表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
