/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-03-07 15:38:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `grade_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6mgtxk9m2ec3bih9jbb39wt6p` (`code`),
  KEY `FK_j0r0ce460fg07mg08xhgdgyaw` (`grade_id`),
  CONSTRAINT `FK_j0r0ce460fg07mg08xhgdgyaw` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '0', '1', '1', '张三');
INSERT INTO `student` VALUES ('2', '0', '2', '1', '李四');
INSERT INTO `student` VALUES ('3', '0', '3', '1', '王五');
INSERT INTO `student` VALUES ('4', '0', '4', '1', '赵六');
INSERT INTO `student` VALUES ('5', '1', '5', '2', '赵1');
INSERT INTO `student` VALUES ('6', '0', '6', '2', '钱2');
