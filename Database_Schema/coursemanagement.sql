-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 08:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `remarks` varchar(250) DEFAULT NULL,
  `photo` longblob DEFAULT NULL,
  `MID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `name`, `gender`, `major`, `birthday`, `credit`, `remarks`, `photo`, `MID`) VALUES
(19, 'John Doe', 'Male', 'Data Mining', '1988-05-09', 15, 'Good', 0x30, NULL),
(20, 'Abdullah Al Jaber', 'Male', 'Data Mining', '03-04-1998', 35, 'He\'s a hard working student', 0x453a5c416264756c6c61685c4d6f6d656e747320696e204e756973745c437269636b6574204e756973746572735c494d475f313835302e4a5047, NULL),
(23, 'Johir Rayhan', 'Male', 'Data Mining', '03-04-1998', 15, 'Bad', 0x453a5c416264756c6c61685c4d6f6d656e747320696e204e756973745c437269636b6574204e756973746572735c494d475f313836302e4a5047, NULL),
(33, 'Abdulla al jaber', 'Male', 'Software Engineering', '03/04/1998', 12, 'Good', 0x453a5c416264756c6c61685c4d6f6d656e747320696e204e756973745c437269636b6574204e756973746572735c494d475f313834372e4a5047, NULL),
(34, 'Wang joe', 'Male', 'Computer Science', '02/15/2020', 12, 'Good', 0x453a5c416264756c6c61685c4d6f6d656e747320696e204e756973745c437269636b6574204e756973746572735c494d475f313836322e4a5047, NULL),
(35, 'Hello world', 'Male', 'Software Engineering', '03/04/1998', 23, 'asas', 0x453a5c416264756c6c61685c4d6f6d656e747320696e204e756973745c437269636b6574204e756973746572735c494d475f313835382e4a5047, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
