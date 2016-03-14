/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-03-14 21:47:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `student_group`
-- ----------------------------
DROP TABLE IF EXISTS `student_group`;
CREATE TABLE `student_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `teaching_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_geabsq0198ri50tyerum133r7` (`teaching_id`),
  CONSTRAINT `FK_geabsq0198ri50tyerum133r7` FOREIGN KEY (`teaching_id`) REFERENCES `teaching` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_group
-- ----------------------------
