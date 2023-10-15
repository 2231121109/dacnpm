-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 14, 2023 at 04:06 PM
-- Server version: 5.7.43
-- PHP Version: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dkhp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `faculty` int(11) NOT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`, `faculty`, `position`, `fullname`, `email`, `date_of_birth`) VALUES
(2018, 'admin2018', 'admin2018', 2018, 'GV', 'Lê Thị A', '2018@admin.edu.vn', '1997-01-02'),
(2019, 'admin2019', 'admin2019', 2019, 'GV', 'Lê Thị B', '2019@admin.edu.vn', '1996-02-03'),
(2020, 'admin2020', 'admin2020', 2020, 'GV', 'Lê Thị C', '2020@admin.edu.vn', '1995-03-04'),
(2021, 'admin2021', 'admin2021', 2021, 'GV', 'Lê Thị D', '2021@admin.edu.vn', '1994-04-05');


-- --------------------------------------------------------

--
-- Table structure for table `available_course`
--

CREATE TABLE `available_course` (
  `period_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `faculty` int(11) NOT NULL,
  `school_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `available_course`
--

INSERT INTO `available_course` (`period_id`, `course_id`, `faculty`, `school_year`) VALUES
(1, 111, 2018, '2018'),
(1, 222, 2019, '2019'),
(1, 333, 2020, '2020'),
(1, 444, 2021, '2021');

-- --------------------------------------------------------

--
-- Table structure for table `available_course_info`
--

CREATE TABLE `available_course_info` (
  `period_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `room` varchar(45) CHARACTER SET utf8 NOT NULL,
  `max_student` int(11) NOT NULL,
  `start_period` int(11) NOT NULL,
  `end_period` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `day` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `available_course_info`
--

INSERT INTO `available_course_info` (`period_id`, `course_id`, `class_id`, `room`, `max_student`, `start_period`, `end_period`, `start_date`, `day`) VALUES
(1, 111, 101, 'D102', 120, 1, 4, '2018-03-02 07:30:00', 4),
(1, 222, 202, 'E101', 100, 6, 9, '2019-03-02 12:30:00', 5),
(1, 333, 303, 'F202', 80, 1, 4, '2020-03-02 07:30:00', 6),
(1, 444, 404, 'G303', 60, 6, 9, '2021-03-02 12:30:00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `ID` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `school_year` year(4) NOT NULL,
  `faculty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`ID`, `name`, `school_year`, `faculty`) VALUES
(101, '18_1', '2018', 2018),
(202, '19_2', '2019', 2019),
(303, '20_3', '2020', 2020),
(404, '21_4', '2021', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `credits` int(11) NOT NULL,
  `faculty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`ID`, `name`, `credits`, `faculty`) VALUES
(111, 'Vật lý đại cương 1', 3, 2018),
(222, 'Toán rời rạc', 3, 2019),
(333, 'Tâm lý đại cương', 2, 2020),
(444, 'Nhập môn công nghệ phần mềm', 4, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `num` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`num`, `name`) VALUES
(2, 'T2'),
(3, 'T3'),
(4, 'T4'),
(5, 'T5'),
(6, 'T6'),
(7, 'T7');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `period_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `mark` float DEFAULT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`period_id`, `course_id`, `student_id`, `mark`, `class_id`) VALUES
(1, 111, 1, 0, 101),
(1, 222, 2, 0, 202),
(1, 333, 3, 0, 303),
(1, 444, 4, 0, 404);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`ID`, `name`) VALUES
(2018, 'CNTT'),
(2019, 'Sinh'),
(2020, 'Hóa'),
(2021, 'Toán');


-- --------------------------------------------------------

--
-- Table structure for table `registration_period`
--

CREATE TABLE `registration_period` (
  `id` int(11) NOT NULL,
  `year_create` year(4) NOT NULL,
  `semester` int(11) NOT NULL,
  `opening_time` datetime NOT NULL,
  `closing_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registration_period`
--

INSERT INTO `registration_period` (`id`, `year_create`, `semester`, `opening_time`, `closing_time`) VALUES
(1, '2021', 1, '2021-02-01 09:00:00', '2021-02-08 09:00:00'),
(2, '2021', 2, '2021-08-01 09:00:00', '2021-08-08 09:00:00'),
(3, '2020', 3, '2020-12-01 09:00:00', '2020-12-08 09:00:00'),
(4, '2019', 1, '2019-02-01 09:00:00', '2019-02-08 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`name`) VALUES
('D102'),
('E101'),
('F202'),
('G303');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `period` int(11) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`period`, `start_time`, `end_time`) VALUES
(1, '07:30:00', '08:20:00'),
(4, '10:20:00', '11:10:00'),
(6, '12:30:00', '13:20:00'),
(9, '15:10:00', '16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`year`) VALUES
('2018'),
('2019'),
('2020'),
('2021');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `faculty` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `school_year` year(4) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `max_credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `username`, `password`, `faculty`, `class`, `school_year`, `fullname`, `email`, `address`, `date_of_birth`, `max_credits`) VALUES
(1, '001', 'student001', 2018, 101, 2018, 'Nguyễn Văn A', '001@student.edu.vn', 'Nguyễn Văn Tăng', '2000-12-11', 25),
(2, '002', 'student002', 2019, 202, 2019, 'Nguyễn Văn B', '002@student.edu.vn', 'Lê Văn Việt', '2001-11-10', 25),
(3, '003', 'student003', 2020, 303, 2020, 'Trương Văn C', '003@student.edu.vn', 'Võ Văn Ngân', '2002-10-09', 25),
(4, '004', 'student004', 2021, 404, 2021, 'Trương Văn D', '004@student.edu.vn', 'Kha Vạn Cân', '2003-09-08', 25)
;

-- --------------------------------------------------------

--
-- Table structure for table `trade`
--

CREATE TABLE `trade` (
  `trade_ID` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `target_course_id` int(11) NOT NULL,
  `target_class_id` int(11) NOT NULL,
  `student2_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trade`
--

INSERT INTO `trade` (`trade_ID`, `period_id`, `course_id`, `class_id`, `student_id`, `target_course_id`, `target_class_id`, `student2_id`, `state`) VALUES
(1, 1, 111, 101, 1, 222, 202, NULL, NULL),
(2, 1, 222, 202, 2, 333, 303, NULL, NULL),
(3, 1, 333, 303, 3, 111, 101, NULL, NULL),
(4, 1, 444, 404, 4, 222, 202, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- Indexes for table `available_course`
--
ALTER TABLE `available_course`
  ADD PRIMARY KEY (`period_id`,`course_id`),
  ADD KEY `fk_availablecourse_course_idx` (`course_id`),
  ADD KEY `fk_availablecourse_faculty_idx` (`faculty`),
  ADD KEY `fk_availablecourse_schoolyear_idx` (`school_year`);

--
-- Indexes for table `available_course_info`
--
ALTER TABLE `available_course_info`
  ADD PRIMARY KEY (`period_id`,`course_id`),
  ADD KEY `fk_acinfo_class_idx` (`class_id`),
  ADD KEY `fk_acinfo_schedule_idx` (`start_period`),
  ADD KEY `fk_acinfo_schedule2_idx` (`end_period`),
  ADD KEY `fk_acinfo_romo_idx` (`room`),
  ADD KEY `fk_acinfo_day_idx` (`day`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `fk_class_schoolyear_idx` (`school_year`),
  ADD KEY `fk_class_faculty_idx` (`faculty`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `fk_course_faculty_idx` (`faculty`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`period_id`,`course_id`,`student_id`),
  ADD KEY `fk_enrollment_student_idx` (`student_id`),
  ADD KEY `fk_enrollment_class_idx` (`class_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `registration_period`
--
ALTER TABLE `registration_period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`period`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`year`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD KEY `fk_student_faculty_idx` (`faculty`),
  ADD KEY `fk_studnet_class_idx` (`class`),
  ADD KEY `fk_student_schoolyear_idx` (`school_year`);

--
-- Indexes for table `trade`
--
ALTER TABLE `trade`
  ADD PRIMARY KEY (`trade_ID`),
  ADD KEY `fk_trade_enrollment_idx` (`period_id`,`course_id`,`student_id`,`class_id`),
  ADD KEY `fk_trade_course_idx` (`target_course_id`),
  ADD KEY `fk_trade_target_class_idx` (`target_class_id`),
  ADD KEY `fk_trade_student2_idx` (`student2_id`),
  ADD KEY `fk_trade_class` (`class_id`),
  ADD KEY `fk_trade_course` (`course_id`),
  ADD KEY `fk_trade_student` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2027;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;

--
-- AUTO_INCREMENT for table `registration_period`
--
ALTER TABLE `registration_period`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trade`
--
ALTER TABLE `trade`
  MODIFY `trade_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_admin_faculty` FOREIGN KEY (`ID`) REFERENCES `faculty` (`ID`);

--
-- Constraints for table `available_course`
--
ALTER TABLE `available_course`
  ADD CONSTRAINT `fk_availablecourse_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`ID`),
  ADD CONSTRAINT `fk_availablecourse_faculty` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`ID`),
  ADD CONSTRAINT `fk_availablecourse_registrationperiod` FOREIGN KEY (`period_id`) REFERENCES `registration_period` (`id`),
  ADD CONSTRAINT `fk_availablecourse_schoolyear` FOREIGN KEY (`school_year`) REFERENCES `school_year` (`year`);

--
-- Constraints for table `available_course_info`
--
ALTER TABLE `available_course_info`
  ADD CONSTRAINT `fk_acinfo_ac` FOREIGN KEY (`period_id`,`course_id`) REFERENCES `available_course` (`period_id`, `course_id`),
  ADD CONSTRAINT `fk_acinfo_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`ID`),
  ADD CONSTRAINT `fk_acinfo_day` FOREIGN KEY (`day`) REFERENCES `day` (`num`),
  ADD CONSTRAINT `fk_acinfo_romo` FOREIGN KEY (`room`) REFERENCES `room` (`name`),
  ADD CONSTRAINT `fk_acinfo_schedule1` FOREIGN KEY (`start_period`) REFERENCES `schedule` (`period`),
  ADD CONSTRAINT `fk_acinfo_schedule2` FOREIGN KEY (`end_period`) REFERENCES `schedule` (`period`);

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `fk_class_faculty` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`ID`),
  ADD CONSTRAINT `fk_class_schoolyear` FOREIGN KEY (`school_year`) REFERENCES `school_year` (`year`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_course_faculty` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`ID`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `fk_enrollment_ac` FOREIGN KEY (`period_id`,`course_id`) REFERENCES `available_course` (`period_id`, `course_id`),
  ADD CONSTRAINT `fk_enrollment_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`ID`),
  ADD CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`ID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_class` FOREIGN KEY (`class`) REFERENCES `class` (`ID`),
  ADD CONSTRAINT `fk_student_faculty` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`ID`),
  ADD CONSTRAINT `fk_student_schoolyear` FOREIGN KEY (`school_year`) REFERENCES `school_year` (`year`);

--
-- Constraints for table `trade`
--
ALTER TABLE `trade`
  ADD CONSTRAINT `fk_trade_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`ID`),
  ADD CONSTRAINT `fk_trade_class2` FOREIGN KEY (`target_class_id`) REFERENCES `class` (`ID`),
  ADD CONSTRAINT `fk_trade_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`ID`),
  ADD CONSTRAINT `fk_trade_course2` FOREIGN KEY (`target_course_id`) REFERENCES `course` (`ID`),
  ADD CONSTRAINT `fk_trade_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`ID`),
  ADD CONSTRAINT `fk_trade_student2` FOREIGN KEY (`student2_id`) REFERENCES `student` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
