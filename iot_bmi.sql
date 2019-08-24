-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2019 at 08:58 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot_bmi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbmi`
--

CREATE TABLE `tblbmi` (
  `id` int(11) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `height` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbmi`
--

INSERT INTO `tblbmi` (`id`, `userId`, `height`, `weight`, `created_by`, `created_at`) VALUES
(1, '40', '40', '0', '2190188', '2019-08-23 21:52:12'),
(2, '40', '40', '0', '2190188', '2019-08-23 22:20:06'),
(3, '123', '180', '75', '2190188', '2019-08-24 13:49:22'),
(4, '123', '180', '75', '2190188', '2019-08-24 17:14:04'),
(5, '123', '180', '75', '2190188', '2019-08-24 17:24:42'),
(6, '123', '180', '75', '2190188', '2019-08-24 17:31:39'),
(7, '123', '180', '75', '2190188', '2019-08-24 17:32:30'),
(8, '238824', '180', '75', '2190188', '2019-08-24 17:53:04'),
(9, '238824', '180', '75', '2190188', '2019-08-24 17:55:16'),
(10, '238824', '180', '75', '2190188', '2019-08-24 17:57:39'),
(11, '238824', '180', '75', '2190188', '2019-08-24 17:58:02'),
(12, '238824', '180', '75', '2190188', '2019-08-24 17:58:14'),
(13, '238824', '180', '75', '2190188', '2019-08-24 17:59:15'),
(14, '238824', '180', '75', '2190188', '2019-08-24 17:59:28'),
(15, '238824', '180', '75', '2190188', '2019-08-24 18:42:04'),
(16, '238824', '180', '75', '2190188', '2019-08-24 18:44:30'),
(17, '238824', '180', '75', '2190188', '2019-08-24 18:44:45'),
(18, '238824', '180', '75', '2190188', '2019-08-24 18:45:34'),
(19, '238824', '180', '75', '2190188', '2019-08-24 18:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblmsg`
--

CREATE TABLE `tblmsg` (
  `seqNo` int(11) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `msgid` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `userId` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `no_telp` varchar(13) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`userId`, `nama`, `email`, `password`, `no_telp`, `created_at`, `updated_at`) VALUES
('238824', 'Budi Nananana', '', 'f190b26d36c9b1a0634442f1d9d85cd6', '087784677280', '2019-08-24 17:00:37', '2019-08-24 17:00:37'),
('432423', 'Sohit', 'sohit@mail.com', NULL, '081388056019', '2019-08-24 00:00:00', '2019-08-24 00:00:00'),
('459823', 'Budi Nananana', '', NULL, '087784677282', '2019-08-24 15:16:41', '2019-08-24 15:16:41'),
('695151', 'Budi Nananana', '', NULL, '081388056019', '2019-08-24 15:17:43', '2019-08-24 15:17:43'),
('879985', 'Budi Nananana', '', NULL, '087784677281', '2019-08-24 14:59:43', '2019-08-24 14:59:43'),
('913259', 'Budi Nananana', '', 'f190b26d36c9b1a0634442f1d9d85cd6', '087784677284', '2019-08-24 18:58:09', '2019-08-24 18:58:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbmi`
--
ALTER TABLE `tblbmi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmsg`
--
ALTER TABLE `tblmsg`
  ADD PRIMARY KEY (`seqNo`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbmi`
--
ALTER TABLE `tblbmi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tblmsg`
--
ALTER TABLE `tblmsg`
  MODIFY `seqNo` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
