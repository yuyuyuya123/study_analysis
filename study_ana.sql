/*
Navicat MySQL Data Transfer

Source Server         : connection
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : study_ana

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-06-03 17:01:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `unit_id` int DEFAULT NULL,
  `unit_name` varchar(100) DEFAULT NULL,
  `person_num` int DEFAULT NULL,
  `click_num` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('0', '物流管理设计', '2', '0');
INSERT INTO `course` VALUES ('1', '仓储项目运作', '256', '683');
INSERT INTO `course` VALUES ('2', '仓储规划设计', '460', '3912');
INSERT INTO `course` VALUES ('3', '货运代理', '126', '249');
INSERT INTO `course` VALUES ('4', '网店运营(初级)', '74', '483');
INSERT INTO `course` VALUES ('5', '网店运营(高级)', '36', '204');
INSERT INTO `course` VALUES ('6', '出纳业务模拟', '7', '66');
INSERT INTO `course` VALUES ('7', '应收业务模拟', '39', '198');

-- ----------------------------
-- Table structure for gender
-- ----------------------------
DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender` (
  `sex` int DEFAULT NULL,
  `s_numbers` int DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gender
-- ----------------------------
INSERT INTO `gender` VALUES ('1', '407', '男');
INSERT INTO `gender` VALUES ('2', '592', '女');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `province` varchar(255) DEFAULT NULL,
  `pro_numbers` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('上海', '30');
INSERT INTO `province` VALUES ('云南', '3');
INSERT INTO `province` VALUES ('内蒙古', '18');
INSERT INTO `province` VALUES ('北京', '24');
INSERT INTO `province` VALUES ('吉林', '4');
INSERT INTO `province` VALUES ('四川', '115');
INSERT INTO `province` VALUES ('天津', '4');
INSERT INTO `province` VALUES ('安徽', '18');
INSERT INTO `province` VALUES ('山东', '62');
INSERT INTO `province` VALUES ('山西', '4');
INSERT INTO `province` VALUES ('广东', '151');
INSERT INTO `province` VALUES ('广西', '94');
INSERT INTO `province` VALUES ('新疆', '4');
INSERT INTO `province` VALUES ('江苏', '26');
INSERT INTO `province` VALUES ('江西', '10');
INSERT INTO `province` VALUES ('河北', '36');
INSERT INTO `province` VALUES ('河南', '49');
INSERT INTO `province` VALUES ('浙江', '13');
INSERT INTO `province` VALUES ('海南', '11');
INSERT INTO `province` VALUES ('湖北', '61');
INSERT INTO `province` VALUES ('湖南', '26');
INSERT INTO `province` VALUES ('甘肃', '60');
INSERT INTO `province` VALUES ('福建', '3');
INSERT INTO `province` VALUES ('辽宁', '44');
INSERT INTO `province` VALUES ('重庆市', '36');
INSERT INTO `province` VALUES ('陕西', '31');
INSERT INTO `province` VALUES ('黑龙江', '46');

-- ----------------------------
-- Table structure for ptypes
-- ----------------------------
DROP TABLE IF EXISTS `ptypes`;
CREATE TABLE `ptypes` (
  `ptypes` int DEFAULT NULL,
  `p_numbers` int DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ptypes
-- ----------------------------
INSERT INTO `ptypes` VALUES ('1', '270', '中职');
INSERT INTO `ptypes` VALUES ('2', '630', '高职');
INSERT INTO `ptypes` VALUES ('3', '100', '本科');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(32) NOT NULL,
  `roleName` varchar(50) DEFAULT NULL,
  `roleDesc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('R0000000000000000000000000000001', 'Super Admin', '可以进行后台管理，可以进行查看业务画像分析');
INSERT INTO `role` VALUES ('R0000000000000000000000000000002', 'Back Admin', '可以进行后台管理');
INSERT INTO `role` VALUES ('R0000000000000000000000000000003', 'Ordi User', '可以查看业务画像分析');

-- ----------------------------
-- Table structure for s_time
-- ----------------------------
DROP TABLE IF EXISTS `s_time`;
CREATE TABLE `s_time` (
  `id` int NOT NULL,
  `s_num` int DEFAULT NULL,
  `time_id` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_time
-- ----------------------------
INSERT INTO `s_time` VALUES ('1', '179', '1', '女');
INSERT INTO `s_time` VALUES ('2', '93', '2', '女');
INSERT INTO `s_time` VALUES ('3', '84', '3', '女');
INSERT INTO `s_time` VALUES ('4', '235', '4', '女');
INSERT INTO `s_time` VALUES ('5', '101', '1', '男');
INSERT INTO `s_time` VALUES ('6', '126', '2', '男');
INSERT INTO `s_time` VALUES ('7', '52', '3', '男');
INSERT INTO `s_time` VALUES ('8', '126', '4', '男');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `types` int DEFAULT NULL,
  `t_numbers` int DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '960', '学生');
INSERT INTO `type` VALUES ('2', '40', '教师');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phoneNum` varchar(20) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1346234@163.com', 'Super', 'Lisa', '$2a$10$uwROqbJS44Xs1UFG19o24eRViNTlHnx9idOdDPKvuvvu8UrIcf8AS', '13007722934', '1');
INSERT INTO `users` VALUES ('2', 'taaaz@163.com', 'Admin', '张三', '$2a$10$TtvjxuvlrmNwGZyEeFH9ceXlS.Hc4kjbcLOtUNx.mhEpjMxDX3rhy', '13521953648', '1');
INSERT INTO `users` VALUES ('3', 'qwa12345@163.com', 'mayer', 'mayer', '$2a$10$6LevqXSaAHpTPu0vDfNHEu30lLPwohvdCqGu3AC9oxZ7v5qu16CYC', '15810349584', '1');

-- ----------------------------
-- Table structure for users_role
-- ----------------------------
DROP TABLE IF EXISTS `users_role`;
CREATE TABLE `users_role` (
  `userId` int NOT NULL,
  `roleId` varchar(32) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `users_role_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `users_role_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_role
-- ----------------------------
INSERT INTO `users_role` VALUES ('1', 'R0000000000000000000000000000001');
INSERT INTO `users_role` VALUES ('2', 'R0000000000000000000000000000002');
INSERT INTO `users_role` VALUES ('3', 'R0000000000000000000000000000003');
