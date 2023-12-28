-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 06:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `roll_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_name`, `roll_number`) VALUES
(1, 'James', '68'),
(2, 'Malan', '28'),
(3, 'David', '40'),
(4, 'Warner', '56'),
(5, 'Stark', '12');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_records`
--

CREATE TABLE `attendance_records` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `roll_number` varchar(255) NOT NULL,
  `attendance_status` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_records`
--

INSERT INTO `attendance_records` (`id`, `student_name`, `roll_number`, `attendance_status`, `date`) VALUES
(1, 'James', '68', 'Present', '2023-10-10'),
(2, 'Malan', '28', 'Absent', '2023-10-10'),
(3, 'David', '40', 'Present', '2023-10-10'),
(4, 'Warner', '56', 'Present', '2023-10-10'),
(5, 'Stark', '12', 'Absent', '2023-10-10'),
(6, 'James', '68', 'Present', '2023-10-11'),
(7, 'Malan', '28', 'Present', '2023-10-11'),
(8, 'David', '40', 'Absent', '2023-10-11'),
(9, 'Warner', '56', 'Present', '2023-10-11'),
(10, 'Stark', '12', 'Absent', '2023-10-11'),
(11, 'a', '101', 'Absent', '2023-10-11'),
(47, 'James', '68', 'Present', '2023-10-12'),
(48, 'Malan', '28', 'Absent', '2023-10-12'),
(49, 'David', '40', 'Present', '2023-10-12'),
(50, 'Warner', '56', 'Absent', '2023-10-12'),
(51, 'Stark', '12', 'Present', '2023-10-12'),
(52, 'a', '101', 'Absent', '2023-10-12'),
(53, 'gotiyo', '89', 'Present', '2023-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `date_students`
--

CREATE TABLE `date_students` (
  `stu_id` int(11) NOT NULL,
  `stu_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `date_students`
--

INSERT INTO `date_students` (`stu_id`, `stu_date`) VALUES
(1, '2023-10-12'),
(2, '2023-10-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_records`
--
ALTER TABLE `attendance_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date_students`
--
ALTER TABLE `date_students`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attendance_records`
--
ALTER TABLE `attendance_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `date_students`
--
ALTER TABLE `date_students`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
