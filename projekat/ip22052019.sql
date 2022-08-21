-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2019 at 10:46 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ip22052019`
--

-- --------------------------------------------------------

--
-- Table structure for table `proizvodjaci`
--

CREATE TABLE `proizvodjaci` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `proizvodjaci`
--

INSERT INTO `proizvodjaci` (`id`, `naziv`) VALUES
(1, 'Apple'),
(2, 'Samsung');

-- --------------------------------------------------------

--
-- Table structure for table `telefoni`
--

CREATE TABLE `telefoni` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cena` float(8,2) NOT NULL,
  `id_proizvodjaca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `telefoni`
--

INSERT INTO `telefoni` (`id`, `naziv`, `cena`, `id_proizvodjaca`) VALUES
(1, 'Iphone', 1200.00, 1),
(2, 'Samsung Galaxy', 1000.00, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `proizvodjaci`
--
ALTER TABLE `proizvodjaci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telefoni`
--
ALTER TABLE `telefoni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_proizvodjaca` (`id_proizvodjaca`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `proizvodjaci`
--
ALTER TABLE `proizvodjaci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `telefoni`
--
ALTER TABLE `telefoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `telefoni`
--
ALTER TABLE `telefoni`
  ADD CONSTRAINT `telefoni_ibfk_1` FOREIGN KEY (`id_proizvodjaca`) REFERENCES `proizvodjaci` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
