/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : hotelmanagement

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-01-16 20:47:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `account` varchar(255) NOT NULL COMMENT '账户',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hotel_detail
-- ----------------------------
DROP TABLE IF EXISTS `hotel_detail`;
CREATE TABLE `hotel_detail` (
  `hotel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '酒店编号',
  `name` varchar(225) NOT NULL COMMENT '酒店名字',
  `admin_id` int(11) NOT NULL COMMENT '酒店预留管理员id',
  `location` varchar(225) NOT NULL COMMENT '酒店位置',
  `phone` varchar(225) NOT NULL COMMENT '酒店预留管理员电话',
  `introduction` varchar(255) DEFAULT NULL COMMENT '酒店位置',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '酒店图片',
  `register_time` varchar(255) NOT NULL COMMENT '酒店注册时间',
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hotel_operator
-- ----------------------------
DROP TABLE IF EXISTS `hotel_operator`;
CREATE TABLE `hotel_operator` (
  `operate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '操作人员id',
  `account` varchar(255) NOT NULL COMMENT '账号',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `hotel_id` int(11) DEFAULT NULL COMMENT '酒店id',
  `rank_value` varchar(1) NOT NULL DEFAULT '0' COMMENT '等级（0normal_operate，1super_operate）',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `id_card` varchar(255) NOT NULL COMMENT '身份证号',
  PRIMARY KEY (`operate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hotel_room
-- ----------------------------
DROP TABLE IF EXISTS `hotel_room`;
CREATE TABLE `hotel_room` (
  `room_id` int(11) NOT NULL COMMENT '房间编号',
  `hotel_id` int(11) NOT NULL COMMENT '所属酒店编号',
  `location` varchar(255) NOT NULL COMMENT '房间位置',
  `room_kind` int(11) NOT NULL COMMENT '房间类型',
  `price` double NOT NULL COMMENT '房间价格',
  `using_State` varchar(1) NOT NULL DEFAULT '0' COMMENT '使用状态（0未使用，1以预定，2入住中）',
  `register_time` varchar(255) NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for room_kind
-- ----------------------------
DROP TABLE IF EXISTS `room_kind`;
CREATE TABLE `room_kind` (
  `kind_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型id',
  `room_kind` varchar(255) NOT NULL COMMENT '房间类型',
  `introduction` varchar(255) NOT NULL COMMENT '类型介绍',
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kind_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sale_record
-- ----------------------------
DROP TABLE IF EXISTS `sale_record`;
CREATE TABLE `sale_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '操作的用户id',
  `worker_id` int(11) DEFAULT NULL COMMENT '操作的工作人员id',
  `hotel_id` int(11) NOT NULL COMMENT '酒店id',
  `room_id` int(11) NOT NULL COMMENT '房间id',
  `operate_time` varchar(255) NOT NULL COMMENT '操作时间',
  `operate_kind` varchar(1) NOT NULL DEFAULT '0' COMMENT '操作类型（0预定，1入住）',
  `start_time` varchar(255) NOT NULL COMMENT '入住时间',
  `end_time` varchar(255) NOT NULL COMMENT '结束时间',
  `money_state` varchar(1) NOT NULL DEFAULT '0' COMMENT '支付状态（0未支付1退款中2已付款）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) NOT NULL,
  `vip` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
