-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 11, 2021 at 03:23 AM
-- Server version: 10.3.28-MariaDB-log
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasoncfl_groupproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `applicationID` int(20) NOT NULL,
  `jobID` int(20) NOT NULL,
  `applicantID` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jobID` int(20) NOT NULL,
  `employerID` int(20) NOT NULL,
  `jobTITLE` varchar(500) NOT NULL,
  `jobCOMPANY` varchar(500) NOT NULL,
  `jobSALARY` varchar(500) NOT NULL,
  `jobDESCRIPTIONTITLE` varchar(500) NOT NULL,
  `jobDESCRIPTION` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jobID`, `employerID`, `jobTITLE`, `jobCOMPANY`, `jobSALARY`, `jobDESCRIPTIONTITLE`, `jobDESCRIPTION`) VALUES
(0, 0, 'Sr. Developer', 'Target', '$60,000', 'Job Summary', 'So good!'),
(1, 0, 'Jr Developer', 'Krusty Crabs', '$50,000', 'Job Summary', 'The hero we need!'),
(7, 0, 'Full Stack Engineer', 'Apple', '$100,000', 'Job Summary', 'Toyota is a good car!');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `uri` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `stat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`uri`, `type`, `stat`) VALUES
('getuserhistory/', 'get', 107),
('newuser/', 'post', 12),
('getjobhistory/', 'get', 147),
('updateuserprofile/', 'put', 3),
('getapplicationhistory/', 'get', 5),
('companyjob/', 'post', 9),
('deleteonejob/', 'delete', 6),
('updateonejob/', 'put', 4),
('queries/', 'get', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(20) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `password`, `email`, `firstname`, `lastname`) VALUES
(0, 'JASON', 'PASSWORD', 'JASON@GMAIL.COM', 'JASON', 'LEE'),
(1, 'SAEM', 'PASSWORD', 'SAEM@GMAIL.COM', 'SAEM', 'LEE'),
(2, 'ADMIN', 'ADMIN', 'ADMIN@GMAIL.COM', 'JASON', 'LEE'),
(5, 'MELODY', 'PASSWORD', 'MELODY@GMAIL.COM', 'MELODY', 'OH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`applicationID`),
  ADD KEY `fk_jobID` (`jobID`),
  ADD KEY `fk_applicantID` (`applicantID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`jobID`),
  ADD KEY `fk_employerID` (`employerID`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`uri`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
