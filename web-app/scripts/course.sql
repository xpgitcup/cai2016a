/*
Navicat MySQL Data Transfer

Source Server         : 10.1.16.50
Source Server Version : 50627
Source Host           : 10.1.16.50:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2016-03-18 10:41:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_i60mruj0y7a7vs99dqpiye7en` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '0', '100409P005', '长输管道课程设计');
INSERT INTO `course` VALUES ('2', '0', '1304073', '油气储运工程应用软件概要');
INSERT INTO `course` VALUES ('3', '0', '1304042', '油气管道SCADA系统与过程控制');
