-- phpMyAdmin SQL Dump
-- version 4.3.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2015 at 09:47 AM
-- Server version: 10.0.17-MariaDB-log
-- PHP Version: 5.6.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `20kbieres`
--
CREATE DATABASE IF NOT EXISTS `20kbieres` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `20kbieres`;

-- --------------------------------------------------------

--
-- Table structure for table `BEER`
--

CREATE TABLE IF NOT EXISTS `BEER` (
  `ID_beer` mediumint(9) NOT NULL,
  `overallScore_beer` int(11) NOT NULL,
  `styleScore_beer` int(11) NOT NULL,
  `abv_beer` float NOT NULL,
  `name_beer` text NOT NULL,
  `brewers_beer` text NOT NULL,
  `style_beer` mediumint(9) NOT NULL,
  `address_beer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE IF NOT EXISTS `rate` (
  `ID_user_rate` mediumint(9) NOT NULL,
  `ID_beer_rate` mediumint(9) NOT NULL,
  `value_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `STYLE`
--

CREATE TABLE IF NOT EXISTS `STYLE` (
  `ID_style` mediumint(9) NOT NULL,
  `libelle_style` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STYLE`
--

INSERT INTO `STYLE` (`ID_style`, `libelle_style`) VALUES
(1, 'Abbey Tripel'),
(2, 'Abt/Quadrupel'),
(3, 'Altbier'),
(4, 'Amber Ale'),
(5, 'Amber Lager/Vienna'),
(6, 'American Pale Ale'),
(7, 'American Strong Ale '),
(8, 'Baltic Porter'),
(9, 'Barley Wine'),
(10, 'Belgian Ale'),
(11, 'Belgian Strong Ale'),
(12, 'Belgian White (Witbier)'),
(13, 'Berliner Weisse'),
(14, 'Bière de Garde'),
(15, 'Bitter'),
(16, 'Black IPA'),
(17, 'Brown Ale'),
(18, 'California Common'),
(19, 'Cider'),
(20, 'Cream Ale'),
(21, 'Czech Pilsner (Sv&#283;tlý)'),
(22, 'Doppelbock'),
(23, 'Dortmunder/Helles'),
(24, 'Dry Stout'),
(25, 'Dunkel/Tmavý'),
(26, 'Dunkelweizen'),
(27, 'Dunkler Bock'),
(28, 'Eisbock'),
(29, 'English Pale Ale'),
(30, 'English Strong Ale'),
(31, 'Foreign Stout'),
(32, 'Fruit Beer/Radler'),
(33, 'German Hefeweizen'),
(34, 'German Kristallweizen'),
(35, 'Golden Ale/Blond Ale'),
(36, 'Grodziskie/Gose/Lichtenhainer'),
(37, 'Heller Bock'),
(38, 'Ice Cider/Ice Perry'),
(39, 'Imperial Stout'),
(40, 'Imperial/Double IPA'),
(41, 'Imperial/Strong Porter'),
(42, 'India Pale Ale (IPA)'),
(43, 'Irish Ale'),
(44, 'Kölsch'),
(45, 'Lambic Style - Faro'),
(46, 'Lambic Style - Fruit'),
(47, 'Lambic Style - Gueuze'),
(48, 'Lambic Style - Unblended'),
(49, 'Low Alcohol'),
(50, 'Malt Liquor'),
(51, 'Mead'),
(52, 'Mild Ale'),
(53, 'Oktoberfest/Märzen'),
(54, 'Old Ale'),
(55, 'Pale Lager'),
(56, 'Perry'),
(57, 'Pilsener'),
(58, 'Polotmavý'),
(59, 'Porter'),
(60, 'Premium Bitter/ESB'),
(61, 'Premium Lager'),
(62, 'Sahti/Gotlandsdricke/Koduõlu'),
(63, 'Saison'),
(64, 'Saké - Daiginjo'),
(65, 'Saké - Futsu-shu'),
(66, 'Saké - Genshu'),
(67, 'Saké - Ginjo'),
(68, 'Saké - Honjozo'),
(69, 'Saké - Infused'),
(70, 'Saké - Junmai'),
(71, 'Saké - Koshu'),
(72, 'Saké - Namasaké'),
(73, 'Saké - Nigori'),
(74, 'Saké - Taru'),
(75, 'Saké - Tokubetsu'),
(76, 'Schwarzbier'),
(77, 'Scotch Ale'),
(78, 'Scottish Ale'),
(79, 'Session IPA'),
(80, 'Smoked'),
(81, 'Sour Red/Brown'),
(82, 'Sour/Wild Ale'),
(83, 'Specialty Grain'),
(84, 'Spice/Herb/Vegetable'),
(85, 'Stout'),
(86, 'Strong Pale Lager/Imperial Pils'),
(87, 'Sweet Stout'),
(88, 'Traditional Ale'),
(89, 'Weizen Bock'),
(90, 'Wheat Ale'),
(91, 'Zwickel/Keller/Landbier');

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE IF NOT EXISTS `USER` (
  `ID_user` mediumint(9) NOT NULL,
  `firstname_user` text NOT NULL,
  `lastname_user` text NOT NULL,
  `email_user` text NOT NULL,
  `pwd_user` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`ID_user`, `firstname_user`, `lastname_user`, `email_user`, `pwd_user`) VALUES
(1, 'Jonathan', 'BAUDIN', 'jjbaudin@gmail.com', 'af3c9266d97df3a43c01f418a046b126e0473bf7577652cb5239c53067f42c10afe023417a1c5e6170ffcd29c3c7c82bbef93c56f5572b0a350cbacb434f535a'),
(2, 'Maxime', 'ROME', 'maxime.rome@univ-amu.fr', 'c63a88e0c68ba182d79a8a0bb41b8c94c09e3599910ae923f05fd25930d438c521425c6076bf9d66eec11063404552648e2f669da52a78b39ef0030a779258f4'),
(3, 'Guillaume', 'MICHON', 'guillaume.michon@univ-amu.fr', '6c89030400dbcd6561f8e03c8ccbeff4d8150988e635af53a581622da3223e37a64abb3f26a1cff7f0014c32e4ca615e76534fb53830e54c67603b892124c8d1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BEER`
--
ALTER TABLE `BEER`
  ADD PRIMARY KEY (`ID_beer`), ADD KEY `FK_STYLE_BEER` (`style_beer`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`ID_user_rate`,`ID_beer_rate`), ADD KEY `FK_RATE_BEER` (`ID_beer_rate`);

--
-- Indexes for table `STYLE`
--
ALTER TABLE `STYLE`
  ADD PRIMARY KEY (`ID_style`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`ID_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BEER`
--
ALTER TABLE `BEER`
  MODIFY `ID_beer` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `STYLE`
--
ALTER TABLE `STYLE`
  MODIFY `ID_style` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `USER`
--
ALTER TABLE `USER`
  MODIFY `ID_user` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `BEER`
--
ALTER TABLE `BEER`
ADD CONSTRAINT `FK_STYLE_BEER` FOREIGN KEY (`style_beer`) REFERENCES `STYLE` (`ID_style`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
ADD CONSTRAINT `FK_RATE_BEER` FOREIGN KEY (`ID_beer_rate`) REFERENCES `BEER` (`ID_beer`),
ADD CONSTRAINT `FK_RATE_USER` FOREIGN KEY (`ID_user_rate`) REFERENCES `USER` (`ID_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
