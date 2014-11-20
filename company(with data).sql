-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2014 at 11:21 AM
-- Server version: 5.5.35
-- PHP Version: 5.3.10-1ubuntu3.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jpasample`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE IF NOT EXISTS `Address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`id`, `state`, `number`, `town`) VALUES
(1, 'Michigan', 14, 'Detroit'),
(2, 'Californie', 18, 'Los Angeles'),
(3, 'New-York', 2, 'New-York'),
(4, 'Washington', 8, 'Seattle'),
(5, 'Floride', 7, 'Miami'),
(6, 'Michigan', 78, 'Detroit'),
(7, 'Michigan', 6, 'Detroit'),
(8, 'Michigan', 52, 'Detroit'),
(9, 'Michigan', 74, 'Detroit'),
(10, 'Californie', 96, 'San Francisco'),
(11, 'Michigan', 4, 'Detroit'),
(12, 'Californie', 7, 'San Francisco'),
(13, 'Michigan', 2, 'Detroit'),
(14, 'Californie', 41, 'San Francisco'),
(15, 'Michigan', 32, 'Detroit'),
(16, 'Californie', 81, 'Los Angeles'),
(17, 'Texas', 74, 'Austin'),
(18, 'Californie', 92, 'Los Angeles'),
(19, 'Michigan', 13, 'Detroit'),
(20, 'Californie', 38, 'Los Angeles'),
(21, 'Texas', 46, 'Dallas'),
(22, 'Californie', 15, 'San Francisco');

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE IF NOT EXISTS `Department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`id`, `name`) VALUES
(1, 'Developpement'),
(2, 'R&D'),
(3, 'Production'),
(4, 'Testeurs');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE IF NOT EXISTS `Employee` (
  `statut` varchar(31) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b2uj6gqstji4yr1029cbs0hsv` (`address_id`),
  KEY `FK_lk0a412kck2kdc6slousi528s` (`department_id`),
  KEY `FK_4p6o0ltcblvgj68bnrpfqygq` (`manager_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`statut`, `id`, `firstName`, `lastName`, `salary`, `startDate`, `address_id`, `department_id`, `manager_id`) VALUES
('Manager', 1, 'Kobey', 'Karl', 87000, '2009-04-20 00:00:00', 8, 2, NULL),
('Manager', 2, 'Garvin', 'Edward', 75000, '2013-07-09 00:00:00', 22, 1, NULL),
('Manager', 5, 'Harper', 'John', 150000, '2004-02-26 00:00:00', 21, 3, NULL),
('Employee', 6, 'Petazzoni', 'Giancomo', 36000, '2014-01-13 00:00:00', 20, 3, 5),
('Manager', 12, 'Snowden', 'Edward', 200000, '2012-12-19 00:00:00', 19, 4, NULL),
('Employee', 13, 'Tryce', 'Lars', 27000, '2013-11-18 00:00:00', 18, 4, 12),
('Employee', 14, 'Hirachi', 'Yamamoto', 42000, '2013-03-12 00:00:00', 17, 4, 12),
('Employee', 15, 'Hykkes', 'Solomon', 72000, '2014-02-18 00:00:00', 16, 3, 5),
('Employee', 16, 'Dupont', 'Piere', 200000, '2014-04-01 00:00:00', 15, 1, 2),
('Employee', 17, 'Vieux', 'Victor', 41000, '2012-04-20 00:00:00', 14, 3, 12),
('Employee', 18, 'Porter', 'Damian', 51000, '2005-12-08 00:00:00', 13, 2, 1),
('Employee', 19, 'Roger', 'Emilien', 19500, '2004-02-26 00:00:00', 12, 2, 1),
('Employee', 20, 'Rezad', 'Mohammed', 24000, '2009-02-20 00:00:00', 11, 2, 1),
('Employee', 21, 'Maurice', 'Gérard', 34500, '2014-01-13 00:00:00', 10, 1, NULL),
('Employee', 22, 'Terrance', 'Philippe', 47000, '2010-06-29 00:00:00', 9, 3, 2),
('Employee', 24, 'Petrov', 'Yvan', 32000, '2014-02-18 00:00:00', 7, 1, NULL);

-- --------------------------------------------------------
--
-- Table structure for table `Project`
--

CREATE TABLE IF NOT EXISTS `Project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Project`
--

INSERT INTO `Project` (`id`, `name`) VALUES
(1, 'Cloudunit'),
(2, 'Command Line Interface'),
(3, 'Portail Web'),
(4, 'Hibernate');

--
-- Table structure for table `Employee_phoneNumbers`
--

CREATE TABLE IF NOT EXISTS `Employee_phoneNumbers` (
  `Employee_id` int(11) NOT NULL,
  `phoneNumbers` varchar(255) DEFAULT NULL,
  KEY `FK_sw6lodt7b256b38s6ucdyn7xg` (`Employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee_phoneNumbers`
--

INSERT INTO `Employee_phoneNumbers` (`Employee_id`, `phoneNumbers`) VALUES
(1, '0023125423'),
(1, '0022445533'),
(6, '112235521'),
(15, '11447788552'),
(19, '1524321497'),
(22, '1123542354'),
(6, '1234567891'),
(5, '1122332211'),
(24, '1122334455'),
(22, '11223355442');

-- --------------------------------------------------------

--
-- Table structure for table `Employee_Project`
--

CREATE TABLE IF NOT EXISTS `Employee_Project` (
  `employees_id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL,
  KEY `FK_5q8xj4rq504h1nlheo6exssau` (`projects_id`),
  KEY `FK_85serqn7tjhwk6evp45tw8ul1` (`employees_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee_Project`
--

INSERT INTO `Employee_Project` (`employees_id`, `projects_id`) VALUES
(2, 2),
(2, 3),
(5, 3),
(5, 2),
(6, 2),
(6, 1),
(12, 3),
(22, 1),
(15, 3),
(18, 2),
(18, 1),
(19, 3),
(13, 1),
(21, 1),
(21, 3),
(5, 4),
(19, 4),
(20, 1);

-- --------------------------------------------------------

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `FK_4p6o0ltcblvgj68bnrpfqygq` FOREIGN KEY (`manager_id`) REFERENCES `Employee` (`id`),
  ADD CONSTRAINT `FK_b2uj6gqstji4yr1029cbs0hsv` FOREIGN KEY (`address_id`) REFERENCES `Address` (`id`),
  ADD CONSTRAINT `FK_lk0a412kck2kdc6slousi528s` FOREIGN KEY (`department_id`) REFERENCES `Department` (`id`);

--
-- Constraints for table `Employee_phoneNumbers`
--
ALTER TABLE `Employee_phoneNumbers`
  ADD CONSTRAINT `FK_sw6lodt7b256b38s6ucdyn7xg` FOREIGN KEY (`Employee_id`) REFERENCES `Employee` (`id`);

--
-- Constraints for table `Employee_Project`
--
ALTER TABLE `Employee_Project`
  ADD CONSTRAINT `FK_85serqn7tjhwk6evp45tw8ul1` FOREIGN KEY (`employees_id`) REFERENCES `Employee` (`id`),
  ADD CONSTRAINT `FK_5q8xj4rq504h1nlheo6exssau` FOREIGN KEY (`projects_id`) REFERENCES `Project` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
