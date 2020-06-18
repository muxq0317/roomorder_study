/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : localhost-db

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-06-19 00:42:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for room_order
-- ----------------------------
DROP TABLE IF EXISTS `room_order`;
CREATE TABLE `room_order` (
  `room_id` int(10) unsigned NOT NULL COMMENT '会议室id',
  `emp_id` int(10) unsigned NOT NULL COMMENT '员工id',
  `order_date` char(8) NOT NULL COMMENT '预约日期',
  `start_time` char(10) NOT NULL COMMENT '会议开始时间',
  `end_time` char(10) NOT NULL COMMENT '会议结束时间',
  PRIMARY KEY (`room_id`,`emp_id`,`order_date`,`start_time`),
  KEY `fk_2` (`emp_id`),
  CONSTRAINT `fk_2` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_order
-- ----------------------------
INSERT INTO `room_order` VALUES ('1', '1', '20200616', '11', '12');
INSERT INTO `room_order` VALUES ('1', '2', '20200616', '13', '15');
INSERT INTO `room_order` VALUES ('1', '2', '20200617', '16', '18');
INSERT INTO `room_order` VALUES ('1', '2', '20200618', '16', '18');
INSERT INTO `room_order` VALUES ('1', '2', '20200619', '16', '18');
INSERT INTO `room_order` VALUES ('1', '2', '20200620', '16', '18');
INSERT INTO `room_order` VALUES ('1', '3', '20200616', '8', '10');
INSERT INTO `room_order` VALUES ('1', '4', '20200617', '9', '11');
INSERT INTO `room_order` VALUES ('1', '4', '20200618', '9', '11');
INSERT INTO `room_order` VALUES ('1', '4', '20200619', '9', '11');
INSERT INTO `room_order` VALUES ('1', '4', '20200620', '9', '11');
INSERT INTO `room_order` VALUES ('1', '6', '20200617', '13', '14');
INSERT INTO `room_order` VALUES ('1', '6', '20200618', '13', '14');
INSERT INTO `room_order` VALUES ('1', '6', '20200619', '13', '14');
INSERT INTO `room_order` VALUES ('1', '6', '20200620', '13', '14');
INSERT INTO `room_order` VALUES ('2', '1', '20200617', '9', '11');
INSERT INTO `room_order` VALUES ('2', '1', '20200618', '9', '11');
INSERT INTO `room_order` VALUES ('2', '1', '20200619', '9', '11');
INSERT INTO `room_order` VALUES ('2', '1', '20200620', '9', '11');
INSERT INTO `room_order` VALUES ('2', '3', '20200617', '13', '14');
INSERT INTO `room_order` VALUES ('2', '3', '20200618', '13', '14');
INSERT INTO `room_order` VALUES ('2', '3', '20200619', '13', '14');
INSERT INTO `room_order` VALUES ('2', '3', '20200620', '13', '14');
INSERT INTO `room_order` VALUES ('2', '4', '20200616', '11', '12');
INSERT INTO `room_order` VALUES ('2', '5', '20200616', '13', '15');
INSERT INTO `room_order` VALUES ('2', '5', '20200617', '16', '18');
INSERT INTO `room_order` VALUES ('2', '5', '20200618', '16', '18');
INSERT INTO `room_order` VALUES ('2', '5', '20200619', '16', '18');
INSERT INTO `room_order` VALUES ('2', '5', '20200620', '16', '18');
INSERT INTO `room_order` VALUES ('2', '6', '20200616', '8', '10');
INSERT INTO `room_order` VALUES ('3', '7', '20200616', '11', '12');
INSERT INTO `room_order` VALUES ('3', '7', '20200617', '9', '11');
INSERT INTO `room_order` VALUES ('3', '7', '20200618', '9', '11');
INSERT INTO `room_order` VALUES ('3', '7', '20200619', '9', '11');
INSERT INTO `room_order` VALUES ('3', '7', '20200620', '9', '11');
INSERT INTO `room_order` VALUES ('3', '8', '20200616', '13', '15');
INSERT INTO `room_order` VALUES ('3', '8', '20200617', '13', '14');
INSERT INTO `room_order` VALUES ('3', '8', '20200618', '13', '14');
INSERT INTO `room_order` VALUES ('3', '8', '20200619', '13', '14');
INSERT INTO `room_order` VALUES ('3', '8', '20200620', '13', '14');
INSERT INTO `room_order` VALUES ('3', '9', '20200616', '8', '10');
INSERT INTO `room_order` VALUES ('3', '9', '20200617', '16', '18');
INSERT INTO `room_order` VALUES ('3', '9', '20200618', '16', '18');
INSERT INTO `room_order` VALUES ('3', '9', '20200619', '16', '18');
INSERT INTO `room_order` VALUES ('3', '9', '20200620', '16', '18');
INSERT INTO `room_order` VALUES ('4', '10', '20200616', '11', '12');
INSERT INTO `room_order` VALUES ('4', '10', '20200617', '9', '11');
INSERT INTO `room_order` VALUES ('4', '10', '20200618', '9', '11');
INSERT INTO `room_order` VALUES ('4', '10', '20200619', '9', '11');
INSERT INTO `room_order` VALUES ('4', '10', '20200620', '9', '11');
INSERT INTO `room_order` VALUES ('4', '11', '20200616', '13', '15');
INSERT INTO `room_order` VALUES ('4', '11', '20200617', '13', '14');
INSERT INTO `room_order` VALUES ('4', '11', '20200618', '13', '14');
INSERT INTO `room_order` VALUES ('4', '11', '20200619', '13', '14');
INSERT INTO `room_order` VALUES ('4', '11', '20200620', '13', '14');
INSERT INTO `room_order` VALUES ('4', '12', '20200616', '8', '10');
INSERT INTO `room_order` VALUES ('4', '12', '20200617', '16', '18');
INSERT INTO `room_order` VALUES ('4', '12', '20200618', '16', '18');
INSERT INTO `room_order` VALUES ('4', '12', '20200619', '16', '18');
INSERT INTO `room_order` VALUES ('4', '12', '20200620', '16', '18');
INSERT INTO `room_order` VALUES ('8', '13', '20200616', '11', '12');
INSERT INTO `room_order` VALUES ('8', '13', '20200617', '9', '11');
INSERT INTO `room_order` VALUES ('8', '13', '20200618', '9', '11');
INSERT INTO `room_order` VALUES ('8', '13', '20200619', '9', '11');
INSERT INTO `room_order` VALUES ('8', '13', '20200620', '9', '11');
INSERT INTO `room_order` VALUES ('8', '14', '20200616', '13', '15');
INSERT INTO `room_order` VALUES ('8', '14', '20200617', '13', '14');
INSERT INTO `room_order` VALUES ('8', '14', '20200618', '13', '14');
INSERT INTO `room_order` VALUES ('8', '14', '20200619', '13', '14');
INSERT INTO `room_order` VALUES ('8', '14', '20200620', '13', '14');
INSERT INTO `room_order` VALUES ('8', '15', '20200616', '8', '10');
INSERT INTO `room_order` VALUES ('8', '15', '20200617', '16', '18');
INSERT INTO `room_order` VALUES ('8', '15', '20200618', '16', '18');
INSERT INTO `room_order` VALUES ('8', '15', '20200619', '16', '18');
INSERT INTO `room_order` VALUES ('8', '15', '20200620', '16', '18');
INSERT INTO `room_order` VALUES ('10', '16', '20200616', '11', '12');
INSERT INTO `room_order` VALUES ('10', '16', '20200617', '13', '14');
INSERT INTO `room_order` VALUES ('10', '16', '20200618', '13', '14');
INSERT INTO `room_order` VALUES ('10', '16', '20200619', '13', '14');
INSERT INTO `room_order` VALUES ('10', '16', '20200620', '13', '14');
INSERT INTO `room_order` VALUES ('10', '17', '20200616', '13', '15');
INSERT INTO `room_order` VALUES ('10', '17', '20200617', '9', '11');
INSERT INTO `room_order` VALUES ('10', '17', '20200618', '9', '11');
INSERT INTO `room_order` VALUES ('10', '17', '20200619', '9', '11');
INSERT INTO `room_order` VALUES ('10', '17', '20200620', '9', '11');
INSERT INTO `room_order` VALUES ('10', '18', '20200616', '8', '10');
INSERT INTO `room_order` VALUES ('10', '18', '20200617', '16', '18');
INSERT INTO `room_order` VALUES ('10', '18', '20200618', '16', '18');
INSERT INTO `room_order` VALUES ('10', '18', '20200619', '16', '18');
INSERT INTO `room_order` VALUES ('10', '18', '20200620', '16', '18');
