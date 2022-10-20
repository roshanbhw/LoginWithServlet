/*
Navicat MySQL Data Transfer

Source Server         : LOCAL
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : thothit_db

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2022-10-14 19:26:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `signups_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `signups_tbl`;
CREATE TABLE `signups_tbl` (
  `username` varchar(45) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of signups_tbl
-- ----------------------------
INSERT INTO `signups_tbl` VALUES ('ahahaw8w282w', 'qwewqeqweqweqw', 'technohunk444@gmail.com', '234324324');
INSERT INTO `signups_tbl` VALUES ('Ameya', 'test', 'ameya@gmail.com', '303923432');
INSERT INTO `signups_tbl` VALUES ('Nagendra', 'test', 'nagen@gmail.com', '90393939');
INSERT INTO `signups_tbl` VALUES ('yadav', 'qeqwewq', 'nagendra.kumar@controlmap.io', '828282828');
INSERT INTO `signups_tbl` VALUES ('yadavqeqw', 'ewqwqe', 'nagendra.yadav@wearsafe.com', '1232213');
