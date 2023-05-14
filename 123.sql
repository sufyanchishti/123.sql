-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 08:39 PM
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
-- Database: `123`
--

-- --------------------------------------------------------

--
-- Table structure for table `education_information:`
--

CREATE TABLE `education_information:` (
  `id` int(11) NOT NULL,
  `Degree Title` text NOT NULL,
  `Field of Study` varchar(18) NOT NULL,
  `Institution Name` text NOT NULL,
  `GPA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employment_information:`
--

CREATE TABLE `employment_information:` (
  `Job Title` varchar(11) NOT NULL,
  `Department/Program` text NOT NULL,
  `Date of Employment` date NOT NULL,
  `Contract Type` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_information:`
--

CREATE TABLE `performance_information:` (
  `Teaching Evaluations` text NOT NULL,
  `Research Grants` varchar(20) NOT NULL,
  `Awards/Honors` date NOT NULL,
  `Professional Memberships` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_information:`
--

CREATE TABLE `personal_information:` (
  `ID card No` int(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  `Date of Birth` varchar(11) NOT NULL,
  `Gender` text NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research_information:`
--

CREATE TABLE `research_information:` (
  `Research Interests` varchar(11) NOT NULL,
  `Research Projects` varchar(20) NOT NULL,
  `Co-Authors` varchar(18) NOT NULL,
  `Publication Name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Roll` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Roll`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` int(2) NOT NULL,
  `phone no` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `phone no`) VALUES
(1, 2, 0),
(2, 2, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `teacher_student`
-- (See below for the actual view)
--
CREATE TABLE `teacher_student` (
`Roll` int(11)
,`id` int(11)
,`name` int(2)
);

-- --------------------------------------------------------

--
-- Table structure for table `teaching_information:`
--

CREATE TABLE `teaching_information:` (
  `Course Code` int(11) NOT NULL,
  `Course Name` int(11) NOT NULL,
  `Semester` int(11) NOT NULL,
  `Schedule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `teacher_student`
--
DROP TABLE IF EXISTS `teacher_student`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `teacher_student`  AS SELECT `student`.`Roll` AS `Roll`, `teacher`.`id` AS `id`, `teacher`.`name` AS `name` FROM (`teacher` left join `student` on(`student`.`Roll` = `teacher`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education_information:`
--
ALTER TABLE `education_information:`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_information:`
--
ALTER TABLE `personal_information:`
  ADD PRIMARY KEY (`ID card No`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Roll`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education_information:`
--
ALTER TABLE `education_information:`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_information:`
--
ALTER TABLE `personal_information:`
  MODIFY `ID card No` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Roll` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
