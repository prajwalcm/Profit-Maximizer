-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2019 at 12:39 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `profitmaximization70`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocatedcloud`
--

CREATE TABLE IF NOT EXISTS `allocatedcloud` (
  `id` int(10) NOT NULL,
  `user` int(10) NOT NULL DEFAULT '0',
  `config_id` int(10) NOT NULL DEFAULT '0',
  `request_id` int(10) NOT NULL DEFAULT '0',
  `cspcloud_id` int(10) NOT NULL DEFAULT '0',
  `Memory` varchar(50) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allocatedcloud`
--

INSERT INTO `allocatedcloud` (`id`, `user`, `config_id`, `request_id`, `cspcloud_id`, `Memory`, `status`) VALUES
(50, 18, 1, 51, 7, '300', 'Accept'),
(51, 11, 1, 52, 1, '0', 'Reject');

-- --------------------------------------------------------

--
-- Table structure for table `cspcloud`
--

CREATE TABLE IF NOT EXISTS `cspcloud` (
  `id` int(10) NOT NULL,
  `user` varchar(30) DEFAULT NULL,
  `instance` varchar(30) DEFAULT NULL,
  `vCPU` varchar(20) DEFAULT NULL,
  `memory` varchar(20) DEFAULT NULL,
  `ResearvPrice` varchar(30) DEFAULT NULL,
  `ResearvTime` varchar(30) DEFAULT NULL,
  `timeslot` varchar(30) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `rp` varchar(30) DEFAULT NULL,
  `ft` varchar(30) DEFAULT NULL,
  `lt` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cspcloud`
--

INSERT INTO `cspcloud` (`id`, `user`, `instance`, `vCPU`, `memory`, `ResearvPrice`, `ResearvTime`, `timeslot`, `ip`, `rp`, `ft`, `lt`) VALUES
(1, '1', 'INST103', '10', '1000', '210', '6', '2', '100', '210', '7', '7'),
(7, '1', 'INST102', '5', '300', NULL, NULL, '1', '110', '220', '3', '6'),
(101, '1', 'INST101', '10', '500', '210', '8', '3', '200', '420', '8', '8');

-- --------------------------------------------------------

--
-- Table structure for table `custagent`
--

CREATE TABLE IF NOT EXISTS `custagent` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `custagent`
--

INSERT INTO `custagent` (`id`, `user`, `password`) VALUES
(1, 'agent', 'a'),
(2, 'agent1', 'a1');

-- --------------------------------------------------------

--
-- Table structure for table `custrequest`
--

CREATE TABLE IF NOT EXISTS `custrequest` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `Storage` int(10) DEFAULT NULL,
  `Server_Price` float DEFAULT NULL,
  `New_User_Price` float DEFAULT '0',
  `RAM` int(10) DEFAULT NULL,
  `Duration` varchar(30) DEFAULT NULL,
  `Processor` varchar(200) DEFAULT NULL,
  `confirmation` varchar(200) DEFAULT '0',
  `Server_confirmation` varchar(200) DEFAULT 'no',
  `request_level` varchar(200) DEFAULT 'no',
  `status` varchar(30) DEFAULT '0',
  `AddedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `custrequest`
--

INSERT INTO `custrequest` (`id`, `uid`, `Storage`, `Server_Price`, `New_User_Price`, `RAM`, `Duration`, `Processor`, `confirmation`, `Server_confirmation`, `request_level`, `status`, `AddedDate`) VALUES
(15, 29, 40, 2800, 2912, 23, '4', '2', 'Accept', '1', 'Short-Term', '1', '2016-04-19 15:42:50'),
(21, 34, 10, 1000, 1020, 100, '2', '1', 'Accept', '1', 'Short-Term', '1', '2019-02-06 12:10:58'),
(22, 35, 10, 1000, 1020, 200, '2', '1', 'Accept', '1', 'Short-Term', '1', '2019-02-06 12:45:25'),
(23, 36, 50, 5600, 6048, 10, '8', '2', 'Accept', '1', 'Medium-Term', '1', '2019-02-21 16:32:37'),
(24, 37, 70, 12000, 13440, 200, '12', '3', 'Accept', '1', 'Long-Term', '1', '2019-02-25 12:20:46'),
(25, 38, 40, NULL, 0, 200, '6', '1', '0', 'no', 'Medium-Term', '1', '2019-02-25 17:22:10'),
(26, 38, 40, NULL, 0, 200, '7', '3', '0', 'no', 'Medium-Term', '1', '2019-02-25 17:22:40'),
(27, 38, 90, NULL, 0, 100, '3', '2', '0', 'no', 'Short-Term', '1', '2019-02-25 17:25:33'),
(28, 37, 90, NULL, 0, 40, '5', '1', '0', 'no', 'Medium-Term', '1', '2019-02-25 17:26:52'),
(29, 39, 30, NULL, 0, 200, '12', '1', '0', '0', 'Long-Term', '1', '2019-02-25 17:29:26'),
(30, 39, 20, NULL, 0, 100, '10', '2', '0', 'no', 'Long-Term', '1', '2019-03-18 15:36:36'),
(31, 40, 20, 11000, 12210, 200, '11', '3', 'Accept', '1', 'Long-Term', '1', '2019-03-22 22:30:19'),
(32, 41, 80, 4200, 4452, 100, '6', '2', 'Accept', '1', 'Medium-Term', '1', '2019-03-23 15:14:26'),
(33, 42, 20, 4200, 4452, 100, '6', '2', 'Accept', '1', 'Medium-Term', '1', '2019-03-23 16:37:05'),
(34, 42, 100, 11000, 12210, 200, '11', '3', 'Accept', '1', 'Long-Term', '1', '2019-03-23 17:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE IF NOT EXISTS `owner` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Storage` int(10) NOT NULL DEFAULT '0',
  `RAM` int(10) NOT NULL DEFAULT '0',
  `BandWidth` int(10) NOT NULL DEFAULT '0',
  `Owner` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `Storage`, `RAM`, `BandWidth`, `Owner`) VALUES
(1, 500000, 500, 500000, 'Amazon'),
(2, 1080, 938, 1000000, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `InstanceName` varchar(200) NOT NULL DEFAULT '0',
  `Storage` int(20) NOT NULL DEFAULT '0',
  `RAM` int(20) NOT NULL DEFAULT '0',
  `Processor` varchar(50) NOT NULL DEFAULT '0',
  `Cost` int(20) NOT NULL DEFAULT '0',
  `Owner` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `InstanceName`, `Storage`, `RAM`, `Processor`, `Cost`, `Owner`) VALUES
(1, 'INST101', 1000, 100, '100000', 100000, 'Google'),
(2, 'INST102', 2000, 400, '200000', 200000, 'Google'),
(3, 'INST103', 4000, 800, '400000', 400000, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `processor`
--

CREATE TABLE IF NOT EXISTS `processor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `proc_name` varchar(200) NOT NULL DEFAULT '0',
  `proc_price` float NOT NULL DEFAULT '0',
  `qos` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `processor`
--

INSERT INTO `processor` (`id`, `proc_name`, `proc_price`, `qos`) VALUES
(1, 'Intel Pentium P4', 500, 'low'),
(2, 'Core i3', 700, 'medium'),
(3, 'Core i5', 1000, 'high');

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE IF NOT EXISTS `provider` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id`, `email`, `fname`, `lname`, `password`, `location`, `mobile`) VALUES
(25, 'provider', 'swapnil', 'kumawat', '123', 'Pune', '09960976529'),
(26, 'mahesh@yahoo.com', 'Mahesh', 'Shukla', '123', 'Pune', '09960976529'),
(27, 'anu@gmail.com', 'Anu', 'Pardeshi', '1234', 'Pune', '9090909090'),
(32, 'jagruti@gmail.com', 'Jagruti', 'Bhagwat', '1122', 'pune', '8899007788'),
(33, 'y@gmail.com', 'yy', 'aa', '123', 'pune', '9087876655'),
(34, 'jagruti11@gmail.com', 'j', 'b', '1122', 'p', '9087876655'),
(35, 'bb@gmail.com', 'bb', 'bb', '1122', 'bb', '9087876655'),
(36, 'cc@gmail.com', 'cc', 'cc', '1122', 'p', '9087876655'),
(37, 'm@gmail.com', 'mrunal', 'ss', '1122', 'pune', '9988009988'),
(38, 'y1@gmail.com', 'yash', 'a', '1122', 'pune', '8899008877'),
(39, 's@gmail.com', 'santosh', 'gaikwad', '1122', 'pune', '9087876655');

-- --------------------------------------------------------

--
-- Table structure for table `provider_packages`
--

CREATE TABLE IF NOT EXISTS `provider_packages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Storage` int(10) NOT NULL DEFAULT '0',
  `RAM` int(10) NOT NULL DEFAULT '0',
  `Duration` varchar(50) NOT NULL DEFAULT '0',
  `Price` int(10) NOT NULL DEFAULT '0',
  `Processor` varchar(50) NOT NULL DEFAULT '0',
  `provider_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `provider_packages`
--

INSERT INTO `provider_packages` (`id`, `Storage`, `RAM`, `Duration`, `Price`, `Processor`, `provider_id`) VALUES
(1, 10, 1, '1', 200, 'Core_i3', 25),
(2, 20, 2, '1', 300, 'Core_i3', 25),
(3, 30, 3, '1', 400, 'Core_i3', 25),
(4, 40, 4, '1', 500, 'Core_i3', 25),
(5, 50, 5, '1', 600, 'Core_i3', 25),
(6, 10, 1, '1', 100, 'Intel_Pentium_4', 25);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE IF NOT EXISTS `purchase_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `req_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `AddedDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `nationality` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `fname`, `lname`, `uname`, `password`, `nationality`, `location`, `mobile`, `gender`) VALUES
(11, 'swap@yahoo.com', 'swapnil', 'kumawat', 'swapkumar', '123', 'indian', 'Pune', '9960976529', 'm'),
(23, 'mahesh@yahoo.com', 'Mahesh', 'Shukla', NULL, '123', 'indian', 'Pune', '9999999', 'm'),
(24, 'kumawat.swapnil@gmail.com', 'swapnil', 'kumawat', NULL, '123', 'indian', 'Pune', '09960976529', 'm'),
(25, 'roshni@gmail.com', 'roshni', 'Khajure', NULL, '1234', 'indian', 'Pune', '9090909090', 'f'),
(35, 'gauri@gmail.com', 'Gauri', 'sarje', NULL, '1122', 'indian', 'pune', '8899007766', 'f'),
(36, 'j@gmail.com', 'jj', 'bb', NULL, '123', 'indian', 'pune', '9087876655', 'f'),
(37, 'gauri11@gmail.com', 'g', 's', NULL, '1122', 'indian', 'p', '9988776655', 'm'),
(38, 'aa@gmail.com', 'aa', 'aa', NULL, '1122', 'indian', 'aa', '9087876655', 'm'),
(39, 'abc@gmail.com', 'pp', 'aa', NULL, '1122', 'indian', 'pp', '9087876655', 'm'),
(40, 'gauri.insrc@gmail.com', 'gauris', 'ss', NULL, '1122', 'indian', 'pune', '9900887799', 'm'),
(41, 'aass@gmail.com', 'aa', 'aa', NULL, '1122', 'indian', 'aa', '9087876655', 'm'),
(42, 'raj@gmail.com', 'raj', 'patil', NULL, '1122', 'indian', 'pune', '9988776655', 'f');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
