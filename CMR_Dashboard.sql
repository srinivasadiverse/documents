-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 04:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aicte`
--

-- --------------------------------------------------------

--
-- Table structure for table `ahr`
--

CREATE TABLE `ahr` (
  `id` int(10) NOT NULL,
  `name` varchar(300) NOT NULL,
  `organization` varchar(300) NOT NULL,
  `date` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `basic`
--

CREATE TABLE `basic` (
  `email` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `department` varchar(300) NOT NULL,
  `cabinno` varchar(300) NOT NULL,
  `designation` varchar(300) NOT NULL,
  `joiningcurpos` TIMESTAMP NOT NULL DEFAULT current_timestamp,
  `HighestQualification` varchar(300) NOT NULL,
  `id` varchar(100) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `nation` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `aadhar` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `block` varchar(100) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 2,
  `password` varchar(256) NOT NULL,
  `role` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `basic`
--

INSERT INTO `basic` (`email`, `name`, `mobile`, `department`, `cabinno`, `designation`, `joiningcurpos`, `HighestQualification`, `id`, `DOB`, `religion`, `nation`, `address`, `aadhar`, `room`, `block`, `status`, `password`, `role`) VALUES
('admin@gmail.com', 'manoj', '9154313796', 'CSE', '104', 'Assistant Professor', '2022-05-12', 'B.Tech', '1232', '2022-05-07', 'Hindu', 'india', '1-127 Garlapadu', '9154313796', '100', 'B', 1, '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
('manojbhargavram2014@gmail.com', 'Manoj Bhargav Ram', '9154313796', 'CSE', '4', 'Assistant Professor', '2018-08-12', 'M.Tech', '18534', '2001-05-29', 'Hindu', 'India', '1-127 Garlapadu, Guntur Dist', '977375645194', '104', 'B', 1, 'cb2a8616603d62cf2b503fb80c7d9fde', '');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchid` int(10) NOT NULL,
  `name` varchar(256) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` varchar(256) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchid`, `name`, `timestamp`, `status`) VALUES
(1, 'Electronics & Communications Engineering', '2022-04-06 09:28:55.210944', '1'),
(2, 'Computer Science & Engineering', '2022-04-06 09:28:12.175170', '1'),
(4, 'Civil Engineering', '2022-06-29 19:43:11.278129', '1'),
(5, 'Mechanical Engineering', '2022-06-29 19:43:23.252228', '1'),
(6, 'Information Technology', '2022-06-29 19:44:12.546021', '1');

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` int(10) NOT NULL,
  `name` varchar(300) NOT NULL,
  `certifrom` varchar(300) NOT NULL,
  `date` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `proof` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classwork`
--

CREATE TABLE `classwork` (
  `id` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `acyear` varchar(300) NOT NULL,
  `branch` varchar(300) NOT NULL,
  `yandsem` varchar(300) NOT NULL,
  `course` varchar(300) NOT NULL,
  `dt` varchar(200) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classwork`
--

INSERT INTO `classwork` (`id`, `email`, `acyear`, `branch`, `yandsem`, `course`, `dt`, `timestamp`, `status`) VALUES
(1, 'manojbhargavram2014@gmail.com', '2018 - 2022', 'Computer Science & Engineering', 'V', 'B.Tech', '2021-03-17', '2022-06-29 19:44:41.248216', 1),
(2, 'manojbhargavram2014@gmail.com', '2020 - 2024', 'Computer Science & Engineering', 'VI', 'B.Tech', '2022-01-13', '2022-06-29 19:45:18.015587', 1);

-- --------------------------------------------------------

--
-- Table structure for table `consultancy`
--

CREATE TABLE `consultancy` (
  `id` int(10) NOT NULL,
  `name` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `consultancy` varchar(300) NOT NULL,
  `grantamt` varchar(300) NOT NULL,
  `year` varchar(300) NOT NULL,
  `duration` varchar(300) NOT NULL,
  `proof` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `dt` varchar(256) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  `status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contactid` int(10) NOT NULL,
  `name` varchar(256) NOT NULL,
  `mobile` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coordinator`
--

CREATE TABLE `coordinator` (
  `id` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `numevents` varchar(300) NOT NULL,
  `report` varchar(300) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  `status` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(10) NOT NULL,
  `name` varchar(256) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  `status` varchar(256) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `name`, `timestamp`, `status`) VALUES
(1, 'B.Tech', '2022-04-06 09:43:26.762203', '1'),
(2, 'M.Tech', '2022-04-06 09:44:01.065952', '0'),
(3, 'MBA', '2022-04-06 09:44:11.037915', '1');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) NOT NULL,
  `convenor` varchar(300) NOT NULL,
  `eventname` varchar(300) NOT NULL,
  `fromdate` varchar(300) NOT NULL,
  `todate` varchar(300) NOT NULL,
  `proof` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  `status` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `events1`
--

CREATE TABLE `events1` (
  `id` int(10) NOT NULL,
  `email` varchar(300) NOT NULL,
  `event` varchar(300) NOT NULL,
  `orga` varchar(300) NOT NULL,
  `fromd` varchar(300) NOT NULL,
  `tod` varchar(300) NOT NULL,
  `proof` varchar(300) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  `status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `email` varchar(300) NOT NULL,
  `employer` varchar(300) NOT NULL,
  `position` varchar(300) NOT NULL,
  `joined` varchar(300) NOT NULL,
  `leftit` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` int(40) NOT NULL,
  `room_no` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `mobile` varchar(256) NOT NULL,
  `assistant` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `room_no`, `name`, `mobile`, `assistant`, `email`, `password`) VALUES
(2, '223', 'Java', '9908881949', 'Vijay', 'vijay@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `mentoring`
--

CREATE TABLE `mentoring` (
  `program` varchar(300) NOT NULL,
  `stuname` varchar(300) NOT NULL,
  `roll` varchar(300) NOT NULL,
  `stumobile` varchar(300) NOT NULL,
  `stuemail` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `id` int(10) NOT NULL,
  `date` varchar(40) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  `status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `outside`
--

CREATE TABLE `outside` (
  `position` varchar(300) NOT NULL,
  `organization` varchar(300) NOT NULL,
  `year` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `id` int(10) NOT NULL,
  `date` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  `status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patents`
--

CREATE TABLE `patents` (
  `inventor` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `id` varchar(300) NOT NULL,
  `issue` varchar(300) NOT NULL,
  `statusfpg` varchar(300) NOT NULL,
  `proof` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `year` varchar(200) NOT NULL,
  `dt` varchar(300) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pcc`
--

CREATE TABLE `pcc` (
  `id` int(10) NOT NULL,
  `email` varchar(300) NOT NULL,
  `author` varchar(300) NOT NULL,
  `papertitle` varchar(300) NOT NULL,
  `jctitile` varchar(300) NOT NULL,
  `issue` varchar(300) NOT NULL,
  `year` varchar(300) NOT NULL,
  `scopus` varchar(300) NOT NULL,
  `proof` varchar(300) NOT NULL DEFAULT 'notav.html',
  `dt` varchar(600) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pcc`
--

INSERT INTO `pcc` (`id`, `email`, `author`, `papertitle`, `jctitile`, `issue`, `year`, `scopus`, `proof`, `dt`, `timestamp`, `status`) VALUES
(1, 'manojbhargavram2014@gmail.com', 'Manoj', 'ERP', 'Mukth Shab Journal', 'IV , JAN', '2021-12-15', 'UGC', 'uploads/manojbhargavram2014@gmail.comConfirmationLetter20220503-15-1n44plb.pdf', '2021-12-15', '2022-06-29 19:54:54.327628', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pjc`
--

CREATE TABLE `pjc` (
  `id` int(10) NOT NULL,
  `email` varchar(300) NOT NULL,
  `author` varchar(300) NOT NULL,
  `papertitle` varchar(300) NOT NULL,
  `jctitile` varchar(300) NOT NULL,
  `issue` varchar(300) NOT NULL,
  `year` varchar(300) NOT NULL,
  `scopus` varchar(300) NOT NULL,
  `proof` varchar(300) NOT NULL DEFAULT 'notav.html',
  `dt` varchar(600) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `professionalmembership`
--

CREATE TABLE `professionalmembership` (
  `email` varchar(300) NOT NULL,
  `body` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `number` varchar(300) NOT NULL,
  `id` int(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  `status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projectsupervisor`
--

CREATE TABLE `projectsupervisor` (
  `id` int(10) NOT NULL,
  `email` varchar(256) NOT NULL,
  `program` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `roll` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `university` varchar(200) NOT NULL,
  `workstatus` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  `status` int(10) NOT NULL DEFAULT 0,
  `date` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `id` int(10) NOT NULL,
  `email` varchar(300) NOT NULL,
  `area` varchar(300) NOT NULL,
  `dt` varchar(500) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`id`, `email`, `area`, `dt`, `timestamp`, `status`) VALUES
(1, 'manojbhargavram2014@gmail.com', 'Computer\'s & It\'s Applications', '2022-06-16', '2022-06-29 19:46:21.587405', 0),
(2, 'manojbhargavram2014@gmail.com', 'Image Processing', '2022-04-06', '2022-06-29 19:46:36.495779', 0);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semid` int(10) NOT NULL,
  `name` varchar(256) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` varchar(256) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semid`, `name`, `timestamp`, `status`) VALUES
(6, 'I', '2022-04-06 08:47:17.175363', '1'),
(7, 'II', '2022-04-06 08:47:22.201126', '1'),
(8, 'III', '2022-04-06 08:47:34.460067', '1'),
(9, 'IV', '2022-04-06 08:47:41.458548', '1'),
(10, 'V', '2022-04-06 08:47:48.493309', '1'),
(11, 'VI', '2022-04-06 08:47:54.182594', '1'),
(12, 'VII', '2022-04-06 08:48:22.834614', '1'),
(13, 'VIII', '2022-04-06 08:48:29.414873', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sponsored`
--

CREATE TABLE `sponsored` (
  `investigator` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `organization` varchar(300) NOT NULL,
  `grantamt` varchar(300) NOT NULL,
  `year` varchar(300) NOT NULL,
  `duration` varchar(300) NOT NULL,
  `proof` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `id` int(10) NOT NULL,
  `dt` varchar(256) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  `status` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tech`
--

CREATE TABLE `tech` (
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tech`
--

INSERT INTO `tech` (`email`, `password`, `name`) VALUES
('tech@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Manoj');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(30) NOT NULL,
  `type` varchar(300) NOT NULL,
  `assistemail` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `raisedt` datetime NOT NULL,
  `updatedt` datetime NOT NULL,
  `status` varchar(300) NOT NULL,
  `assignedto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `yearid` int(10) NOT NULL,
  `name` varchar(256) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` varchar(256) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`yearid`, `name`, `timestamp`, `status`) VALUES
(1, '2018 - 2022', '2022-04-08 18:17:46.246221', '1'),
(2, '2019 - 2023', '2022-04-08 18:17:57.227043', '1'),
(3, '2020 - 2024', '2022-04-08 18:18:08.474031', '1'),
(4, '2021 - 2025', '2022-06-29 19:28:29.450239', '1'),
(5, '2022 - 2026', '2022-06-29 19:28:37.537513', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ahr`
--
ALTER TABLE `ahr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic`
--
ALTER TABLE `basic`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchid`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classwork`
--
ALTER TABLE `classwork`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultancy`
--
ALTER TABLE `consultancy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `coordinator`
--
ALTER TABLE `coordinator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events1`
--
ALTER TABLE `events1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`,`email`);

--
-- Indexes for table `mentoring`
--
ALTER TABLE `mentoring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outside`
--
ALTER TABLE `outside`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patents`
--
ALTER TABLE `patents`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `pcc`
--
ALTER TABLE `pcc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pjc`
--
ALTER TABLE `pjc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professionalmembership`
--
ALTER TABLE `professionalmembership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectsupervisor`
--
ALTER TABLE `projectsupervisor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semid`);

--
-- Indexes for table `sponsored`
--
ALTER TABLE `sponsored`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`yearid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ahr`
--
ALTER TABLE `ahr`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classwork`
--
ALTER TABLE `classwork`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `consultancy`
--
ALTER TABLE `consultancy`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coordinator`
--
ALTER TABLE `coordinator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events1`
--
ALTER TABLE `events1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mentoring`
--
ALTER TABLE `mentoring`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `outside`
--
ALTER TABLE `outside`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pcc`
--
ALTER TABLE `pcc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pjc`
--
ALTER TABLE `pjc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `professionalmembership`
--
ALTER TABLE `professionalmembership`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectsupervisor`
--
ALTER TABLE `projectsupervisor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sponsored`
--
ALTER TABLE `sponsored`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `yearid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
