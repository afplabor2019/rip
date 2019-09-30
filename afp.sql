-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2019. Sze 30. 10:59
-- Kiszolgáló verziója: 5.7.23
-- PHP verzió: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `afp`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `banda`
--

DROP TABLE IF EXISTS `banda`;
CREATE TABLE IF NOT EXISTS `banda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bandanev` varchar(250) NOT NULL,
  `banda_id` int(11) NOT NULL,
  `kerestagot` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szemely`
--

DROP TABLE IF EXISTS `szemely`;
CREATE TABLE IF NOT EXISTS `szemely` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(250) NOT NULL,
  `lakcim` varchar(250) NOT NULL,
  `telefonszam` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `egyeb_megjegyzes` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `zenesz`
--

DROP TABLE IF EXISTS `zenesz`;
CREATE TABLE IF NOT EXISTS `zenesz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `szemely_id` int(11) NOT NULL,
  `rovid_ismerteto` varchar(250) NOT NULL,
  `enekel` tinyint(4) NOT NULL,
  `keresbandat` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`,`szemely_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
