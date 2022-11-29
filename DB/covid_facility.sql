-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2022 at 10:48 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

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
  `name` varchar(50) NOT NULL,
  `contact` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_barangay`
--

INSERT INTO `db_barangay` (`id`, `barangay`, `name`, `contact`) VALUES
(1, 'Alibago', 'brgy captain of Alibago', '09112312435'),
(2, 'Balingueo', 'brgy captain of Balingueo', '09124215232'),
(8, 'Banaoag', 'brgy captain of Banaoag', '09094094825'),
(10, 'Banzal', 'brgy captain of Banzal', '09711214411'),
(11, 'Botao', 'brgy captain of Botao', '09671214186'),
(12, 'Cablong', 'brgy captain of Cablong', '09548734548'),
(15, 'Carusucan', 'brgy captain of Carusucan', '09343843463'),
(16, 'Dalongue', 'brgy captain of Dalongue', '09838746547'),
(17, 'Erfe', 'brgy captain of Efre', '09613578245'),
(18, 'Gueguesangen', 'brgy captain of Gueguesangen', '09346345749'),
(19, 'Leet', 'brgy captain of Leet', '09385634753'),
(20, 'Malanay', 'brgy captain of malanay', '09094094825'),
(21, 'Maningding', 'brgy captain of maningdig', '09135238472'),
(22, 'Maronong', 'brgy captain of Maronong', '09127127361'),
(23, 'Maticmatic', 'brgy captain of Maticmatic', '09615471265'),
(24, 'Minien East', 'brgy captain of minien East', '09174182361'),
(25, 'Minien West', 'brgy captain of minien West', '09126512736'),
(26, 'Nilombot', 'brgy captain of Nilombot', '09193641273'),
(27, 'Patayac', 'brgy captain of Patayac', '09284524523'),
(28, 'Payas', 'brgy captain of Payas', '09716241261'),
(29, 'Tebag East', 'brgy captain of Tebag East', '09873846787'),
(30, 'Tebag West', 'brgy captain of Tebag West', '09174212741'),
(31, 'Pobalacion Norte', 'brgy captain of Pobalacion', '09144589325'),
(32, 'Pobalacion Sur', 'brgy captain of Pobalacion Sur', '09235723532'),
(33, 'Primicias', 'brgy captain of Primicias', '09768715821'),
(34, 'Sapang', 'brgy captain of Sapang', '09736417264'),
(35, 'Sonquil', 'brgy captain of Sonquil', '09816512837'),
(36, 'Tuliao', 'brgy captain of Tuliao', '09712871369'),
(37, 'Ventenilla', 'brgy captain of Ventenilla', '09871812312'),
(57, 'sta.maria', 'osyong', '09064094835'),
(58, 'san jacinto', 'de vera', '09064094835');

-- --------------------------------------------------------

--
-- Table structure for table `db_patient`
--

CREATE TABLE `db_patient` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(11) NOT NULL,
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
(4, 'Seanpatrick', '09123124211', 'Payas', 'Male', '42', 'Died', 'room5', '2022-03-17 04:49:29', '2022-03-17 05:00:38'),
(8, 'sean', '09064094835', 'Minien East', 'Male', '21', 'Died', 'Room9', '2022-03-31 08:17:25', ''),
(9, 'osyong', '09064094835', 'sta.maria', 'Male', '21', 'Recovered', 'Room6', '2022-03-31 08:36:29', ''),
(10, 'de vera', '09064094835', 'Patayac', 'Male', '21', 'Died', 'Room8', '2022-03-31 08:45:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_room`
--

CREATE TABLE `db_room` (
  `id` int(11) NOT NULL,
  `room` varchar(8) NOT NULL,
  `occupied` int(15) NOT NULL,
  `capacity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_room`
--

INSERT INTO `db_room` (`id`, `room`, `occupied`, `capacity`) VALUES
(156, 'Room2', 0, 5),
(157, 'Room3', 0, 2),
(159, 'room4', 0, 3),
(164, 'Room1', 0, 2),
(169, 'room5', 0, 2),
(177, 'Room6', 1, 3),
(178, 'Room7', 0, 5),
(179, 'Room10', 0, 5),
(180, 'Room9', 1, 2),
(181, 'Room8', 1, 5),
(182, 'Room11', 0, 5),
(183, 'room12', 0, 5),
(184, 'room13', 0, 5),
(185, 'room14', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `lastname`, `username`, `password`, `usertype`) VALUES
(1, '', 'admin', 'qwerty', 'admin'),
(2, '', 'seanpatrick', 'seanpatrick', 'admin'),
(3, '', 'seanpatric', 'seanpatric', 'user'),
(4, '', 'qwerty', 'qwerty', 'user'),
(5, '', 'sean', 'seanpatrick', 'user'),
(6, 'dacanay', '03-1920-00031', 'dacanay123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_barangay`
--
ALTER TABLE `db_barangay`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barangay` (`barangay`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `username_2` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_barangay`
--
ALTER TABLE `db_barangay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `db_patient`
--
ALTER TABLE `db_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `db_room`
--
ALTER TABLE `db_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
