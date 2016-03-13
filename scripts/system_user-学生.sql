/*
Navicat MySQL Data Transfer

Source Server         : 10.1.16.50
Source Server Version : 50627
Source Host           : 10.1.16.50:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2016-03-13 10:00:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `system_user`
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `superior_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_204b9ercidw1baj3s3m9lnr33` (`user_name`),
  KEY `FK_60nlksgdtkue7cjppucmyitgh` (`role_id`),
  KEY `FK_pqcj6q3t0dk71r1p9ujicvmd0` (`superior_id`),
  CONSTRAINT `FK_60nlksgdtkue7cjppucmyitgh` FOREIGN KEY (`role_id`) REFERENCES `system_role` (`id`),
  CONSTRAINT `FK_pqcj6q3t0dk71r1p9ujicvmd0` FOREIGN KEY (`superior_id`) REFERENCES `system_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('1', '0', 'd603a12ab27adab13e8d0e29dc54bbf6', '7', null, 'root');
INSERT INTO `system_user` VALUES ('2', '0', 'ee26fc66b1369c7625333bedafbfcaf6', '7', null, '宫敬');
INSERT INTO `system_user` VALUES ('3', '0', 'c444858e0aaeb727da73d2eae62321ad', '7', null, '课题组长');
INSERT INTO `system_user` VALUES ('4', '0', '350db081a661525235354dd3e19b8c05', '7', null, '李晓平');
INSERT INTO `system_user` VALUES ('5', '0', 'f4aa0dd960521e045ae2f20621fb4ee9', '7', null, '吴海浩');
INSERT INTO `system_user` VALUES ('6', '0', '37968ad196a5085f5ed91e58df8c2cef', '7', null, '史博会');
INSERT INTO `system_user` VALUES ('7', '0', '63538fe6ef330c13a05a3ed7e599d5f7', '3', null, '王嘉琪');
INSERT INTO `system_user` VALUES ('8', '0', '63538fe6ef330c13a05a3ed7e599d5f7', '3', null, '伍星光');
INSERT INTO `system_user` VALUES ('9', '0', '615db57aa314529aaa0fbe95b3e95bd3', '2', null, '1');
INSERT INTO `system_user` VALUES ('10', '0', '615db57aa314529aaa0fbe95b3e95bd3', '2', null, '123');
INSERT INTO `system_user` VALUES ('11', '0', '289dff07669d7a23de0ef88d2f7129e7', '2', null, '234');
INSERT INTO `system_user` VALUES ('12', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '345');
INSERT INTO `system_user` VALUES ('13', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010970');
INSERT INTO `system_user` VALUES ('14', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '201201974');
INSERT INTO `system_user` VALUES ('15', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010969');
INSERT INTO `system_user` VALUES ('16', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010910');
INSERT INTO `system_user` VALUES ('17', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010975');
INSERT INTO `system_user` VALUES ('18', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010913');
INSERT INTO `system_user` VALUES ('19', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010973');
INSERT INTO `system_user` VALUES ('20', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010893');
INSERT INTO `system_user` VALUES ('21', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010964');
INSERT INTO `system_user` VALUES ('22', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010892');
INSERT INTO `system_user` VALUES ('23', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010911');
INSERT INTO `system_user` VALUES ('24', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010886');
INSERT INTO `system_user` VALUES ('25', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010971');
INSERT INTO `system_user` VALUES ('26', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010887');
INSERT INTO `system_user` VALUES ('27', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010888');
INSERT INTO `system_user` VALUES ('28', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010889');
INSERT INTO `system_user` VALUES ('29', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010890');
INSERT INTO `system_user` VALUES ('30', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010891');
INSERT INTO `system_user` VALUES ('31', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010899');
INSERT INTO `system_user` VALUES ('32', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010894');
INSERT INTO `system_user` VALUES ('33', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010895');
INSERT INTO `system_user` VALUES ('34', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010881');
INSERT INTO `system_user` VALUES ('35', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010909');
INSERT INTO `system_user` VALUES ('36', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011927');
INSERT INTO `system_user` VALUES ('37', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010907');
INSERT INTO `system_user` VALUES ('38', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010880');
INSERT INTO `system_user` VALUES ('39', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010896');
INSERT INTO `system_user` VALUES ('40', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010884');
INSERT INTO `system_user` VALUES ('41', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011926');
INSERT INTO `system_user` VALUES ('42', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010900');
INSERT INTO `system_user` VALUES ('43', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010903');
INSERT INTO `system_user` VALUES ('44', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010912');
INSERT INTO `system_user` VALUES ('45', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010916');
INSERT INTO `system_user` VALUES ('46', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010927');
INSERT INTO `system_user` VALUES ('47', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010925');
INSERT INTO `system_user` VALUES ('48', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010939');
INSERT INTO `system_user` VALUES ('49', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010926');
INSERT INTO `system_user` VALUES ('50', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010976');
INSERT INTO `system_user` VALUES ('51', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010897');
INSERT INTO `system_user` VALUES ('52', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010919');
INSERT INTO `system_user` VALUES ('53', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010923');
INSERT INTO `system_user` VALUES ('54', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010922');
INSERT INTO `system_user` VALUES ('55', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010918');
INSERT INTO `system_user` VALUES ('56', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011087');
INSERT INTO `system_user` VALUES ('57', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011121');
INSERT INTO `system_user` VALUES ('58', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011265');
INSERT INTO `system_user` VALUES ('59', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010901');
INSERT INTO `system_user` VALUES ('60', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011626');
INSERT INTO `system_user` VALUES ('61', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010902');
INSERT INTO `system_user` VALUES ('62', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011320');
INSERT INTO `system_user` VALUES ('63', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011338');
INSERT INTO `system_user` VALUES ('64', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010604');
INSERT INTO `system_user` VALUES ('65', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011453');
INSERT INTO `system_user` VALUES ('66', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010906');
INSERT INTO `system_user` VALUES ('67', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010699');
INSERT INTO `system_user` VALUES ('68', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010931');
INSERT INTO `system_user` VALUES ('69', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011601');
INSERT INTO `system_user` VALUES ('70', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010778');
INSERT INTO `system_user` VALUES ('71', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011068');
INSERT INTO `system_user` VALUES ('72', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011371');
INSERT INTO `system_user` VALUES ('73', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010203');
INSERT INTO `system_user` VALUES ('74', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011859');
INSERT INTO `system_user` VALUES ('75', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012011420');
INSERT INTO `system_user` VALUES ('76', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010464');
INSERT INTO `system_user` VALUES ('77', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010461');
INSERT INTO `system_user` VALUES ('78', '0', 'e10adc3949ba59abbe56e057f20f883e', '2', null, '2012010647');
