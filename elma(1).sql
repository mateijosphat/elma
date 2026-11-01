-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2025 at 09:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elma`
--

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `patientnumber` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `residence` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `attended` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`patientnumber`, `name`, `residence`, `phone`, `attended`) VALUES
('1', 'limo matei', 'shanghai', '08784444', 1),
('2', 'limo matei', 'shanghai', '087846444', 0),
('3', 'limo matei', 'shanghai', '0746695621', 0),
('4', 'john', 'eldi', '08387747', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `name` varchar(100) NOT NULL,
  `patientnumber` varchar(100) NOT NULL,
  `residence` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `dateofbirth` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `namekin` varchar(255) NOT NULL,
  `phonekin` varchar(255) NOT NULL,
  `relationshiptopatient` varchar(100) NOT NULL,
  `bloodgroup` varchar(100) NOT NULL,
  `patienttype` varchar(100) NOT NULL,
  `selectedservice` varchar(100) NOT NULL,
  `servicetype` varchar(100) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `complaintdetails` varchar(255) NOT NULL,
  `pasthistory` varchar(100) NOT NULL,
  `pasthistorydetails` varchar(255) NOT NULL,
  `presenthistory` varchar(255) NOT NULL,
  `socioeconomic` varchar(255) NOT NULL,
  `vitals` text NOT NULL,
  `general` varchar(255) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `diagnosisdetails` varchar(255) NOT NULL,
  `investigations` text NOT NULL,
  `bloodtest` varchar(255) NOT NULL,
  `treatment` varchar(255) NOT NULL,
  `paymentstatus` varchar(100) NOT NULL,
  `amount` decimal(60,2) NOT NULL,
  `method` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `day` int(100) NOT NULL,
  `month` int(100) NOT NULL,
  `year` int(100) NOT NULL,
  `dateofregistration` varchar(100) NOT NULL,
  `followup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`name`, `patientnumber`, `residence`, `phone`, `dateofbirth`, `gender`, `namekin`, `phonekin`, `relationshiptopatient`, `bloodgroup`, `patienttype`, `selectedservice`, `servicetype`, `complaint`, `complaintdetails`, `pasthistory`, `pasthistorydetails`, `presenthistory`, `socioeconomic`, `vitals`, `general`, `diagnosis`, `diagnosisdetails`, `investigations`, `bloodtest`, `treatment`, `paymentstatus`, `amount`, `method`, `code`, `day`, `month`, `year`, `dateofregistration`, `followup`) VALUES
('limo matei', '1', 'shanghai', '08784444', '2025-10-21', 'Male', 'matei limo', '0736644', 'Parent', 'AB-', 'outpatient', 'Vaccination', 'BCG', 'Others (Specify below)', 'trttr', 'Others (Specify below)', '55tt5', 'rfrfg', 'ttg', '{\"BP\":\"45\",\"Temp\":\"32\",\"Pulse\":\"45\",\"RR\":\"66\",\"SpO2\":\"33\",\"Weight\":\"23\"}', 'gg', 'Others (Specify below)', 'ghhc', '{\"Blood Tests\":\"on\"}', 'blood glucose', 'ghh', 'Paid', 75.00, 'M-PESA', 'hhtrr', 2, 10, 2025, '21/10/2025', ' '),
('john', '4', 'eldi', '08387747', '2025-10-23', 'Male', 'kim', '0764322', 'Parent', 'AB+', 'outpatient', 'Vaccination', 'BCG', 'Others (Specify below)', 'jjkdkd', 'Others (Specify below)', 'dfdfdf', 'dfdfdf', 'fgfgfg', '{}', 'ghghh', 'Others (Specify below)', 'ghghh', '{\"MRDT\":\"on\",\"Urinalysis\":\"on\"}', '', 'hjjdj', 'Paid', 400.00, 'M-PESA', 'IIEJJ', 4, 10, 2025, '23/10/2025', 'on'),
('limo matei', '1', 'shanghai', '08784444', '2025-10-21', 'Male', 'matei limo', '0736644', 'Parent', 'AB-', '', 'General Check-up', ' ', 'Others (Specify below)', 'hhh', 'None', 'trtrre', 'skjhh', 'rtr', '{\"BP\":\"54\",\"Temp\":\"65\",\"Pulse\":\"43\",\"RR\":\"53\",\"SpO2\":\"32\",\"Weight\":\"54\"}', 'hg', 'Diabetes', 'tgttrrrr', '{\"MRDT\":\"on\",\"Urinalysis\":\"on\"}', '', 'yyttr', 'Not Paid', 50.00, 'M-PESA', 'N/A', 6, 11, 2025, '22/11/2025', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `phone`, `password`, `role`) VALUES
('matei limo', 'mateilimo1@gmail.com', '+254 746 695 621', '$2b$10$KhulT83R2MnV0yrJEbqOCODkz/XIiEhZQ6b9PQxHERtue57hzl/c.', 'receptionist'),
('matei limo', 'mateilimo12@gmail.com', '0746695621', '$2b$10$K0VeMSsSbN7loZg2.NWOn.Wk.Hv/ZUI.YPv6dDHVK45FPQpnvb4s.', 'doctor'),
('matei josphat', 'mateilimo50@gmail.com', '074693873', '$2b$10$.UK4jSCeO.T4O71pNEs.AuayO1tbYK3hlnJIdfLOVdC/68x513Cv.', 'doctor'),
('limo jj', 'limo44@gmail.com', '0756355266', '$2b$10$jNNQfskcUqHU33FBAZMNte53g6JVBX3oTqZHXa5gXhoPPDz.cQdP2', 'receptionist'),
('limo matei', 'mateilimo5@gmail.com', '074899995621', '$2b$10$L6kKgEiTmbO1hGfAQZjRV.NoY7.kTxRt6daSFqPvdLjNVhihSnsSy', 'receptionist');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
