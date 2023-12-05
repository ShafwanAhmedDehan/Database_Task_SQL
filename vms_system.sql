-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2023 at 06:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vms system`
--

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `id` varchar(100) NOT NULL,
  `licenseid` varchar(100) NOT NULL,
  `issue` date NOT NULL,
  `expair` date NOT NULL,
  `perday` int(10) NOT NULL,
  `permonth` int(10) NOT NULL,
  `status` int(2) NOT NULL,
  `assign` varchar(100) NOT NULL DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `license`
--

INSERT INTO `license` (`id`, `licenseid`, `issue`, `expair`, `perday`, `permonth`, `status`, `assign`) VALUES
('01781550287', '01256962', '2023-04-28', '2027-09-28', 950, 24000, 1, '5'),
('0202', '055285255', '2023-04-04', '2030-04-17', 800, 22500, 0, '5'),
('01790208999', '20424881', '2023-04-29', '2027-07-29', 950, 27000, 0, '5'),
('010101', '220252525', '2023-04-04', '2030-04-17', 850, 23500, 0, '5');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `msg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`id`, `name`) VALUES
('19-39302-1', 'Shafwan Ahmed'),
('20-XXXXX-2', 'Dehan Ahmed'),
('20-44444-1', 'Dehan Ahmed');

-- --------------------------------------------------------

--
-- Table structure for table `uservms`
--

CREATE TABLE `uservms` (
  `emailphn` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `sos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uservms`
--

INSERT INTO `uservms` (`emailphn`, `password`, `fname`, `lname`, `gender`, `nid`, `usertype`, `address`, `sos`) VALUES
('01', '', '', '', '', '', '', '', ''),
('01317810827', 'dehan22', 'Shafwan Ahmed', 'Dehan', '', '', 'Admin', '10/F-4,Mirbagh, dhaka\r\nA-06', '01317810827'),
('01518918373', 'dehan44', 'Sadia islam', 'Zerin', 'Female', '9151618809', 'General User', 'Uttora, Sector-13', '01317810827'),
('01781550287', 'dehan02', 'Shafwan', 'Dehan', 'Male', '08452369', 'Driver', '10-F4/Mirbagh', '01317810827'),
('01790208999', 'dehan04', 'Tanvir', 'Opy', 'Male', '9151618809', 'Driver', '10/F-4, House name: Green Heaven, Mirbag-mor\r\nMoghbazar, Dhaka', ''),
('02', '', '', '', '', '', '', '', ''),
('03', '', '', '', '', '', '', '', ''),
('ahmedsad221999@gmail.com', 'dehan22', 'Dehan', 'Ahmed', 'Male', '524422525', 'General User', '10/F-4, mirbagh', '01317810827');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` varchar(100) NOT NULL,
  `vnumber` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `vnumber`, `type`) VALUES
('012', '123456', 'Car'),
('013', '123696', 'bus'),
('01518918373', '2044731', 'jeep'),
('01518918373', '19393021', 'motorcar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD UNIQUE KEY `UNIQUE` (`licenseid`);

--
-- Indexes for table `uservms`
--
ALTER TABLE `uservms`
  ADD PRIMARY KEY (`emailphn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
