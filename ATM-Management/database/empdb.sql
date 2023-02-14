-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 03:41 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountID` int(11) NOT NULL,
  `Username` varchar(11) NOT NULL,
  `Password` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountID`, `Username`, `Password`) VALUES
(200331, 'berks', 'berk1234'),
(0, 'admin', 'admin'),
(456389, 'johns', 'john1234'),
(420064, 'Oliver', '9999999'),
(453850, 'deneme', '1234567'),
(619230, 'NEW', '1111111'),
(305774, 'Brian', '2222222'),
(630631, 'Jennifer', '8080808'),
(5, 'Barrack', '4124125'),
(703825, 'Obarack', '2523626');

-- --------------------------------------------------------

--
-- Table structure for table `bankdb`
--

CREATE TABLE `bankdb` (
  `accountID` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `SIN` int(7) NOT NULL,
  `birthdate` varchar(10) NOT NULL,
  `balleft` int(10) NOT NULL,
  `balright` int(5) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `lastactivity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankdb`
--

INSERT INTO `bankdb` (`accountID`, `name`, `lastname`, `SIN`, `birthdate`, `balleft`, `balright`, `currency`, `lastactivity`) VALUES
(200331, 'Demo', 'Customer 2', 1234567, '22-02-1995', 4392, 77, 'CAD', 'Mon May 09 21:05:11 EDT 2016'),
(456389, 'Demo', 'Customer', 1891751, '11-04-1977', 513262, 11, 'USD', 'Tue Feb 14 21:40:39 ICT 2023'),
(0, 'admin', 'admin', 0, '00-00-0000', 0, 0, 'NA', 'NA'),
(420064, 'Oliver', 'Young', 9999999, '22-11-1992', 139899, 33, 'USD', 'Wed May 11 00:18:46 EDT 2016'),
(453850, 'Ricardinho', 'Oliveria', 1234567, '11-12-1991', 12415, 141, 'RUPI', 'none'),
(619230, 'NEW', 'NEW', 1111111, '22-01-1992', 15151, 141, 'CAD', 'none'),
(305774, 'Brian', 'Foster', 2222222, '11-02-1992', 87687, 1213, 'USD', 'none'),
(630631, 'Jennifer', 'Lopez', 8080808, '13-13-1333', 21111031, 11123, 'EUR', 'Wed May 11 01:25:01 EDT 2016'),
(5, 'Barrack', 'Obama', 4124125, '11-04-1965', 1782641421, 1414, 'USD', 'none'),
(703825, 'Obarack', 'Burama', 2523626, '11-04-1952', 3525235, 1414, 'USD', 'none');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `UserID` (`accountID`);

--
-- Indexes for table `bankdb`
--
ALTER TABLE `bankdb`
  ADD PRIMARY KEY (`accountID`),
  ADD UNIQUE KEY `accountID` (`accountID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703826;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
