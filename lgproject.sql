-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.20 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for lgproject
DROP DATABASE IF EXISTS `lgproject`;
CREATE DATABASE IF NOT EXISTS `lgproject` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lgproject`;


-- Dumping structure for table lgproject.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) NOT NULL,
  `admin_email` varchar(60) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_email` (`admin_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table lgproject.admin: ~0 rows (approximately)
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
	(1, '', 'fahri@mail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
	(2, '', 'elva@xmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Dumping structure for table lgproject.line
DROP TABLE IF EXISTS `line`;
CREATE TABLE IF NOT EXISTS `line` (
  `id_line` varchar(50) NOT NULL,
  `nama_line` varchar(50) DEFAULT NULL,
  `plan_line` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_line`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lgproject.line: ~19 rows (approximately)
DELETE FROM `line`;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` (`id_line`, `nama_line`, `plan_line`) VALUES
	('ln1', 'Line 1', 300),
	('ln10', 'Line 10', NULL),
	('ln11', 'Line 11', NULL),
	('ln12', 'Line 12', NULL),
	('ln13', 'Line 13', NULL),
	('ln14', 'Line 14', NULL),
	('ln15', 'Line 15', NULL),
	('ln16', 'Line 16', NULL),
	('ln17', 'Line 17', NULL),
	('ln18', 'Line 18', NULL),
	('ln19', 'Line 19', NULL),
	('ln2', 'Line 2', 142),
	('ln3', 'Line 3', 320),
	('ln4', 'Line 4', NULL),
	('ln5', 'Line 5', NULL),
	('ln6', 'Line 6', NULL),
	('ln7', 'Line 7', NULL),
	('ln8', 'Line 8', NULL),
	('ln9', 'Line 9', NULL);
/*!40000 ALTER TABLE `line` ENABLE KEYS */;


-- Dumping structure for table lgproject.line_model
DROP TABLE IF EXISTS `line_model`;
CREATE TABLE IF NOT EXISTS `line_model` (
  `id_ln_model` int(11) NOT NULL AUTO_INCREMENT,
  `id_line` varchar(50) NOT NULL DEFAULT '0',
  `id_model` varchar(50) DEFAULT '0',
  `ct` double NOT NULL DEFAULT '0',
  `actual` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ln_model`),
  KEY `FK_line_model_line` (`id_line`),
  KEY `FK_line_model_model` (`id_model`),
  CONSTRAINT `FK_line_model_line` FOREIGN KEY (`id_line`) REFERENCES `line` (`id_line`) ON UPDATE CASCADE,
  CONSTRAINT `FK_line_model_model` FOREIGN KEY (`id_model`) REFERENCES `model` (`id_model`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

-- Dumping data for table lgproject.line_model: ~91 rows (approximately)
DELETE FROM `line_model`;
/*!40000 ALTER TABLE `line_model` DISABLE KEYS */;
INSERT INTO `line_model` (`id_ln_model`, `id_line`, `id_model`, `ct`, `actual`) VALUES
	(1, 'ln1', 'TDCC-G151F(M)-F', 11.2, 1),
	(3, 'ln1', 'TDFQ-G031D-F', 31.3, 3),
	(4, 'ln1', 'TDFR-B036F-F', 35.1, 2),
	(5, 'ln1', 'TDFR-C155D-F', 34.6, 1),
	(6, 'ln1', 'TDJK-T101F.IXS', 14.8, 5),
	(9, 'ln1', 'TDJK-T151F.IXS', 14.8, 30),
	(11, 'ln1', 'TDJM-C301D.IXM', 12.9, 2),
	(12, 'ln1', 'TDJM-C351D.IXM', 12.9, 0),
	(13, 'ln1', 'TDJM-G101D.IXM', 10.4, 30),
	(14, 'ln1', 'TDJM-G101D.IXS', 18.8, 0),
	(15, 'ln1', 'TDJM-G251D.IXM', 10.4, 0),
	(16, 'ln1', 'TDJM-H151F.IXS', 23.1, 0),
	(17, 'ln1', 'TDJM-K101F.IXM', 12.4, 0),
	(18, 'ln1', 'TDJW-B251F.IXS', 33.3, 0),
	(20, 'ln1', 'TDJW-J201F.IXS', 43.3, 0),
	(21, 'ln1', 'TDQA-S501F-F', 22.2, 0),
	(22, 'ln1', 'TDQS-A901F-F', 32.1, 0),
	(23, 'ln1', 'TDSB-H031F-F', 23.9, 0),
	(24, 'ln1', 'TDSE-G051D-F', 34.8, 0),
	(25, 'ln1', 'TDSE-G251D.IXS', 23.9, 6),
	(26, 'ln1', 'TDSE-H051F(N)-F', 34.7, 33),
	(27, 'ln1', 'TDSE-H251F.IXS', 23.9, 0),
	(28, 'ln1', 'TDSL-G251D-F', 23.4, 0),
	(29, 'ln1', 'TDSL-G252D-F', 24.7, 0),
	(30, 'ln1', 'TDSL-G352D-F', 33.3, 0),
	(31, 'ln1', 'TDSL-G551D.IXS', 33.6, 4),
	(32, 'ln1', 'TDSN-B001F-F', 18.8, 0),
	(33, 'ln1', 'TDSP-H051F-F', 25.1, 0),
	(34, 'ln1', 'TDSQ-G605D-F', 13.4, 0),
	(35, 'ln1', 'TDSS-G201D(M)-F', 14.1, 0),
	(38, 'ln1', 'TDSS-H201F(M)-F', 14.1, 8),
	(39, 'ln1', 'TDSS-H751F.IXS', 27.5, 0),
	(40, 'ln1', 'TDST-H080F.IXS', 25.4, 0),
	(41, 'ln1', 'TDST-H820F.IXS', 20.7, 0),
	(42, 'ln2', 'TAFJ-Z002D(T)-F', 31.5, 1),
	(43, 'ln2', 'TAFT-H005F-F', 9.8, 0),
	(44, 'ln2', 'TDCC-G151F(M)-F', 13.7, 0),
	(45, 'ln2', 'TDFQ-G031D-F', 31.3, 44),
	(46, 'ln2', 'TDFR-B036F-F', 35.1, 0),
	(47, 'ln2', 'TDFR-C155D-F', 34.6, 3),
	(48, 'ln2', 'TDJK-T101F.IXS', 14.8, 7),
	(49, 'ln2', 'TDJK-T151F.IXS', 14.8, 9),
	(50, 'ln2', 'TDJM-C301D.IXM', 12.9, 3),
	(51, 'ln2', 'TDJM-C351D.IXM', 12.9, 0),
	(52, 'ln2', 'TDJM-G101D.IXM', 10.4, 2),
	(53, 'ln2', 'TDJM-G101D.IXS', 18.1, 1),
	(54, 'ln2', 'TDJM-G251D.IXM', 10.4, 11),
	(55, 'ln2', 'TDJM-H151F.IXS', 23.1, 54),
	(56, 'ln2', 'TDJM-K101F.IXM', 12.4, 32),
	(57, 'ln2', 'TDJW-B251F.IXS', 33.3, 66),
	(58, 'ln2', 'TDJW-J201F.IXS', 43.3, 0),
	(59, 'ln2', 'TDQA-S501F-F', 22.2, 2),
	(60, 'ln2', 'TDQS-A901F-F', 32.1, 0),
	(61, 'ln2', 'TDSB-H031F-F', 23.9, 0),
	(62, 'ln2', 'TDSE-G051D-F', 34.8, 76),
	(63, 'ln2', 'TDSE-G251D.IXS', 23.9, 0),
	(64, 'ln2', 'TDSE-H051F(N)-F', 34.7, 3),
	(65, 'ln2', 'TDSE-H251F.IXS', 23.9, 0),
	(66, 'ln2', 'TDSL-G251D-F', 23.4, 0),
	(67, 'ln2', 'TDSL-G252D-F', 24.7, 3),
	(68, 'ln2', 'TDSL-G352D-F', 33.3, 0),
	(69, 'ln2', 'TDSL-G551D.IXS', 33.6, 0),
	(70, 'ln2', 'TDSN-B001F-F', 18.8, 0),
	(71, 'ln2', 'TDSP-H051F-F', 25.1, 0),
	(72, 'ln2', 'TDSQ-G605D-F', 14.1, 0),
	(73, 'ln2', 'TDSS-G201D(M)-F', 14.1, 0),
	(74, 'ln2', 'TDSS-H201F(M)-F', 14.1, 0),
	(75, 'ln2', 'TDSS-H751F.IXS', 27.5, 0),
	(76, 'ln2', 'TDST-H080F.IXS', 25.4, 0),
	(77, 'ln2', 'TDST-H820F.IXS', 20.7, 0),
	(78, 'ln2', 'TDTD-V036F-F', 26.9, 0),
	(79, 'ln2', 'TDTD-V056F-F', 26.9, 0),
	(80, 'ln2', 'TDTR-T035F-F', 32.8, 0),
	(81, 'ln2', 'TDTR-T055F-F', 26.8, 0),
	(82, 'ln2', 'TDTR-T056F-F', 28.9, 0),
	(83, 'ln2', 'TDVJ-H001F-F', 26.5, 0),
	(84, 'ln2', 'TDVJ-H101F-F', 22, 0),
	(85, 'ln2', 'TMMB-H001P-F', 16.5, 0),
	(86, 'ln2', 'TMMB-H005F-F', 18.2, 0),
	(87, 'ln2', 'TMMB-H701F-F', 21, 0),
	(88, 'ln3', 'TAFT-H005F-F', 0, 0),
	(89, 'ln4', 'TAFJ-Z002D(T)-F', 0, 0),
	(90, 'ln5', 'TAFJ-Z002D(T)-F', 0, 0),
	(92, 'ln6', 'TAFJ-Z002D(T)-F', 0, 0),
	(93, 'ln7', 'TAFJ-Z002D(T)-F', 0, 0),
	(94, 'ln8', 'TAFJ-Z002D(T)-F', 0, 0),
	(95, 'ln9', 'TAFJ-Z002D(T)-F', 0, 0),
	(96, 'ln10', 'TAFJ-Z002D(T)-F', 0, 0),
	(97, 'ln11', 'TAFJ-Z002D(T)-F', 0, 0),
	(98, 'ln12', 'TAFJ-Z002D(T)-F', 0, 0),
	(99, 'ln13', 'TAFJ-Z002D(T)-F', 0, 0),
	(100, 'ln14', 'TAFJ-Z002D(T)-F', 0, 0),
	(101, 'ln15', 'TAFJ-Z002D(T)-F', 0, 0),
	(102, 'ln16', 'TAFJ-Z002D(T)-F', 0, 0),
	(103, 'ln17', 'TAFJ-Z002D(T)-F', 0, 0),
	(104, 'ln18', 'TAFJ-Z002D(T)-F', 0, 0),
	(105, 'ln19', 'TAFJ-Z002D(T)-F', 0, 0);
/*!40000 ALTER TABLE `line_model` ENABLE KEYS */;


-- Dumping structure for table lgproject.line_output
DROP TABLE IF EXISTS `line_output`;
CREATE TABLE IF NOT EXISTS `line_output` (
  `id_output` int(11) NOT NULL AUTO_INCREMENT,
  `id_line` varchar(50) NOT NULL DEFAULT '0',
  `plan_output` int(11) NOT NULL DEFAULT '0',
  `actual_output` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_output`),
  KEY `FK_line_output_line` (`id_line`),
  CONSTRAINT `FK_line_output_line` FOREIGN KEY (`id_line`) REFERENCES `line` (`id_line`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lgproject.line_output: ~0 rows (approximately)
DELETE FROM `line_output`;
/*!40000 ALTER TABLE `line_output` DISABLE KEYS */;
/*!40000 ALTER TABLE `line_output` ENABLE KEYS */;


-- Dumping structure for table lgproject.model
DROP TABLE IF EXISTS `model`;
CREATE TABLE IF NOT EXISTS `model` (
  `id_model` varchar(50) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `m/m` int(11) DEFAULT NULL,
  `I_by_1` int(11) NOT NULL,
  `process` int(11) DEFAULT NULL,
  `array` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table lgproject.model: ~142 rows (approximately)
DELETE FROM `model`;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` (`id_model`, `type`, `m/m`, `I_by_1`, `process`, `array`) VALUES
	('TAEA-G045D-M', 'MM', 112, 21, 1, 2),
	('TAEA-H009F-M', 'MM', 110, 21, 1, 2),
	('TAFJ-Z002D(T)-F', 'I by 1', 0, 236, 1, 2),
	('TAFT-H005F-F', 'I by 1', 0, 215, 2, 4),
	('TDCC-G051F(A)-M', 'MM', 134, 71, 1, 3),
	('TDCC-G151F(M)-F', 'MM', 134, 71, 1, 3),
	('TDFQ-G031D-F', 'I by 1', 0, 161, 1, 3),
	('TDFR-B036F-F', 'I by 1', 0, 300, 2, 4),
	('TDFR-C155D-F', 'I by 1', 0, 310, 2, 4),
	('TDJH-G101D.IXM', 'MM', 34, 31, 2, 12),
	('TDJH-G101D.IXS', 'I by 1', 0, 65, 2, 12),
	('TDJH-G102D.IXM', 'MM', 27, 34, 2, 12),
	('TDJH-H101F.IXM', 'MM', 34, 31, 2, 12),
	('TDJH-H101F.IXS', 'I by 1', 0, 65, 2, 12),
	('TDJH-H251F.IXM', 'MM', 36, 31, 2, 12),
	('TDJK-T101F.IXM', 'MM', 33, 52, 2, 4),
	('TDJK-T101F.IXS', 'I by 1', 0, 85, 2, 4),
	('TDJK-T151F.IXM', 'MM', 0, 85, 2, 4),
	('TDJK-T151F.IXS', 'I by 1', 33, 52, 2, 4),
	('TDJM-B201F.IXM', 'MM', 70, 59, 2, 4),
	('TDJM-B202F.IXM', 'MM', 65, 64, 2, 4),
	('TDJM-C301D.IXM', 'MM', 41, 85, 2, 4),
	('TDJM-C351D.IXM', 'MM', 41, 85, 2, 4),
	('TDJM-G101D.IXM', 'MM', 121, 42, 2, 4),
	('TDJM-G101D.IXS', 'I by 1', 0, 163, 2, 4),
	('TDJM-G105D.IXM', 'MM', 74, 33, 2, 4),
	('TDJM-G251D.IXM', 'MM', 119, 42, 2, 4),
	('TDJM-G255D.IXS', 'I by 1', 0, 105, 2, 4),
	('TDJM-H151F.IXS', 'I by 1', 0, 130, 2, 4),
	('TDJM-K101F.IXM', 'MM', 41, 86, 2, 4),
	('TDJM-K151F.IXM', 'MM', 41, 86, 2, 4),
	('TDJW-A152D.IXS', 'I by 1', 0, 190, 2, 4),
	('TDJW-B251F.IXS', 'I by 1', 0, 212, 2, 4),
	('TDJW-J201F.IXS', 'I by 1', 0, 298, 2, 4),
	('TDJW-K152F.IXS', 'I by 1', 0, 228, 2, 4),
	('TDQA-S501F-F', 'I by 1', 0, 45, 1, 8),
	('TDQS-A701F-F', 'I by 1', 0, 31, 1, 12),
	('TDQS-A751F-F', 'I by 1', 0, 31, 1, 12),
	('TDQS-A801F-F', 'I by 1', 0, 45, 1, 12),
	('TDQS-A901F-F', 'I by 1', 0, 44, 1, 12),
	('TDQV-P003F-M', 'I by 1', 0, 94, 1, 4),
	('TDSA-G320D.IXS', 'I by 1', 0, 60, 1, 8),
	('TDSA-G370D.IXS', 'I by 1', 0, 60, 1, 8),
	('TDSB-H031F-F', 'I by 1', 0, 137, 1, 3),
	('TDSE-G051D-F', 'I by 1', 0, 70, 1, 8),
	('TDSE-G251D.IXS', 'I by 1', 0, 61, 1, 8),
	('TDSE-H051F(N)-F', 'I by 1', 0, 69, 1, 8),
	('TDSE-H251F.IXS', 'I by 1', 0, 61, 1, 8),
	('TDSH-G501D(B)-F', 'I by 1', 0, 64, 2, 12),
	('TDSH-T070F-F.IXS', 'I by 1', 0, 53, 2, 12),
	('TDSJ-G121D-F', 'I by 1', NULL, 0, NULL, NULL),
	('TDSK-T021F-F', 'I by 1', NULL, 0, NULL, NULL),
	('TDSL-G251D-F', 'I by 1', 0, 106, 1, 4),
	('TDSL-G252D-F', 'I by 1', 0, 101, 1, 4),
	('TDSL-G352D-F', 'I by 1', 0, 163, 1, 4),
	('TDSL-G551D.IXS', 'I by 1', 0, 179, 1, 4),
	('TDSN-B001F-F', 'I by 1', 0, 93, 2, 6),
	('TDSP-G051D-F', 'I by 1', 0, 95, 1, 4),
	('TDSP-H051F-F', 'I by 1', 0, 95, 1, 4),
	('TDSQ-G501D(B)-F', 'I by 1', 0, 71, 2, 6),
	('TDSQ-G601D(B)-F', 'I by 1', 0, 127, 2, 6),
	('TDSQ-G605D-F', 'I by 1', 0, 75, 2, 6),
	('TDSQ-G651D(B)-F', 'I by 1', 0, 127, 2, 6),
	('TDSQ-G755D(B).IXS', 'I by 1', 0, 82, 2, 6),
	('TDSS-G101D(B).IXM', 'MM', 25, 14, 1, 12),
	('TDSS-G201D(M)-F', 'MM', 24, 12, 1, 12),
	('TDSS-G232D(T).IXM', 'MM', 22, 25, 1, 12),
	('TDSS-G551D-F.IXM', 'MM', 26, 13, 1, 12),
	('TDSS-H201F(M)-F', 'MM', 24, 14, 1, 12),
	('TDSS-H501F(B).IXM', 'MM', 26, 13, 1, 12),
	('TDSS-H551F(B)-F', 'I by 1', 0, 39, 1, 12),
	('TDSS-H701F.IXM', 'MM', 14, 23, 1, 12),
	('TDSS-H751F.IXS', 'I by 1', 0, 37, 1, 12),
	('TDST-H080F.IXS', 'I by 1', 0, 46, 1, 12),
	('TDST-H820F.IXS', 'I by 1', 0, 28, 1, 12),
	('TDST-H830F.IXS', 'I by 1', 0, 30, 1, 12),
	('TDST-H880F-F', 'I by 1', 0, 30, 1, 12),
	('TDSY-G230D-F.IXM', 'MM', 26, 12, 1, 12),
	('TDSY-G330D.IXM', 'MM', 25, 12, 1, 12),
	('TDSY-G380D.IXM', 'MM', 25, 12, 1, 12),
	('TDSY-G430D-F', 'I by 1', 0, 32, 1, 12),
	('TDSY-G480D-F', 'I by 1', 0, 32, 1, 12),
	('TDSY-G720D.IXS', 'I by 1', 0, 43, 1, 12),
	('TDSY-H380F.IXM', 'MM', 25, 12, 1, 12),
	('TDTD-V036F-F', 'I by 1', 0, 258, 2, 4),
	('TDTD-V056F-F', 'I by 1', 0, 258, 2, 4),
	('TDTJ-S132D-F', 'I by 1', 0, 190, 1, 2),
	('TDTR-T035F-F', 'I by 1', 0, 255, 2, 4),
	('TDTR-T055F-F', 'I by 1', 0, 255, 2, 4),
	('TDTR-T056F-F', 'I by 1', 0, 251, 2, 4),
	('TDVJ-H001F-F', 'I by 1', 0, 205, 1, 2),
	('TDVJ-H101F-F', 'I by 1', 0, 188, 1, 2),
	('TDVR-H751F-F', 'I by 1', 0, 245, 2, 2),
	('TMMB-H001P-F', 'I by 1', 0, 210, 2, 2),
	('TMMB-H005F-F', 'I by 1', 0, 263, 2, 2),
	('TMMB-H501P-F', 'I by 1', 0, 271, 2, 2),
	('TMMB-H701F-F', 'I by 1', 0, 298, 2, 2),
	('TWCM-B001D-H.IXM AT/ AL', 'MM', 33, 96, 2, 4),
	('TWCM-B001D-H.IXS AT  ', 'I by 1', NULL, 129, 2, 4),
	('TWCM-K002D-F AL', 'I by 1', NULL, 0, NULL, NULL),
	('TWCM-K002D-F AT', 'I by 1', NULL, 0, NULL, NULL),
	('TWCM-M006D-F.IXS AL', 'I by 1', 0, 45, 2, 6),
	('TWCM-M006D-F.IXS AT', 'I by 1', 0, 64, 2, 6),
	('TWFM-B003D-H AL', 'I by 1', 0, 59, 2, 6),
	('TWFM-B003D-H AT', 'I by 1', 0, 36, 2, 6),
	('TWFM-B005D-H AL', 'I by 1', 0, 52, 1, 8),
	('TWFM-B005D-H AT', 'I by 1', 0, 56, 1, 8),
	('TWFM-B006D-F AL', 'I by 1', 0, 62, 2, 8),
	('TWFM-B006D-F AT', 'I by 1', 0, 30, 2, 8),
	('TWFM-B007D-F.IXS AL', 'I by 1', 0, 61, 2, 8),
	('TWFM-B007D-F.IXS AT', 'I by 1', 0, 30, 2, 8),
	('TWFM-B008D-F.IXS AL', 'I by 1', 0, 60, 2, 8),
	('TWFM-B008D-F.IXS AT', 'I by 1', 0, 30, 2, 8),
	('TWFM-B009D-F AL', 'I by 1', 0, 47, 2, 12),
	('TWFM-B009D-F AT', 'I by 1', 0, 43, 2, 12),
	('TWFM-B015D-H.IXS AL', 'I by 1', 0, 52, 2, 8),
	('TWFM-B015D-H.IXS AT', 'I by 1', 0, 52, 2, 8),
	('TWFM-B200D-H.IXS AL', 'I by 1', 0, 87, 2, 4),
	('TWFM-B200D-H.IXS AT', 'I by 1', 0, 41, 2, 4),
	('TWFM-B205D-H.IXS AL', 'I by 1', 0, 75, 2, 8),
	('TWFM-B205D-H.IXS AT', 'I by 1', 0, 43, 2, 8),
	('TWFM-K301D-F.IXS AT', 'I by 1', 0, 62, 2, 10),
	('TWFM-K303D-F.IXS AL', 'I by 1', 0, 2, 2, 12),
	('TWFM-K303D-F.IXS AT', 'I by 1', 0, 70, 2, 12),
	('TWFM-K311D-F AL', 'I by 1', NULL, 0, NULL, NULL),
	('TWFM-K311D-F AT', 'I by 1', NULL, 0, NULL, NULL),
	('TWFM-L001D-F.IXS AL', 'I by 1', 0, 59, 2, 6),
	('TWFM-L001D-F.IXS AT', 'I by 1', 0, 29, 2, 6),
	('TWFM-L002D-F.IXS AL', 'I by 1', 0, 65, 2, 8),
	('TWFM-L002D-F.IXS AT', 'I by 1', 0, 29, 2, 8),
	('TWFM-L006D-F.IXS AL', 'I by 1', 0, 13, 2, 6),
	('TWFM-L006D-F.IXS AT', 'I by 1', 0, 85, 2, 6),
	('TWFM-L103D-F.IXS AL', 'I by 1', 0, 20, 2, 10),
	('TWFM-L103D-F.IXS AT', 'I by 1', 0, 63, 2, 10),
	('TWFM-L302D(A)-F AL', 'I by 1', NULL, 0, NULL, 6),
	('TWFM-L302D(A)-F AT', 'I by 1', NULL, 0, NULL, 6),
	('TWFM-L302D(E)-F.IXS AL', 'I by 1', 0, 29, 2, 6),
	('TWFM-L302D(E)-F.IXS AT', 'I by 1', 0, 52, 2, 6),
	('TWFM-L302D-F AL', 'I by 1', 0, 29, 2, 6),
	('TWFM-L302D-F AT', 'I by 1', 0, 51, 2, 6),
	('TWFMKB304D-F AL', 'I by 1', 0, 45, 2, 6),
	('TWFMKB304D-F AT', 'I by 1', 0, 43, 2, 6);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
