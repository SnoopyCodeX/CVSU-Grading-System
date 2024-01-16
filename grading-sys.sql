-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 09:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grading-sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `ap_courses`
--

CREATE TABLE `ap_courses` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `course_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_courses`
--

INSERT INTO `ap_courses` (`id`, `course`, `course_code`) VALUES
(2, 'test', 123),
(3, 'another course', 231);

-- --------------------------------------------------------

--
-- Table structure for table `ap_school_year`
--

CREATE TABLE `ap_school_year` (
  `id` int(11) NOT NULL,
  `school_year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_school_year`
--

INSERT INTO `ap_school_year` (`id`, `school_year`) VALUES
(1, '2022 - 2023'),
(2, '2023 - 2024');

-- --------------------------------------------------------

--
-- Table structure for table `ap_sections`
--

CREATE TABLE `ap_sections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` int(11) NOT NULL,
  `school_year` int(11) NOT NULL,
  `term` varchar(255) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `course` int(11) NOT NULL,
  `instructor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_sections`
--

INSERT INTO `ap_sections` (`id`, `name`, `subject`, `school_year`, `term`, `year_level`, `course`, `instructor`) VALUES
(6, 'Section Kamote', 3, 2, '1st Sem', '1st Year', 2, 21),
(8, 'Section Borta', 3, 2, '1st Sem', '3rd Year', 3, 21);

-- --------------------------------------------------------

--
-- Table structure for table `ap_section_students`
--

CREATE TABLE `ap_section_students` (
  `id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_section_students`
--

INSERT INTO `ap_section_students` (`id`, `section_id`, `student_id`) VALUES
(11, 6, 1),
(12, 6, 19),
(13, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ap_subjects`
--

CREATE TABLE `ap_subjects` (
  `id` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `units` int(11) NOT NULL,
  `credits_units` int(11) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_subjects`
--

INSERT INTO `ap_subjects` (`id`, `course`, `year_level`, `name`, `units`, `credits_units`, `term`) VALUES
(3, 2, '2nd year', 'another subject', 25, 25, '2nd Sem'),
(4, 2, '2nd year', 'my subject', 12, 24, '1st Sem');

-- --------------------------------------------------------

--
-- Table structure for table `ap_userdetails`
--

CREATE TABLE `ap_userdetails` (
  `id` int(12) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `birthday` date DEFAULT NULL,
  `year_level` varchar(255) DEFAULT NULL,
  `roles` varchar(255) NOT NULL,
  `sid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ap_userdetails`
--

INSERT INTO `ap_userdetails` (`id`, `firstName`, `middleName`, `lastName`, `email`, `password`, `gender`, `contact`, `birthday`, `year_level`, `roles`, `sid`) VALUES
(1, 'Albert', 'Pogi', 'Winkler', 'asklahanov@gmail.com', '$6$Crypt$1qVc0jGeKh7JeEWTUq5Nfadlm9iXqTnb6kSMA0M2B17o6sJh2CG/I9AQytLtkFfpIkxlLZRCtP.FR2.gWiOxG/', 'male', 2147483647, '1900-01-01', '1st year', 'student', '123123123'),
(2, 'Albert', 'Pogi', 'Winkler', 'askalkaba73@gmail.com', '$6$Crypt$A/jDa6/VXgega4JS.fwcrnSPsSGc8iYDamgc9d0eVLyMU725Br1vK00ffObZUSbr/Enjrgh2S40phWnAcb.2w1', 'female', 2147483647, '1990-01-01', '', 'admin', '432432432'),
(3, 'Criztian ', 'Mitra', 'Pogi', 'criztianpog123@gmail.com', '$6$Crypt$.IPCVAofnRERoq/EF59k00yPGSCWboFqBr/evkTVdPrpx.TjOUlI0Mi/.3jJYjPdsL7A3MZWpjAgu3DkjHmAj0', 'female', 2147483647, '1990-01-01', '', 'admin', '283828382'),
(4, 'Criztian', 'Pogi', 'Tuplano', 'asukalkaba@gmail.com', '$6$Crypt$.IPCVAofnRERoq/EF59k00yPGSCWboFqBr/evkTVdPrpx.TjOUlI0Mi/.3jJYjPdsL7A3MZWpjAgu3DkjHmAj0', 'male', 92874747, '1900-01-01', '3rd year', 'student', '1231231232'),
(11, 'John Roy', 'Middlename', 'Lapida', 'johnroy062102calimlim@gmail.com', '$6$Crypt$Svhm9rLEJJ6E99h1C2wo5Sdjz4PhjfD3w93g7EkIfrIB15bnY5Os5sdaYDCIGYeqG1JrQzM6A2EJpCJHIsSNd0', 'female', 2147483647, '1990-01-01', '', 'admin', '12345555'),
(12, 'Albert', 'Pogi', 'Aklan', 'contact@hax4life.org', '$6$Crypt$CAJbLqrN2i959BY9fYtFPc3nLNhHKkAqQVbbpCdez3H/OkFiLEq.JchLmxMmhCaxm/ekMcs1On5oCsfJLxzKR1', 'female', 2147483647, '1990-01-01', '', 'admin', '32432432'),
(19, 'Albert', 'Kupal', 'raulo', 'albertkupal@gmail.com', '$6$Crypt$EsHmqkQvmwperb8BCLW071h5wYsb/nu6wrJospA4bBOedphtupEzPs7.Xj6G2O.jrZg6VDrzA7zy0PHPTkcOG1', 'female', 2147483647, '1900-01-01', '1st year', 'student', '780870948572'),
(21, 'another', 'test', 'instructor', 'another@gmail.com', '$6$Crypt$BmkKx1B9DKub8BG07ZzX0jAEbXJQyPKW620nYoVBVSR4uMSCIdkZpEn08hIihe98JO7h5X0rXqcYecD1uroyj0', 'female', 2147483647, '1900-01-01', NULL, 'instructor', NULL),
(22, 'Test', 'Admin', 'Admin', 'testadmin@gmail.com', '$6$Crypt$r4LPGK8Cg2kyNTyMG4ti3V/Oo2Kog1dYktxrleQdlo2cinQrxZNz97t3Boo6CMsQuJAtXLginJajkD.X.c0EU/', 'male', 2147483647, '1900-01-01', NULL, 'admin', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ap_courses`
--
ALTER TABLE `ap_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_school_year`
--
ALTER TABLE `ap_school_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_sections`
--
ALTER TABLE `ap_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject` (`subject`,`school_year`,`course`,`instructor`),
  ADD KEY `subject_2` (`subject`,`school_year`,`course`,`instructor`),
  ADD KEY `section-schoolyear-constraint` (`school_year`),
  ADD KEY `section-course-constraint` (`course`),
  ADD KEY `section-instructor-constraint` (`instructor`);

--
-- Indexes for table `ap_section_students`
--
ALTER TABLE `ap_section_students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_id` (`section_id`,`student_id`),
  ADD KEY `section_id_2` (`section_id`,`student_id`),
  ADD KEY `section-students-student-constraint` (`student_id`);

--
-- Indexes for table `ap_subjects`
--
ALTER TABLE `ap_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course` (`course`);

--
-- Indexes for table `ap_userdetails`
--
ALTER TABLE `ap_userdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ap_courses`
--
ALTER TABLE `ap_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ap_school_year`
--
ALTER TABLE `ap_school_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ap_sections`
--
ALTER TABLE `ap_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ap_section_students`
--
ALTER TABLE `ap_section_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ap_subjects`
--
ALTER TABLE `ap_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ap_userdetails`
--
ALTER TABLE `ap_userdetails`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ap_sections`
--
ALTER TABLE `ap_sections`
  ADD CONSTRAINT `section-course-constraint` FOREIGN KEY (`course`) REFERENCES `ap_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `section-instructor-constraint` FOREIGN KEY (`instructor`) REFERENCES `ap_userdetails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `section-schoolyear-constraint` FOREIGN KEY (`school_year`) REFERENCES `ap_school_year` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `section-subject-constraint` FOREIGN KEY (`subject`) REFERENCES `ap_subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ap_section_students`
--
ALTER TABLE `ap_section_students`
  ADD CONSTRAINT `section-students-section-constraint` FOREIGN KEY (`section_id`) REFERENCES `ap_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `section-students-student-constraint` FOREIGN KEY (`student_id`) REFERENCES `ap_userdetails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ap_subjects`
--
ALTER TABLE `ap_subjects`
  ADD CONSTRAINT `course-subject-constraint` FOREIGN KEY (`course`) REFERENCES `ap_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;