/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-03-07 15:50:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `homework`
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `task_description` varchar(255) NOT NULL,
  `teaching_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rl4p91c3m8c1w7y7xu2943pwe` (`teaching_id`),
  CONSTRAINT `FK_rl4p91c3m8c1w7y7xu2943pwe` FOREIGN KEY (`teaching_id`) REFERENCES `teaching` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES ('1', '0', '答辩', '1');
