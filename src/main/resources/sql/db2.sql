/*
 Navicat Premium Data Transfer

 Source Server         : mysqlLocal
 Source Server Type    : MySQL
 Source Server Version : 50537
 Source Host           : localhost:3306
 Source Schema         : db2

 Target Server Type    : MySQL
 Target Server Version : 50537
 File Encoding         : 65001

 Date: 05/06/2020 23:23:06
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of demo
-- ----------------------------
INSERT INTO `demo` VALUES (1, 'lewis3', '20180611', 'MAN');
INSERT INTO `demo` VALUES (2, 'lewis', '2018', 'WOMAN');
INSERT INTO `demo` VALUES (3, 'lewis', '2018', 'MAN');
INSERT INTO `demo` VALUES (4, 'zhangsan', '2017', 'MAN');
INSERT INTO `demo` VALUES (5, 'lisi', '2016', 'WOMAN');
INSERT INTO `demo` VALUES (6, NULL, NULL, NULL);
INSERT INTO `demo` VALUES (7, 'zhangg', NULL, NULL);
INSERT INTO `demo` VALUES (8, 'zhangg2', NULL, NULL);
INSERT INTO `demo` VALUES (9, '125', NULL, NULL);
INSERT INTO `demo` VALUES (10, 'lewis', NULL, NULL);

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

SET FOREIGN_KEY_CHECKS = 1;
