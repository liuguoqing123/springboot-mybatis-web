/*
 Navicat Premium Data Transfer

 Source Server         : mysqlLocal
 Source Server Type    : MySQL
 Source Server Version : 50537
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50537
 File Encoding         : 65001

 Date: 05/06/2020 23:23:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for demo
-- ----------------------------
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex_enum` enum('MAN','WOMAN') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of demo
-- ----------------------------
INSERT INTO `demo` VALUES (1, 'lewisupdated', '123', 'MAN');
INSERT INTO `demo` VALUES (2, 'lewis', '2018', 'WOMAN');
INSERT INTO `demo` VALUES (3, 'lewis', '2018', 'MAN');
INSERT INTO `demo` VALUES (4, 'zhangsan', '2017', 'MAN');
INSERT INTO `demo` VALUES (5, 'lisi', '2016', 'WOMAN');
INSERT INTO `demo` VALUES (6, NULL, NULL, NULL);
INSERT INTO `demo` VALUES (7, 'zhangg', NULL, NULL);
INSERT INTO `demo` VALUES (8, 'zhangg2', NULL, NULL);
INSERT INTO `demo` VALUES (9, '125', NULL, NULL);
INSERT INTO `demo` VALUES (10, 'lewis', NULL, NULL);
INSERT INTO `demo` VALUES (11, '四月初一', '2020', 'MAN');
INSERT INTO `demo` VALUES (12, '四月初一', '2020', 'MAN');
INSERT INTO `demo` VALUES (13, '四月初一', '2020', 'MAN');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `userId` int(20) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  `prodcutName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `productPrice` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` int(20) NULL DEFAULT NULL,
  `stock` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '小米', 1999, 10);
INSERT INTO `product` VALUES (2, '华为', 2999, 20);
INSERT INTO `product` VALUES (3, '魅族', 3999, 30);
INSERT INTO `product` VALUES (4, '苹果', 4999, 40);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_tel` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_sex` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `index_user`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (7, 'zhang4', '35435', 'man');
INSERT INTO `user` VALUES (8, 'zhanggong', '12345678', 'man');
INSERT INTO `user` VALUES (9, '125', '21421441', 'man');
INSERT INTO `user` VALUES (10, 'dsfa', '2313', 'woman');
INSERT INTO `user` VALUES (11, 'ffa', '231', 'a');

-- ----------------------------
-- Table structure for usershrio
-- ----------------------------
DROP TABLE IF EXISTS `usershrio`;
CREATE TABLE `usershrio`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `perms` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usershrio
-- ----------------------------
INSERT INTO `usershrio` VALUES (1, 'zg', '123', 'user:add');
INSERT INTO `usershrio` VALUES (2, 'csm', '234', 'user:add');
INSERT INTO `usershrio` VALUES (3, 'djj', '345', 'update');
INSERT INTO `usershrio` VALUES (4, 'wk', '456', 'update');
INSERT INTO `usershrio` VALUES (5, 'lgq', '111', '3');

SET FOREIGN_KEY_CHECKS = 1;
