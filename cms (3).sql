-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 09:18 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '18-10-2016 04:18:16'),
(2, 'Akshay', '12345', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Academic', 'Academic', '2021-11-30 06:36:42', ''),
(4, 'Unacademic', 'Unacademic', '2021-11-30 06:37:01', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(5, 22, 'closed', 'we will take neccessery action', '2021-12-01 05:49:44'),
(6, 23, 'in process', 'fffy', '2021-12-01 07:21:28'),
(7, 23, 'closed', 'ddf', '2021-12-01 07:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `departmentName` varchar(255) NOT NULL,
  `departmentDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `departmentName`, `departmentDescription`, `postingDate`, `updationDate`) VALUES
(8, 'Bca', 'Bca', '2021-11-30 06:46:33', ''),
(9, 'Geology', 'Geology', '2021-11-30 06:48:15', ''),
(11, 'B.com Taxation ', 'B.com Taxation', '2021-11-30 06:50:01', ''),
(12, 'B.com Taxation ', 'B.com Taxation', '2021-11-30 07:01:13', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 3, 'Teaching', '2021-11-30 06:38:22', ''),
(4, 3, 'Fees', '2021-11-30 06:39:55', ''),
(5, 3, 'Students', '2021-11-30 06:42:10', ''),
(6, 3, 'Chairman committy', '2021-11-30 06:42:37', ''),
(7, 4, 'College Bus', '2021-11-30 06:42:48', ''),
(8, 4, 'Canteen', '2021-11-30 06:43:38', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 1, 1, 'E-wllaet', 'General Query', 'BTL', 'test demo', 'test demo test demo test demotest demotest demotest demotest demotest demotest demotest demotest demo', NULL, '2017-03-30 16:52:40', 'in process', '2017-03-31 16:06:17'),
(2, 1, 1, 'Online SHopping', 'General Query', 'BTL', 'testing', 'sample text for demo', '', '2017-03-30 17:05:56', 'in process', '2017-04-01 17:29:19'),
(3, 1, 1, 'Online SHopping', ' Complaint', 'BTL', 'ferwekt lwentgwewt', 'wetwetwe', '', '2017-03-30 17:07:51', 'in process', '2017-05-02 15:57:43'),
(4, 1, 1, 'E-wllaet', 'General Query', 'CTW', 'lkdlsfklsdf', 'fdsf,msd,f  f f', '2. Compendium Selected Paper.doc', '2017-03-30 17:13:14', 'closed', '2017-03-31 16:06:22'),
(5, 1, 1, 'E-wllaet', ' Complaint', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:14:55', NULL, '0000-00-00 00:00:00'),
(6, 1, 1, 'E-wllaet', ' Complaint', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:20:16', NULL, '0000-00-00 00:00:00'),
(7, 1, 1, 'E-wllaet', ' Complaint', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:20:56', NULL, '0000-00-00 00:00:00'),
(8, 1, 1, 'E-wllaet', ' Complaint', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:23:05', NULL, '0000-00-00 00:00:00'),
(9, 1, 1, 'E-wllaet', ' Complaint', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:25:09', 'in process', '2017-04-01 18:38:00'),
(10, 1, 1, 'E-wllaet', ' Complaint', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2017-03-30 17:27:24', NULL, '0000-00-00 00:00:00'),
(11, 1, 1, 'Online SHopping', 'General Query', 'CTW', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:36:32', NULL, '0000-00-00 00:00:00'),
(12, 1, 1, 'Online SHopping', 'General Query', 'CTW', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:37:09', NULL, '0000-00-00 00:00:00'),
(13, 1, 1, 'Online SHopping', 'General Query', 'CTW', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2017-03-30 17:39:57', NULL, '0000-00-00 00:00:00'),
(14, 1, 1, 'Online SHopping', ' Complaint', 'CTW', 'vcxvxcvxcv', 'cvcx', 'doctorslog.sql', '2017-03-30 17:41:19', NULL, '0000-00-00 00:00:00'),
(15, 1, 1, 'E-wllaet', 'General Query', 'BTL', 'dsfsd', 'fsdfsdf', '', '2017-03-30 17:42:38', NULL, '0000-00-00 00:00:00'),
(16, 1, 1, 'E-wllaet', 'General Query', 'BTL', 'dsfsd', 'fsdfsdf', '', '2017-03-31 01:54:07', NULL, '0000-00-00 00:00:00'),
(17, 5, 1, 'E-wllaet', ' Complaint', 'fsdfs', 'regarding refund', 'test test', '', '2017-06-11 10:57:49', NULL, '0000-00-00 00:00:00'),
(18, 5, 1, 'Online SHopping', ' Complaint', 'abcd', 'yhytr', 'rtytry', 'About Us.docx', '2017-06-11 11:08:47', NULL, '0000-00-00 00:00:00'),
(19, 6, 1, 'Online SHopping', ' Complaint', 'abcd', 'regarding refund', 'Test@123 dfds fsd fs gs gsd g sg g g sgstwerwe ewtw tw', 'About Us.docx', '2017-06-11 11:15:24', 'closed', '2017-06-11 11:18:33'),
(20, 8, 4, 'College Bus', 'General Query', 'Bca', 'dgsfgs', 'hjdgsggsjd', 'CyberrCriminalFeatured.png', '2021-11-30 07:00:48', NULL, '0000-00-00 00:00:00'),
(21, 8, 3, 'Fees', ' Complaint', 'Bca', 'dfdssr', 'gsrgeereh', '', '2021-12-01 05:38:09', NULL, '0000-00-00 00:00:00'),
(22, 8, 3, 'Teaching', ' Complaint', 'Bca', 'about teaching format', 'Dear sir, The teaching format of Abin joseph was ', '', '2021-12-01 05:44:03', 'closed', '2021-12-01 05:49:44'),
(23, 8, 4, 'Select Subcategory', ' Complaint', 'Bca', 'ygbuh', 'ghkj', '', '2021-12-01 07:20:30', 'closed', '2021-12-01 07:22:11'),
(24, 2, 4, 'Select Subcategory', ' Complaint', 'Bca', 'ygbuh', 'ghkj', '', '2021-12-01 07:21:46', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(28, 8, 'akhilshaji123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-30 06:34:39', '30-11-2021 12:05:58 PM', 1),
(29, 8, 'akhilshaji123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-11-30 06:58:40', '', 1),
(30, 0, 'akshayrajar174@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-01 05:35:55', '', 0),
(31, 8, 'akhilshaji123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-01 05:36:18', '01-12-2021 11:36:48 AM', 1),
(32, 8, 'akhilshaji123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-01 06:23:14', '', 1),
(33, 8, 'akhilshaji123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-01 07:06:13', '01-12-2021 12:36:38 PM', 1),
(34, 8, 'akhilshaji123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-01 07:19:21', '', 1),
(35, 8, 'akhilshaji123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-01 07:22:38', '', 1),
(36, 8, 'akhilshaji123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-02 07:29:00', '', 1),
(37, 8, 'akhilshaji123@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-02 08:12:48', '02-12-2021 01:46:14 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(8, 'Akhil shaji', 'akhilshaji123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 7902278206, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:41:52', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
