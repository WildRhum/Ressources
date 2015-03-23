-- phpMyAdmin SQL Dump
-- version 4.3.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2015 at 08:59 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BEER`
--

INSERT INTO `BEER` (`ID_beer`, `overallScore_beer`, `styleScore_beer`, `abv_beer`, `name_beer`, `brewers_beer`, `style_beer`, `address_beer`) VALUES
(2, 83, 83, 8.2, 'Pretty Things Cutie Pie', 'Pretty Things Beer and Ale Project Buzzards Bay Brewing', 40, 'Cambridge Massachusetts USA'),
(3, -1, -1, 6.2, 'Crooked Stave Surette Reserva (Oak Barrels)', 'Crooked Stave', 82, 'Denver Colorado USA'),
(4, -1, -1, 8, 'D9 Joe Domms Golden Eagle', 'D9 Brewing Company', 2, 'Cornelius North Carolina USA'),
(6, -1, -1, 5.5, 'Zlínský vec Světlý speciál 13°', 'Pivovar Malenovice Zlínsky vec', 21, 'Zlín-Malenovice, Czech Republic'),
(7, -1, -1, 4.3, 'Goose Eye Gunpowder Gold', 'Goose Eye', 35, 'Keighley, England'),
(8, 70, 70, 4.5, 'Plevna / Nøgne Ø Pohjantähti', 'Koskipanimo', 79, 'Tampere, Finland'),
(9, -1, -1, 5, 'Butautu Dvaro Krafto Lageris', 'Butautu Dvaro Bravoras', 57, 'Birzu raj, Lithuania'),
(10, -1, -1, 6, 'Wincle Blind Monk', 'Wincle', 30, 'Wincle, England'),
(11, 87, 87, -1, 'Crooked Stave Motif', 'Crooked Stave', 82, 'Denver Colorado USA'),
(12, -1, -1, 4.5, 'Amber Ripper', 'Amber', 35, 'Ripley, England'),
(13, -1, -1, 4.6, 'Thirsty Monk Easy Gose', 'Thirsty Monk Pub and Brewery', 36, 'Asheville North Carolina USA'),
(14, -1, -1, 5.4, 'Captain Fattys Milk Stout', 'Captain Fattys Craft Brewery', 87, 'Goleta California USA'),
(15, -1, -1, 9.3, 'Captain Fattys Double IPA', 'Captain Fattys Craft Brewery', 40, 'Goleta California USA'),
(16, -1, -1, 4.6, 'Captain Fattys Classic Dry Stout', 'Captain Fattys Craft Brewery', 24, 'Goleta California USA'),
(17, -1, -1, 5.5, 'Captain Fattys Pacific Tide Blonde', 'Captain Fattys Craft Brewery', 35, 'Goleta California USA'),
(18, -1, -1, 5.25, 'Captain Fattys Brown Ale', 'Captain Fattys Craft Brewery', 17, 'Goleta California USA'),
(19, -1, -1, 5.5, 'Captain Fattys Apricot Saison', 'Captain Fattys Craft Brewery', 63, 'Goleta California USA'),
(20, -1, -1, 9, 'Oyster River Hoboken Station Cider', 'Oyster River Winegrowers', 19, 'Warren Maine USA'),
(21, -1, -1, 5.3, 'Vento Forte Farmhouse Reserve - Brettanomyces Lambicus (Amarone)', 'Vento Forte', 63, 'Bracciano (RM), Italy'),
(22, -1, -1, -1, 'Rampn Grizzly', 'Hofbrauerei Preuner', 25, 'Frankenburg, Austria'),
(23, -1, -1, 4.9, 'Sachsenschlösser Hell', 'Einsiedler Brauhaus', 23, 'Chemnitz-Einsiedel, Germany'),
(24, -1, -1, 3.9, 'A Head in a Hat Topee', 'Florence', 18, 'London, England'),
(25, -1, -1, 6.9, 'Middle Brow Whos That Girl', 'Middle Brow Beer Company Big Chicago Brewing Company', 82, 'Zion Illinois USA'),
(26, 52, 84, 5, 'PINTA Sanrajza', 'Browar PINTA Browar Zarzecze', 90, 'Zarzecze, Poland'),
(27, 97, 97, 7, 'Viven Master IPA', 'Brouwerij van Viven De Proefbrouwerij', 42, 'Sijsele, Belgium'),
(28, -1, -1, 6.1, 'Birra di Parma P.D.Poule', 'Cantine Ceci Mastri Birrai Umbri', 30, 'Torrile, Italy'),
(29, 85, 85, 7, 'Crooked Stave Nightcap', 'Crooked Stave', 82, 'Denver Colorado USA'),
(30, -1, -1, 10, 'Columbia River Catherine II', 'Columbia River Brewing Company', 39, 'Portland Oregon USA'),
(31, -1, -1, 7, 'Columbia River Barrel Aged Stout', 'Columbia River Brewing Company', 85, 'Portland Oregon USA'),
(32, -1, -1, 4.8, 'Sly Fox Tettnang Keller Pils', 'Sly Fox Brewing Company', 91, 'Pottstown and Phoenixville Pennsylvania USA'),
(33, -1, -1, 5.5, 'Imperial Oak Buzz Beer', 'Imperial Oak Brewing', 35, 'Willow Springs Illinois USA'),
(34, -1, -1, 5.5, 'Imperial Oak Strawberry Buzz', 'Imperial Oak Brewing', 32, 'Willow Springs Illinois USA'),
(35, -1, -1, 7.8, 'Imperial Oak Caffeinator', 'Imperial Oak Brewing', 22, 'Willow Springs Illinois USA'),
(36, -1, -1, -1, 'Bastone Elvis', 'Bastone', 33, 'Royal Oak Michigan USA'),
(37, 94, 94, 6, 'Crooked Stave LBrett dPluot', 'Crooked Stave', 82, 'Denver Colorado USA'),
(38, -1, -1, 5.2, 'Scribblers One Brew over the Cuckoos Nest', 'Scribblers', 35, 'Nottingham, England'),
(39, -1, -1, -1, 'Echizen Misaki Tokubetsu Junmai Yamadanishiki Nama Sake', 'Tanabe Shuzo', 72, 'Yoshida-gun, Fukui Prefecture, Japan'),
(40, -1, -1, 5.9, 'Big Sky Rye IPA', 'Big Sky Brewing Company', 42, 'Missoula Montana USA'),
(41, -1, -1, 7.2, 'Homestead Bison American Stout', 'Homestead Beer Co.', 85, 'Heath Ohio USA'),
(42, -1, -1, -1, 'Homestead India Vienna Lager', '', 0, 'Unknown'),
(43, -1, -1, 5.8, 'Flying Lion Single Hop Pale', 'Flying Lion Brewing', 6, 'Seattle Washington USA'),
(44, -1, -1, 4.6, 'Ascot Single Hop Palisade', 'Ascot', 79, 'Camberley, England'),
(45, 14, 14, 4.5, 'Færder Jul (4.5%)', 'Færder Mikrobryggeri', 10, 'Tønsberg, Norway'),
(46, 80, 80, 11.2, 'Luckie Ales/Cornelius Wines Damn Dirty Ape', 'Luckie Ales', 9, 'Glenrothes, Scotland'),
(47, -1, -1, 5, 'Liquid Bread Ft Fletcher Session IPA', 'Lb. (Liquid Bread) Brewing Co', 79, 'Hays Kansas USA'),
(48, -1, -1, 5.5, 'Liquid Bread Blackjack Black IPA', 'Lb. (Liquid Bread) Brewing Co', 16, 'Hays Kansas USA'),
(49, -1, -1, 7, 'Bendorf Cycle Ephémère #9', 'Bendorf', 85, 'Strasbourg, France'),
(50, 99, 99, 6.4, 'Siren / Magic Rock / Beavertown Rule of Thirds', 'Siren', 42, 'Finchampstead, England'),
(51, -1, -1, 6.9, 'Offbeat Rufus Oatmeal Stout - Anniversary Beer', 'Offbeat Brewing Company', 85, 'Escondido California USA'),
(52, -1, -1, 5.3, 'Offbeat Girafficopter Session Pale Ale - Sage', 'Offbeat Brewing Company', 6, 'Escondido California USA'),
(53, -1, -1, 5.5, 'Full Pint White Lightning (Strawberry)', 'Full Pint Brewing Co.', 32, 'North Versailles Pennsylvania USA'),
(54, -1, -1, -1, 'Bevog BIPA', '', 0, 'Unknown'),
(55, -1, -1, 4.2, 'Fixed Wheel Chain Reaction', 'Fixed Wheel', 6, 'Halesowen, England'),
(56, -1, -1, -1, 'Three Barrel Pumpelstiltskin', 'Three Barrel Brewing Company', 63, 'Del Norte Colorado USA'),
(57, 94, 94, 7.7, 'Bevog Who Cares Editions Black IPA vs Cascadian Dark Ale', 'Bevog Brewery', 16, 'Bad Radkersburg, Austria'),
(58, -1, -1, -1, 'Spinnaker Bay Run Aground Coffee Scotch Ale', 'Spinnaker Bay Brewing', 77, 'Seattle Washington USA'),
(59, -1, -1, -1, 'Spinnaker Bay Grinning Jack Pumpkin Ale', 'Spinnaker Bay Brewing', 84, 'Seattle Washington USA'),
(60, -1, -1, 6.2, 'Beyond the Pale The Ram', 'Beyond the Pale Brewing Company', 17, 'Ottawa, Canada'),
(61, -1, -1, 5.6, 'Tuse Næs Classisk Jul', 'Bryghuset No5', 35, 'Holbæk, Denmark'),
(62, -1, -1, 8.5, 'Block 15 Framboise Black', 'Block 15 Brewery', 82, 'Corvallis Oregon USA'),
(63, -1, -1, 4.86, 'Block 15 Gozer the Gozerian', 'Block 15 Brewery', 36, 'Corvallis Oregon USA'),
(64, -1, -1, 7.5, 'Branchline Menger 32', 'Branchline Brewing', 84, 'San Antonio Texas USA'),
(65, 76, 76, 3.75, 'Smuttynose Smuttlabs Short Weiss', 'Smuttynose Brewing Company', 13, 'Hampton New Hampshire USA'),
(66, -1, -1, 12, 'Liverpool Craft Zombie Apocalypse Emergency Plan', 'Liverpool Craft Beer', 40, 'Liverpool, England'),
(67, -1, -1, 4.8, 'Gablitzer Wiener Lager', 'Gablitzer Privatbrauerei Markus Führer', 5, 'Gablitz, Austria'),
(68, -1, -1, 4.8, 'Gablitzer Kleinod  Das Rosenbier', 'Gablitzer Privatbrauerei Markus Führer', 84, 'Gablitz, Austria'),
(69, -1, -1, 5.1, 'Gablitzer Whiskey Stout', 'Gablitzer Privatbrauerei Markus Führer', 85, 'Gablitz, Austria'),
(70, -1, -1, 3.5, 'Afanasiy Pryany Imbir', 'Chastnaya Pivovarnya Afanasiy', 84, 'Tver, Russia'),
(71, -1, -1, 2.8, 'Tokyo', 'Chastnaya Pivovarnya Afanasiy', 55, 'Tver, Russia'),
(72, -1, -1, 4.3, 'VII Beer', 'Chastnaya Pivovarnya Afanasiy', 91, 'Tver, Russia'),
(73, -1, -1, 3.6, 'NikitiN', 'Chastnaya Pivovarnya Afanasiy', 55, 'Tver, Russia'),
(74, -1, -1, 4.5, 'Afanasiy Nepasterizovannoe Osvetlyonnoe', 'Chastnaya Pivovarnya Afanasiy', 91, 'Tver, Russia'),
(75, -1, -1, 5, 'Coudres Blonde', 'Brasserie des Coudres', 55, 'Céligny, Switzerland'),
(76, -1, -1, 5, 'Coudres Blonde Chêne (Red Wine BA)', 'Brasserie des Coudres', 55, 'Céligny, Switzerland'),
(77, 75, 75, 9, 'Heavy Seas Uncharted Waters: Yule Tide (2014)', 'Heavy Seas Brewing Company', 89, 'Baltimore Maryland USA'),
(78, -1, -1, 7.2, 'Booze Brothers Black Hills Ale', 'Booze Brothers Brewing Co', 16, 'Vista California USA'),
(79, -1, -1, 6.6, 'Stone City Ales Lock 49', 'Stone City Ales', 17, 'Kingston, Canada'),
(80, -1, -1, 6.2, 'Booze Brothers Old Crow IPA', 'Booze Brothers Brewing Co', 42, 'Vista California USA'),
(81, -1, -1, 5, 'Booze Brothers Tart Peach', 'Booze Brothers Brewing Co', 82, 'Vista California USA'),
(82, -1, -1, 5, 'Skys Edge Stateside Pale', 'Exit 33 (prev Skys Edge & The Brew Company)', 6, 'Sheffield, England'),
(83, -1, -1, 7.2, 'Tröegs Scratch 165', 'Tröegs Brewing Company', 59, 'Hershey Pennsylvania USA'),
(84, -1, -1, -1, 'Quaff Bros Grendel Mead', 'Quaff Bros Cellar Dweller Craft Beers (Valley Vineyards Winery)', 51, 'Bellevue Kentucky USA'),
(85, 88, 88, 7.7, 'Reservoir Dogs Grim Reaper IPA', 'Reservoir Dogs Brewery', 42, 'Nova Gorica, Slovenia'),
(86, -1, -1, 5.7, 'Mountain Goat North Street Pale Ale', 'Mountain Goat Beer', 6, 'Richmond, Victoria, Australia'),
(87, -1, -1, 6.5, 'Bottle Logic Recursion IPA 4.0', 'Bottle Logic Brewing', 42, 'Anaheim California USA'),
(88, -1, -1, -1, 'Melms River Valley Dark', 'Melms Brewing Company', 10, 'Hartland Wisconsin USA'),
(89, -1, -1, -1, 'Melms Walkers Point Wheat', 'Melms Brewing Company', 90, 'Hartland Wisconsin USA'),
(90, -1, -1, 6, 'Bottle Logic Oaked REDioactive', 'Bottle Logic Brewing', 4, 'Anaheim California USA'),
(91, -1, -1, -1, 'Bottle Logic Imperial Hodor', 'Bottle Logic Brewing', 7, 'Anaheim California USA'),
(92, -1, -1, 5, 'The Great Power of Pilsen', 'Cerveza Dougalls', 57, 'Liérganes, Cantabria, Spain'),
(93, -1, -1, 4.2, 'Sheffield Chocolate Mild', 'Sheffield', 52, 'Sheffield, England'),
(94, -1, -1, 4.4, 'Maxs Helles Lager', 'Maxs Fanno Creek Brew Pub', 23, 'Tigard Oregon USA'),
(95, -1, -1, 4.9, 'Aclote Cuvée du Black Out', 'Les Brasseurs Nivellois Sprl Brasserie des Carrières', 17, ', Belgium'),
(96, -1, -1, 6.4, 'The Commons Aji Citron Reserve', 'The Commons Brewery', 63, 'Portland Oregon USA'),
(97, -1, -1, 4, 'Stancill India Ruby Ale', 'Stancill', 15, 'Sheffield, England'),
(98, -1, -1, 4.9, 'P Vimperk Ibikový Leák 11°', 'umavský Pivovar', 84, 'Vimperk, Czech Republic'),
(99, -1, -1, -1, 'Kaltenböck Vitus', 'Hausbrauerei Kaltenböck', 25, 'Attersee, Austria'),
(100, -1, -1, -1, 'Northgate Get Together IPA', 'Northgate Brewing', 79, 'Minneapolis Minnesota USA'),
(101, -1, -1, 7.5, 'B. Nektar Orange Hibiscus Braggot', 'B. Nektar Meadery', 51, 'Ferndale Michigan USA'),
(102, -1, -1, -1, 'Saint Arnold Amber Ale dry hopped with Mosaic hops', 'Saint Arnold Brewing Company', 4, 'Houston Texas USA'),
(103, -1, -1, 6, 'B. Nektar Black Wheat', 'B. Nektar Meadery', 76, 'Ferndale Michigan USA'),
(104, -1, -1, 6.5, 'Rip Current Aerial American Rye Brown', 'Rip Current Brewing', 17, 'San Marcos California USA'),
(105, -1, -1, -1, 'Breaker Olde King Coal Cherry Imperial Stout', 'Breaker Brewing Company', 39, 'Wilkes Barre Township Pennsylvania USA'),
(106, -1, -1, -1, 'Breaker Honey Chai Blonde Ale', 'Breaker Brewing Company', 35, 'Wilkes Barre Township Pennsylvania USA'),
(107, -1, -1, 8.3, 'Maxs Sneaky Fox', 'Maxs Fanno Creek Brew Pub', 40, 'Tigard Oregon USA'),
(108, -1, -1, 6.3, 'Port Brewing For the Love of Ginger', 'Port Brewing/Lost Abbey', 84, 'San Marcos California USA'),
(109, -1, -1, 4.2, 'Noble Ale Works Unintelligibility', 'Noble Ale Works', 52, 'Anaheim California USA'),
(110, -1, -1, 4.7, 'The Commons Autumn Fest', 'The Commons Brewery', 53, 'Portland Oregon USA'),
(111, -1, -1, 5.4, 'Paulaner Bräuhaus (Brewpub Munich) Vroni - die Hopfenkönigin', 'Paulaner Bräuhaus (Brewpub Munich)', 57, 'Munich, Germany'),
(112, -1, -1, 4.1, 'Crate Porter', 'Crate', 59, 'London, England'),
(113, -1, -1, 5.7, 'Crate Rye', 'Crate', 83, 'London, England'),
(114, -1, -1, 6.2, 'Abbey Beer', 'Brauerei Nemo Namenlos', 10, ', Germany'),
(115, -1, -1, 5, 'Belgian King', 'Brauerei Nemo Namenlos', 10, ', Germany'),
(116, -1, -1, 5, 'Suntory French Rouge', 'Suntorys Limited', 32, 'Osaka, Japan'),
(117, -1, -1, -1, 'Vancouver Island Bohemian Pilsner', 'Vancouver Island Brewery', 21, 'Victoria, Canada'),
(118, -1, -1, 10.7, 'Sap House Meadery Amaro Gayo', 'Sap House Meadery', 51, 'Center Ossipee New Hampshire USA'),
(120, -1, -1, 8.4, 'Oliphant Treehouse of Gourdor', 'Oliphant Brewing Company', 84, 'Somerset West Wisconsin USA'),
(121, -1, -1, 6.5, 'Finback Le Porter Kaldi with Habanero and Cocoa Nibs', 'Finback Brewery', 59, 'Queens New York USA'),
(122, -1, -1, 7.2, 'Cold Water Citra-ass Down IPA', 'Cold Water Brewery & Grill', 42, 'South Lake Tahoe California USA'),
(123, -1, -1, 6.2, 'Cold Water Still Water Stout', 'Cold Water Brewery & Grill', 85, 'South Lake Tahoe California USA'),
(124, -1, -1, 6, 'Cold Water Amber', 'Cold Water Brewery & Grill', 4, 'South Lake Tahoe California USA'),
(125, -1, -1, 7.8, 'Cold Water Tahoe Cross IPA', 'Cold Water Brewery & Grill', 42, 'South Lake Tahoe California USA'),
(126, -1, -1, 5, 'Cold Water Water House Wheat', 'Cold Water Brewery & Grill', 90, 'South Lake Tahoe California USA'),
(127, -1, -1, 5.6, 'Cold Water Hall of the Gods Porter', 'Cold Water Brewery & Grill', 59, 'South Lake Tahoe California USA'),
(128, -1, -1, 5, 'Cold Water Mr. Toads Wild Rye', 'Cold Water Brewery & Grill', 83, 'South Lake Tahoe California USA'),
(129, -1, -1, 5, 'Cold Water Preachers Pale Ale', 'Cold Water Brewery & Grill', 6, 'South Lake Tahoe California USA'),
(130, -1, -1, 4.3, 'The Brew Gentlemen RPF 022: American Bitter', 'The Brew Gentlemen', 79, 'Braddock Pennsylvania USA'),
(131, -1, -1, 6.5, 'The Brew Gentlemen Pilot Batch Series - Edgar Thomson', 'The Brew Gentlemen', 80, 'Braddock Pennsylvania USA'),
(132, -1, -1, 6, 'The Brew Gentlemen Pilot Batch Series - Southern BBQ, Vol. II', 'The Brew Gentlemen', 80, 'Braddock Pennsylvania USA'),
(133, -1, -1, 8, 'The Brew Gentlemen BGx Rock Bottom: Hello Neighbor', 'The Brew Gentlemen', 84, 'Braddock Pennsylvania USA'),
(134, -1, -1, 9.8, 'The Brew Gentlemen BGx Leonas: Spice Cream Sammich', 'The Brew Gentlemen', 84, 'Braddock Pennsylvania USA'),
(135, -1, -1, 5.4, 'The Brew Gentlemen BGx Square Cafe: Square Breakfast', 'The Brew Gentlemen', 84, 'Braddock Pennsylvania USA'),
(136, -1, -1, 5.3, 'Schleppe No. 1', 'Schleppe Brauerei (Villacher)', 6, 'Klagenfurt, Austria'),
(137, -1, -1, 4.2, 'Back Forty Rye Saison', 'Back Forty Beer Company', 63, 'Gadsden Alabama USA'),
(138, -1, -1, 4.8, 'Bollington Endurance', 'Bollington', 6, 'Bollington, England'),
(139, -1, -1, 4.8, 'OEC Experimentalis With Meyer Lemons (Pinot Noir/Gin Barrel)', 'OEC Brewing (Ordinem Ecentrici Coctores)', 82, 'Oxford Connecticut USA'),
(140, -1, -1, 4.3, 'Varnitsa Lux', 'Zavod Piva i Bezalkogolnykh Napitkov Varnitsa', 55, 'Kurdymovo, Russia'),
(141, -1, -1, 5.5, 'Milk Stout', 'Fiddlehead Brewing Company', 87, 'Shelburne Vermont USA'),
(142, -1, -1, 5.5, 'Boentes Bernstein', 'Hausbrauerei Boente', 5, 'Recklinghausen, Germany'),
(143, -1, -1, 6.7, 'Ausable Cultivator Black IPA', 'Ausable Brewing Company', 16, 'Keeseville New York USA'),
(144, -1, -1, 8.5, 'Ausable Imperial Scotch Stout', 'Ausable Brewing Company', 39, 'Keeseville New York USA'),
(145, -1, -1, 9.6, 'Ausable Honey Badger Barleywine w/Black Currant', 'Ausable Brewing Company', 9, 'Keeseville New York USA'),
(146, -1, -1, 9.6, 'Ausable Honey Badger Barleywine', 'Ausable Brewing Company', 9, 'Keeseville New York USA'),
(147, -1, -1, 5.4, 'Ausable Mud Brook Porter', 'Ausable Brewing Company', 59, 'Keeseville New York USA'),
(148, -1, -1, 5.2, 'Ausable North Country Common', 'Ausable Brewing Company', 18, 'Keeseville New York USA'),
(149, -1, -1, 5.1, 'Ausable Autumn Session Ale', 'Ausable Brewing Company', 4, 'Keeseville New York USA'),
(150, -1, -1, 6.7, 'Ausable Face Chord IPA', 'Ausable Brewing Company', 42, 'Keeseville New York USA'),
(151, -1, -1, 6.3, 'Ausable Jungle Hustler Hoppy Red', 'Ausable Brewing Company', 4, 'Keeseville New York USA'),
(152, -1, -1, 8.9, 'Ausable Full Cord Double IPA', 'Ausable Brewing Company', 40, 'Keeseville New York USA'),
(153, -1, -1, 12.4, 'Mohawk Small Batch Ørsta Juleporter', 'Mohawk Brewing Company', 41, 'Täby, Sweden'),
(154, -1, -1, 6.2, 'Mohawk/FemAle Go Fresh', 'Mohawk Brewing Company', 6, 'Täby, Sweden'),
(155, -1, -1, 12.5, 'Artesano Mead with Cranberries', 'Artesano Mead', 51, 'Groton Vermont USA'),
(156, -1, -1, 5, 'Heater Allen Kolsch', 'Heater Allen Brewing Co.', 44, 'McMinnville Oregon USA'),
(157, 23, 23, 4.5, 'Shepherd Neame Single Hopped Kentish Ale', 'Tesco Shepherd Neame', 15, 'Cheshunt, England'),
(158, -1, -1, 4.7, 'The Aeronaut Porter', 'Aeronaut (Laine)', 59, 'Acton, England'),
(159, -1, -1, 3.5, 'The Aeronaut Summer Sessions', 'Aeronaut (Laine)', 35, 'Acton, England'),
(160, -1, -1, 5, 'Aeronaut IPA', 'Aeronaut (Laine)', 42, 'Acton, England'),
(161, -1, -1, 4.2, 'Inveralmond Eagles Ale', 'Inveralmond', 35, 'Perth, Perth and Kinross, Scotland'),
(162, -1, -1, 5.3, 'Ausable Plowmans Lunch', 'Ausable Brewing Company', 57, 'Keeseville New York USA'),
(163, -1, -1, 6, 'Out of Bounds Ivan Hop IPA', 'Out of Bounds Brewing Company', 42, 'Rocklin California USA'),
(164, -1, -1, 5.4, 'Yolo Nutty Brown', 'Yolo Brewing Company', 17, 'West Sacramento California USA'),
(165, -1, -1, -1, 'Bellwoods Farmageddon (Red Currants)', 'Bellwoods Brewery', 63, 'Toronto, Canada'),
(166, -1, -1, 10.5, 'Yak and Yeti Oscuro Navidad Grand Cru', 'Yak and Yeti', 11, 'Arvada Colorado USA'),
(167, -1, -1, 4.8, 'Urban Legend Love Gift Especial', 'Urban Legend Brewing Company', 17, 'Westmont Illinois USA'),
(168, -1, -1, 5.4, 'Hofbräuhaus Pittsburgh Dunkelweizen', 'Hofbräuhaus Pittsburgh', 26, 'Pittsburgh Pennsylvania USA'),
(169, -1, -1, 5.4, 'Black Kettle Scottish Ale', 'Black Kettle Brewing', 78, 'North Vancouver, Canada'),
(170, -1, -1, 6, 'River City Cafe au Lait', 'River City Brewing Co. (Kansas)', 20, 'Wichita Kansas USA'),
(171, -1, -1, 6, 'River City Flemish Red', 'River City Brewing Co. (Kansas)', 81, 'Wichita Kansas USA'),
(172, -1, -1, 6, 'River City Saison dEte avec Peche', 'River City Brewing Co. (Kansas)', 63, 'Wichita Kansas USA'),
(173, -1, -1, 4, 'River City Kick It Gruit Down', 'River City Brewing Co. (Kansas)', 88, 'Wichita Kansas USA'),
(174, -1, -1, -1, 'Cerveceria Jardin America', 'Cerveceria Jardin America', 57, 'Jardin America, Argentina'),
(175, -1, -1, 5.5, 'Salvatge Indian Pale Ale', 'Salvatge Cervesa Evolutiva Cas Cerveser', 42, 'Palma de Mallorca, Spain'),
(177, -1, -1, 9, 'Chatham Tripel', 'Chatham Brewing', 1, 'Chatham New York USA'),
(178, -1, -1, 4.7, 'Dampegheest Manus', 'Brouwerij Dampegheest', 10, 'Limmen, Netherlands'),
(179, 83, 83, 7.3, 'Boulevard / Odell Silver Anniversary Ale', 'Boulevard Brewing Company (Moortgat)', 7, 'Kansas City Missouri USA'),
(180, -1, -1, 7.8, 'Põhjala Must Kuld Raspberry', 'Põhjala', 59, 'Tallinn, Estonia'),
(181, -1, -1, 4.8, 'Provianten Syrnet Stout', 'Provianten Brygghus', 85, 'Mandal, Norway'),
(182, -1, -1, 4.6, 'Boxing Cat Mao Mat Lemongrass Lager', 'Boxing Cat Brewery', 84, 'Shanghai, China'),
(183, -1, -1, 8.8, 'Boxing Cat Hopatron IPA', 'Boxing Cat Brewery', 40, 'Shanghai, China'),
(184, 96, 96, 5.6, 'Sante Adairius Nonnas Blend #7', 'Sante Adairius Rustic Ales', 63, 'Capitola California USA'),
(185, -1, -1, 6, 'De Blauwe IJsbeer Weijsbeer Bock', 'De Blauwe IJsbeer Stadsbrouwerij De Hemel', 89, 'Nieuwpoort, Netherlands'),
(186, -1, -1, 4.9, 'Irving Intrepid', 'Irving', 60, 'Portsmouth, England'),
(187, -1, -1, -1, 'Smiling Toad Pale Ale', 'Smiling Toad Brewery', 6, 'Colorado Springs Colorado USA'),
(188, -1, -1, -1, 'Smiling Toad Orange Blossom IPA', 'Smiling Toad Brewery', 42, 'Colorado Springs Colorado USA'),
(189, -1, -1, -1, 'Daisen G Beer Alt', 'Daisen G Beer', 3, 'Tottori Prefecture, Japan'),
(190, -1, -1, -1, 'Hansharo Oyojya Saison', 'Hansharo', 63, 'Izunokuni-shi, Shizuoka, Japan'),
(191, -1, -1, 6, 'Nomad & Cigar City Berry Cubana', 'Nomad Brewing Company', 17, 'Brookvale, Australia'),
(192, -1, -1, 5, 'Nomad & Sixpoint Crush', 'Nomad Brewing Company', 90, 'Brookvale, Australia'),
(193, -1, -1, 4.8, 'Session IPA NEMA', '3Cariocas', 79, 'Rio de Janeiro, Brazil'),
(194, -1, -1, 7, 'Vadehavsbryggeriet Santas Dark Secret', 'Vadehavsbryggeriet Pivovar Nová Paka', 59, 'Varde, Denmark'),
(195, -1, -1, 6.2, 'Hilliards Fino Countdown', 'Hilliards Brewing Company', 85, 'Seattle Washington USA'),
(196, -1, -1, 7.2, '1906 Black Coupage', 'Hijos de Rivera', 25, 'A Coruña, Spain'),
(197, -1, -1, -1, 'Two Rivers Blackberry Cider', 'Two Rivers Cider Company', 19, 'Sacramento California USA'),
(198, -1, -1, 4.5, 'Copper Dragon Black Dragon', 'Copper Dragon (UK)', 85, 'Skipton, England'),
(199, -1, -1, -1, 'Red Eye Tragically Hopped', 'Red Eye Brewing Company', 40, 'Wausau Wisconsin USA'),
(200, -1, -1, 7.6, 'Red Eye Firewater', 'Red Eye Brewing Company', 27, 'Wausau Wisconsin USA'),
(201, -1, -1, 7.4, 'Danderyds Syster Remy', 'Danderyds Bryggeri', 11, 'Danderyd, Sweden'),
(202, -1, -1, 4.2, 'Kerry Gnèas Dublin Dark Ale', 'Kerry Brewing', 52, ', Ireland'),
(203, -1, -1, 5.9, 'Birdsong Turtles on Pterodactyls', 'Birdsong Brewing', 85, 'Charlotte North Carolina USA'),
(204, -1, -1, 4.2, 'Saffron Star Worts', 'Saffron', 35, 'Bishops Stortford, England'),
(205, -1, -1, 10.7, 'Pig Minds Belgian Experimental', 'Pig Minds Brewing Co.', 11, 'Machesney Park Illinois USA'),
(206, 78, 78, 6.9, 'Dugges GiuseppIPA', 'Dugges Ale & Porterbryggeri', 42, 'Landvetter, Sweden'),
(207, -1, -1, 6, 'Bulk Head To Hop, Or Hop A Lot IPA', 'Bulk Head Brewing Company', 79, 'Clarksville Maryland USA'),
(208, -1, -1, 9.44, 'Bulk Head Tropicale Pale Ale', 'Bulk Head Brewing Company', 40, 'Clarksville Maryland USA'),
(209, -1, -1, 10, 'Bulk Head Imperfectly Imperial Bourbon Barreled Oatmeal Stout', 'Bulk Head Brewing Company', 39, 'Clarksville Maryland USA'),
(210, -1, -1, 7, 'Bulk Head Little Spoon Sweet Stout', 'Bulk Head Brewing Company', 87, 'Clarksville Maryland USA'),
(211, -1, -1, 8.4, 'Bulk Head Inconceivable Imperial IPA', 'Bulk Head Brewing Company', 40, 'Clarksville Maryland USA'),
(212, -1, -1, 11, 'Bulk Head Citracoe IIIPA', 'Bulk Head Brewing Company', 40, 'Clarksville Maryland USA'),
(213, -1, -1, 8.3, 'Bulk Head Johannisbeeren DunkelWeizen', 'Bulk Head Brewing Company', 26, 'Clarksville Maryland USA'),
(214, -1, -1, 9, 'Bulk Head Simarillo IIPA', 'Bulk Head Brewing Company', 40, 'Clarksville Maryland USA'),
(215, -1, -1, 7.5, 'Bulk Head Amacitra IPA', 'Bulk Head Brewing Company', 42, 'Clarksville Maryland USA'),
(216, -1, -1, 10.22, 'Bulk Head Doubtfires Espresso Stout', 'Bulk Head Brewing Company', 39, 'Clarksville Maryland USA'),
(217, -1, -1, 8.2, 'Bulk Head New World Black IPA', 'Bulk Head Brewing Company', 16, 'Clarksville Maryland USA'),
(218, -1, -1, 8, 'Bulk Head Peachy Paul', 'Bulk Head Brewing Company', 32, 'Clarksville Maryland USA'),
(219, -1, -1, 8.6, 'Bulk Head Muddy Creek Oak Aged Doppelbock', 'Bulk Head Brewing Company', 22, 'Clarksville Maryland USA'),
(220, -1, -1, 6.5, 'Bulk Head Guava Porter', 'Bulk Head Brewing Company', 59, 'Clarksville Maryland USA'),
(221, -1, -1, 8.6, 'Bulk Head Hoppin Honey Red Ale', 'Bulk Head Brewing Company', 4, 'Clarksville Maryland USA'),
(222, -1, -1, 8, 'Bulk Head Stubby Pumpkin Ale', 'Bulk Head Brewing Company', 84, 'Clarksville Maryland USA'),
(223, -1, -1, 10.6, 'Bulk Head Honeysuckle Strong Ale', 'Bulk Head Brewing Company', 7, 'Clarksville Maryland USA'),
(224, -1, -1, 6.8, 'Bulk Head Down With the Brown Ale', 'Bulk Head Brewing Company', 17, 'Clarksville Maryland USA'),
(225, -1, -1, 5, 'Beerbliotek Pale Ale Magnum Pacifica', 'Beerbliotek', 6, 'Göteborg, Sweden'),
(226, -1, -1, 5, 'Good George Grapefruit Sour', 'Good George Brewing', 82, 'Hamilton, New Zealand'),
(227, 91, 91, 4.7, 'Epic Imp', 'Epic Brewing Company (NZ) Steam Brewing Company', 79, 'Auckland, New Zealand'),
(228, -1, -1, 3.6, 'Afanasiy Nefiltrovannoe', 'Chastnaya Pivovarnya Afanasiy', 91, 'Tver, Russia');

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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STYLE`
--

INSERT INTO `STYLE` (`ID_style`, `libelle_style`) VALUES
(0, 'Unknown style'),
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
  MODIFY `ID_beer` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT for table `STYLE`
--
ALTER TABLE `STYLE`
  MODIFY `ID_style` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
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
