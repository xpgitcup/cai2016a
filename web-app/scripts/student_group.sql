/*
Navicat MySQL Data Transfer

Source Server         : 202.204.194.18
Source Server Version : 50627
Source Host           : 202.204.194.18:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2016-03-15 20:48:28
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_group
-- ----------------------------
INSERT INTO `student_group` VALUES ('3', '0', '张浩楠', '1');
INSERT INTO `student_group` VALUES ('4', '0', '张丝雨', '1');
INSERT INTO `student_group` VALUES ('5', '0', '黄宇', '1');
INSERT INTO `student_group` VALUES ('6', '0', '赵云鹏', '1');
INSERT INTO `student_group` VALUES ('7', '0', '邬学利', '1');
INSERT INTO `student_group` VALUES ('8', '0', '聂晴晴', '1');
INSERT INTO `student_group` VALUES ('10', '0', '许佳诺', '1');
INSERT INTO `student_group` VALUES ('11', '0', '高乾', '1');
INSERT INTO `student_group` VALUES ('12', '0', '韩菲杨', '1');
INSERT INTO `student_group` VALUES ('13', '0', '范玲懂', '1');
INSERT INTO `student_group` VALUES ('15', '0', '幸源', '1');
INSERT INTO `student_group` VALUES ('16', '0', '李柯', '1');
INSERT INTO `student_group` VALUES ('17', '0', '陈楚薇', '1');
INSERT INTO `student_group` VALUES ('18', '0', '李四', '1');
INSERT INTO `student_group` VALUES ('19', '0', '马雨驰', '1');
INSERT INTO `student_group` VALUES ('21', '0', '曹璐', '1');
INSERT INTO `student_group` VALUES ('22', '0', '杨晨光', '1');
INSERT INTO `student_group` VALUES ('23', '0', '张若晨', '1');
INSERT INTO `student_group` VALUES ('24', '0', '樊迪', '1');
INSERT INTO `student_group` VALUES ('25', '0', '刘书良', '1');
INSERT INTO `student_group` VALUES ('26', '0', '冯喆', '1');
