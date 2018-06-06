/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : jhcf

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2018-03-10 19:09:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_industry`
-- ----------------------------
DROP TABLE IF EXISTS `t_industry`;
CREATE TABLE `t_industry` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `i_time` varchar(25) NOT NULL,
  `i_images` varchar(100) DEFAULT NULL,
  `i_title` varchar(100) NOT NULL,
  `i_source` varchar(100) NOT NULL,
  `i_content` varchar(5000) NOT NULL,
  `i_price` float NOT NULL,
  `i_contact` varchar(100) NOT NULL,
  `i_groupname` int(11) NOT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_industry
-- ----------------------------
INSERT INTO `t_industry` VALUES ('7', '2018-03-09 23:34:16', '20180310170001194.jpg', '马路交通安全守则', '风信子自创', '<p>做好交通安全从学会马路交通安全开始</p>\r\n', '36', '13244566545', '2');
INSERT INTO `t_industry` VALUES ('8', '2018-03-10 16:10:37', '20180310165953792.jpg', '摩托车守则', '风信子自创', '<p>做好交通安全从学会马路交通安全开始</p>\r\n', '55', '232423423423', '1');
INSERT INTO `t_industry` VALUES ('9', '2018-03-10 16:12:28', '20180310165944614.jpg', '红绿灯守则', '风信子自创', '<p>做好交通安全从学会马路交通安全开始</p>\r\n', '66', '24235432535', '1');
INSERT INTO `t_industry` VALUES ('10', '2018-03-20 16:13:37', '2018031016593315.jpg', '行人交通规则', '风信子自创', '<p>做好交通安全从学会马路交通安全开始</p>\r\n', '33', '2342343', '1');
INSERT INTO `t_industry` VALUES ('11', '2018-03-10 17:01:20', '20180310170201688.jpg', '马路交通安全守则', '风信子自创', '<p>做好交通安全从学会马路交通安全开始</p>\r\n', '33', '13244566765', '1');
INSERT INTO `t_industry` VALUES ('12', '2018-03-10 17:02:55', '20180310170324820.jpg', '道路规则', '风信子自创', '<p>做好交通安全从学会马路交通安全开始做好交通安全从学会马路交通安全开始</p>\r\n\r\n<p>做好交通安全从学会马路交通安全开始做好交通安全从学会马路交通安全开始</p>\r\n', '22', '154553445342', '1');
INSERT INTO `t_industry` VALUES ('13', '2018-03-10 17:03:58', '20180310170417246.jpg', '道路安全', '风信子自创', '<p>做好交通安全从学会马路交通安全开始做好交通安全从学会马路交通安全开始</p>\r\n\r\n<p>做好交通安全从学会马路交通安全开始做好交通安全从学会马路交通安全开始</p>\r\n\r\n<p>做好交通安全从学会马路交通安全开始</p>\r\n', '33', '24234234234324', '1');
