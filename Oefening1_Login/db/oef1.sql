-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 27 jun 2018 om 19:07
-- Serverversie: 5.6.34-log
-- PHP-versie: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oef1`
--
CREATE DATABASE IF NOT EXISTS `oef1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `oef1`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tbluser`
--

CREATE TABLE `tbluser` (
  `UserID` tinyint(1) UNSIGNED NOT NULL,
  `UserNaam` varchar(180) NOT NULL,
  `UserEmail` varchar(200) NOT NULL,
  `UserPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `tbluser`
--

INSERT INTO `tbluser` (`UserID`, `UserNaam`, `UserEmail`, `UserPassword`) VALUES
(1, 'Thibeau Deleu', 'thibotheus@hotmail.com', '$2y$10$ol/3cryRLeyQXCYT9ZFTneT7CQZAsjGZ5c8PCoZMcopQSXW9xZTyq');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `UserID` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
