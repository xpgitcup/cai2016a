/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-03-07 15:36:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `school_term`
-- ----------------------------
DROP TABLE IF EXISTS `school_term`;
CREATE TABLE `school_term` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_year_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_69jaib8p1f8u1ug4n40ers89p` (`school_year_id`),
  CONSTRAINT `FK_69jaib8p1f8u1ug4n40ers89p` FOREIGN KEY (`school_year_id`) REFERENCES `school_year` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_term
-- ----------------------------
INSERT INTO `school_term` VALUES ('1', '0', '秋', '1');
INSERT INTO `school_term` VALUES ('2', '0', '春', '1');
