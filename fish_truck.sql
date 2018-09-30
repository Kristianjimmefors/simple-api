-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 30, 2018 at 01:42 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fish_truck`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `categoryName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `categoryName`) VALUES
(1, 'färsk fisk'),
(2, 'färdig mat'),
(3, 'skaldjur');

-- --------------------------------------------------------

--
-- Table structure for table `fresh_fish`
--

CREATE TABLE `fresh_fish` (
  `ID` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `fat` int(11) NOT NULL,
  `nutritional` int(11) NOT NULL,
  `catch_zone` varchar(40) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fresh_fish`
--

INSERT INTO `fresh_fish` (`ID`, `name`, `fat`, `nutritional`, `catch_zone`, `price`) VALUES
(1, 'Abborre', 13, 23, 'Östersjön', 150),
(2, 'Hälleflundra', 21, 12, 'Östersjön', 412),
(3, 'Lax', 12, 31, 'Medelhavet', 89),
(4, 'Kungsfisk', 10, 8, 'Medelhavet', 999),
(5, 'Makrill', 15, 20, 'Atlanten', 80),
(6, 'Marulk', 30, 20, 'Atlanten', 200),
(7, 'Piggvar', 7, 5, 'Stilla havet', 124),
(8, 'Regnbågslax', 31, 12, 'Indiska oceanen', 129),
(9, 'Gös', 14, 25, 'Medelhavet', 125),
(10, 'Havskatt', 42, 24, 'Östersjön', 320),
(11, 'Karp', 32, 13, 'Medelhavet', 199),
(12, 'Knot', 12, 31, 'Atlanten', 299),
(13, 'Lake', 7, 26, 'Atlanten', 70),
(14, 'Lubb', 9, 23, 'Atlanten', 180),
(15, 'Pigghaj', 34, 50, 'Atlanten', 500);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `weight` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `name`, `weight`, `price`, `categoryID`) VALUES
(1, 'Lax', 1000, 89, 1),
(3, 'Abborre', 180, 150, 1),
(4, 'Hälleflundra', 220, 412, 1),
(5, 'Kungsfisk', 183, 999, 1),
(6, 'Makrill', 100, 80, 1),
(7, 'Marulk', 500, 200, 1),
(8, 'Piggvar', 250, 124, 1),
(9, 'Regnbågslax', 150, 129, 1),
(10, 'Gös', 13, 125, 1),
(11, 'Havskatt', 42, 320, 1),
(12, 'Karp', 41, 199, 1),
(13, 'Knot', 120, 299, 1),
(14, 'Lake', 103, 70, 1),
(15, 'Lubb', 182, 70, 1),
(16, 'Pigghaj', 500, 500, 1),
(17, 'Fisk bullar', 80, 149, 2),
(18, 'Fisk Pinnar', 20, 50, 2),
(19, 'Fisk gratäng', 200, 200, 2),
(20, 'Fisk soppa', 30, 70, 2),
(21, 'Fisk med potatis', 40, 200, 2),
(22, 'Krabba', 123, 200, 3),
(23, 'Räka', 20, 50, 3),
(24, 'Ostron', 15, 300, 3),
(25, 'Kräfta', 200, 120, 3),
(26, 'Hummer', 250, 1000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ready_meals`
--

CREATE TABLE `ready_meals` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `weight` int(11) NOT NULL,
  `fat` int(11) NOT NULL,
  `nutritional` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ready_meals`
--

INSERT INTO `ready_meals` (`ID`, `name`, `weight`, `fat`, `nutritional`, `price`) VALUES
(1, 'Fisk bullar', 80, 49, 38, 149),
(2, 'Fisk pinnar', 20, 3, 26, 50),
(3, 'Fisk gratäng', 200, 80, 33, 200),
(4, 'Fisk soppa', 30, 9, 16, 70),
(5, 'Fisk med potatis', 40, 50, 40, 200);

-- --------------------------------------------------------

--
-- Table structure for table `seafood`
--

CREATE TABLE `seafood` (
  `ID` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `catch_zone` varchar(40) NOT NULL,
  `fat` int(11) NOT NULL,
  `nutritional` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seafood`
--

INSERT INTO `seafood` (`ID`, `name`, `catch_zone`, `fat`, `nutritional`, `price`) VALUES
(1, 'Krabba', 'Medelhavet', 8, 15, 200),
(2, 'Räka', 'Östersjön', 1, 3, 50),
(3, 'Ostron', 'Medelhavet', 2, 8, 300),
(4, 'Kräfta', 'Östersjön', 8, 18, 120),
(5, 'Hummer', 'Östersjön', 10, 20, 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fresh_fish`
--
ALTER TABLE `fresh_fish`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ready_meals`
--
ALTER TABLE `ready_meals`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `seafood`
--
ALTER TABLE `seafood`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fresh_fish`
--
ALTER TABLE `fresh_fish`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `ready_meals`
--
ALTER TABLE `ready_meals`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `seafood`
--
ALTER TABLE `seafood`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
