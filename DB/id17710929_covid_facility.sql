-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2022 at 09:43 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid_facility`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_barangay`
--

CREATE TABLE `db_barangay` (
  `id` int(11) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_barangay`
--

INSERT INTO `db_barangay` (`id`, `barangay`, `name`, `contact`) VALUES
(146, 'Alibago', 'Mr. Alibago', '+6392122022'),
(147, 'Balingueo', 'Mr. Balingueo', '+639212200'),
(148, 'Banaoang', 'Mr. Banaoang', '+639212200'),
(149, 'Banzal', 'Mr. Banzal', '+639212200'),
(150, 'Botao', 'Mr. Botao', '+639212200'),
(151, 'Cablong', 'Mr. Cablong', '+639212200'),
(152, 'Carusucan', 'Mr. Carusucan', '+639212200'),
(153, 'Dalongue', 'Mr. Dalongue', '+639212200'),
(154, 'Erfe', 'Mr. Erfe', '+639212200'),
(155, 'Gueguesangen', 'Mr. Gueguesangen', '+639212200'),
(156, 'Leet', 'Mr. Leet', '+639212200'),
(157, 'Malanay', 'Mr. Malanay', '+639212200'),
(158, 'Maningding', 'Mr. Maningding', '+639212200'),
(159, 'Maronong', 'Mr. Maronong', '+639212200'),
(160, 'Maticmatic', 'Mr. Maticmatic', '+639212200'),
(161, 'Minien East', 'Mr. Minien East', '+639212200'),
(162, 'Minien West', 'Mr. Minien West', '+639212200'),
(163, 'Nilombot', 'Mr. Nilombot', '+639212200'),
(164, 'Patayac', 'Mr. Patayac', '+639212200'),
(165, 'Payas', 'Mr. Payas', '+639212200'),
(166, 'Tebag East', 'Mr. Tebag East', '+639212200'),
(167, 'Tebag West', 'Mr. Tebag West', '+639212200'),
(168, 'Poblacion Norte', 'Mr. Poblacion Norte', '+639212200'),
(169, 'Poblacion Sur', 'Mr. Poblacion Sur', '+639212200'),
(170, 'Primicias', 'Mr. Primicias', '+639212200'),
(171, 'Sapang', 'Mr. Sapang', '+639212200'),
(172, 'Sonquil', 'Mr. Sonquil', '+639212200'),
(173, 'Tuliao', 'Mr. Tuliao', '+639212200'),
(174, 'Ventenilla', 'Mr. Ventenilla', '+639212200');

-- --------------------------------------------------------

--
-- Table structure for table `db_patient`
--

CREATE TABLE `db_patient` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `age` varchar(3) NOT NULL,
  `status` varchar(15) NOT NULL,
  `room` varchar(8) NOT NULL,
  `dateofconfine` varchar(100) NOT NULL,
  `dateofdischarge` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_patient`
--

INSERT INTO `db_patient` (`id`, `name`, `contact`, `barangay`, `gender`, `age`, `status`, `room`, `dateofconfine`, `dateofdischarge`) VALUES
(401, 'DacanaySean', '021312', 'Tebag East', 'Male', '23', 'Recovered', 'ROOM12', '2022-02-27 04:24:27', '2022-02-27 04:25:26'),
(402, 'sean', '09123456789', 'Minien East', 'Male', '56', 'Recovered', 'ROOM12', '2022-02-27 05:02:28', '2022-02-27 05:05:34'),
(403, 'patrick', '0998676745635', 'Nilombot', 'Male', '21', 'Asymptomatic', 'ROOM174', '2022-02-27 05:02:39', ''),
(407, 'asdasdasd', '+639212200', 'Maticmatic', 'Male', '2sd', 'Symptomatic', 'room15', '2022-03-02 01:09:43', ''),
(408, 'adsfadsfasdf', '123123123', 'Maronong', 'Female', '123', 'Died', 'room15', '2022-03-02 01:10:05', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_room`
--

CREATE TABLE `db_room` (
  `id` int(11) NOT NULL,
  `room` varchar(8) NOT NULL,
  `occupied` int(15) NOT NULL,
  `capacity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_room`
--

INSERT INTO `db_room` (`id`, `room`, `occupied`, `capacity`) VALUES
(135, 'room14', 0, 4),
(136, 'room15', 2, 2),
(137, 'room16', 0, 2),
(142, 'ROOM174', 1, 2),
(143, 'ROOM12', 1, 2),
(145, 'Room3', 0, 4),
(146, 'Room6', 0, 4),
(147, 'Room 9', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_barangay`
--
ALTER TABLE `db_barangay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_patient`
--
ALTER TABLE `db_patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_room`
--
ALTER TABLE `db_room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room` (`room`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_barangay`
--
ALTER TABLE `db_barangay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `db_patient`
--
ALTER TABLE `db_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `db_room`
--
ALTER TABLE `db_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
