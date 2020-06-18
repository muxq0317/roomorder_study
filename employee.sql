/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : localhost-db

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-06-19 00:42:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `emp_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `emp_nm` varchar(255) NOT NULL COMMENT '员工姓名',
  `emp_number` varchar(10) NOT NULL COMMENT '员工号',
  `team_id` int(10) DEFAULT NULL COMMENT 'TEAM_ID',
  `emp_grade` smallint(2) NOT NULL COMMENT '员工级别',
  `creatuser` int(10) DEFAULT NULL,
  `creatdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateuser` int(10) DEFAULT NULL,
  `updatedate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='员工基本表';

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '王小明', '000001', '1', '2', '123', '2020-06-09 00:12:44', null, null);
INSERT INTO `employee` VALUES ('2', '王小明2', '000002', '1', '2', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('3', '王小明3', '000003', '1', '2', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('4', '王小明4', '000004', '1', '2', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('5', '王小明5', '000005', '1', '2', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('6', '王小明6', '000006', '1', '2', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('7', '王小明7', '000007', '1', '3', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('8', '王小明8', '000008', '1', '3', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('9', '王小明9', '000009', '2', '3', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('10', '王小明10', '000010', '2', '3', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('11', '王小明11', '000011', '2', '3', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('12', '王小明12', '000012', '2', '3', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('13', '王小明13', '000013', '2', '4', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('14', '王小明14', '000014', '3', '4', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('15', '王小明15', '000015', '3', '4', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('16', '王小明16', '000016', '3', '4', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('17', '王小明17', '000017', '3', '4', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('18', '王小明18', '000018', '3', '4', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('19', '王小明19', '000019', '3', '4', '123', '2020-06-09 00:12:00', null, null);
INSERT INTO `employee` VALUES ('20', '王小明20', '000020', '3', '4', '123', '2020-06-09 00:12:00', null, null);
