/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-03-07 15:46:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `teaching`
-- ----------------------------
DROP TABLE IF EXISTS `teaching`;
CREATE TABLE `teaching` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `school_term_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jkau5b8c5vcr21k2tu1nfql4a` (`course_id`),
  KEY `FK_6jawccxc3yg7fqg0u5t6dyi1n` (`school_term_id`),
  KEY `FK_hrmaaat8qu5s5rorit23f8mtv` (`teacher_id`),
  CONSTRAINT `FK_6jawccxc3yg7fqg0u5t6dyi1n` FOREIGN KEY (`school_term_id`) REFERENCES `school_term` (`id`),
  CONSTRAINT `FK_hrmaaat8qu5s5rorit23f8mtv` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FK_jkau5b8c5vcr21k2tu1nfql4a` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teaching
-- ----------------------------
INSERT INTO `teaching` VALUES ('1', '0', '1', '2', '1');
