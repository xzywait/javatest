/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-05-02 14:27:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `authors` varchar(30) DEFAULT NULL,
  `publisher` varchar(30) DEFAULT NULL,
  `publishdate` datetime DEFAULT NULL,
  `price` float DEFAULT NULL,
  `ORDER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `FK_et7s19quq7gjmagbygifjgsd4` (`ORDER_ID`),
  CONSTRAINT `FK_et7s19quq7gjmagbygifjgsd4` FOREIGN KEY (`ORDER_ID`) REFERENCES `orders` (`ORDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('2', '鲁滨逊漂流记 ', '迪福6', '北方少年出版社', '1996-08-09 00:00:00', '25.2', null);
INSERT INTO `book` VALUES ('4', '海底两万里', '儒勒.凡尔纳', ' 北方妇女儿童出版社 ', '1998-09-08 00:00:00', '18.8', null);
INSERT INTO `book` VALUES ('6', '十万个为什么', '米·伊林', '新世纪出版社', '1961-01-20 00:00:00', '8000', null);
INSERT INTO `book` VALUES ('2212', '家', '巴金', '人民文学出版社', '1978-02-28 00:00:00', '30', null);
INSERT INTO `book` VALUES ('12121', '大大方方', '似懂非懂', '帅哥哥', '2009-06-03 00:00:00', '18', null);
INSERT INTO `book` VALUES ('12122', 'dbdfdf', 'ew2ew', 'dfsadv', '1961-01-20 00:00:00', '18.8', null);

-- ----------------------------
-- Table structure for `customers`
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_NAME` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `FK_57wwsm6wqqkcr1amp4dtsk5bs` (`CUSTOMER_ID`),
  CONSTRAINT `FK_57wwsm6wqqkcr1amp4dtsk5bs` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`CUSTOMERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
