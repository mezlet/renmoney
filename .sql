-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2019 at 03:50 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renmoney`
--

-- --------------------------------------------------------

--
-- Table structure for table `local_governments`
--

CREATE TABLE `local_governments` (
  `LGA` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `local_governments`
--

INSERT INTO `local_governments` (`LGA`, `state_id`) VALUES
('Abaji', 1),
('Abuja Municipal', 1),
('Bwari', 1),
('Gwagwalada', 1),
('Kuje', 1),
('Kwali', 1),
('Aba North', 2),
('Aba South', 2),
('Umuahia North', 2),
('Umuahia South', 2),
('Calabar Municipality', 3),
('Eket', 3),
('Uyo', 3),
('Awka North', 4),
('Awka South', 4),
('Nnewi', 4),
('Onitsha', 4),
('Abakaliki', 5),
('Asaba', 5),
('Oredo', 5),
('Ughelli', 5),
('Warri', 5),
('Ado', 6),
('Akure North', 6),
('Akure South', 6),
('Ikare', 6),
('Ondo East', 6),
('Ondo West', 6),
('Enugu East', 7),
('Enugu North', 7),
('Enugu South', 7),
('Nsukka', 7),
('Owerri Municipal', 8),
('Owerri North', 8),
('Owerri South', 8),
('Ilorin East', 9),
('Ilorin West', 9),
('Offa', 9),
('Agege', 10),
('Ajeromi-Ifelodun', 10),
('Alimosho', 10),
('Amuwo-Odofin', 10),
('Apapa', 10),
('Badagry', 10),
('Epe', 10),
('Eti-Osa', 10),
('Ibeju/Lekki', 10),
('Ifako-Ijaye', 10),
('Ikeja', 10),
('Ikorodu', 10),
('Kosofe', 10),
('Lagos Island', 10),
('Lagos Mainland', 10),
('Mushin', 10),
('Ojo', 10),
('Oshodi-Isolo', 10),
('Shomolu', 10),
('Surulere', 10),
('Abeokuta North', 11),
('Abeokuta South', 11),
('Ado-Odo/Ota', 11),
('Egbado North', 11),
('Egbado South', 11),
('Ewekoro', 11),
('Ifo', 11),
('Ijebu East', 11),
('Ijebu North', 11),
('Ijebu North East', 11),
('Ijebu Ode', 11),
('Ikenne', 11),
('Imeko-Afon', 11),
('Ipokia', 11),
('Obafemi-Owode', 11),
('Odeda', 11),
('Odogbolu', 11),
('Ogun Waterside', 11),
('Remo North', 11),
('Shagamu', 11),
('Ede', 12),
('Ile-ife', 12),
('Ilesha', 12),
('Osogbo', 12),
('Owo', 12),
('Ibadan Central', 13),
('Ibadan North', 13),
('Ibadan North West', 13),
('Ibadan South East', 13),
('Ibadan South West', 13),
('Lagelu Ogbomosho North', 13),
('Ogbmosho South', 13),
('Oyo East', 13),
('Oyo West', 13),
('Eleme', 14),
('Port Harcourt', 14);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state_name`) VALUES
(1, 'FCT'),
(2, 'Aba'),
(3, 'Akwa Ibom'),
(4, 'Anambra'),
(5, 'Delta'),
(6, 'Ondo'),
(7, 'Enugu'),
(8, 'Imo'),
(9, 'Kwara'),
(10, 'Lagos'),
(11, 'Ogun'),
(12, 'Osun'),
(13, 'Oyo'),
(14, 'Rivers');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `local_governments`
--
ALTER TABLE `local_governments`
  ADD PRIMARY KEY (`LGA`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `local_governments`
--
ALTER TABLE `local_governments`
  ADD CONSTRAINT `local_governments_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
