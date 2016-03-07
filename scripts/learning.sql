/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-03-07 15:48:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `learning`
-- ----------------------------
DROP TABLE IF EXISTS `learning`;
CREATE TABLE `learning` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `teaching_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_q5uqrxl0qttgivha8i0y8cwdo` (`student_id`),
  KEY `FK_alhqud5gjwhg1q4eahq8rs75s` (`teaching_id`),
  CONSTRAINT `FK_alhqud5gjwhg1q4eahq8rs75s` FOREIGN KEY (`teaching_id`) REFERENCES `teaching` (`id`),
  CONSTRAINT `FK_q5uqrxl0qttgivha8i0y8cwdo` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of learning
-- ----------------------------
INSERT INTO `learning` VALUES ('1', '0', '1', '1');
INSERT INTO `learning` VALUES ('2', '0', '2', '1');
INSERT INTO `learning` VALUES ('3', '0', '3', '1');
