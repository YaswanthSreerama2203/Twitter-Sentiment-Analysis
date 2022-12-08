-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 11:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icare`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignedpatients`
--

CREATE TABLE `assignedpatients` (
  `ID` int(11) NOT NULL,
  `Patient_ID` int(11) NOT NULL,
  `Worker_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignedpatients`
--

INSERT INTO `assignedpatients` (`ID`, `Patient_ID`, `Worker_ID`) VALUES
(80, 9, 1158),
(92, 2, 1),
(93, 3, 1),
(94, 4, 1),
(96, 14, 1),
(97, 5, 1),
(98, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `documentmetadata`
--

CREATE TABLE `documentmetadata` (
  `doc_id` int(11) NOT NULL,
  `doc_name` text NOT NULL,
  `DOC` date NOT NULL,
  `text` text NOT NULL,
  `patient_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `drugs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documentmetadata`
--

INSERT INTO `documentmetadata` (`doc_id`, `doc_name`, `DOC`, `text`, `patient_id`, `worker_id`, `drugs`) VALUES
(141, '', '0000-00-00', '', 1, 1, ''),
(142, '', '0000-00-00', '', 1, 1, ''),
(143, 'aysydfa', '2022-11-17', 'ITweqwe', 1, 1, ''),
(144, 'aysydfa', '2022-11-17', 'ITweqwe', 1, 1, ''),
(145, 'aysydfa', '2022-11-17', 'ITweqwe', 1, 1, ' Aspirin Paracetamol'),
(146, 'aysydfa', '2022-11-17', 'ITweqwe', 1, 1, ''),
(147, 'aysydfa', '2022-11-17', 'ITweqwe', 1, 1, ' Aspirin Paracetamol'),
(148, 'aysydfa', '2022-11-17', 'ITweqwe', 1, 1, ''),
(149, 'aysydfa', '2022-11-17', 'ITweqwe', 1, 1, ' Aspirin Paracetamol'),
(150, 'aysydfa', '2022-11-17', 'ITweqwe', 1, 1, ''),
(151, '', '0000-00-00', '', 1, 1, 'Paracetamol '),
(152, 'aysydfaasd', '2022-11-17', 'ITweqwe', 1, 1, ' Aspirin Paracetamol'),
(153, 'aysydfaaasda', '2022-11-17', 'ITweqwe', 1, 1, ' Aspirin Paracetamol'),
(154, 'hwhds', '0000-00-00', 'mwad', 0, 0, ''),
(155, 'hwhds', '0000-00-00', 'mwad', 0, 0, ''),
(156, 'hwhds', '0000-00-00', 'mwad', 0, 0, ''),
(157, 'abc', '2022-11-24', 'jagqweqe', 1, 1, ' Paracetamol 5 doses, Aspirin 6 per day Pencilin 7 per hour '),
(158, '', '0000-00-00', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `drugdata`
--

CREATE TABLE `drugdata` (
  `drug_id` int(11) NOT NULL,
  `drug_name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drugdata`
--

INSERT INTO `drugdata` (`drug_id`, `drug_name`, `description`) VALUES
(1, 'Aspirin', 'Headache'),
(2, 'Paracetamol', 'Fever'),
(7, 'Pencilin', 'asda'),
(8, 'Azythromycin', 'cold');

-- --------------------------------------------------------

--
-- Table structure for table `geocode`
--

CREATE TABLE `geocode` (
  `id` int(11) NOT NULL,
  `loc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `geocode`
--

INSERT INTO `geocode` (`id`, `loc`) VALUES
(9, 'Plano'),
(11, 'Denton'),
(12, 'Denton'),
(13, 'Frisco'),
(14, 'Denton'),
(15, 'Denton'),
(19, 'Austin');

-- --------------------------------------------------------

--
-- Table structure for table `icareuser`
--

CREATE TABLE `icareuser` (
  `ID` int(15) NOT NULL,
  `name` text NOT NULL,
  `profession` text NOT NULL,
  `Email` text NOT NULL,
  `HiredDate` date NOT NULL,
  `FinishedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icareuser`
--

INSERT INTO `icareuser` (`ID`, `name`, `profession`, `Email`, `HiredDate`, `FinishedDate`) VALUES
(1, 'Robert', 'doc', 'asdavdf', '2022-11-07', '2022-11-23'),
(2, 'Li Nak', 'Nurse', 'sacc', '2022-11-30', '2022-11-13'),
(55, 'admin', 'admin', 'asaccas', '2022-11-07', '2022-11-22'),
(1156, 'Carl a', 'doc', 'asda', '2022-11-08', '2022-11-02'),
(1157, 'Ben', 'Nurse', 'asdas', '2022-11-02', '2022-11-12'),
(1158, 'Mike', 'doc', 'asda', '2022-11-01', '2022-11-23'),
(1159, 'Mike', 'doc', 'asda', '2022-11-01', '2022-11-23'),
(1160, 'Mike', 'doc', 'asda', '2022-11-01', '2022-11-23'),
(1161, 'adam', 'doc', 'asa', '2022-11-02', '2022-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `modhistory`
--

CREATE TABLE `modhistory` (
  `modid` int(11) NOT NULL,
  `docid` int(11) NOT NULL,
  `moddate` date NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modhistory`
--

INSERT INTO `modhistory` (`modid`, `docid`, `moddate`, `text`) VALUES
(1, 0, '0000-00-00', '[ads]'),
(2, 12, '0000-00-00', 'ada'),
(3, 100, '0000-00-00', 'ada'),
(4, 100, '0000-00-00', 'ada'),
(5, 12, '0000-00-00', 'kasd'),
(6, 97, '0000-00-00', 'asda'),
(7, 97, '0000-00-00', 'asda'),
(8, 97, '0000-00-00', 'asda'),
(9, 97, '0000-00-00', 'asda'),
(10, 97, '0000-00-00', 'asdhasdgashd'),
(11, 141, '2022-11-17', 'ihasdqw'),
(12, 141, '2022-11-10', 'ajdqwda'),
(13, 141, '2022-11-17', 'wqd'),
(14, 141, '2022-11-17', 'wqd'),
(15, 141, '2022-11-17', 'mwqdbq'),
(16, 141, '2022-11-17', 'mw'),
(17, 141, '2022-11-17', 'mwad'),
(18, 141, '2022-11-17', 'mwad'),
(19, 141, '2022-11-17', 'mwad'),
(20, 141, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `patientrecord`
--

CREATE TABLE `patientrecord` (
  `ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `DOB` date NOT NULL,
  `height` double NOT NULL,
  `weight` double NOT NULL,
  `bloodGroup` text NOT NULL,
  `bedID` text NOT NULL,
  `treatmentArea` text NOT NULL,
  `Doc_Assigned` int(11) NOT NULL DEFAULT 0,
  `Nurse_Assigned` int(11) DEFAULT 0,
  `icare_loc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientrecord`
--

INSERT INTO `patientrecord` (`ID`, `name`, `address`, `DOB`, `height`, `weight`, `bloodGroup`, `bedID`, `treatmentArea`, `Doc_Assigned`, `Nurse_Assigned`, `icare_loc`) VALUES
(1, 'Hales', 'Denton', '0000-00-00', 0, 0, 'A+', '1', 'Denton', 0, 0, ''),
(2, 'Albe', 'Denton', '0000-00-00', 5, 6, 'B-', 'Sda', 'Add', 1, 0, ''),
(3, 'abasda', '123', '2022-11-10', 23, 54, 'A', '2', '123', 1, 0, ''),
(4, 'Alex', 'Denton', '2022-11-02', 6, 50, 'A+', '124', 'asda', 1, 0, ''),
(5, 'Cart', 'Denton', '2022-11-16', 6, 50, 'A+', '124', '123', 1, 0, ''),
(9, 'adas', 'asda', '2022-12-06', 1223, 44, 'A+', '124', '123', 1, 0, 'Plano'),
(13, 'GSM', 'Avenue A', '1999-07-12', 6.2, 200, 'A+', '143', 'ENT', 0, 0, 'Frisco'),
(14, 'asdas', '', '0000-00-00', 11, 0, 'ad', 'asdaqwe', '', 1, 0, 'Denton'),
(19, 'Sai', 'West Prairie Street', '2022-11-02', 6, 50, 'A+', '124', 'Austin', 1, 0, 'Austin');

-- --------------------------------------------------------

--
-- Table structure for table `treatmentdetails`
--

CREATE TABLE `treatmentdetails` (
  `treat_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `treat_date` date NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatmentdetails`
--

INSERT INTO `treatmentdetails` (`treat_id`, `worker_id`, `patient_id`, `treat_date`, `Description`) VALUES
(7, 1, 0, '2022-11-11', '123'),
(8, 1, 0, '2022-11-01', '213123'),
(9, 1158, 0, '2022-11-16', 'Paraacentmol'),
(10, 1, 0, '2022-11-02', ''),
(11, 1, 0, '2022-11-02', ''),
(12, 1, 0, '2022-11-02', ''),
(13, 1, 0, '2022-11-03', 'ASDA'),
(14, 1, 0, '2022-11-10', 'pere'),
(15, 1, 0, '2022-11-18', 'Flu Shot'),
(16, 1, 0, '2022-11-09', 'asda');

-- --------------------------------------------------------

--
-- Table structure for table `userpassword`
--

CREATE TABLE `userpassword` (
  `ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userpassword`
--

INSERT INTO `userpassword` (`ID`, `name`, `password`) VALUES
(1, 'Robert', 'admin'),
(2, 'Linda', 'admin'),
(55, 'admin', 'admin'),
(56, 'Mike', 'admin'),
(1158, 'Mike', 'admin'),
(1161, 'adam', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignedpatients`
--
ALTER TABLE `assignedpatients`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `documentmetadata`
--
ALTER TABLE `documentmetadata`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `drugdata`
--
ALTER TABLE `drugdata`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `geocode`
--
ALTER TABLE `geocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icareuser`
--
ALTER TABLE `icareuser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `modhistory`
--
ALTER TABLE `modhistory`
  ADD PRIMARY KEY (`modid`);

--
-- Indexes for table `patientrecord`
--
ALTER TABLE `patientrecord`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `treatmentdetails`
--
ALTER TABLE `treatmentdetails`
  ADD PRIMARY KEY (`treat_id`);

--
-- Indexes for table `userpassword`
--
ALTER TABLE `userpassword`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignedpatients`
--
ALTER TABLE `assignedpatients`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `documentmetadata`
--
ALTER TABLE `documentmetadata`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `drugdata`
--
ALTER TABLE `drugdata`
  MODIFY `drug_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `geocode`
--
ALTER TABLE `geocode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `icareuser`
--
ALTER TABLE `icareuser`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1162;

--
-- AUTO_INCREMENT for table `modhistory`
--
ALTER TABLE `modhistory`
  MODIFY `modid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patientrecord`
--
ALTER TABLE `patientrecord`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `treatmentdetails`
--
ALTER TABLE `treatmentdetails`
  MODIFY `treat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userpassword`
--
ALTER TABLE `userpassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1162;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
