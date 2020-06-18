/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : localhost-db

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-06-19 00:42:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `room_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '会议室id',
  `room_nm` char(10) DEFAULT NULL COMMENT '会议室名',
  `capacity` int(255) DEFAULT NULL COMMENT '可容纳人数',
  `status` smallint(5) DEFAULT '1' COMMENT '会议室状态',
  `creatuser` int(10) DEFAULT NULL,
  `creatdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateuser` int(10) DEFAULT NULL,
  `updatedate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`room_id`),
  UNIQUE KEY `pk_room` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='会议室基本表';

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('1', '501', '10', '1', '123', '2020-06-09 00:14:54', null, null);
INSERT INTO `room` VALUES ('2', '502', '8', '1', '123', '2020-06-09 00:15:40', null, null);
INSERT INTO `room` VALUES ('3', '503', '20', '1', '123', '2020-06-09 00:16:03', null, null);
INSERT INTO `room` VALUES ('4', '504', '10', '1', '123', '2020-06-09 00:18:32', null, '2020-06-09 00:18:36');
INSERT INTO `room` VALUES ('5', '505', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('6', '506', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('7', '507', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('8', '508', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('9', '509', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('10', '510', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('11', '511', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('12', '512', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('13', '513', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('14', '514', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('15', '515', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('16', '516', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('17', '517', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('18', '518', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('19', '519', '10', '1', '123', '2020-06-09 00:18:00', null, null);
INSERT INTO `room` VALUES ('20', '520', '10', '1', '123', '2020-06-09 00:18:00', null, null);
