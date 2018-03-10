/*
SQLyog Community v12.5.0 (64 bit)
MySQL - 5.7.20-log : Database - internet_provider_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`internet_provider_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `internet_provider_db`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Login_connect` varchar(100) NOT NULL,
  `Password_connect` varchar(100) NOT NULL,
  `Current_day_traffic_count` int(11) unsigned NOT NULL,
  `Current_nigth_traffic_count` int(11) unsigned NOT NULL,
  `Time_creation` datetime NOT NULL,
  `Deactivated` tinyint(1) NOT NULL DEFAULT '0',
  `Deleted` tinyint(1) NOT NULL DEFAULT '0',
  `User_Id` int(11) NOT NULL,
  `Contract_Id` int(11) NOT NULL,
  `Tariff_plane_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UI_LoginPasswordConnect` (`Login_connect`,`Password_connect`),
  KEY `fk_Account_User1_idx` (`User_Id`),
  KEY `fk_Account_Contract1_idx` (`Contract_Id`),
  KEY `I_Deactivated` (`Deactivated`),
  KEY `I_Deleted` (`Deleted`),
  KEY `I_Login` (`Login_connect`),
  KEY `fk_Account_Tarrif_plane1_idx` (`Tariff_plane_Id`),
  CONSTRAINT `fk_Account_Contract1` FOREIGN KEY (`Contract_Id`) REFERENCES `contract` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Account_Tarrif_plane1` FOREIGN KEY (`Tariff_plane_Id`) REFERENCES `tariff_plane` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Account_User1` FOREIGN KEY (`User_Id`) REFERENCES `user` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`Id`,`Login_connect`,`Password_connect`,`Current_day_traffic_count`,`Current_nigth_traffic_count`,`Time_creation`,`Deactivated`,`Deleted`,`User_Id`,`Contract_Id`,`Tariff_plane_Id`) values 
(1,'Codename4774','lolkeklol',100,100,'2018-03-11 00:28:51',0,0,61,1,10),
(2,'Codename47','lolkeklolkek',100,100,'2018-03-11 00:28:51',0,0,62,2,10),
(3,'AdminIvan','lol',100,100,'2018-03-11 00:28:51',0,0,63,3,11),
(4,'SuperAdminSlava','superlolkeklol',100,100,'2018-03-11 00:28:51',0,0,64,4,15),
(5,'SuperAdminVlad','superlolkeklolkek',100,100,'2018-03-11 00:28:51',0,0,65,5,15),
(6,'IAmAwesomeUser','awesomelolkeklol',100,100,'2018-03-11 00:28:51',0,0,66,6,14),
(7,'TopSecretAdmin','topsecretpass',100,100,'2018-03-11 00:28:51',0,0,67,7,14),
(8,'TopSecretUser','topsecretpass',100,100,'2018-03-11 00:28:51',0,0,68,8,14),
(9,'TopSecretSuperAdmin','topsecretpass',100,100,'2018-03-11 00:28:51',0,0,69,9,16),
(10,'JustUser1','topsecretpass',100,100,'2018-03-11 00:28:51',0,0,70,10,16),
(11,'JustUser2','topsecretpass',100,100,'2018-03-11 00:28:51',0,0,70,11,17);

/*Table structure for table `contract` */

DROP TABLE IF EXISTS `contract`;

CREATE TABLE `contract` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport_number` varchar(100) NOT NULL,
  `Surname` varchar(250) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Patronymic` varchar(250) DEFAULT NULL,
  `Contract_number` int(11) NOT NULL,
  `Signing_date` date NOT NULL,
  `Expiration_term` date NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UI_ContractNumber` (`Contract_number`),
  KEY `I_Contract_number` (`Contract_number`),
  KEY `I_PassNumber` (`Passport_number`),
  KEY `I_SurnameNamePatronymic` (`Surname`,`Name`,`Patronymic`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `contract` */

insert  into `contract`(`Id`,`Passport_number`,`Surname`,`Name`,`Patronymic`,`Contract_number`,`Signing_date`,`Expiration_term`) values 
(1,'ВМ21345678','Жизневский','Владислав','Станиславович',5638,'2018-03-11','2020-03-11'),
(2,'МС33245673','Чернушевич','Владислав','Владимирович',5639,'2018-03-11','2019-03-11'),
(3,'МС33245673','Чернушевич','Владислав','Владимирович',5640,'2018-03-11','2021-03-11'),
(4,'ВМ21345678','Жизневский','Владислав','Станиславович',5641,'2018-03-11','2020-03-11'),
(5,'МС23678921','Кутас','Дмитрий','Сергеевич',5642,'2018-03-11','2019-03-11'),
(6,'МС23678921','Кутас','Дмитрий','Сергеевич',5644,'2018-03-11','2019-03-11'),
(7,'МС98097658','Новичук','Константин','Сергеевич',5645,'2018-03-11','2020-03-11'),
(8,'МС23676543','Иванова','Зинаида','Ивановна',5646,'2018-03-11','2021-03-11'),
(9,'МС23568908','Фёдоров','Мирон','Янович',5647,'2018-03-11','2019-03-11'),
(10,'МС76535790','Белогай','Антон','Сергеевич',5648,'2018-03-11','2020-03-11'),
(11,'ВМ12346764','Усепов','Антон','Иванович',5649,'2018-03-11','2021-03-11');

/*Table structure for table `payment_type` */

DROP TABLE IF EXISTS `payment_type`;

CREATE TABLE `payment_type` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Description` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `payment_type` */

insert  into `payment_type`(`Id`,`Name`,`Description`) values 
(1,'Mastercard','Payment via mastercard'),
(2,'VISA','Payment via VISA'),
(3,'Belcard','Payment via Belcard'),
(4,'Terminal','Payment via terminal'),
(5,'Other','Other');

/*Table structure for table `refill_balance` */

DROP TABLE IF EXISTS `refill_balance`;

CREATE TABLE `refill_balance` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Count_money` decimal(18,9) NOT NULL,
  `Date` datetime NOT NULL,
  `Payment_number` varchar(250) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Payment_type_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Refill_balance_User1_idx` (`User_Id`),
  KEY `fk_Refill_balance_Payment_type1_idx` (`Payment_type_Id`),
  KEY `I_PaymentNumber` (`Payment_number`),
  CONSTRAINT `fk_Refill_balance_Payment_type1` FOREIGN KEY (`Payment_type_Id`) REFERENCES `payment_type` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Refill_balance_User1` FOREIGN KEY (`User_Id`) REFERENCES `user` (`Id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `refill_balance` */

insert  into `refill_balance`(`Id`,`Count_money`,`Date`,`Payment_number`,`User_Id`,`Payment_type_Id`) values 
(1,20.000000000,'2018-03-11 01:07:34','123456789',61,1),
(2,20.000000000,'2018-03-11 01:07:34','987654321',62,2),
(3,20.000000000,'2018-03-11 01:07:34','123575432',63,3),
(4,20.000000000,'2018-03-11 01:07:34','135476763',64,4),
(5,20.000000000,'2018-03-11 01:07:34','557563243',65,5),
(6,20.000000000,'2018-03-11 01:07:34','123536787',66,1),
(7,20.000000000,'2018-03-11 01:07:34','458366987',67,2),
(8,20.000000000,'2018-03-11 01:07:34','454543546',68,3),
(9,20.000000000,'2018-03-11 01:07:34','456781231',69,4),
(10,20.000000000,'2018-03-11 01:07:34','789630123',70,5),
(11,40.000000000,'2018-03-11 01:08:00','123456789',61,1),
(12,40.000000000,'2018-03-11 01:08:00','987654321',62,2),
(13,60.000000000,'2018-03-11 01:08:00','123575432',63,3),
(14,10.000000000,'2018-03-11 01:08:00','135476763',64,4),
(15,30.000000000,'2018-03-11 01:08:00','557563243',65,5),
(16,20.000000000,'2018-03-11 01:08:00','123536787',66,1),
(17,5.000000000,'2018-03-11 01:08:00','458366987',67,2),
(18,10.000000000,'2018-03-11 01:08:00','454543546',68,3),
(19,3.000000000,'2018-03-11 01:08:00','456781231',69,4),
(20,2.000000000,'2018-03-11 01:08:00','789630123',70,5);

/*Table structure for table `speed_limit_threshold` */

DROP TABLE IF EXISTS `speed_limit_threshold`;

CREATE TABLE `speed_limit_threshold` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ordinal_number` int(11) NOT NULL,
  `Speed_limit_threshold_value` int(10) unsigned NOT NULL,
  `Tariff_plane_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Speed_limit_threshold_Tarrif_plan1_idx` (`Tariff_plane_Id`),
  KEY `I_TariffPlaneOrdinalNumber` (`Tariff_plane_Id`,`Ordinal_number`),
  CONSTRAINT `fk_Speed_limit_threshold_Tarrif_plan1` FOREIGN KEY (`Tariff_plane_Id`) REFERENCES `tariff_plane` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `speed_limit_threshold` */

insert  into `speed_limit_threshold`(`Id`,`Ordinal_number`,`Speed_limit_threshold_value`,`Tariff_plane_Id`) values 
(1,1,10,10),
(2,1,20,11),
(3,2,1,11),
(4,1,30,12),
(5,2,10,12),
(6,1,60,13),
(7,2,15,13),
(8,1,10,14),
(9,2,10,14),
(10,1,25,15),
(11,2,10,15),
(12,1,50,16),
(13,2,10,16),
(14,1,10,17),
(15,1,8,18);

/*Table structure for table `tariff_plane` */

DROP TABLE IF EXISTS `tariff_plane`;

CREATE TABLE `tariff_plane` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Debit_period` int(10) unsigned NOT NULL,
  `Limit` int(11) NOT NULL,
  `Day_traffic_count` int(11) NOT NULL,
  `Night_traffic_count` int(11) NOT NULL,
  `Deactivated` tinyint(1) NOT NULL DEFAULT '0',
  `Traffic_unit_cost` decimal(18,9) NOT NULL,
  `Description` text NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT '0',
  `Count_debit_per_period` decimal(18,9) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UI_Name` (`Name`),
  KEY `I_Name` (`Name`),
  KEY `I_LimitDeactivated` (`Deactivated`,`Limit`),
  KEY `I_Deleted` (`Deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `tariff_plane` */

insert  into `tariff_plane`(`Id`,`Name`,`Debit_period`,`Limit`,`Day_traffic_count`,`Night_traffic_count`,`Deactivated`,`Traffic_unit_cost`,`Description`,`Deleted`,`Count_debit_per_period`) values 
(10,'Empty',0,1,0,0,0,0.010000000,'This is basic tariff. Enabled when account is created or old tariff was deactivated',0,0.000000000),
(11,'Limit basic',30,1,3000,1000,0,0.005000000,'This is basic limit tariff.',0,12.000000000),
(12,'Limit extend',30,1,6000,2000,0,0.005000000,'This is extend limit tariff.',0,20.000000000),
(13,'Limit super',30,1,10000,5000,0,0.005000000,'This is super limit tariff.',0,35.000000000),
(14,'Unlimit basic',1,0,0,0,0,0.005000000,'This is basic unlimit tariff. Speed: 5 MBit/sec',0,0.400000000),
(15,'Unlimit extend',1,0,0,0,0,0.005000000,'This is extend unlimit tariff. Speed: 15 MBit/sec',0,0.666666666),
(16,'Unlimit super',1,0,10000,5000,0,0.050000000,'This is super unlimit tariff. Speed: 30 MBit/sec',0,2.500000000),
(17,'Econom limit',30,1,1000,500,0,0.000100000,'This is ecomon limit tariff. Traffic unit cost after expiration is reduced.',0,8.000000000),
(18,'Econom unlimit',1,0,0,0,0,0.000100000,'This is ecomon unlimit tariff. Traffic unit cost after expiration is reduced. Speed: 2 MBit/sec',0,0.266666666);

/*Table structure for table `tariff_plane_debit` */

DROP TABLE IF EXISTS `tariff_plane_debit`;

CREATE TABLE `tariff_plane_debit` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime NOT NULL,
  `Count_debit` decimal(18,9) NOT NULL,
  `Tariff_plane_traffic_refill_Id` int(11) DEFAULT NULL,
  `User_Id` int(11) NOT NULL,
  `Tariff_plane_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Tariff_plane_debit_Tariff_plane_traffic_refill1_idx` (`Tariff_plane_traffic_refill_Id`),
  KEY `fk_Tariff_plane_debit_User1_idx` (`User_Id`),
  KEY `fk_Tariff_plane_debit_Tarrif_plane1_idx` (`Tariff_plane_Id`),
  CONSTRAINT `fk_Tariff_plane_debit_Tariff_plane_traffic_refill1` FOREIGN KEY (`Tariff_plane_traffic_refill_Id`) REFERENCES `tariff_plane_traffic_refill` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Tariff_plane_debit_User1` FOREIGN KEY (`User_Id`) REFERENCES `user` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `tariff_plane_debit` */

insert  into `tariff_plane_debit`(`Id`,`Date`,`Count_debit`,`Tariff_plane_traffic_refill_Id`,`User_Id`,`Tariff_plane_Id`) values 
(1,'2018-03-11 01:43:57',12.000000000,1,63,11),
(2,'2018-03-11 01:43:57',12.000000000,2,63,11),
(3,'2018-03-11 01:43:57',0.666666666,3,64,15),
(4,'2018-03-11 01:43:57',0.666666666,4,64,15),
(5,'2018-03-11 01:43:57',0.666666666,5,65,15),
(6,'2018-03-11 01:43:57',0.666666666,6,65,15),
(7,'2018-03-11 01:43:57',0.400000000,7,66,14),
(8,'2018-03-11 01:43:57',0.400000000,8,67,14),
(9,'2018-03-11 01:43:57',0.400000000,9,67,14),
(10,'2018-03-11 01:43:57',0.400000000,10,68,14),
(11,'2018-03-11 01:43:57',0.400000000,11,68,14),
(12,'2018-03-11 01:43:57',2.500000000,12,69,16),
(13,'2018-03-11 01:43:57',2.500000000,13,69,16),
(14,'2018-03-11 01:43:57',2.500000000,14,70,16),
(15,'2018-03-11 01:43:57',2.500000000,15,70,16),
(16,'2018-03-11 01:43:57',8.000000000,16,70,17),
(17,'2018-03-11 01:43:57',8.000000000,17,70,17),
(18,'2018-03-12 01:45:56',0.666666666,18,64,15),
(19,'2018-03-12 01:45:56',0.666666666,19,64,15),
(20,'2018-03-12 01:45:56',0.666666666,20,65,15),
(21,'2018-03-12 01:45:56',0.666666666,21,65,15),
(22,'2018-03-12 01:45:56',0.400000000,22,66,14),
(23,'2018-03-12 01:45:56',0.400000000,23,67,14),
(24,'2018-03-12 01:45:56',0.400000000,24,67,14),
(25,'2018-03-12 01:45:56',0.400000000,25,68,14),
(26,'2018-03-12 01:45:56',0.400000000,26,68,14),
(27,'2018-03-12 01:45:56',2.500000000,27,69,16),
(28,'2018-03-12 01:45:56',2.500000000,28,69,16),
(29,'2018-03-12 01:45:56',2.500000000,29,70,16),
(30,'2018-03-12 01:45:56',2.500000000,30,70,16);

/*Table structure for table `tariff_plane_disable` */

DROP TABLE IF EXISTS `tariff_plane_disable`;

CREATE TABLE `tariff_plane_disable` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Disable_date` datetime NOT NULL,
  `Tariff_plane_disable_reason_Id` int(11) NOT NULL,
  `Tariff_plane_enable_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Tariff_plane_disable_Tariff_plane_disable_reason1_idx` (`Tariff_plane_disable_reason_Id`),
  KEY `fk_Tariff_plane_disable_Tariff_plane_enable1_idx` (`Tariff_plane_enable_Id`),
  CONSTRAINT `fk_Tariff_plane_disable_Tariff_plane_disable_reason1` FOREIGN KEY (`Tariff_plane_disable_reason_Id`) REFERENCES `tariff_plane_disable_reason` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Tariff_plane_disable_Tariff_plane_enable1` FOREIGN KEY (`Tariff_plane_enable_Id`) REFERENCES `tariff_plane_enable` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `tariff_plane_disable` */

insert  into `tariff_plane_disable`(`Id`,`Disable_date`,`Tariff_plane_disable_reason_Id`,`Tariff_plane_enable_Id`) values 
(1,'2018-03-11 01:00:23',1,21),
(2,'2018-03-11 01:00:23',2,22),
(3,'2018-03-11 01:00:23',3,23),
(4,'2018-03-11 01:00:23',4,24),
(5,'2018-03-11 01:00:23',1,25),
(6,'2018-03-11 01:00:23',2,26),
(7,'2018-03-11 01:00:23',3,27),
(8,'2018-03-11 01:00:23',4,28),
(9,'2018-03-11 01:00:23',1,29),
(10,'2018-03-11 01:00:23',2,30),
(11,'2018-03-11 01:00:23',3,31);

/*Table structure for table `tariff_plane_disable_reason` */

DROP TABLE IF EXISTS `tariff_plane_disable_reason`;

CREATE TABLE `tariff_plane_disable_reason` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Description` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tariff_plane_disable_reason` */

insert  into `tariff_plane_disable_reason`(`Id`,`Name`,`Description`) values 
(1,'User','Disabled by user'),
(2,'Admin','Disabled by admin'),
(3,'System','Disabled by system'),
(4,'Other','Other');

/*Table structure for table `tariff_plane_enable` */

DROP TABLE IF EXISTS `tariff_plane_enable`;

CREATE TABLE `tariff_plane_enable` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Enable_date` datetime NOT NULL,
  `Tariff_plane_Id` int(11) NOT NULL,
  `Tariff_plane_disable_Id` int(11) DEFAULT NULL,
  `Account_Id` int(11) NOT NULL,
  `Last_traffic_refill_Id` int(11) DEFAULT NULL,
  `Speed_limit_threshold_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Tariff_plan_enable_Tarrif_plan1_idx` (`Tariff_plane_Id`),
  KEY `fk_Tariff_plane_enable_Tariff_plane_disable1_idx` (`Tariff_plane_disable_Id`),
  KEY `fk_Tariff_plane_enable_Account1_idx` (`Account_Id`),
  KEY `I_AccountTariffPlaneDisable` (`Account_Id`,`Tariff_plane_disable_Id`),
  KEY `fk_Tariff_plane_enable_Tariff_plane_traffic_refill1_idx` (`Last_traffic_refill_Id`),
  KEY `fk_Tariff_plane_enable_Speed_limit_threshold1_idx` (`Speed_limit_threshold_Id`),
  CONSTRAINT `fk_Tariff_plan_enable_Tarrif_plan1` FOREIGN KEY (`Tariff_plane_Id`) REFERENCES `tariff_plane` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Tariff_plane_enable_Account1` FOREIGN KEY (`Account_Id`) REFERENCES `account` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Tariff_plane_enable_Speed_limit_threshold1` FOREIGN KEY (`Speed_limit_threshold_Id`) REFERENCES `speed_limit_threshold` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tariff_plane_enable_Tariff_plane_disable1` FOREIGN KEY (`Tariff_plane_disable_Id`) REFERENCES `tariff_plane_disable` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_Tariff_plane_enable_Tariff_plane_traffic_refill1` FOREIGN KEY (`Last_traffic_refill_Id`) REFERENCES `tariff_plane_traffic_refill` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `tariff_plane_enable` */

insert  into `tariff_plane_enable`(`Id`,`Enable_date`,`Tariff_plane_Id`,`Tariff_plane_disable_Id`,`Account_Id`,`Last_traffic_refill_Id`,`Speed_limit_threshold_Id`) values 
(21,'2018-03-11 00:56:00',10,1,1,NULL,1),
(22,'2018-03-11 00:56:00',10,2,2,NULL,1),
(23,'2018-03-11 00:56:00',11,3,3,NULL,2),
(24,'2018-03-11 00:56:00',15,4,4,NULL,10),
(25,'2018-03-11 00:56:00',15,5,5,NULL,10),
(26,'2018-03-11 00:56:00',14,6,6,NULL,8),
(27,'2018-03-11 00:56:00',14,7,7,NULL,8),
(28,'2018-03-11 00:56:00',14,8,8,NULL,8),
(29,'2018-03-11 00:56:00',16,9,9,NULL,12),
(30,'2018-03-11 00:56:00',16,10,10,NULL,12),
(31,'2018-03-11 00:56:00',17,11,11,NULL,14),
(32,'2018-03-11 01:00:49',10,NULL,1,NULL,1),
(33,'2018-03-11 01:00:49',10,NULL,2,NULL,1),
(34,'2018-03-11 01:00:49',11,NULL,3,NULL,2),
(35,'2018-03-11 01:00:49',15,NULL,4,NULL,10),
(36,'2018-03-11 01:00:49',15,NULL,5,NULL,10),
(37,'2018-03-11 01:00:49',14,NULL,6,NULL,8),
(38,'2018-03-11 01:00:49',14,NULL,7,NULL,8),
(39,'2018-03-11 01:00:49',14,NULL,8,NULL,8),
(40,'2018-03-11 01:00:49',16,NULL,9,NULL,12),
(41,'2018-03-11 01:00:49',16,NULL,10,NULL,12),
(42,'2018-03-11 01:00:49',17,NULL,11,NULL,14);

/*Table structure for table `tariff_plane_traffic_refill` */

DROP TABLE IF EXISTS `tariff_plane_traffic_refill`;

CREATE TABLE `tariff_plane_traffic_refill` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime NOT NULL,
  `Count_traffic_day` int(11) NOT NULL,
  `Count_traffic_night` int(11) NOT NULL,
  `Tariff_plane_debit_Id` int(11) NOT NULL,
  `Tariff_plane_Id` int(11) NOT NULL,
  `Account_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Tariff_plane_traffic_refill_Tariff_plane_debit1_idx` (`Tariff_plane_debit_Id`),
  KEY `fk_Tariff_plane_traffic_refill_Tarrif_plane1_idx` (`Tariff_plane_Id`),
  KEY `fk_Tariff_plane_traffic_refill_Account1_idx` (`Account_Id`),
  KEY `I_AccountDate` (`Account_Id`,`Date`),
  CONSTRAINT `fk_Tariff_plane_traffic_refill_Account1` FOREIGN KEY (`Account_Id`) REFERENCES `account` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tariff_plane_traffic_refill_Tariff_plane_debit1` FOREIGN KEY (`Tariff_plane_debit_Id`) REFERENCES `tariff_plane_debit` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tariff_plane_traffic_refill_Tarrif_plane1` FOREIGN KEY (`Tariff_plane_Id`) REFERENCES `tariff_plane` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `tariff_plane_traffic_refill` */

insert  into `tariff_plane_traffic_refill`(`Id`,`Date`,`Count_traffic_day`,`Count_traffic_night`,`Tariff_plane_debit_Id`,`Tariff_plane_Id`,`Account_Id`) values 
(1,'2018-03-11 01:59:57',3000,1000,1,11,3),
(2,'2018-03-11 01:59:57',3000,1000,2,11,3),
(3,'2018-03-11 01:59:57',0,0,3,15,4),
(4,'2018-03-11 01:59:57',0,0,4,15,4),
(5,'2018-03-11 01:59:57',0,0,5,15,5),
(6,'2018-03-11 01:59:57',0,0,6,15,5),
(7,'2018-03-11 01:59:57',0,0,7,14,6),
(8,'2018-03-11 01:59:57',0,0,8,14,7),
(9,'2018-03-11 01:59:57',0,0,9,14,7),
(10,'2018-03-11 01:59:57',0,0,10,14,8),
(11,'2018-03-11 01:59:57',0,0,11,14,8),
(12,'2018-03-11 01:59:57',10000,5000,12,16,9),
(13,'2018-03-11 01:59:57',10000,5000,13,16,9),
(14,'2018-03-11 01:59:57',10000,5000,14,16,10),
(15,'2018-03-11 01:59:57',10000,5000,15,16,10),
(16,'2018-03-11 01:59:57',1000,500,16,17,11),
(17,'2018-03-11 01:59:57',1000,500,17,17,11),
(18,'2018-03-12 02:03:27',0,0,18,15,4),
(19,'2018-03-12 02:03:27',0,0,19,15,4),
(20,'2018-03-12 02:03:27',0,0,20,15,5),
(21,'2018-03-12 02:03:27',0,0,21,15,5),
(22,'2018-03-12 02:03:27',0,0,22,14,6),
(23,'2018-03-12 02:03:27',0,0,23,14,7),
(24,'2018-03-12 02:03:27',0,0,24,14,7),
(25,'2018-03-12 02:03:27',0,0,25,14,8),
(26,'2018-03-12 02:03:27',0,0,26,14,8),
(27,'2018-03-12 02:03:27',10000,5000,27,16,9),
(28,'2018-03-12 02:03:27',10000,5000,28,16,9),
(29,'2018-03-12 02:03:27',10000,5000,29,16,10),
(30,'2018-03-12 02:03:27',10000,5000,30,16,10);

/*Table structure for table `traffic_account` */

DROP TABLE IF EXISTS `traffic_account`;

CREATE TABLE `traffic_account` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Count_traffic_day_in` int(10) unsigned NOT NULL,
  `Count_traffic_night_in` int(10) unsigned NOT NULL,
  `Count_traffic_day_out` int(10) unsigned NOT NULL,
  `Count_traffic_night_out` int(10) unsigned NOT NULL,
  `Account_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Traffic_account_Account1_idx` (`Account_Id`),
  KEY `I_Date` (`Date`),
  KEY `I_AccountDate` (`Date`,`Account_Id`),
  CONSTRAINT `fk_Traffic_account_Account1` FOREIGN KEY (`Account_Id`) REFERENCES `account` (`Id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `traffic_account` */

insert  into `traffic_account`(`Id`,`Date`,`Count_traffic_day_in`,`Count_traffic_night_in`,`Count_traffic_day_out`,`Count_traffic_night_out`,`Account_Id`) values 
(1,'2018-03-11',10,0,10,0,1),
(2,'2018-03-11',10,0,10,0,2),
(3,'2018-03-11',10,0,10,0,3),
(4,'2018-03-11',10,0,10,0,4),
(5,'2018-03-11',10,0,10,0,5),
(6,'2018-03-11',10,0,10,0,6),
(7,'2018-03-11',10,0,10,0,7),
(8,'2018-03-11',10,0,10,0,8),
(9,'2018-03-11',10,0,10,0,9),
(10,'2018-03-11',10,0,10,0,10),
(11,'2018-03-11',10,0,10,0,11),
(12,'2018-03-12',10,20,15,5,1),
(13,'2018-03-12',10,20,15,5,2),
(14,'2018-03-12',10,20,15,5,3),
(15,'2018-03-12',10,20,15,5,4),
(16,'2018-03-12',10,20,15,5,5),
(17,'2018-03-12',10,20,15,5,6),
(18,'2018-03-12',10,20,15,5,7),
(19,'2018-03-12',10,20,15,5,8),
(20,'2018-03-12',10,20,15,5,9),
(21,'2018-03-12',10,20,15,5,10),
(22,'2018-03-12',10,20,15,5,11);

/*Table structure for table `traffic_package` */

DROP TABLE IF EXISTS `traffic_package`;

CREATE TABLE `traffic_package` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Traffic_amount_day` int(10) unsigned NOT NULL,
  `Traffic_amount_night` int(11) NOT NULL,
  `Cost` decimal(18,9) NOT NULL,
  `Deactivated` tinyint(1) NOT NULL DEFAULT '0',
  `Deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UI_Name` (`Name`),
  KEY `I_Deactivated` (`Deactivated`),
  KEY `I_Deleted` (`Deleted`),
  KEY `I_Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `traffic_package` */

insert  into `traffic_package`(`Id`,`Name`,`Description`,`Traffic_amount_day`,`Traffic_amount_night`,`Cost`,`Deactivated`,`Deleted`) values 
(1,'Basic day','This is basic day traffic package. Traffic day: 500',500,0,2.000000000,0,0),
(2,'Basic night','This is basic night traffic package. Traffic night: 500',0,500,1.500000000,0,0),
(3,'Basic','This is basic traffic package. Traffic day: 500. Traffic night: 500',500,500,4.000000000,0,0),
(4,'Extend day','This is extend day traffic package. Traffic day: 1500',1500,0,4.500000000,0,0),
(5,'Extend night','This is extend night traffic package. Traffic night: 1500',0,1500,3.500000000,0,0),
(6,'Extend','This is extend traffic package. Traffic day: 1500. Traffic night: 1500',1500,1500,9.000000000,0,0),
(7,'Super day','This is super day traffic package. Traffic day: 4500',4500,0,10.000000000,0,0),
(8,'Super night','This is super night traffic package. Traffic night: 4500',0,4500,8.500000000,0,0),
(9,'Super','This is super traffic package. Traffic day: 4500. Traffic night: 4500',1500,1500,16.500000000,0,0),
(10,'Econom','This is econom traffic package. Traffic day: 250. Traffic night: 100',250,100,1.300000000,0,0);

/*Table structure for table `traffic_package_refill` */

DROP TABLE IF EXISTS `traffic_package_refill`;

CREATE TABLE `traffic_package_refill` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime NOT NULL,
  `Count_traffic_day` int(11) NOT NULL,
  `Count_traffic_night` int(11) NOT NULL,
  `Trafic_package_debit_Id` int(11) NOT NULL,
  `Traffic_package_Id` int(11) NOT NULL,
  `Account_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Traffic_package_refill_Trafic_package_debit1_idx` (`Trafic_package_debit_Id`),
  KEY `fk_Traffic_package_refill_Traffic_package1_idx` (`Traffic_package_Id`),
  KEY `fk_Traffic_package_refill_Account1_idx` (`Account_Id`),
  KEY `I_AccountDate` (`Account_Id`,`Date`),
  CONSTRAINT `fk_Traffic_package_refill_Account1` FOREIGN KEY (`Account_Id`) REFERENCES `account` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Traffic_package_refill_Traffic_package1` FOREIGN KEY (`Traffic_package_Id`) REFERENCES `traffic_package` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Traffic_package_refill_Trafic_package_debit1` FOREIGN KEY (`Trafic_package_debit_Id`) REFERENCES `trafic_package_debit` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `traffic_package_refill` */

insert  into `traffic_package_refill`(`Id`,`Date`,`Count_traffic_day`,`Count_traffic_night`,`Trafic_package_debit_Id`,`Traffic_package_Id`,`Account_Id`) values 
(1,'2018-03-11 01:20:23',500,0,1,1,1),
(2,'2018-03-11 01:20:23',0,500,2,2,2),
(3,'2018-03-11 01:20:23',500,500,3,3,3),
(4,'2018-03-11 01:20:23',1500,0,4,4,4),
(5,'2018-03-11 01:20:23',0,1500,5,5,5),
(6,'2018-03-11 01:20:23',1500,1500,6,6,6),
(7,'2018-03-11 01:20:23',4500,0,7,7,7),
(8,'2018-03-11 01:20:23',0,4500,8,8,8),
(9,'2018-03-11 01:20:23',4500,4500,9,9,9),
(10,'2018-03-11 01:20:23',250,100,10,10,10),
(11,'2018-03-11 01:21:01',500,0,11,1,1),
(12,'2018-03-11 01:21:01',0,500,12,2,2),
(13,'2018-03-11 01:21:01',500,500,13,3,3),
(14,'2018-03-11 01:21:01',1500,0,14,4,4),
(15,'2018-03-11 01:21:01',0,1500,15,5,5),
(16,'2018-03-11 01:21:01',1500,1500,16,6,6),
(17,'2018-03-11 01:21:01',4500,0,17,7,7),
(18,'2018-03-11 01:21:01',0,4500,18,8,8),
(19,'2018-03-11 01:21:01',4500,4500,19,9,9),
(20,'2018-03-11 01:21:01',250,100,20,10,10);

/*Table structure for table `trafic_package_debit` */

DROP TABLE IF EXISTS `trafic_package_debit`;

CREATE TABLE `trafic_package_debit` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime NOT NULL,
  `Count_debit` decimal(18,9) NOT NULL,
  `Traffic_package_refill_Id` int(11) DEFAULT NULL,
  `Traffic_package_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Trafic_package_debit_Traffic_package_refill1_idx` (`Traffic_package_refill_Id`),
  KEY `fk_Trafic_package_debit_Traffic_package1_idx` (`Traffic_package_Id`),
  KEY `fk_Trafic_package_debit_User1_idx` (`User_Id`),
  KEY `I_UserDate` (`User_Id`,`Date`),
  CONSTRAINT `fk_Trafic_package_debit_Traffic_package1` FOREIGN KEY (`Traffic_package_Id`) REFERENCES `traffic_package` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Trafic_package_debit_Traffic_package_refill1` FOREIGN KEY (`Traffic_package_refill_Id`) REFERENCES `traffic_package_refill` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_Trafic_package_debit_User1` FOREIGN KEY (`User_Id`) REFERENCES `user` (`Id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `trafic_package_debit` */

insert  into `trafic_package_debit`(`Id`,`Date`,`Count_debit`,`Traffic_package_refill_Id`,`Traffic_package_Id`,`User_Id`) values 
(1,'2018-03-11 01:15:36',2.000000000,NULL,1,61),
(2,'2018-03-11 01:15:36',1.500000000,NULL,2,62),
(3,'2018-03-11 01:15:36',4.000000000,NULL,3,63),
(4,'2018-03-11 01:15:36',4.500000000,NULL,4,64),
(5,'2018-03-11 01:15:36',3.500000000,NULL,5,65),
(6,'2018-03-11 01:15:36',9.000000000,NULL,6,66),
(7,'2018-03-11 01:15:36',10.000000000,NULL,7,67),
(8,'2018-03-11 01:15:36',8.500000000,NULL,8,68),
(9,'2018-03-11 01:15:36',16.500000000,NULL,9,69),
(10,'2018-03-11 01:15:36',1.300000000,NULL,10,70),
(11,'2018-03-11 01:16:07',2.000000000,NULL,1,61),
(12,'2018-03-11 01:16:07',1.500000000,NULL,2,62),
(13,'2018-03-11 01:16:07',4.000000000,NULL,3,63),
(14,'2018-03-11 01:16:07',4.500000000,NULL,4,64),
(15,'2018-03-11 01:16:07',3.500000000,NULL,5,65),
(16,'2018-03-11 01:16:07',9.000000000,NULL,6,66),
(17,'2018-03-11 01:16:07',10.000000000,NULL,7,67),
(18,'2018-03-11 01:16:07',8.500000000,NULL,8,68),
(19,'2018-03-11 01:16:07',16.500000000,NULL,9,69),
(20,'2018-03-11 01:16:07',1.300000000,NULL,10,70);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Login` varchar(100) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Email_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `Current_balance` decimal(18,9) NOT NULL,
  `Blocked` tinyint(1) NOT NULL DEFAULT '0',
  `Time_creation` datetime NOT NULL,
  `User_role_ID` int(11) NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT '0',
  `Last_visit_time` datetime NOT NULL,
  `Phone_number` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UI_Login` (`Login`),
  KEY `fk_User_User_role1_idx` (`User_role_ID`),
  KEY `I_LoginEmail` (`Login`,`Email`),
  KEY `I_Blocked` (`Blocked`),
  KEY `I_Deleted` (`Deleted`),
  KEY `I_PhoneNumber` (`Phone_number`),
  CONSTRAINT `fk_User_User_role1` FOREIGN KEY (`User_role_ID`) REFERENCES `user_role` (`ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`Id`,`Login`,`Password`,`Email`,`Email_confirmed`,`Current_balance`,`Blocked`,`Time_creation`,`User_role_ID`,`Deleted`,`Last_visit_time`,`Phone_number`) values 
(61,'Codename4774','lolkeklol','codename4774@mail.ru',0,0.000000000,0,'2018-03-10 23:59:50',2,0,'2018-03-11 04:59:50','+375292972134'),
(62,'Codename47','lolkeklolkek','codename47@mail.ru',1,0.000000000,0,'2018-03-10 23:59:50',2,0,'2018-03-11 04:59:50','+375292972133'),
(63,'AdminIvan','lol','adminIval@mail.ru',1,0.000000000,0,'2018-03-10 23:59:50',3,0,'2018-03-11 03:59:50','+375291232134'),
(64,'SuperAdminSlava','superlolkeklol','superadminslava@mail.ru',1,0.000000000,0,'2018-03-10 23:59:50',4,0,'2018-03-11 00:59:50','+375292971234'),
(65,'SuperAdminVlad','superlolkeklolkek','superadminvlad@mail.ru',1,0.000000000,0,'2018-03-10 23:59:50',4,0,'2018-03-11 00:59:50','+375332971234'),
(66,'IAmAwesomeUser','awesomelolkeklol','awesomeemail@mail.ru',1,0.000000000,0,'2018-03-10 23:59:50',2,0,'2018-03-11 04:59:50','+375292971255'),
(67,'TopSecretAdmin','topsecretpass','topsecret@gmail.com',0,0.000000000,0,'2018-03-10 23:59:50',3,0,'2018-03-11 04:59:50','+375292971244'),
(68,'TopSecretUser','topsecretpass','topsecret@mail.ru',1,0.000000000,0,'2018-03-10 23:59:50',2,0,'2018-03-11 04:59:50','+375332971244'),
(69,'TopSecretSuperAdmin','topsecretpass','topsecretmail@gmail.com',1,0.000000000,0,'2018-03-10 23:59:50',4,0,'2018-03-11 04:59:50','+375252971244'),
(70,'JustUser','topsecretpass','justmail@gmail.com',1,0.000000000,0,'2018-03-10 23:59:50',2,0,'2018-03-11 04:59:50','+375292971222');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Access_indentificator` int(11) NOT NULL,
  `Description` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UI_AccessIdentificatior` (`Access_indentificator`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`ID`,`Name`,`Access_indentificator`,`Description`) values 
(1,'Guest',0,'This is guest. He has access to the news portal only'),
(2,'User',1,'This is user. He has access to his account, + access rights of Guest'),
(3,'Administrator',2,'This is admin. He has access to the user\'s accounts, to the admin interface. He cannot create other admins. + access rights of Guest'),
(4,'Super administrator',3,'This is super admin. He can create other admin + access rights of Admin ');

/* Trigger structure for table `tariff_plane_disable` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Tariff_plane_disable_AFTER_INSERT` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `Tariff_plane_disable_AFTER_INSERT` AFTER INSERT ON `tariff_plane_disable` FOR EACH ROW BEGIN
	UPDATE Tariff_plane_enable AS TPE 
		SET TPE.Tariff_plane_disable_Id = NEW.Id 
		WHERE TPE.Id = NEW.Tariff_plane_enable_Id 
        LIMIT 1;
END */$$


DELIMITER ;

/* Trigger structure for table `tariff_plane_enable` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Tariff_plane_enable_BEFORE_INSERT` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `Tariff_plane_enable_BEFORE_INSERT` BEFORE INSERT ON `tariff_plane_enable` FOR EACH ROW BEGIN
	DECLARE msg VARCHAR(255);
    IF EXISTS(SELECT * 
				FROM Tariff_plane_enable AS TPE 
                WHERE (TPE.Id = NEW.Account_Id AND TPE.Tariff_plane_disable_Id IS NOT NULL)
                LIMIT 1) THEN
        set msg = "Error: cannot enable tariff because tariff is already enabled to this account";
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
    END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `tariff_plane_enable` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Tariff_plane_enable_AFTER_INSERT` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `Tariff_plane_enable_AFTER_INSERT` AFTER INSERT ON `tariff_plane_enable` FOR EACH ROW BEGIN
	UPDATE Account AS A 
		SET A.Tariff_plane_Id = NEW.Tariff_plane_Id 
        WHERE A.Id = NEW.Account_Id 
        LIMIT 1;
END */$$


DELIMITER ;

/* Trigger structure for table `tariff_plane_traffic_refill` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Tariff_plane_traffic_refill_AFTER_INSERT` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `Tariff_plane_traffic_refill_AFTER_INSERT` AFTER INSERT ON `tariff_plane_traffic_refill` FOR EACH ROW BEGIN
	UPDATE Tariff_plane_debit AS TPD 
		SET TPD.Tariff_plane_traffic_refill_Id = NEW.Id 
        WHERE TPD.Id = NEW.Tariff_plane_debit_Id 
        LIMIT 1;
    UPDATE Tariff_plane_enable AS TPE 
		SET TPE.Last_Traffic_refill_ID = NEW.Id 
		WHERE (TPE.Id = NEW.Account_Id) AND (TPE.Tariff_plane_disable_Id IS NULL)
		LIMIT 1;
END */$$


DELIMITER ;

/* Procedure structure for procedure `sp_SetNextSpeedThreshold` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_SetNextSpeedThreshold` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SetNextSpeedThreshold`(
	p_accountID INT(11)
    )
BEGIN
	DECLARE currTariffPlaneEnable INT(11);
	DECLARE currThreshold INT(11);
    DECLARE nextThreshold INT(11);
    DECLARE currTariffPlane INT(11);
    DECLARE msg VARCHAR(255);
    
    SELECT TPE.Speed_limit_threshold_Id, TPE.Tariff_plane_Id, TPE.Id 
		INTO currThreshold, currTariffPlane, currTariffPlaneEnable 
        FROM Tariff_plane_enable AS TPE 
        WHERE (TPE.Account_Id = p_accountId) AND (TPE.Tariff_plane_disable_Id IS NOT NULL) 
        LIMIT 1;
    SELECT SLT.Ordinal_number 
		INTO @currOrdinalNumber 
        FROM Speed_limit_threshold AS SLT 
        WHERE SLT.Id = currThreshold LIMIT 1;
    SELECT SLT.Id 
		INTO nextThreshold 
        FROM Speed_limit_threshold AS SLT 
        WHERE (SLT.Tariff_plane_Id = currTariffPlane) AND (SLT.Ordinal_number = @currOrdinalNumber + 1);
    IF ( nextThreshold IS NULL ) THEN
		SELECT TP.`Name` 
			INTO @tariffName 
            FROM Tariff_plane AS TP 
            WHERE TP.Id = currTariffPlane
            LIMIT 1;
		SET msg = CONCAT("Error: cannot find speed limit threshold with ordinal number ", @currOrdinalNumber, 
						 ", tariff plane: ", @tariffName
                         );
		SELECT msg;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;
	ELSE
    	UPDATE Tariff_plane_enable AS TPE 
			SET TPE.Speed_limit_threshold_Id = nextThreshold 
            WHERE TPE.Id = currTariffPlane;
		SELECT "0";
    END IF;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
