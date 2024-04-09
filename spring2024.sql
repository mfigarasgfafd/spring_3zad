-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2024 at 03:50 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring2024`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tuser`
--

CREATE TABLE `tuser` (
  `login` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rentedPlate` varchar(64) DEFAULT NULL,
  `role` enum('USER','ADMIN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tuser`
--

INSERT INTO `tuser` (`login`, `password`, `rentedPlate`, `role`) VALUES('lukasz', '6a01d2ff826b812897ab3dec11e939779d3b06dc3625c3377bd4ae9639e8a9bd', 'Lu1234', 'ADMIN');
INSERT INTO `tuser` (`login`, `password`, `rentedPlate`, `role`) VALUES('student', 'ad454dc5db203e4280041fcd250c3de1188cf66613d03a8fc6f0eadc3d1bec97', NULL, 'USER');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tvehicle`
--

CREATE TABLE `tvehicle` (
  `plate` varchar(64) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` int(6) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `category` varchar(64) DEFAULT NULL,
  `rent` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tvehicle`
--

INSERT INTO `tvehicle` (`plate`, `brand`, `model`, `year`, `price`, `category`, `rent`) VALUES('Lu1000', 'Honda', 'CBR1000RR-R Fireblade SP', 2023, 500.00, 'A', 0);
INSERT INTO `tvehicle` (`plate`, `brand`, `model`, `year`, `price`, `category`, `rent`) VALUES('Lu1234', 'Audi', 'A4', 2021, 400.00, NULL, 1);
INSERT INTO `tvehicle` (`plate`, `brand`, `model`, `year`, `price`, `category`, `rent`) VALUES('LU3000', 'BMW', 's3', 2019, 300.00, NULL, 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`login`) USING BTREE,
  ADD KEY `fk_user_vehicle` (`rentedPlate`);

--
-- Indeksy dla tabeli `tvehicle`
--
ALTER TABLE `tvehicle`
  ADD PRIMARY KEY (`plate`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tuser`
--
ALTER TABLE `tuser`
  ADD CONSTRAINT `fk_user_vehicle` FOREIGN KEY (`rentedPlate`) REFERENCES `tvehicle` (`plate`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
