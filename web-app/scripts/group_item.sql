/*
Navicat MySQL Data Transfer

Source Server         : 202.204.194.18
Source Server Version : 50627
Source Host           : 202.204.194.18:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2016-03-15 20:51:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `group_item`
-- ----------------------------
DROP TABLE IF EXISTS `group_item`;
CREATE TABLE `group_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `student_group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e8x7aarvg73hii6809b8v45mw` (`student_id`),
  KEY `FK_k765wqemset4i4j92wk0sp7lp` (`student_group_id`),
  CONSTRAINT `FK_e8x7aarvg73hii6809b8v45mw` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `FK_k765wqemset4i4j92wk0sp7lp` FOREIGN KEY (`student_group_id`) REFERENCES `student_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_item
-- ----------------------------
INSERT INTO `group_item` VALUES ('3', '0', '120', '3');
INSERT INTO `group_item` VALUES ('4', '0', '121', '3');
INSERT INTO `group_item` VALUES ('5', '0', '119', '3');
INSERT INTO `group_item` VALUES ('6', '0', '116', '4');
INSERT INTO `group_item` VALUES ('7', '0', '21', '5');
INSERT INTO `group_item` VALUES ('10', '0', '124', '7');
INSERT INTO `group_item` VALUES ('11', '0', '123', '7');
INSERT INTO `group_item` VALUES ('12', '0', '56', '7');
INSERT INTO `group_item` VALUES ('14', '0', '126', '5');
INSERT INTO `group_item` VALUES ('15', '0', '50', '6');
INSERT INTO `group_item` VALUES ('16', '0', '35', '10');
INSERT INTO `group_item` VALUES ('18', '0', '129', '11');
INSERT INTO `group_item` VALUES ('20', '0', '128', '11');
INSERT INTO `group_item` VALUES ('21', '0', '131', '6');
INSERT INTO `group_item` VALUES ('22', '0', '122', '11');
INSERT INTO `group_item` VALUES ('23', '0', '34', '10');
INSERT INTO `group_item` VALUES ('25', '0', '33', '12');
INSERT INTO `group_item` VALUES ('26', '0', '57', '13');
INSERT INTO `group_item` VALUES ('27', '0', '36', '12');
INSERT INTO `group_item` VALUES ('28', '0', '32', '10');
INSERT INTO `group_item` VALUES ('31', '0', '30', '12');
INSERT INTO `group_item` VALUES ('32', '2', '59', '16');
INSERT INTO `group_item` VALUES ('33', '0', '58', '16');
INSERT INTO `group_item` VALUES ('34', '0', '61', '16');
INSERT INTO `group_item` VALUES ('35', '0', '127', '15');
INSERT INTO `group_item` VALUES ('36', '0', '98', '13');
INSERT INTO `group_item` VALUES ('37', '0', '24', '6');
INSERT INTO `group_item` VALUES ('39', '0', '125', '8');
INSERT INTO `group_item` VALUES ('41', '0', '114', '18');
INSERT INTO `group_item` VALUES ('42', '0', '48', '13');
INSERT INTO `group_item` VALUES ('43', '0', '40', '17');
INSERT INTO `group_item` VALUES ('44', '0', '42', '17');
INSERT INTO `group_item` VALUES ('45', '0', '46', '17');
INSERT INTO `group_item` VALUES ('47', '0', '115', '19');
INSERT INTO `group_item` VALUES ('48', '1', '65', '19');
INSERT INTO `group_item` VALUES ('49', '0', '44', '21');
INSERT INTO `group_item` VALUES ('50', '0', '19', '3');
INSERT INTO `group_item` VALUES ('51', '0', '49', '19');
INSERT INTO `group_item` VALUES ('52', '0', '87', '21');
INSERT INTO `group_item` VALUES ('53', '0', '19', '3');
INSERT INTO `group_item` VALUES ('56', '0', '96', '21');
INSERT INTO `group_item` VALUES ('58', '0', '19', '3');
INSERT INTO `group_item` VALUES ('59', '0', '55', '23');
INSERT INTO `group_item` VALUES ('61', '0', '133', '23');
INSERT INTO `group_item` VALUES ('62', '0', '53', '22');
INSERT INTO `group_item` VALUES ('63', '0', '134', '23');
INSERT INTO `group_item` VALUES ('65', '0', '52', '22');
INSERT INTO `group_item` VALUES ('66', '0', '51', '22');
INSERT INTO `group_item` VALUES ('67', '0', '19', '3');
INSERT INTO `group_item` VALUES ('69', '3', '83', '24');
INSERT INTO `group_item` VALUES ('71', '0', '130', '26');
