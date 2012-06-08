-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2012 at 12:16 PM
-- Server version: 5.0.95
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fiskalni_db`
--
CREATE DATABASE `fiskalni_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fiskalni_db`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `employeeNumber` int(11) NOT NULL auto_increment,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `file_url` varchar(250) character set utf8 NOT NULL,
  `jobTitle` varchar(50) NOT NULL,
  PRIMARY KEY  (`employeeNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1703 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `file_url`, `jobTitle`) VALUES
(1002, 'Murphy', 'Diane', 'x5800', 'dmurphy@classicmodelcars.com', '1', '', 'President'),
(1056, 'Patterson', 'Mary', 'x4611', 'mpatterso@classicmodelcars.com', '1', '', 'VP Sales'),
(1076, 'Firrelli', 'Jeff', 'x9273', 'jfirrelli@classicmodelcars.com', '1', '', 'VP Marketing'),
(1088, 'Patterson', 'William', 'x4871', 'wpatterson@classicmodelcars.com', '6', '', 'Sales Manager (APAC)'),
(1102, 'Bondur', 'Gerard', 'x5408', 'gbondur@classicmodelcars.com', '4', 'pdftest.pdf', 'Sale Manager (EMEA)'),
(1143, 'Bow', 'Anthony', 'x5428', 'abow@classicmodelcars.com', '1', '', 'Sales Manager (NA)'),
(1165, 'Jennings', 'Leslie', 'x3291', 'ljennings@classicmodelcars.com', '1', '', 'Sales Rep'),
(1166, 'Thompson', 'Leslie', 'x4065', 'lthompson@classicmodelcars.com', '1', '', 'Sales Rep'),
(1188, 'Firrelli', 'Julie', 'x2173', 'jfirrelli@classicmodelcars.com', '2', 'test-2.pdf', 'Sales Rep'),
(1216, 'Patterson', 'Steve', 'x4334', 'spatterson@classicmodelcars.com', '2', '', 'Sales Rep'),
(1286, 'Tseng', 'Foon Yue', 'x2248', 'ftseng@classicmodelcars.com', '3', '', 'Sales Rep'),
(1323, 'Vanauf', 'George', 'x4102', 'gvanauf@classicmodelcars.com', '3', '', 'Sales Rep'),
(1337, 'Bondur', 'Loui', 'x6493', 'lbondur@classicmodelcars.com', '4', '', 'Sales Rep'),
(1370, 'Hernandez', 'Gerard', 'x2028', 'ghernande@classicmodelcars.com', '4', '', 'Sales Rep'),
(1401, 'Castillo', 'Pamela', 'x2759', 'pcastillo@classicmodelcars.com', '4', '', 'Sales Rep'),
(1501, 'Bott', 'Larry', 'x2311', 'lbott@classicmodelcars.com', '7', '', 'Sales Rep'),
(1504, 'Jones', 'Barry', 'x102', 'bjones@classicmodelcars.com', '7', '', 'Sales Rep'),
(1611, 'Fixter', 'Andy', 'x101', 'afixter@classicmodelcars.com', '6', '', 'Sales Rep'),
(1612, 'Marsh', 'Peter', 'x102', 'pmarsh@classicmodelcars.com', '6', '', 'Sales Rep'),
(1619, 'King', 'Tom', 'x103', 'tking@classicmodelcars.com', '6', '', 'Sales Rep'),
(1621, 'Nishi', 'Mami', 'x101', 'mnishi@classicmodelcars.com', '5', '', 'Sales Rep'),
(1625, 'Kato', 'Yoshimi', 'x102', 'ykato@classicmodelcars.com', '5', '', 'Sales Rep'),
(1702, 'Gerard', 'Martin', 'x2312', 'mgerard@classicmodelcars.com', '4', '', 'Sales Rep');

-- --------------------------------------------------------

--
-- Table structure for table `novosti`
--

CREATE TABLE IF NOT EXISTS `novosti` (
  `id` int(4) NOT NULL auto_increment,
  `naslov` varchar(33) character set utf8 NOT NULL,
  `text` text character set utf8 NOT NULL,
  `author` varchar(11) character set utf8 NOT NULL,
  `slika` varchar(21) character set utf8 NOT NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `novosti`
--

INSERT INTO `novosti` (`id`, `naslov`, `text`, `author`, `slika`, `date_created`, `date_modified`) VALUES
(1, 'Novost 1', '<p>Text lorem ipsum dolorem sit ametit.&nbsp; <a href="#">This is link</a> And some more text in this news.&nbsp; Also we will add some image as example.&nbsp; Just to see what is goinig on with text and other justifications.</p>\r\n<hr class="sl" />\r\n<p>And here goes image<br /><img src="images/info/chart.jpg" alt="" /></p>\r\n<hr class="sl" />', 'A', '', '2012-05-30', '0000-00-00'),
(2, 'News 2 ', '<p>Text for news2 news2 and so on &nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp; quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp; consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp; proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Text for news2 news2 and so on &nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp; quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp; consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp; proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'a', '', '2012-05-30', '0000-00-00'),
(3, 'News3', '<p>&nbsp;<img style="float: left;" src="images/info/chart.jpg" alt="" />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp; tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp; quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp; consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp; cillum dolore eu fugiat nulla pa riatur. Excepteur sint occaecat cupidatat non&nbsp; proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'a', '', '2012-05-30', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `opcina`
--

CREATE TABLE IF NOT EXISTS `opcina` (
  `id` int(3) NOT NULL auto_increment,
  `opcina` varchar(21) character set utf8 NOT NULL,
  `info` text character set utf8 NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `opcina`
--

INSERT INTO `opcina` (`id`, `opcina`, `info`) VALUES
(1, 'Opcina1', 'Opcina 1 text Opcina 1 text Opcina 1 text Opcina 1 text Opcina 1 text Opcina 1 text Opcina 1 text  Opcina 1 text  Opcina 1 text Opcina 1 text Opcina 1 text  Opcina 1 text  Opcina 1 text  Opcina 1 text '),
(2, 'Sarajevo', '<p>Informacije o Sarajevu Informacije o Sarajevu Informacije o Sarajevu Informacije o Sarajevu</p>\r\n<p><img style="float: left;" src="http://www.hrvatskiglas-berlin.com/wp-content/uploads/info1.jpg" alt="" width="109" height="109" />Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici</p>\r\n<hr class="sl" />\r\n<p>lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit</p>'),
(3, 'Zenica', '<p><img style="float: left;" src="http://www.hrvatskiglas-berlin.com/wp-content/uploads/info1.jpg" alt="" width="109" height="109" />Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici</p>\r\n<hr class="sl" />\r\n<p>lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp; Informacije o Zenici lorem ipsum doloroem sit ametit&nbsp;</p>'),
(4, 'Novi Grad Sarajevo', '<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">Površina: 47,2 km<sup>2</sup><br /></span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">Broj stanovnika: 125.395 (za 2010)<br /></span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">Prosječna neto plata: 856,33 KM <span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">(za 2010)</span><br /></span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">Stopa nezaposlenosti: 46,36 % <span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">(za 2010)</span><br /></span></p>\r\n<p>Novi Grad Sarajevo smješten je na prostoru Sarajevskog polja, površinom od 47,2 kvadratna kilometra. Predstavlja jugoisto?ni dio sarajevsko-zeni?ke kotline, a nalazi se na 500 metara nadmorske visine.</p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">Ve?ina stanovništva zaposlena je u sektoru privrede, trgovini, saobra?aju, skladištenju i vezama, a najmanje ih je zaposleno u sektoru prera?iva?ke industrije. Klju?ni faktor razvoja predstavlja infrastruktura, a realizacija projekata iz ove oblasti, posebno u domenu saobra?ajnica, ima potencijal da unaprijedi trenutno ekonomsko stanje. Industrija radi u manjem kapacitetu, a na podru?ju op?ine/opštine postoji mali broj poljoprivrednih površina, koje su zna?ajno usitnjene, tako da je potencijal za razvoj ove privredne grane smanjen. Razvojni potencijal Novog Grada Sarajevo ogleda se i u razvoju turizma, posebno zahvaljuju?i blizini olimpijskih centara. </span></p>\r\n<p> </p>\r\n<div class="field field-type-text field-field-website">\r\n<div class="field-label-inline-first">Website:</div>\r\n<a href="http://www.novigradsarajevo.ba/" target="_blank">Službena web stranica Op?ine Novi Grad Sarajevo</a></div>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;"><br /></span></p>\r\n<p> </p>'),
(5, 'Bihać', '<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">Površina: 900 km<sup>2</sup><br /></span></p>\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">Broj stanovnika: 61.491 (u 2010)<br /></span></p>\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">Prosječna neto plata: 957,48 KM <span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">(u 2010)</span><br /></span></p>\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">Stopa nezaposlenosti: 43,35 % <span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">(u 2010)</span></span></p>\n<p> </p>\n<p>Na krajnjem sjeverozapadu naše zemlje, između planina Plješevica i Grmeč, smješten je Bihać, glavni grad Unsko-sanskog kantona. Općina/opština Bihać prostire se na 689 kvadratnih kilometara površine. Graniči sa Cazinom, Bosanskom Krupom, Bosanskim Petrovcem i Drvarom u našoj zemlji, te Donjim Lapacom, Korenicom i Slunjom u Hrvatskoj.</p>\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;"><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;">Reljef Bihaća ocrtavaju polja, brežuljci, te srednjeplaninska zemljišta, jednako kao i izvori, potoci i rijeke, među kojima i 80 kilometara Une, koja protiče kroz sam grad. Ovim krajem preovladava planinska klima, pa su ljeta suha i topla, a zime hladne sa mnogo padavina. Osnovu privrede ovog kraja čini poljoprivreda, u kojoj najznačajniju ulogu ima stočarstvo, premda udio ratarstva, ribarstva i pčelarstva, nije zanemariv. Šumsko bogatstvo kojim Bihać raspolaže ima veliku vrijednost, stoga ova općina/opština  razvojnu šansu vidi u unaprijeđenju drvne industrije i turizmu.</span></span></p>\n<p> </p>\n<div class="field field-type-text field-field-website">\n<div class="field-label-inline-first">Website:</div>\n<a href="http://lin.bihac.org/" target="_blank">Oficijelna stranica Općine Bihać</a></div>\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;"><span style="font-family: arial,helvetica,sans-serif; font-size: x-small;"><br /></span></span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `prihodi`
--

CREATE TABLE IF NOT EXISTS `prihodi` (
  `id` int(4) NOT NULL auto_increment,
  `stavka` varchar(77) character set utf8 NOT NULL,
  `ukupan_iznos` decimal(21,3) NOT NULL,
  `procenat` decimal(11,3) NOT NULL,
  `prihod_stanovnik` decimal(21,3) NOT NULL,
  `grad` varchar(21) character set utf8 collate utf8_bin NOT NULL,
  `grupa_prihoda` varchar(21) character set utf8 NOT NULL,
  `tip_prihoda` varchar(41) character set utf8 NOT NULL,
  `godina` varchar(5) character set utf8 NOT NULL,
  `entitet` varchar(11) character set utf8 default NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `grupa_prihoda` (`grupa_prihoda`),
  KEY `tip_prihoda` (`tip_prihoda`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `prihodi`
--

INSERT INTO `prihodi` (`id`, `stavka`, `ukupan_iznos`, `procenat`, `prihod_stanovnik`, `grad`, `grupa_prihoda`, `tip_prihoda`, `godina`, `entitet`, `created`, `updated`) VALUES
(1, 'Porezi na dohodak i dobit', '33768.000', '0.174', '0.550', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Porez na licna primanja i prihode od samostalne djelatnosti', '114498.000', '0.589', '1.860', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Porez na imovinu ', '2093900.000', '10.766', '34.050', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Domaći porezi na dobra i usluge', '20682.000', '0.106', '0.340', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Prihodi od neizravnih poreza ', '6251747.000', '32.143', '101.670', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Ostali porezni prihodi ', '2589717.000', '13.315', '42.120', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Prihodi od poduzetničkih aktivnosti i imovine ', '294830.000', '1.516', '4.790', 'Bihać', 'NEPOREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Naknade i pristojbe od pružanja javnih usluga', '6356744.000', '32.683', '103.380', 'Bihać', 'NEPOREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Novčane kazne ', '26224.000', '0.135', '0.430', 'Bihać', 'NEPOREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Ostali neporezni prihodi ', '0.000', '0.000', '0.000', 'Bihać', 'NEPOREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '166856.000', '0.858', '2.710', 'Bihać', 'TRANSFERI I DONACIJE', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Primljeni tekući transferi od ostalih razina vlasti', '136933.000', '0.704', '2.230', 'Bihać', 'TRANSFERI I DONACIJE', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Donacije', '0.000', '0.000', '0.000', 'Bihać', 'TRANSFERI I DONACIJE', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Kapitalni primici od prodaje stalnih sredstava', '0.000', '0.000', '0.000', 'Bihać', 'KAPITALNI PRIMICI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacija', '122202.000', '0.628', '1.990', 'Bihać', 'KAPITALNI PRIMICI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Kapitalni transferi od ostalih razina vlasti', '1241501.000', '6.383', '20.190', 'Bihać', 'KAPITALNI PRIMICI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, ' Primici od finansijske imovine', '0.000', '0.000', '0.000', 'Bihać', 'KAPITALNI PRIMICI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Porezi na dohodak i dobit', '4615661.320', '0.130', '36.290', 'Zenica', 'POREZNI PRIHODI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Porez na licna primanja i prihode od samostalne djelatnosti', '282473.010', '0.010', '2.220', 'Zenica', 'POREZNI PRIHODI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Porez na imovinu ', '2286411.870', '0.070', '17.970', 'Zenica', 'POREZNI PRIHODI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Domaći porezi na dobra i usluge', '37167.400', '0.000', '0.290', 'Zenica', 'POREZNI PRIHODI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Prihodi od neizravnih poreza ', '13033914.410', '0.370', '102.470', 'Zenica', 'POREZNI PRIHODI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Ostali porezni prihodi ', '9795.940', '0.000', '0.080', 'Zenica', 'POREZNI PRIHODI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Prihodi od poduzetničkih aktivnosti i imovine ', '1122048.510', '0.030', '8.820', 'Zenica', 'NEPOREZNI PRIHODI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Naknade i pristojbe od pružanja javnih usluga', '10032398.870', '0.290', '78.870', 'Zenica', 'NEPOREZNI PRIHODI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Novčane kazne ', '36355.830', '0.000', '0.290', 'Zenica', 'NEPOREZNI PRIHODI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Ostali neporezni prihodi ', '0.000', '0.000', '0.000', 'Zenica', 'NEPOREZNI PRIHODI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '2500.000', '0.000', '0.020', 'Zenica', 'TRANSFERI I DONACIJE', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Primljeni tekući transferi od ostalih razina vlasti', '899122.790', '0.030', '7.070', 'Zenica', 'TRANSFERI I DONACIJE', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Donacije', '1500.000', '0.000', '0.010', 'Zenica', 'TRANSFERI I DONACIJE', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Kapitalni primici od prodaje stalnih sredstava', '593749.270', '0.020', '4.670', 'Zenica', 'KAPITALNI PRIMICI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacija', '86523.770', '0.000', '0.680', 'Zenica', 'KAPITALNI PRIMICI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Kapitalni transferi od ostalih razina vlasti', '2107515.600', '0.060', '16.570', 'Zenica', 'KAPITALNI PRIMICI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, ' Primici od finansijske imovine', '0.000', '0.000', '0.000', 'Zenica', 'KAPITALNI PRIMICI', '', '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Porezi na dohodak i dobit', '7467.170', '0.035', '0.130', 'Gradiška', 'POREZNI PRIHODI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Porez na licna primanja i prihode od samostalne djelatnosti', '2101158.890', '9.830', '35.410', 'Gradiška', 'POREZNI PRIHODI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Porez na imovinu ', '1085725.650', '5.080', '18.300', 'Gradiška', 'POREZNI PRIHODI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Domaći porezi na dobra i usluge', '26164.350', '0.122', '0.440', 'Gradiška', 'POREZNI PRIHODI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Prihodi od neizravnih poreza ', '11184966.390', '52.329', '188.510', 'Gradiška', 'POREZNI PRIHODI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Ostali porezni prihodi ', '8814.870', '0.041', '0.150', 'Gradiška', 'POREZNI PRIHODI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Prihodi od poduzetničkih aktivnosti i imovine ', '874824.240', '4.093', '14.740', 'Gradiška', 'NEPOREZNI PRIHODI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Naknade i pristojbe od pružanja javnih usluga', '4851159.660', '22.696', '81.760', 'Gradiška', 'NEPOREZNI PRIHODI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Novčane kazne ', '73114.000', '0.342', '1.230', 'Gradiška', 'NEPOREZNI PRIHODI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Ostali neporezni prihodi ', '159216.130', '0.745', '2.680', 'Gradiška', 'NEPOREZNI PRIHODI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '0.000', '0.000', '0.000', 'Gradiška', 'TRANSFERI I DONACIJE', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Primljeni tekući transferi od ostalih razina vlasti', '188257.380', '0.881', '3.170', 'Gradiška', 'TRANSFERI I DONACIJE', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Donacije', '171602.700', '0.803', '2.890', 'Gradiška', 'TRANSFERI I DONACIJE', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Kapitalni primici od prodaje stalnih sredstava', '484625.770', '2.267', '8.170', 'Gradiška', 'KAPITALNI PRIMICI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacija', '0.000', '0.000', '0.000', 'Gradiška', 'KAPITALNI PRIMICI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Kapitalni transferi od ostalih razina vlasti', '0.000', '0.000', '0.000', 'Gradiška', 'KAPITALNI PRIMICI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, ' Primici od finansijske imovine', '157019.280', '0.735', '2.650', 'Gradiška', 'KAPITALNI PRIMICI', '', '2011', 'rs', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rashodi`
--

CREATE TABLE IF NOT EXISTS `rashodi` (
  `id` int(4) NOT NULL auto_increment,
  `stavka` varchar(77) collate latin1_general_ci NOT NULL,
  `ukupan_iznos` decimal(21,3) NOT NULL,
  `procenat` decimal(11,3) NOT NULL,
  `rashod_stanovnik` decimal(21,3) NOT NULL,
  `grad` varchar(21) collate latin1_general_ci NOT NULL,
  `grupa_rashoda` varchar(21) collate latin1_general_ci NOT NULL,
  `tip_rashoda` varchar(41) collate latin1_general_ci NOT NULL,
  `godina` varchar(5) collate latin1_general_ci NOT NULL,
  `entitet` varchar(11) collate latin1_general_ci default NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `grupa_prihoda` (`grupa_rashoda`),
  KEY `tip_prihoda` (`tip_rashoda`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(4) NOT NULL auto_increment,
  `username` varchar(33) default NULL,
  `hashed_password` varchar(128) default NULL,
  `password` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `hashed_password`, `password`) VALUES
(1, 'user01', NULL, NULL),
(2, 'fmntr', NULL, 'psw2012'),
(13, 'testuser', 'ee123fe5e35d1936106809b4d8b7cd3e77d9b9551a0e310962f282ae615dc124e6cc22ad507fbf7af4bbc621154c71893d0fa4796b46d74bdbf916a4767683b5', 'testpass'),
(14, 'testuser1', '3f63763137240f466ac32dec5dada516a3cc6aa19a372c04eac9f5d17e0734db71550cbf2348f0827cb4072d8db7590015a9e4dda92110bcca0aa3cb1ea91473', NULL);
--
-- Database: `information_schema`
--
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- Table structure for table `CHARACTER_SETS`
--

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATE_NAME` varchar(64) NOT NULL default '',
  `DESCRIPTION` varchar(60) NOT NULL default '',
  `MAXLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
('cp850', 'cp850_general_ci', 'DOS West European', 1),
('hp8', 'hp8_english_ci', 'HP West European', 1),
('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
('ascii', 'ascii_general_ci', 'US ASCII', 1),
('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3),
('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
('cp866', 'cp866_general_ci', 'DOS Russian', 1),
('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
('macce', 'macce_general_ci', 'Mac Central European', 1),
('macroman', 'macroman_general_ci', 'Mac West European', 1),
('cp852', 'cp852_general_ci', 'DOS Central European', 1),
('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
('binary', 'binary', 'Binary pseudo charset', 1),
('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATIONS`
--

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `ID` bigint(11) NOT NULL default '0',
  `IS_DEFAULT` varchar(3) NOT NULL default '',
  `IS_COMPILED` varchar(3) NOT NULL default '',
  `SORTLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATIONS`
--

INSERT INTO `COLLATIONS` (`COLLATION_NAME`, `CHARACTER_SET_NAME`, `ID`, `IS_DEFAULT`, `IS_COMPILED`, `SORTLEN`) VALUES
('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1),
('big5_bin', 'big5', 84, '', 'Yes', 1),
('dec8_swedish_ci', 'dec8', 3, 'Yes', '', 0),
('dec8_bin', 'dec8', 69, '', '', 0),
('cp850_general_ci', 'cp850', 4, 'Yes', '', 0),
('cp850_bin', 'cp850', 80, '', '', 0),
('hp8_english_ci', 'hp8', 6, 'Yes', '', 0),
('hp8_bin', 'hp8', 72, '', '', 0),
('koi8r_general_ci', 'koi8r', 7, 'Yes', '', 0),
('koi8r_bin', 'koi8r', 74, '', '', 0),
('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1),
('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1),
('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1),
('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2),
('latin1_bin', 'latin1', 47, '', 'Yes', 1),
('latin1_general_ci', 'latin1', 48, '', 'Yes', 1),
('latin1_general_cs', 'latin1', 49, '', 'Yes', 1),
('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1),
('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4),
('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1),
('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1),
('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1),
('latin2_bin', 'latin2', 77, '', 'Yes', 1),
('swe7_swedish_ci', 'swe7', 10, 'Yes', '', 0),
('swe7_bin', 'swe7', 82, '', '', 0),
('ascii_general_ci', 'ascii', 11, 'Yes', '', 0),
('ascii_bin', 'ascii', 65, '', '', 0),
('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1),
('ujis_bin', 'ujis', 91, '', 'Yes', 1),
('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1),
('sjis_bin', 'sjis', 88, '', 'Yes', 1),
('hebrew_general_ci', 'hebrew', 16, 'Yes', '', 0),
('hebrew_bin', 'hebrew', 71, '', '', 0),
('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4),
('tis620_bin', 'tis620', 89, '', 'Yes', 1),
('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1),
('euckr_bin', 'euckr', 85, '', 'Yes', 1),
('koi8u_general_ci', 'koi8u', 22, 'Yes', '', 0),
('koi8u_bin', 'koi8u', 75, '', '', 0),
('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1),
('gb2312_bin', 'gb2312', 86, '', 'Yes', 1),
('greek_general_ci', 'greek', 25, 'Yes', '', 0),
('greek_bin', 'greek', 70, '', '', 0),
('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1),
('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2),
('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1),
('cp1250_bin', 'cp1250', 66, '', 'Yes', 1),
('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1),
('gbk_bin', 'gbk', 87, '', 'Yes', 1),
('latin5_turkish_ci', 'latin5', 30, 'Yes', '', 0),
('latin5_bin', 'latin5', 78, '', '', 0),
('armscii8_general_ci', 'armscii8', 32, 'Yes', '', 0),
('armscii8_bin', 'armscii8', 64, '', '', 0),
('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1),
('utf8_bin', 'utf8', 83, '', 'Yes', 1),
('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8),
('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8),
('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8),
('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8),
('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8),
('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8),
('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8),
('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8),
('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8),
('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8),
('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8),
('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8),
('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8),
('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8),
('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8),
('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8),
('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8),
('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8),
('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8),
('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1),
('ucs2_bin', 'ucs2', 90, '', 'Yes', 1),
('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8),
('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8),
('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8),
('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8),
('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8),
('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8),
('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8),
('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8),
('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8),
('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8),
('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8),
('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8),
('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8),
('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8),
('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8),
('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8),
('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8),
('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8),
('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8),
('cp866_general_ci', 'cp866', 36, 'Yes', '', 0),
('cp866_bin', 'cp866', 68, '', '', 0),
('keybcs2_general_ci', 'keybcs2', 37, 'Yes', '', 0),
('keybcs2_bin', 'keybcs2', 73, '', '', 0),
('macce_general_ci', 'macce', 38, 'Yes', '', 0),
('macce_bin', 'macce', 43, '', '', 0),
('macroman_general_ci', 'macroman', 39, 'Yes', '', 0),
('macroman_bin', 'macroman', 53, '', '', 0),
('cp852_general_ci', 'cp852', 40, 'Yes', '', 0),
('cp852_bin', 'cp852', 81, '', '', 0),
('latin7_estonian_cs', 'latin7', 20, '', '', 0),
('latin7_general_ci', 'latin7', 41, 'Yes', '', 0),
('latin7_general_cs', 'latin7', 42, '', '', 0),
('latin7_bin', 'latin7', 79, '', '', 0),
('cp1251_bulgarian_ci', 'cp1251', 14, '', '', 0),
('cp1251_ukrainian_ci', 'cp1251', 23, '', '', 0),
('cp1251_bin', 'cp1251', 50, '', '', 0),
('cp1251_general_ci', 'cp1251', 51, 'Yes', '', 0),
('cp1251_general_cs', 'cp1251', 52, '', '', 0),
('cp1256_general_ci', 'cp1256', 57, 'Yes', '', 0),
('cp1256_bin', 'cp1256', 67, '', '', 0),
('cp1257_lithuanian_ci', 'cp1257', 29, '', '', 0),
('cp1257_bin', 'cp1257', 58, '', '', 0),
('cp1257_general_ci', 'cp1257', 59, 'Yes', '', 0),
('binary', 'binary', 63, 'Yes', 'Yes', 1),
('geostd8_general_ci', 'geostd8', 92, 'Yes', '', 0),
('geostd8_bin', 'geostd8', 93, '', '', 0),
('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1),
('cp932_bin', 'cp932', 96, '', 'Yes', 1),
('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1),
('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` (`COLLATION_NAME`, `CHARACTER_SET_NAME`) VALUES
('big5_chinese_ci', 'big5'),
('big5_bin', 'big5'),
('dec8_swedish_ci', 'dec8'),
('dec8_bin', 'dec8'),
('cp850_general_ci', 'cp850'),
('cp850_bin', 'cp850'),
('hp8_english_ci', 'hp8'),
('hp8_bin', 'hp8'),
('koi8r_general_ci', 'koi8r'),
('koi8r_bin', 'koi8r'),
('latin1_german1_ci', 'latin1'),
('latin1_swedish_ci', 'latin1'),
('latin1_danish_ci', 'latin1'),
('latin1_german2_ci', 'latin1'),
('latin1_bin', 'latin1'),
('latin1_general_ci', 'latin1'),
('latin1_general_cs', 'latin1'),
('latin1_spanish_ci', 'latin1'),
('latin2_czech_cs', 'latin2'),
('latin2_general_ci', 'latin2'),
('latin2_hungarian_ci', 'latin2'),
('latin2_croatian_ci', 'latin2'),
('latin2_bin', 'latin2'),
('swe7_swedish_ci', 'swe7'),
('swe7_bin', 'swe7'),
('ascii_general_ci', 'ascii'),
('ascii_bin', 'ascii'),
('ujis_japanese_ci', 'ujis'),
('ujis_bin', 'ujis'),
('sjis_japanese_ci', 'sjis'),
('sjis_bin', 'sjis'),
('hebrew_general_ci', 'hebrew'),
('hebrew_bin', 'hebrew'),
('tis620_thai_ci', 'tis620'),
('tis620_bin', 'tis620'),
('euckr_korean_ci', 'euckr'),
('euckr_bin', 'euckr'),
('koi8u_general_ci', 'koi8u'),
('koi8u_bin', 'koi8u'),
('gb2312_chinese_ci', 'gb2312'),
('gb2312_bin', 'gb2312'),
('greek_general_ci', 'greek'),
('greek_bin', 'greek'),
('cp1250_general_ci', 'cp1250'),
('cp1250_czech_cs', 'cp1250'),
('cp1250_croatian_ci', 'cp1250'),
('cp1250_bin', 'cp1250'),
('gbk_chinese_ci', 'gbk'),
('gbk_bin', 'gbk'),
('latin5_turkish_ci', 'latin5'),
('latin5_bin', 'latin5'),
('armscii8_general_ci', 'armscii8'),
('armscii8_bin', 'armscii8'),
('utf8_general_ci', 'utf8'),
('utf8_bin', 'utf8'),
('utf8_unicode_ci', 'utf8'),
('utf8_icelandic_ci', 'utf8'),
('utf8_latvian_ci', 'utf8'),
('utf8_romanian_ci', 'utf8'),
('utf8_slovenian_ci', 'utf8'),
('utf8_polish_ci', 'utf8'),
('utf8_estonian_ci', 'utf8'),
('utf8_spanish_ci', 'utf8'),
('utf8_swedish_ci', 'utf8'),
('utf8_turkish_ci', 'utf8'),
('utf8_czech_ci', 'utf8'),
('utf8_danish_ci', 'utf8'),
('utf8_lithuanian_ci', 'utf8'),
('utf8_slovak_ci', 'utf8'),
('utf8_spanish2_ci', 'utf8'),
('utf8_roman_ci', 'utf8'),
('utf8_persian_ci', 'utf8'),
('utf8_esperanto_ci', 'utf8'),
('utf8_hungarian_ci', 'utf8'),
('ucs2_general_ci', 'ucs2'),
('ucs2_bin', 'ucs2'),
('ucs2_unicode_ci', 'ucs2'),
('ucs2_icelandic_ci', 'ucs2'),
('ucs2_latvian_ci', 'ucs2'),
('ucs2_romanian_ci', 'ucs2'),
('ucs2_slovenian_ci', 'ucs2'),
('ucs2_polish_ci', 'ucs2'),
('ucs2_estonian_ci', 'ucs2'),
('ucs2_spanish_ci', 'ucs2'),
('ucs2_swedish_ci', 'ucs2'),
('ucs2_turkish_ci', 'ucs2'),
('ucs2_czech_ci', 'ucs2'),
('ucs2_danish_ci', 'ucs2'),
('ucs2_lithuanian_ci', 'ucs2'),
('ucs2_slovak_ci', 'ucs2'),
('ucs2_spanish2_ci', 'ucs2'),
('ucs2_roman_ci', 'ucs2'),
('ucs2_persian_ci', 'ucs2'),
('ucs2_esperanto_ci', 'ucs2'),
('ucs2_hungarian_ci', 'ucs2'),
('cp866_general_ci', 'cp866'),
('cp866_bin', 'cp866'),
('keybcs2_general_ci', 'keybcs2'),
('keybcs2_bin', 'keybcs2'),
('macce_general_ci', 'macce'),
('macce_bin', 'macce'),
('macroman_general_ci', 'macroman'),
('macroman_bin', 'macroman'),
('cp852_general_ci', 'cp852'),
('cp852_bin', 'cp852'),
('latin7_estonian_cs', 'latin7'),
('latin7_general_ci', 'latin7'),
('latin7_general_cs', 'latin7'),
('latin7_bin', 'latin7'),
('cp1251_bulgarian_ci', 'cp1251'),
('cp1251_ukrainian_ci', 'cp1251'),
('cp1251_bin', 'cp1251'),
('cp1251_general_ci', 'cp1251'),
('cp1251_general_cs', 'cp1251'),
('cp1256_general_ci', 'cp1256'),
('cp1256_bin', 'cp1256'),
('cp1257_lithuanian_ci', 'cp1257'),
('cp1257_bin', 'cp1257'),
('cp1257_general_ci', 'cp1257'),
('binary', 'binary'),
('geostd8_general_ci', 'geostd8'),
('geostd8_bin', 'geostd8'),
('cp932_japanese_ci', 'cp932'),
('cp932_bin', 'cp932'),
('eucjpms_japanese_ci', 'eucjpms'),
('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMNS`
--

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(21) NOT NULL default '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL default '',
  `DATA_TYPE` varchar(64) NOT NULL default '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) default NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) default NULL,
  `NUMERIC_PRECISION` bigint(21) default NULL,
  `NUMERIC_SCALE` bigint(21) default NULL,
  `CHARACTER_SET_NAME` varchar(64) default NULL,
  `COLLATION_NAME` varchar(64) default NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL default '',
  `EXTRA` varchar(20) NOT NULL default '',
  `PRIVILEGES` varchar(80) NOT NULL default '',
  `COLUMN_COMMENT` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMNS`
--

INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'DURATION', 4, '0.000000', 'NO', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 7, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 11, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 12, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 13, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_PATH', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 15, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CREATED', 16, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'LAST_ALTERED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 19, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DEFINER', 20, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'DEFINER', 19, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'fiskalni_db', 'employees', 'employeeNumber', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'employees', 'lastName', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'employees', 'firstName', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'employees', 'extension', 4, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'employees', 'email', 5, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'employees', 'officeCode', 6, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'employees', 'file_url', 7, NULL, 'NO', 'varchar', 250, 750, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(250)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'employees', 'jobTitle', 8, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'novosti', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'novosti', 'naslov', 2, NULL, 'NO', 'varchar', 33, 99, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(33)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'novosti', 'text', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'novosti', 'author', 4, NULL, 'NO', 'varchar', 11, 33, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'novosti', 'slika', 5, NULL, 'NO', 'varchar', 21, 63, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(21)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'novosti', 'date_created', 6, NULL, 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'novosti', 'date_modified', 7, NULL, 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'opcina', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(3)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'opcina', 'opcina', 2, NULL, 'NO', 'varchar', 21, 63, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(21)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'opcina', 'info', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'stavka', 2, NULL, 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'ukupan_iznos', 3, NULL, 'NO', 'decimal', NULL, NULL, 21, 3, NULL, NULL, 'decimal(21,3)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'procenat', 4, NULL, 'NO', 'decimal', NULL, NULL, 11, 3, NULL, NULL, 'decimal(11,3)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'prihod_stanovnik', 5, NULL, 'NO', 'decimal', NULL, NULL, 21, 3, NULL, NULL, 'decimal(21,3)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'grad', 6, NULL, 'NO', 'varchar', 21, 63, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(21)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'grupa_prihoda', 7, NULL, 'NO', 'varchar', 21, 63, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(21)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'tip_prihoda', 8, NULL, 'NO', 'varchar', 41, 123, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(41)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'godina', 9, NULL, 'NO', 'varchar', 5, 15, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'entitet', 10, NULL, 'YES', 'varchar', 11, 33, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'created', 11, NULL, 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'prihodi', 'updated', 12, NULL, 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'stavka', 2, NULL, 'NO', 'varchar', 77, 77, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(77)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'ukupan_iznos', 3, NULL, 'NO', 'decimal', NULL, NULL, 21, 3, NULL, NULL, 'decimal(21,3)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'procenat', 4, NULL, 'NO', 'decimal', NULL, NULL, 11, 3, NULL, NULL, 'decimal(11,3)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'rashod_stanovnik', 5, NULL, 'NO', 'decimal', NULL, NULL, 21, 3, NULL, NULL, 'decimal(21,3)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'grad', 6, NULL, 'NO', 'varchar', 21, 21, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(21)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'grupa_rashoda', 7, NULL, 'NO', 'varchar', 21, 21, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(21)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'tip_rashoda', 8, NULL, 'NO', 'varchar', 41, 41, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(41)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'godina', 9, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'entitet', 10, NULL, 'YES', 'varchar', 11, 11, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'created', 11, NULL, 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'rashodi', 'updated', 12, NULL, 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'users', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'users', 'username', 2, NULL, 'YES', 'varchar', 33, 33, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(33)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'users', 'hashed_password', 3, NULL, 'YES', 'varchar', 128, 128, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'fiskalni_db', 'users', 'password', 4, NULL, 'YES', 'varchar', 32, 32, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(32)', '', '', 'select,insert,update,references', '');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMN_PRIVILEGES`
--

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `KEY_COLUMN_USAGE`
--

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(10) NOT NULL default '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) default NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) default NULL,
  `REFERENCED_TABLE_NAME` varchar(64) default NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `POSITION_IN_UNIQUE_CONSTRAINT`, `REFERENCED_TABLE_SCHEMA`, `REFERENCED_TABLE_NAME`, `REFERENCED_COLUMN_NAME`) VALUES
(NULL, 'fiskalni_db', 'PRIMARY', NULL, 'fiskalni_db', 'employees', 'employeeNumber', 1, NULL, NULL, NULL, NULL),
(NULL, 'fiskalni_db', 'PRIMARY', NULL, 'fiskalni_db', 'novosti', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'fiskalni_db', 'PRIMARY', NULL, 'fiskalni_db', 'opcina', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'fiskalni_db', 'PRIMARY', NULL, 'fiskalni_db', 'prihodi', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'fiskalni_db', 'PRIMARY', NULL, 'fiskalni_db', 'rashodi', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'fiskalni_db', 'PRIMARY', NULL, 'fiskalni_db', 'users', 'id', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PROFILING`
--

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` bigint(20) NOT NULL default '0',
  `SEQ` bigint(20) NOT NULL default '0',
  `STATE` varchar(30) NOT NULL default '',
  `DURATION` decimal(9,6) NOT NULL default '0.000000',
  `CPU_USER` decimal(9,6) default NULL,
  `CPU_SYSTEM` decimal(9,6) default NULL,
  `CONTEXT_VOLUNTARY` bigint(20) default NULL,
  `CONTEXT_INVOLUNTARY` bigint(20) default NULL,
  `BLOCK_OPS_IN` bigint(20) default NULL,
  `BLOCK_OPS_OUT` bigint(20) default NULL,
  `MESSAGES_SENT` bigint(20) default NULL,
  `MESSAGES_RECEIVED` bigint(20) default NULL,
  `PAGE_FAULTS_MAJOR` bigint(20) default NULL,
  `PAGE_FAULTS_MINOR` bigint(20) default NULL,
  `SWAPS` bigint(20) default NULL,
  `SOURCE_FUNCTION` varchar(30) default NULL,
  `SOURCE_FILE` varchar(20) default NULL,
  `SOURCE_LINE` bigint(20) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- in use (#1289 - The 'SHOW PROFILE' feature is disabled; you need MySQL built with 'enable-profiling' to have it working)

-- --------------------------------------------------------

--
-- Table structure for table `ROUTINES`
--

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_CATALOG` varchar(512) default NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL default '',
  `ROUTINE_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_TYPE` varchar(9) NOT NULL default '',
  `DTD_IDENTIFIER` varchar(64) default NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL default '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) default NULL,
  `EXTERNAL_LANGUAGE` varchar(64) default NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL default '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL default '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(64) default NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL default '',
  `CREATED` datetime NOT NULL default '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL default '0000-00-00 00:00:00',
  `SQL_MODE` longtext NOT NULL,
  `ROUTINE_COMMENT` varchar(64) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMATA`
--

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) default NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATION_NAME` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(512) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMATA`
--

INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`) VALUES
(NULL, 'information_schema', 'utf8', 'utf8_general_ci', NULL),
(NULL, 'fiskalni_db', 'utf8', 'utf8_general_ci', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMA_PRIVILEGES`
--

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'SELECT', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'INSERT', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'UPDATE', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'DELETE', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'CREATE', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'DROP', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'REFERENCES', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'INDEX', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'ALTER', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'CREATE TEMPORARY TABLES', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'LOCK TABLES', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'EXECUTE', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'CREATE VIEW', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'SHOW VIEW', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'CREATE ROUTINE', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_db', 'ALTER ROUTINE', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'SELECT', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'INSERT', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'UPDATE', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'DELETE', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'CREATE', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'DROP', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'REFERENCES', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'INDEX', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'ALTER', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'CREATE TEMPORARY TABLES', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'LOCK TABLES', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'EXECUTE', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'CREATE VIEW', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'SHOW VIEW', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'CREATE ROUTINE', 'NO'),
('''fiskalni''@''localhost''', NULL, 'fiskalni\\_%', 'ALTER ROUTINE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `STATISTICS`
--

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `NON_UNIQUE` bigint(1) NOT NULL default '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL default '',
  `INDEX_NAME` varchar(64) NOT NULL default '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL default '0',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `COLLATION` varchar(1) default NULL,
  `CARDINALITY` bigint(21) default NULL,
  `SUB_PART` bigint(3) default NULL,
  `PACKED` varchar(10) default NULL,
  `NULLABLE` varchar(3) NOT NULL default '',
  `INDEX_TYPE` varchar(16) NOT NULL default '',
  `COMMENT` varchar(16) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STATISTICS`
--

INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`) VALUES
(NULL, 'fiskalni_db', 'employees', 0, 'fiskalni_db', 'PRIMARY', 1, 'employeeNumber', 'A', 23, NULL, NULL, '', 'BTREE', ''),
(NULL, 'fiskalni_db', 'novosti', 0, 'fiskalni_db', 'PRIMARY', 1, 'id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'fiskalni_db', 'opcina', 0, 'fiskalni_db', 'PRIMARY', 1, 'id', 'A', 5, NULL, NULL, '', 'BTREE', ''),
(NULL, 'fiskalni_db', 'prihodi', 0, 'fiskalni_db', 'PRIMARY', 1, 'id', 'A', 51, NULL, NULL, '', 'BTREE', ''),
(NULL, 'fiskalni_db', 'prihodi', 1, 'fiskalni_db', 'grupa_prihoda', 1, 'grupa_prihoda', 'A', 8, NULL, NULL, '', 'BTREE', ''),
(NULL, 'fiskalni_db', 'prihodi', 1, 'fiskalni_db', 'tip_prihoda', 1, 'tip_prihoda', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'fiskalni_db', 'rashodi', 0, 'fiskalni_db', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'fiskalni_db', 'rashodi', 1, 'fiskalni_db', 'grupa_prihoda', 1, 'grupa_rashoda', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'fiskalni_db', 'rashodi', 1, 'fiskalni_db', 'tip_prihoda', 1, 'tip_rashoda', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'fiskalni_db', 'users', 0, 'fiskalni_db', 'PRIMARY', 1, 'id', 'A', 4, NULL, NULL, '', 'BTREE', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLES`
--

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `TABLE_TYPE` varchar(64) NOT NULL default '',
  `ENGINE` varchar(64) default NULL,
  `VERSION` bigint(21) default NULL,
  `ROW_FORMAT` varchar(10) default NULL,
  `TABLE_ROWS` bigint(21) default NULL,
  `AVG_ROW_LENGTH` bigint(21) default NULL,
  `DATA_LENGTH` bigint(21) default NULL,
  `MAX_DATA_LENGTH` bigint(21) default NULL,
  `INDEX_LENGTH` bigint(21) default NULL,
  `DATA_FREE` bigint(21) default NULL,
  `AUTO_INCREMENT` bigint(21) default NULL,
  `CREATE_TIME` datetime default NULL,
  `UPDATE_TIME` datetime default NULL,
  `CHECK_TIME` datetime default NULL,
  `TABLE_COLLATION` varchar(64) default NULL,
  `CHECKSUM` bigint(21) default NULL,
  `CREATE_OPTIONS` varchar(255) default NULL,
  `TABLE_COMMENT` varchar(80) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLES`
--

INSERT INTO `TABLES` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `TABLE_TYPE`, `ENGINE`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `AUTO_INCREMENT`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `TABLE_COLLATION`, `CHECKSUM`, `CREATE_OPTIONS`, `TABLE_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 576, 0, 49641984, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=87381', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 423, 0, 50212638, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=118987', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 387, 0, 49689639, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=130055', ''),
(NULL, 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-06-08 10:16:19', '2012-06-08 10:16:19', NULL, 'utf8_general_ci', NULL, 'max_rows=13073', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2565, 0, 50271435, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=19622', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 4637, 0, 50297539, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=10854', ''),
(NULL, 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 356, 0, 49772360, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=141381', ''),
(NULL, 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-06-08 10:16:19', '2012-06-08 10:16:19', NULL, 'utf8_general_ci', NULL, 'max_rows=13759', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3656, 0, 50218816, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=13766', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2179, 0, 50215055, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=23098', ''),
(NULL, 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2679, 0, 50311620, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=18787', ''),
(NULL, 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3641, 0, 50234877, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=13823', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2504, 0, 50170144, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=20100', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2372, 0, 50246076, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=21219', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-06-08 10:16:19', '2012-06-08 10:16:19', NULL, 'utf8_general_ci', NULL, 'max_rows=11478', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 1986, 0, 50178276, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=25343', ''),
(NULL, 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-06-08 10:16:19', '2012-06-08 10:16:19', NULL, 'utf8_general_ci', NULL, 'max_rows=22610', ''),
(NULL, 'fiskalni_db', 'employees', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 23, 73, 1696, 281474976710655, 2048, 0, 1703, '2012-05-30 13:43:50', '2012-05-30 13:43:50', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'fiskalni_db', 'novosti', 'BASE TABLE', 'InnoDB', 10, 'Compact', 3, 5461, 16384, 0, 0, 0, 4, '2012-06-05 14:45:01', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 8192 kB'),
(NULL, 'fiskalni_db', 'opcina', 'BASE TABLE', 'InnoDB', 10, 'Compact', 5, 3276, 16384, 0, 0, 0, 6, '2012-06-05 14:45:01', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 8192 kB'),
(NULL, 'fiskalni_db', 'prihodi', 'BASE TABLE', 'InnoDB', 10, 'Compact', 51, 321, 16384, 0, 32768, 0, 52, '2012-06-05 14:45:01', NULL, NULL, 'latin1_general_ci', NULL, '', 'InnoDB free: 8192 kB'),
(NULL, 'fiskalni_db', 'rashodi', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 32768, 0, 27, '2012-06-05 14:45:01', NULL, NULL, 'latin1_general_ci', NULL, '', 'InnoDB free: 8192 kB'),
(NULL, 'fiskalni_db', 'users', 'BASE TABLE', 'InnoDB', 10, 'Compact', 4, 4096, 16384, 0, 0, 0, 15, '2012-06-05 14:45:01', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 8192 kB');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_SCHEMA`, `TABLE_NAME`, `CONSTRAINT_TYPE`) VALUES
(NULL, 'fiskalni_db', 'PRIMARY', 'fiskalni_db', 'employees', 'PRIMARY KEY'),
(NULL, 'fiskalni_db', 'PRIMARY', 'fiskalni_db', 'novosti', 'PRIMARY KEY'),
(NULL, 'fiskalni_db', 'PRIMARY', 'fiskalni_db', 'opcina', 'PRIMARY KEY'),
(NULL, 'fiskalni_db', 'PRIMARY', 'fiskalni_db', 'prihodi', 'PRIMARY KEY'),
(NULL, 'fiskalni_db', 'PRIMARY', 'fiskalni_db', 'rashodi', 'PRIMARY KEY'),
(NULL, 'fiskalni_db', 'PRIMARY', 'fiskalni_db', 'users', 'PRIMARY KEY');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PRIVILEGES`
--

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TRIGGERS`
--

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) default NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL default '',
  `TRIGGER_NAME` varchar(64) NOT NULL default '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL default '',
  `EVENT_OBJECT_CATALOG` varchar(512) default NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL default '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL default '',
  `ACTION_ORDER` bigint(4) NOT NULL default '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL default '',
  `ACTION_TIMING` varchar(6) NOT NULL default '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL default '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL default '',
  `CREATED` datetime default NULL,
  `SQL_MODE` longtext NOT NULL,
  `DEFINER` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USER_PRIVILEGES`
--

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''fiskalni''@''localhost''', NULL, 'USAGE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `VIEWS`
--

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL default '',
  `IS_UPDATABLE` varchar(3) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default '',
  `SECURITY_TYPE` varchar(7) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
