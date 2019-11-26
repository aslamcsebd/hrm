-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2019 at 07:39 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Md Admin', 'admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `subject` varchar(100) NOT NULL,
  `application` varchar(500) NOT NULL,
  `status` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `type`, `employee_id`, `full_name`, `date`, `subject`, `application`, `status`) VALUES
(14, 'Leave', '6419', 'Md Aslam 3', '2019-05-17', 'Prayer for leave application', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                        ', 1),
(15, 'Leave', '8247', 'Md Aslam Hossain CTG2', '2019-05-17', 'Prayer for leave application', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                        Lorem ipsum dolor sit amet, consectetu\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                        Lorem ipsum dolor sit amet, consecte', 2),
(16, 'Leave', '6419', 'Md Aslam 3', '2019-05-17', 'leave application', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n            proident, sunt in culpa qui officia deserunt mollit anim id e', 1),
(17, 'Leave', '6419', 'Md Aslam 3', '2019-05-18', 'Prayer for leave application', '111 a\'s', 2),
(23, 'Leave', '5273', 'Md Aslam 1', '2019-05-19', 'Prayer for leave application_1', 'Prayer for leave application_2', 1),
(24, 'Leave', '5273', 'Md Aslam 1', '2019-05-19', 'Prayer for leave application_3', 'Prayer for leave application_3', 2),
(25, 'Leave', '5273', 'Md Aslam 1', '2019-05-19', 'Prayer for leave application_1', 'Prayer for leave application_1', 1),
(26, 'Leave', '5273', 'Md Aslam 1', '2019-05-19', 'Prayer for leave application_1', 'Prayer for leave application_1', 1),
(27, 'Leave', '5273', 'Md Aslam 1', '2019-05-19', 'Prayer for leave application_1', 'Prayer for leave application_1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(30) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `attendance_date` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `full_name`, `attendance_date`, `status`) VALUES
(238, '7449', 'Md Aslam 6', '2019-05-18', 'A'),
(239, '5523', 'Md Aslam 7', '2019-05-18', 'A'),
(240, '10000', 'Md Aslam Hossain22', '2019-05-18', 'A'),
(241, '3306', 'Md Aslam 8', '2019-05-18', 'P'),
(242, '4462', 'Md Aslam 9', '2019-05-18', 'A'),
(243, '8071', 'Md Aslam 10', '2019-05-18', 'A'),
(244, '824711111', 'Md Aslam Hossain CTG2', '2019-05-18', 'A'),
(282, '6419', 'Md Aslam 3', '2019-05-19', 'A'),
(283, '5750', 'Md Aslam Hossain CTG', '2019-05-19', 'A'),
(284, '5273', 'Md Aslam 1', '2019-05-19', 'A'),
(285, '8663', 'Md Aslam 4', '2019-05-19', 'A'),
(286, '8825', 'Md Aslam Hossain2', '2019-05-19', 'A'),
(287, '7449', 'Md Aslam 6', '2019-05-19', 'A'),
(288, '5523', 'Md Aslam 7', '2019-05-19', 'A'),
(289, '10000', 'Md Aslam Hossain22', '2019-05-19', 'A'),
(290, '3306', 'Md Aslam 8', '2019-05-19', 'A'),
(291, '4462', 'Md Aslam 9', '2019-05-19', 'A'),
(292, '8071', 'Md Aslam 10', '2019-05-19', 'A'),
(293, '8247', 'Md Aslam Hossain CTG2', '2019-05-19', 'A'),
(294, '6482', 'Md Aslam Hossain', '2019-05-19', 'A'),
(295, '1599', 'Md Aslam 3', '2019-05-19', 'A'),
(296, '6664', 'Md Aslam 2', '2019-05-19', 'A'),
(297, '9916', 'Md Aslam 2', '2019-05-19', 'A'),
(298, '4572', 'Md Aslam 2', '2019-05-19', 'A'),
(299, '6396', 'Md Aslam 11', '2019-05-19', 'A'),
(300, '8396', 'Md Aslam 2', '2019-05-19', 'A'),
(301, '9999', 'Md Aslam 2', '2019-05-19', 'A'),
(302, '5555', 'Md Aslam 2', '2019-05-19', 'A'),
(303, '6666', 'Md Aslam 2', '2019-05-19', 'A'),
(304, '0001', 'Md Aslam ctg', '2019-05-19', 'A'),
(305, '0001', 'Md Aslam ctg', '2019-05-20', 'P'),
(306, '1599', 'Md Aslam 3', '2019-05-20', 'A'),
(307, '4572', 'Md Aslam 2', '2019-05-20', 'A'),
(331, '6419', 'Md Aslam 3', '2019-05-21', 'A'),
(332, '5750', 'Md Aslam Hossain CTG', '2019-05-21', 'A'),
(333, '5273', 'Md Aslam 1', '2019-05-21', 'A'),
(334, '8663', 'Md Aslam 4', '2019-05-21', 'A'),
(335, '8825', 'Md Aslam Hossain2', '2019-05-21', 'A'),
(336, '7449', 'Md Aslam 6', '2019-05-21', 'A'),
(337, '5523', 'Md Aslam 7', '2019-05-21', 'A'),
(338, '10000', 'Md Aslam Hossain22', '2019-05-21', 'A'),
(339, '3306', 'Md Aslam 8', '2019-05-21', 'A'),
(340, '4462', 'Md Aslam 9', '2019-05-21', 'A'),
(341, '8071', 'Md Aslam 10', '2019-05-21', 'A'),
(342, '8247', 'Md Aslam Hossain CTG2', '2019-05-21', 'A'),
(343, '6482', 'Md Aslam Hossain', '2019-05-21', 'A'),
(344, '1599', 'Md Aslam 3', '2019-05-21', 'A'),
(345, '6664', 'Md Aslam 2', '2019-05-21', 'A'),
(346, '9916', 'Md Aslam 2', '2019-05-21', 'A'),
(347, '4572', 'Md Aslam 2', '2019-05-21', 'A'),
(348, '6396', 'Md Aslam 11', '2019-05-21', 'A'),
(349, '8396', 'Md Aslam 2', '2019-05-21', 'A'),
(350, '9999', 'Md Aslam 2', '2019-05-21', 'A'),
(351, '5555', 'Md Aslam 2', '2019-05-21', 'A'),
(352, '6666', 'Md Aslam 2', '2019-05-21', 'A'),
(353, '0001', 'Md Aslam ctg', '2019-05-21', 'A'),
(354, '3242', 'Md Aslam 2', '2019-05-21', 'A'),
(355, '2667', 'Md Aslam 2', '2019-05-21', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(30) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `mother_name` varchar(30) NOT NULL,
  `birth_day` date NOT NULL,
  `gender` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(30) NOT NULL,
  `education` varchar(200) NOT NULL,
  `present_address` varchar(200) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `job_type` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_id`, `full_name`, `father_name`, `mother_name`, `birth_day`, `gender`, `contact`, `email`, `blood_group`, `education`, `present_address`, `permanent_address`, `password`, `job_type`, `photo`) VALUES
(40, '6419', 'Md Aslam 3', 'Siful Islam', 'Dalia Begum 1', '0000-00-00', 'Male', '016806072932', 'admin@gmail.com', 'O', 'HSC', '                                                                                                                                                                                                        ', '                                                                                                                                                                                                        ', '1234', '', 'profilePicture/6419_Md Aslam 3.jpg'),
(43, '5750', 'Md Aslam Hossain CTG', 'Saiful', 'Dalia Begum', '0000-00-00', 'Male', '01680607293', 'admin@gmail.com', 'O-', 'SSC', 'Agrabad', 'Agrabad', '12345', '', ''),
(44, '5273', 'Md Aslam 1', 'Saiful', 'Dalia Begum', '2019-05-07', 'Male', '01680607293', 'admin@gmail.com', 'O+', 'ssc', 'ctg', 'ctg', '123456', '', ''),
(46, '8663', 'Md Aslam 4', 'Siful Islam 1', 'Dalia Begum', '2019-04-30', 'Male', '01680607293', 'admin@gmail.com', 'A+', 'ssc', 'ctg', 'ctg', '3FJMGBUAE4', '', 'profilePicture/8663_Md Aslam 4.jpg'),
(48, '8825', 'Md Aslam Hossain2', 'Siful Islam 1', 'Dalia Begum 1', '2019-04-28', 'Male', '01680607293', 'admin@gmail.com', 'O-', 'ssc', 'ctg', 'ctg', '1N2K4GBX06', '', 'profilePicture/8825_Md Aslam Hossain2.jpg'),
(49, '7449', 'Md Aslam 6', 'Siful Islam 1', 'Dalia Begum', '2019-05-26', 'Male', '01680607293', 'admin@gmail.com', 'O-', 'ssc', 'ctg', 'ctg', 'ZPDY0ECNTS', '', 'profilePicture/7449_Md Aslam 6.jpg'),
(50, '5523', 'Md Aslam 7', 'Saiful', 'Dalia Begum', '2019-04-28', 'Male', '01680607293', 'admin@gmail.com', 'O-', 'ssc', '                                                ctg                 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                                       tempor incididunt u', '                                                ctg                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                                       tempor incididun', '1K6J0IHZ2X', '', 'profilePicture/5523_Md Aslam 7.jpg'),
(51, '10000', 'Md Aslam Hossain22', 'Saiful', 'Dalia Begum', '2019-04-28', 'Male', '01680607293', 'admin@gmail.com', 'O-', 'ssc', 'ctg', 'ctg', 'UIF50CRJ1D', '', 'profilePicture/10000_Md Aslam Hossain22.jpg'),
(52, '3306', 'Md Aslam 8', 'Saiful', 'Dalia Begum', '2019-05-13', 'Male', '01680607293', 'admin@gmail.com', 'O-', 'ssc', 'ctg', 'ctg', '222', 'IT Job IT Job IT Job ', ''),
(53, '4462', 'Md Aslam 9', 'Siful Islam 1', 'Dalia Begum', '2019-03-31', 'Male', '01680607293', 'admin@gmail.com', 'O-', 'ssc', 'ctg', 'ctg', 'ZCUAT1EFI3', '', 'profilePicture/4462_Md Aslam 9.jpg'),
(54, '8071', 'Md Aslam 10', 'Saiful', 'Dalia Begum', '2019-02-24', 'Female', '01680607293', 'admin@gmail.com', 'O-', 'ssc', 'ctg', 'ctg', '111', '', ''),
(55, '8247', 'Md Aslam Hossain CTG2', 'Father', 'Mother', '2019-05-01', 'Male', '016', 'admin@gmail.com', 'O-', 'ssc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n            ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n            ', '111', '', ''),
(56, '6482', 'Md Aslam Hossain', 'Saiful', 'Dalia Begum', '2019-05-06', 'Female', '11', 'admin@gmail.com', 'O-', 'hhvv', 'hvh', 'hvh', 'HJSGAL5YXZ', '', 'profilePicture/6482'),
(57, '1599', 'Md Aslam 3', '11', '11', '2019-05-06', 'Female', '1', '1admin@gmail.com', 'O-', 'hfgh', 'fhfh', 'fhfh', 'C0Z25F3PVS', ' Database Administrator ', ''),
(58, '6664', 'Md Aslam 2', '11', 'Dalia Begum', '2019-04-29', 'Female', '1', 'admin@gmail.com', 'O-', 'hhfh', 'fhfhfh', 'fhfhfh', '2G7FYLXTAK', 'Choose Job Type', 'profilePicture/6664'),
(59, '9916', 'Md Aslam 2', 'Saiful', 'Dalia Begum', '2019-04-29', 'Female', '11', 'admin@gmail.com', 'O-', 'jkjk', 'jkjk', 'jkjk', 'NPIG5L32VM', 'Choose Job Type', 'profilePicture/9916'),
(60, '4572', 'Md Aslam 2', 'Saiful', 'Dalia Begum', '2019-04-29', 'Female', '01680607293', 'admin@gmail.com', 'O-', 'ghgg', 'ghgh', 'ghgh', 'T751PDZ9RL', 'Choose Job Type', 'profilePicture/4572'),
(61, '6396', 'Md Aslam 11', 'Saiful', 'Dalia Begum', '2019-05-06', 'Female', '01680607293', 'admin@gmail.com', 'O-', 'jhgjgj', 'gjgjgj', 'jgjg', 'VLDSZFEKT6', 'Choose Job Type2', 'profilePicture/6396'),
(62, '8396', 'Md Aslam 2', 'Saiful', 'Dalia Begum', '2019-04-29', 'Female', '01680607293', 'admin@gmail.com', 'O-', 'ffhg', 'fhfh', 'fhf', 'GUAF3CRSM1', '', 'profilePicture/8396'),
(64, '9999', 'Md Aslam 2', 'Saiful', 'Dalia Begum', '2019-04-30', 'Female', '01680607293', 'admin@gmail.com', 'O-', 'jmbj', 'jhjhj', 'hjhj', 'JO5MXFVDBQ', '', ''),
(65, '5555', 'Md Aslam 2', 'Saiful', 'Dalia Begum', '2019-04-29', 'Female', 'ghgh', 'admin@gmail.com', 'O-', 'gg', 'ggd', 'dggjhjhj', 'K5MEQ91XWG', '', ''),
(66, '6666', 'Md Aslam 2', 'Saiful', 'Dalia Begum', '2019-05-06', 'Male', '01680607293', 'admin@gmail.com', 'O-', '666', '66', '66', '1M26LEBOWJ', '', ''),
(67, '0001', 'Md Aslam ctg', 'Saiful', 'Dalia Begum', '2019-04-30', 'Male', '01680607293', 'admin@gmail.com', 'O-', 'gggd', 'gdrrgrg', 'dgfgfgf', 'W483QHDV9U', 'IT Project Manager ', ''),
(68, '3242', 'Md Aslam 2', 'Saiful', 'Dalia Begum', '2019-05-06', 'Female', '01680607293', 'admin@gmail.com', 'O-', 'ssc', 'agrabad', 'agrabad', '96LVX2IZKW', '', ''),
(69, '2667', 'Md Aslam 2', 'Saiful', 'Dalia Begum', '2019-05-14', 'Female', '01680607293', 'admin@gmail.com', 'O-', 'ssc', '                                                                                                                                                                                                required', '                                                                                                                                                                                                required', '147', 'Web Developer', '');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(30) NOT NULL,
  `date` date NOT NULL,
  `holiday` varchar(100) NOT NULL,
  `about` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `date`, `holiday`, `about`) VALUES
(10, '2019-02-21', 'Language Martyr`s Day', '														International Mother Language Day 			'),
(11, '2019-03-17', ' 	Sheikh Mujibur Rahman`s birthday 	', '								Father of Nation of Bangladesh 									'),
(12, '2019-03-26', 'Independence Day 	', '				 	Declaration of Independence from Pakistan in 1971 													'),
(13, '2019-04-14', 'Bengali New Year', '			 	 	Festival marking the start of the Bengali year 														'),
(14, '2019-04-22', 'Shab e-Barat', '						 	 	Night of Records 											'),
(15, '2019-05-01', ' 	May Day 	', '								International Labour Day 									'),
(16, '2019-05-18', 'Buddha Purnima ', '					 		Birth of Buddha. Observed on the day of the full moon in May 												'),
(17, '2019-05-31', 'Jumatul Bidah 	', '					 	Last Friday of the month of Ramadan 												'),
(18, '2019-06-01', 'Night of Destiny', '														 	 	Celebrated on the 27th day of Ramadan 			'),
(19, '2019-06-05', 'Eid ul-Fitr', '					 	 	End of Ramadan 												'),
(20, '2019-06-06', ' 	Eid ul-Fitr Holiday', '																	'),
(21, '2019-12-16', 'Victory Day', '					 	 	Commemorates the surrender of the Pakistani army to the Mukti Bahini 												');

-- --------------------------------------------------------

--
-- Table structure for table `salary_bonus`
--

CREATE TABLE `salary_bonus` (
  `id` int(30) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `salary_month` date NOT NULL,
  `salary` int(30) NOT NULL,
  `bonus` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary_bonus`
--

INSERT INTO `salary_bonus` (`id`, `employee_id`, `full_name`, `salary_month`, `salary`, `bonus`) VALUES
(10, '2603', 'Md Aslam 5', '2019-05-11', 100, 10),
(11, '5750', 'Md Aslam Hossain CTG', '2019-05-11', 100, 10),
(12, '3306', 'Md Aslam 8', '2019-04-02', 21000, 3510),
(13, '3306', 'Md Aslam 8', '2019-03-05', 3, 30),
(14, '6419', 'Md Aslam 3', '2019-01-16', 333, 22),
(15, '3306', 'Md Aslam 8', '2019-02-21', 500, 330),
(16, '3306', 'Md Aslam 8', '2018-12-12', 500, 330),
(17, '3306', 'Md Aslam 88', '2018-11-21', 500, 330),
(19, '3306', 'Md Aslam 8', '2019-04-29', 10000, 2550),
(20, '0001', 'Md Aslam ctg', '2019-04-02', 500, 330);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_bonus`
--
ALTER TABLE `salary_bonus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `salary_bonus`
--
ALTER TABLE `salary_bonus`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
