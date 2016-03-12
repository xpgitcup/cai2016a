/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-03-12 16:35:55
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
  KEY `FK_j0r0ce460fg07mg08xhgdgyaw` (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '0', '2012010970', '3', '林尤忠');
INSERT INTO `student` VALUES ('2', '1', '2012010974', '3', '卢路明');
INSERT INTO `student` VALUES ('3', '0', '2012010969', '3', '黄宇');
INSERT INTO `student` VALUES ('4', '0', '2012010910', '1', '吴明帅');
INSERT INTO `student` VALUES ('5', '0', '2012010975', '3', '宋明亮');
INSERT INTO `student` VALUES ('6', '0', '2012010913', '1', '赵云鹏');
INSERT INTO `student` VALUES ('7', '0', '2012010973', '3', '刘凯');
INSERT INTO `student` VALUES ('8', '0', '2012010893', '1', '张健');
INSERT INTO `student` VALUES ('9', '0', '2012010964', '3', '樊岳');
INSERT INTO `student` VALUES ('10', '0', '2012010892', '1', '张红叶');
INSERT INTO `student` VALUES ('11', '0', '2012010911', '1', '吴涛');
INSERT INTO `student` VALUES ('12', '0', '2012010886', '1', '韩菲杨');
INSERT INTO `student` VALUES ('13', '0', '2012010971', '3', '林聿明');
INSERT INTO `student` VALUES ('14', '0', '2012010887', '1', '梁一霄');
INSERT INTO `student` VALUES ('15', '0', '2012010888', '1', '刘静妍');
INSERT INTO `student` VALUES ('16', '0', '2012010889', '1', '马宇璠');
INSERT INTO `student` VALUES ('17', '0', '2012010890', '1', '许佳诺');
INSERT INTO `student` VALUES ('18', '0', '2012010891', '1', '张安琪');
INSERT INTO `student` VALUES ('19', '0', '2012010899', '1', '葛振东3');
INSERT INTO `student` VALUES ('20', '0', '2012010894', '1', '敖川');
INSERT INTO `student` VALUES ('21', '0', '2012010895', '1', '卜星淇');
INSERT INTO `student` VALUES ('22', '0', '2012010881', '1', '陈楚薇');
INSERT INTO `student` VALUES ('23', '1', '2012010909', '1', '魏子博');
INSERT INTO `student` VALUES ('24', '0', '2012011927', '1', '董嘉佳');
INSERT INTO `student` VALUES ('25', '0', '2012010907', '1', '妥云鹏');
INSERT INTO `student` VALUES ('26', '0', '2012010880', '1', '曹璐');
INSERT INTO `student` VALUES ('27', '0', '2012010896', '1', '程儒民');
INSERT INTO `student` VALUES ('28', '0', '2012010884', '1', '樊子荥');
INSERT INTO `student` VALUES ('29', '0', '2012011926', '1', '袁帅');
INSERT INTO `student` VALUES ('30', '0', '2012010900', '1', '123456');
INSERT INTO `student` VALUES ('31', '0', '2012010903', '1', '蔺旭琨');
INSERT INTO `student` VALUES ('32', '0', '2012010912', '1', '张亚超');
INSERT INTO `student` VALUES ('33', '0', '2012010916', '2', '董一瑾');
INSERT INTO `student` VALUES ('34', '0', '2012010927', '2', '者娟');
INSERT INTO `student` VALUES ('35', '0', '2012010925', '2', '杨晨光');
INSERT INTO `student` VALUES ('36', '0', '2012010939', '2', '李岩松');
INSERT INTO `student` VALUES ('37', '0', '2012010926', '2', '张若晨');
INSERT INTO `student` VALUES ('38', '0', '2012010976', '3', '王博弘');
INSERT INTO `student` VALUES ('39', '0', '2012010897', '1', '范玲懂');
INSERT INTO `student` VALUES ('40', '0', '2012010919', '2', '廖绮');
INSERT INTO `student` VALUES ('41', '0', '2012010923', '2', '王君傲');
INSERT INTO `student` VALUES ('42', '0', '2012010922', '2', '沈允');
INSERT INTO `student` VALUES ('43', '0', '2012010918', '2', '李柯');
INSERT INTO `student` VALUES ('44', '0', '2012011087', '4', '娄方宇');
INSERT INTO `student` VALUES ('45', '0', '2012011121', '4', '王传硕');
INSERT INTO `student` VALUES ('46', '0', '2012011265', '4', '吕倩倩');
INSERT INTO `student` VALUES ('47', '0', '2012010901', '1', '韩云涛');
INSERT INTO `student` VALUES ('48', '0', '2012011626', '4', '张新铭');
INSERT INTO `student` VALUES ('49', '0', '2012010902', '1', '黄俊国');
INSERT INTO `student` VALUES ('50', '0', '2012011320', '4', '黄璟');
INSERT INTO `student` VALUES ('51', '0', '2012011338', '4', '刘照');
INSERT INTO `student` VALUES ('52', '0', '2012010604', '4', '丁博');
INSERT INTO `student` VALUES ('53', '0', '2012011453', '4', '李梦瑶');
INSERT INTO `student` VALUES ('54', '0', '2012010906', '1', '苏恒');
INSERT INTO `student` VALUES ('55', '0', '2012010699', '4', '樊迪');
INSERT INTO `student` VALUES ('56', '0', '2012010931', '2', '陈宇杰');
INSERT INTO `student` VALUES ('57', '0', '2012011601', '4', '胡欣雨');
INSERT INTO `student` VALUES ('58', '0', '2012010778', '4', '张雅琴');
INSERT INTO `student` VALUES ('60', '0', '2012011068', '4', '栗原君');
INSERT INTO `student` VALUES ('61', '0', '2012011371', '4', '刘书良');
INSERT INTO `student` VALUES ('62', '0', '2012010203', '4', '刘嘉琪');
INSERT INTO `student` VALUES ('63', '0', '2012011859', '1', '左峻宁');
