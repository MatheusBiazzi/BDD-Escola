-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 23, 2023 at 01:28 PM
-- Server version: 10.11.2-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atv_avaliativa_23_06`
--

-- --------------------------------------------------------

--
-- Table structure for table `homem`
--

CREATE TABLE `homem` (
  `cpf` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mulher`
--

CREATE TABLE `mulher` (
  `cpf` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `cpf_homem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `homem`
--
ALTER TABLE `homem`
  ADD PRIMARY KEY (`cpf`);

--
-- Indexes for table `mulher`
--
ALTER TABLE `mulher`
  ADD PRIMARY KEY (`cpf`),
  ADD KEY `cpf_homem` (`cpf_homem`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mulher`
--
ALTER TABLE `mulher`
  ADD CONSTRAINT `mulher_ibfk_1` FOREIGN KEY (`cpf_homem`) REFERENCES `homem` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
