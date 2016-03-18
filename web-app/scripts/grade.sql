/*
Navicat MySQL Data Transfer

Source Server         : 10.1.16.50
Source Server Version : 50627
Source Host           : 10.1.16.50:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2016-03-18 10:45:13
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '0', '2012储运-1');
INSERT INTO `grade` VALUES ('2', '0', '2012储运-2');
INSERT INTO `grade` VALUES ('3', '0', '2012储运-3');
INSERT INTO `grade` VALUES ('4', '0', '2012储运-转专业');
INSERT INTO `grade` VALUES ('5', '0', '2012储运-留学生');
INSERT INTO `grade` VALUES ('6', '0', '研究生2015');
