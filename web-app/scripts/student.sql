/*
Navicat MySQL Data Transfer

Source Server         : 202.204.194.18
Source Server Version : 50627
Source Host           : 202.204.194.18:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2016-03-15 20:48:15
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
  KEY `FK_j0r0ce460fg07mg08xhgdgyaw` (`grade_id`),
  CONSTRAINT `FK_j0r0ce460fg07mg08xhgdgyaw` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('19', '0', '2012010970', '3', '林尤忠');
INSERT INTO `student` VALUES ('20', '1', '2012010974', '3', '卢路明');
INSERT INTO `student` VALUES ('21', '0', '2012010969', '3', '黄宇');
INSERT INTO `student` VALUES ('22', '0', '2012010910', '1', '吴明帅');
INSERT INTO `student` VALUES ('23', '0', '2012010975', '3', '宋明亮');
INSERT INTO `student` VALUES ('24', '0', '2012010913', '1', '赵云鹏');
INSERT INTO `student` VALUES ('25', '0', '2012010973', '3', '刘凯');
INSERT INTO `student` VALUES ('26', '0', '2012010893', '1', '张健');
INSERT INTO `student` VALUES ('27', '0', '2012010964', '3', '樊岳');
INSERT INTO `student` VALUES ('28', '0', '2012010892', '1', '张红叶');
INSERT INTO `student` VALUES ('29', '0', '2012010911', '1', '吴涛');
INSERT INTO `student` VALUES ('30', '0', '2012010886', '1', '韩菲杨');
INSERT INTO `student` VALUES ('31', '0', '2012010971', '3', '林聿明');
INSERT INTO `student` VALUES ('32', '0', '2012010887', '1', '梁一霄');
INSERT INTO `student` VALUES ('33', '0', '2012010888', '1', '刘静妍');
INSERT INTO `student` VALUES ('34', '0', '2012010889', '1', '马宇璠');
INSERT INTO `student` VALUES ('35', '0', '2012010890', '1', '许佳诺');
INSERT INTO `student` VALUES ('36', '0', '2012010891', '1', '张安琪');
INSERT INTO `student` VALUES ('37', '0', '2012010899', '1', '葛振东3');
INSERT INTO `student` VALUES ('38', '0', '2012010894', '1', '敖川');
INSERT INTO `student` VALUES ('39', '0', '2012010895', '1', '卜星淇');
INSERT INTO `student` VALUES ('40', '0', '2012010881', '1', '陈楚薇');
INSERT INTO `student` VALUES ('41', '1', '2012010909', '1', '魏子博');
INSERT INTO `student` VALUES ('42', '0', '2012011927', '1', '董嘉佳');
INSERT INTO `student` VALUES ('43', '0', '2012010907', '1', '妥云鹏');
INSERT INTO `student` VALUES ('44', '0', '2012010880', '1', '曹璐');
INSERT INTO `student` VALUES ('45', '0', '2012010896', '1', '程儒民');
INSERT INTO `student` VALUES ('46', '0', '2012010884', '1', '樊子荥');
INSERT INTO `student` VALUES ('47', '0', '2012011926', '1', '袁帅');
INSERT INTO `student` VALUES ('48', '1', '2012010900', '1', '韩庆龙');
INSERT INTO `student` VALUES ('49', '0', '2012010903', '1', '蔺旭琨');
INSERT INTO `student` VALUES ('50', '0', '2012010912', '1', '张亚超');
INSERT INTO `student` VALUES ('51', '0', '2012010916', '2', '董一瑾');
INSERT INTO `student` VALUES ('52', '0', '2012010927', '2', '者娟');
INSERT INTO `student` VALUES ('53', '0', '2012010925', '2', '杨晨光');
INSERT INTO `student` VALUES ('54', '0', '2012010939', '2', '李岩松');
INSERT INTO `student` VALUES ('55', '0', '2012010926', '2', '张若晨');
INSERT INTO `student` VALUES ('56', '0', '2012010976', '3', '王博弘');
INSERT INTO `student` VALUES ('57', '0', '2012010897', '1', '范玲懂');
INSERT INTO `student` VALUES ('58', '0', '2012010919', '2', '廖绮');
INSERT INTO `student` VALUES ('59', '0', '2012010923', '2', '王君傲');
INSERT INTO `student` VALUES ('60', '0', '2012010922', '2', '沈允');
INSERT INTO `student` VALUES ('61', '0', '2012010918', '2', '李柯');
INSERT INTO `student` VALUES ('62', '0', '2012011087', '4', '娄方宇');
INSERT INTO `student` VALUES ('63', '0', '2012011121', '4', '王传硕');
INSERT INTO `student` VALUES ('64', '0', '2012011265', '4', '吕倩倩');
INSERT INTO `student` VALUES ('65', '0', '2012010901', '1', '韩云涛');
INSERT INTO `student` VALUES ('66', '0', '2012011626', '4', '张新铭');
INSERT INTO `student` VALUES ('67', '0', '2012010902', '1', '黄俊国');
INSERT INTO `student` VALUES ('68', '0', '2012011320', '4', '黄璟');
INSERT INTO `student` VALUES ('69', '0', '2012011338', '4', '刘照');
INSERT INTO `student` VALUES ('70', '0', '2012010604', '4', '丁博');
INSERT INTO `student` VALUES ('71', '0', '2012011453', '4', '李梦瑶');
INSERT INTO `student` VALUES ('72', '0', '2012010906', '1', '苏恒');
INSERT INTO `student` VALUES ('73', '0', '2012010699', '4', '樊迪');
INSERT INTO `student` VALUES ('74', '0', '2012010931', '2', '陈宇杰');
INSERT INTO `student` VALUES ('75', '0', '2012011601', '4', '胡欣雨');
INSERT INTO `student` VALUES ('76', '0', '2012010778', '4', '张雅琴');
INSERT INTO `student` VALUES ('78', '0', '2012011068', '4', '栗原君');
INSERT INTO `student` VALUES ('79', '0', '2012011371', '4', '刘书良');
INSERT INTO `student` VALUES ('80', '0', '2012010203', '4', '刘嘉琪');
INSERT INTO `student` VALUES ('81', '1', '2012011859', '4', '左峻宁');
INSERT INTO `student` VALUES ('82', '0', '2012011420', '4', '史超');
INSERT INTO `student` VALUES ('83', '0', '2012010464', '4', '邓勇舰');
INSERT INTO `student` VALUES ('84', '0', '2012010461', '4', '张皓峤');
INSERT INTO `student` VALUES ('85', '0', '2012010647', '4', '郑倩');
INSERT INTO `student` VALUES ('86', '0', '2012010942', '2', '夏子杰');
INSERT INTO `student` VALUES ('87', '0', '2012010885', '1', '高航');
INSERT INTO `student` VALUES ('88', '0', '2012010963', '3', '陈玉川');
INSERT INTO `student` VALUES ('89', '0', '2012011449', '4', '白雨晴');
INSERT INTO `student` VALUES ('90', '0', '2012010945', '2', '于志鹏');
INSERT INTO `student` VALUES ('91', '0', '2012010915', '2', '迪娜尔·波拉提');
INSERT INTO `student` VALUES ('92', '0', '2012010944', '2', '熊杰');
INSERT INTO `student` VALUES ('93', '0', '2012010946', '2', '余亚军');
INSERT INTO `student` VALUES ('94', '0', '2012010914', '2', '陈曦宇');
INSERT INTO `student` VALUES ('95', '0', '2012010921', '2', '钱宸');
INSERT INTO `student` VALUES ('96', '0', '2012010882', '1', '陈怡鸣');
INSERT INTO `student` VALUES ('97', '0', '2012010920', '2', '潘儒艺');
INSERT INTO `student` VALUES ('98', '1', '2012010905', '1', '彭双双');
INSERT INTO `student` VALUES ('99', '0', '2012011020', '4', '康阳');
INSERT INTO `student` VALUES ('100', '0', '2012011481', '4', '高蕴慧');
INSERT INTO `student` VALUES ('101', '0', '2012010929', '2', '曹旭');
INSERT INTO `student` VALUES ('102', '0', '2012011610', '4', '郑惠兰');
INSERT INTO `student` VALUES ('103', '0', '2012010938', '2', '李学艺');
INSERT INTO `student` VALUES ('104', '0', '2012010940', '2', '梁立斌');
INSERT INTO `student` VALUES ('105', '0', '2012010941', '2', '沙小斌');
INSERT INTO `student` VALUES ('106', '0', '2012010943', '2', '谢阳超');
INSERT INTO `student` VALUES ('107', '0', '2012010937', '2', '李蛟鸾');
INSERT INTO `student` VALUES ('108', '0', '2012010933', '2', '段建平');
INSERT INTO `student` VALUES ('109', '0', '2012010934', '2', '谷旭');
INSERT INTO `student` VALUES ('110', '0', '2012010935', '2', '胡兵');
INSERT INTO `student` VALUES ('111', '0', '2012010936', '2', '黄华乾');
INSERT INTO `student` VALUES ('112', '0', '2012010932', '2', '赤列嘉措');
INSERT INTO `student` VALUES ('113', '0', '1', '5', '张三');
INSERT INTO `student` VALUES ('114', '0', '2', '5', '李四');
INSERT INTO `student` VALUES ('115', '0', '2012010904', '1', '马雨驰');
INSERT INTO `student` VALUES ('116', '0', '2012010961', '3', '张丝雨');
INSERT INTO `student` VALUES ('117', '0', '2012010814', '4', '文亚成');
INSERT INTO `student` VALUES ('118', '0', '2010043103', '3', '何云');
INSERT INTO `student` VALUES ('119', '1', '2012010981', '3', '张康鑫');
INSERT INTO `student` VALUES ('120', '0', '2012010979', '3', '张浩楠');
INSERT INTO `student` VALUES ('121', '0', '2012010980', '3', '张锦松');
INSERT INTO `student` VALUES ('122', '0', '2012010967', '3', '侯焜译');
INSERT INTO `student` VALUES ('123', '0', '2012010978', '3', '夏洪鑫');
INSERT INTO `student` VALUES ('124', '0', '2012010977', '1', '邬学利');
INSERT INTO `student` VALUES ('125', '0', '2012010952', '1', '聂晴晴');
INSERT INTO `student` VALUES ('126', '0', '2012010965', '1', '范鸿涛');
INSERT INTO `student` VALUES ('127', '0', '20102010956', '3', '幸源');
INSERT INTO `student` VALUES ('128', '0', '2012010968', '3', '黄天相');
INSERT INTO `student` VALUES ('129', '0', '2012010966', '3', '高乾');
INSERT INTO `student` VALUES ('130', '0', '2012010898', '1', '冯喆');
INSERT INTO `student` VALUES ('131', '0', '2010062109', '1', '邓浩龙');
INSERT INTO `student` VALUES ('132', '0', '2012030113', '5', '桑递别克');
INSERT INTO `student` VALUES ('133', '0', '2012010924', '2', '王孟莎');
INSERT INTO `student` VALUES ('134', '0', '2012010928', '2', '白坤森');
