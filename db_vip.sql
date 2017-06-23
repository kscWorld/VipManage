/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.5-10.1.16-MariaDB : Database - db_vip
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_vip` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `db_vip`;

/*Table structure for table `commodity` */

DROP TABLE IF EXISTS `commodity`;

CREATE TABLE `commodity` (
  `commodityId` int(11) NOT NULL AUTO_INCREMENT,
  `commodityName` varchar(30) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `agio` decimal(4,3) DEFAULT NULL,
  PRIMARY KEY (`commodityId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gb2312;

/*Data for the table `commodity` */

insert  into `commodity`(`commodityId`,`commodityName`,`price`,`agio`) values (1,'MacBook Pro','15000.00','0.200'),(2,'kindle','1499.00','0.100'),(3,'iPhone7 plus','7000.00','0.300'),(4,'宝马','20000.00','0.400'),(5,'奔驰','20000.00','0.400'),(9,'单反相机','10000.00','0.400'),(12,'iPod','3000.00','0.800'),(13,'小米air','4999.00','0.600'),(14,'杜蕾斯','100.00','0.200'),(15,'iPod3','556.00','0.500');

/*Table structure for table `consume` */

DROP TABLE IF EXISTS `consume`;

CREATE TABLE `consume` (
  `consumeId` int(11) NOT NULL AUTO_INCREMENT,
  `vipid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `commodityId` int(11) DEFAULT NULL,
  `commodityName` varchar(30) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `practicePrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`consumeId`),
  KEY `vipid` (`vipid`),
  KEY `commodityId` (`commodityId`),
  CONSTRAINT `consume_ibfk_1` FOREIGN KEY (`vipid`) REFERENCES `vip` (`vipId`),
  CONSTRAINT `consume_ibfk_2` FOREIGN KEY (`commodityId`) REFERENCES `commodity` (`commodityId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

/*Data for the table `consume` */

insert  into `consume`(`consumeId`,`vipid`,`name`,`commodityId`,`commodityName`,`price`,`practicePrice`) values (1,2,'郑海洋',3,'iPhone7 plus','7000.00','2100.00'),(2,1,'金秀贤',9,'单反相机','10000.00','4000.00'),(3,2,'郑海洋',12,'iPod','3000.00','2400.00'),(4,2,'郑海洋',1,'MacBook Pro','15000.00','3000.00'),(5,1,'金秀贤',2,'kindle','1499.00','149.90'),(6,2,'李政宰',1,'MacBook Pro','15000.00','1500.00'),(7,2,'李政宰',1,'MacBook Pro','15000.00','1500.00'),(8,4,'刘亚仁',2,'iPhone7 plus','7000.00','1400.00'),(9,3,'河正宇',5,'kindle','1500.00','750.00'),(10,1,'宋康昊',3,'iPod','3000.00','900.00'),(11,4,'金秀贤',4,'单反','10000.00','4000.00');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `quanxian` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`quanxian`) values ('ksc','456',1),('sj','789',0),('zhy','123',0);

/*Table structure for table `vip` */

DROP TABLE IF EXISTS `vip`;

CREATE TABLE `vip` (
  `vipId` int(11) NOT NULL AUTO_INCREMENT,
  `joinTime` date DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `profession` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`vipId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

/*Data for the table `vip` */

insert  into `vip`(`vipId`,`joinTime`,`name`,`age`,`profession`) values (1,'2016-12-05','金秀贤',30,'演员'),(2,'2016-12-05','郑海洋',19,'Java工程师'),(3,'2017-01-01','刘亚仁',18,'前端工程师'),(4,'2018-01-01','宋仲基',20,'PHP工程师'),(5,'2016-12-09','李宇春',30,'歌手');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
