-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2012 at 11:09 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `novosti`
--

CREATE TABLE IF NOT EXISTS `novosti` (
  `id` int(4) NOT NULL auto_increment,
  `naslov` varchar(33) default NULL,
  `text` text,
  `author` varchar(11) default NULL,
  `slika` varchar(21) default NULL,
  `date_created` date NOT NULL,
  `date_modified` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

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
  `opcina` varchar(21) default NULL,
  `info` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `opcina`
--

INSERT INTO `opcina` (`id`, `opcina`, `info`) VALUES
(2, 'Sarajevo', NULL),
(3, 'Zenica', '<p><strong><br /></strong></p>\n<p><strong>Entitet</strong>: FBiH</p>\n<p><strong>Kanton</strong>: Zeničko - dobojski kanton</p>\n<p><strong>Površina</strong>: 558.5 km<sup>2</sup></p>\n<p><strong>Broj stanovnika</strong>: 127,202</p>\n<p><strong>Prosječna neto plata</strong>: 733.51 KM</p>\n<p><strong>Stopa nezaposlenosti</strong>: 47.24</p>\n<p> </p>\n<p><em>Svi podaci se odnose na 2010. godinu, </em><em>i preuzeti su sa mojemjesto.ba.</em></p>'),
(4, 'Tuzla', '<p><strong><br /></strong></p>\n<p><strong>Entitet</strong>: FBiH </p>\n<p><strong>Kanton</strong>: Tuzla</p>\n<p><strong>Površina</strong>: 294 km<sup>2</sup></p>\n<p><strong>Broj stanovnika</strong>: 131,768</p>\n<p><strong>Prosječna neto plata</strong>: 842.76 KM</p>\n<p><strong>Stopa nezaposlenosti</strong>: 35.74</p>\n<p><br /><em>Svi podaci se odnose na 2010. godinu, i preuzeti su sa mojemjesto.ba.</em></p>'),
(5, 'Novi Grad Sarajevo', '<p><strong><br /></strong></p>\n<p><strong>Entitet</strong>: FBiH</p>\n<p><strong>Kanton</strong>: Sarajevo</p>\n<p><strong>Površina</strong>: 47.2 km<sup>2</sup></p>\n<p><strong>Broj stanovnika</strong>: 125,395</p>\n<p><strong>Prosječna neto plata</strong>: 856.33 KM</p>\n<p><strong>Stopa nezaposlenosti</strong>: 46.36</p>\n<p> </p>\n<p><em>Svi podaci se odnose na 2010. godinu, </em><em>i preuzeti su sa mojemjesto.ba.</em></p>'),
(6, 'Centar Sarajevo', '<p><strong><br /></strong></p>\n<p><strong>Entitet</strong>: FBiH </p>\n<p><strong>Kanton</strong>: Sarajevo</p>\n<p><strong>Površina</strong>: 33 km<sup>2</sup></p>\n<p><strong>Broj stanovnika</strong>: 69,673</p>\n<p><strong>Prosječna neto plata</strong>: 1,135.81 KM</p>\n<p><strong>Stopa nezaposlenosti</strong>: 15.64</p>\n<p><br /><em>Svi podaci se odnose na 2010. godinu, i preuzeti su sa mojemjesto.ba.</em></p>'),
(7, 'Mostar', NULL),
(8, 'Travnik', NULL),
(9, 'Široki Brijeg', NULL),
(10, 'Banja Luka', '<p><em><strong>Entitet</strong></em>: RS<em><strong></strong></em></p>\n<p><em><strong>Površina:</strong></em> 1,238.91  km<sup>2</sup></p>\n<p><em><strong>Broj stanovnika:</strong></em> 226,459 </p>\n<p><em><strong>Prosječna neto plata</strong></em>: 908.00 KM</p>\n<p><em><strong>Stopa nezaposlenosti</strong>: </em>22.84 </p>\n<p> </p>\n<p><em>Svi podaci se odnose na 2010. godinu, i preuzeti su sa mojemjesto.ba.</em></p>'),
(11, 'Bijeljina', '<p><strong><br /></strong></p>\n<p><em><strong>Entitet</strong></em>: RS</p>\n<p><em><strong>Površina</strong></em>: 733.85 km<sup>2</sup></p>\n<p><em><strong>Broj stanovnika</strong></em>: 108,814</p>\n<p><em><strong>Prosječna neto plata</strong>:</em> 775,00 KM</p>\n<p><em><strong>Stopa nezaposlenosti</strong>:</em> 39.38</p>\n<p><em><br /></em></p>\n<p><em>Svi podaci se odnose na 2010. godinu, i preuzeti su sa mojemjesto.ba.</em></p>'),
(12, 'Prijedor', NULL),
(13, 'Doboj', '<p><strong><br class="Apple-interchange-newline" />Entitet</strong>: RS</p>\n<p><strong>Površina</strong>: 772.09 km<sup>2</sup></p>\n<p><strong>Broj stanovnika</strong>: 77,967</p>\n<p><strong>Prosječna neto plata</strong>: 779 KM</p>\n<p><strong>Stopa nezaposlenosti</strong>: 47.05</p>\n<p><br /><em>Svi podaci se odnose na 2010. godinu, i preuzeti su sa mojemjesto.ba.</em></p>'),
(14, 'Gradiška', '<p><strong><br /></strong></p>\n<p><strong>Entitet</strong>: RS</p>\n<p><strong>Površina</strong>: 761.74 km<sup>2</sup></p>\n<p><strong>Broj stanovnika</strong>: 59,334</p>\n<p><strong>Prosječna neto plata</strong>: 728 KM</p>\n<p><strong>Stopa nezaposlenosti</strong>: 39.83</p>\n<p> <br /><em>Svi podaci se odnose na 2010. godinu, i preuzeti su sa mojemjesto.ba.</em></p>'),
(15, 'Zvornik', NULL),
(16, 'Prnjavor', '<p><strong><br /></strong></p>\n<p><strong>Entitet</strong>: RS</p>\n<p><strong>Površina</strong>: 629.95 km<sup>2</sup></p>\n<p><strong>Broj stanovnika</strong>: 48,145 </p>\n<p><strong>Prosječna neto plata</strong>: 658 KM</p>\n<p><strong>Stopa nezaposlenosti</strong>: 25.56</p>\n<p><br /><em>Svi podaci se odnose na 2010. godinu, i preuzeti su sa mojemjesto.ba.</em></p>'),
(17, 'Trebinje', NULL),
(18, 'Bihać', '<p> </p>\n<p><strong>Entitet</strong>: FBiH </p>\n<p><strong>Kanton</strong>: Unsko-sanski</p>\n<p><strong>Površina</strong>: 900 km<sup>2</sup></p>\n<p><strong>Broj stanovnika</strong>: 61,491</p>\n<p><strong>Prosječna neto plata</strong>: 957.48 KM</p>\n<p><strong>Stopa nezaposlenosti</strong>: 43.35</p>\n<p><br /><em>Svi podaci se odnose na 2010. godinu, i preuzeti su sa mojemjesto.ba.</em></p>');

-- --------------------------------------------------------

--
-- Table structure for table `prihodi`
--

CREATE TABLE IF NOT EXISTS `prihodi` (
  `id` int(4) NOT NULL auto_increment,
  `stavka` varchar(77) default NULL,
  `ukupan_iznos` decimal(21,3) NOT NULL,
  `procenat` decimal(11,3) NOT NULL,
  `prihod_stanovnik` decimal(21,3) NOT NULL,
  `grad` varchar(21) default NULL,
  `grupa_prihoda` varchar(21) default NULL,
  `tip_prihoda` varchar(41) default NULL,
  `godina` varchar(5) default NULL,
  `entitet` varchar(11) default NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `grupa_prihoda` (`grupa_prihoda`),
  KEY `tip_prihoda` (`tip_prihoda`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=387 ;

--
-- Dumping data for table `prihodi`
--

INSERT INTO `prihodi` (`id`, `stavka`, `ukupan_iznos`, `procenat`, `prihod_stanovnik`, `grad`, `grupa_prihoda`, `tip_prihoda`, `godina`, `entitet`, `created`, `updated`) VALUES
(215, 'Porezi na dohodak i dobit', '33768.000', '0.000', '0.000', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Porez na lična primanja i prihode od samostalne djelatnosti', '114498.000', '0.000', '1.000', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Porez na imovinu ', '2093900.000', '10.000', '34.000', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Domaći porezi na dobra i usluge', '20682.000', '0.000', '0.000', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Prihodi od neizravnih poreza ', '6251747.000', '32.000', '101.000', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Ostali porezni prihodi ', '2589717.000', '13.000', '42.000', 'Bihać', 'POREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Prihodi od poduzetničkih aktivnosti i imovine ', '294830.000', '1.000', '4.000', 'Bihać', 'NEPOREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Naknade i pristojbe od pružanja javnih usluga', '6356744.000', '32.000', '103.000', 'Bihać', 'NEPOREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Novčane kazne ', '26224.000', '0.000', '0.000', 'Bihać', 'NEPOREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Ostali neporezni prihodi ', '0.000', '0.000', '0.000', 'Bihać', 'NEPOREZNI PRIHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '166856.000', '0.000', '2.000', 'Bihać', 'TRANSFERI I DONACIJE', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Primljeni tekući transferi od ostalih razina vlasti', '136933.000', '0.000', '2.000', 'Bihać', 'TRANSFERI I DONACIJE', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Donacije', '0.000', '0.000', '0.000', 'Bihać', 'TRANSFERI I DONACIJE', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Kapitalni primici od prodaje stalnih sredstava', '0.000', '0.000', '0.000', 'Bihać', 'KAPITALNI PRIMICI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacij', '122202.000', '0.000', '1.000', 'Bihać', 'KAPITALNI PRIMICI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Kapitalni transferi od ostalih razina vlasti', '1241501.000', '6.000', '20.000', 'Bihać', 'KAPITALNI PRIMICI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, ' Primici od finansijske imovine', '0.000', '0.000', '0.000', 'Bihać', 'KAPITALNI PRIMICI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Porezi na dohodak i dobit', '4615661.320', '13.130', '36.290', 'Zenica', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'Porez na imovinu ', '2286411.870', '6.510', '17.970', 'Zenica', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Novčane kazne ', '36355.830', '0.100', '0.290', 'Zenica', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Ostali neporezni prihodi ', '0.000', '0.000', '0.000', 'Zenica', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '2500.000', '0.010', '0.020', 'Zenica', 'TRANSFERI I DONACIJE', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacija', '86523.770', '0.250', '0.680', 'Zenica', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'Porez na lična primanja i prihode od samostalne djelatnosti', '282473.010', '0.800', '2.220', 'Zenica', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'Domaći porezi na dobra i usluge', '37167.400', '0.110', '0.290', 'Zenica', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'Prihodi od neizravnih poreza ', '13033914.410', '37.080', '102.470', 'Zenica', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'Ostali porezni prihodi ', '9795.940', '0.030', '0.080', 'Zenica', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'Prihodi od poduzetničkih aktivnosti i imovine ', '1122048.510', '3.190', '8.820', 'Zenica', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'Naknade i pristojbe od pružanja javnih usluga', '10032398.870', '28.540', '78.870', 'Zenica', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'Primljeni tekući transferi od ostalih razina vlasti', '899122.790', '2.560', '7.070', 'Zenica', 'TRANSFERI I DONACIJE', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'Donacije', '1500.000', '0.000', '0.010', 'Zenica', 'TRANSFERI I DONACIJE', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'Kapitalni primici od prodaje stalnih sredstava', '593749.270', '1.690', '4.670', 'Zenica', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'Kapitalni transferi od ostalih razina vlasti', '2107515.600', '6.000', '16.570', 'Zenica', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, ' Primici od finansijske imovine', '0.000', '0.000', '0.000', 'Zenica', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'Porezi na dohodak i dobit', '7467.170', '0.030', '0.130', 'Gradiška', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'Porez na lična primanja i prihode od samostalne djelatnosti', '2101158.890', '9.830', '35.410', 'Gradiška', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 'Porez na imovinu ', '1085725.650', '5.080', '18.300', 'Gradiška', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'Domaći porezi na dobra i usluge', '26164.350', '0.120', '0.440', 'Gradiška', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'Prihodi od neizravnih poreza ', '11184966.390', '52.330', '188.510', 'Gradiška', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'Ostali porezni prihodi ', '8814.870', '0.040', '0.150', 'Gradiška', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'Prihodi od poduzetničkih aktivnosti i imovine ', '874824.240', '4.090', '14.740', 'Gradiška', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'Naknade i pristojbe od pružanja javnih usluga', '4851159.660', '22.700', '81.760', 'Gradiška', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'Novčane kazne ', '73114.000', '0.340', '1.230', 'Gradiška', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'Ostali neporezni prihodi ', '159216.130', '0.740', '2.680', 'Gradiška', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '0.000', '0.000', '0.000', 'Gradiška', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'Primljeni tekući transferi od ostalih razina vlasti', '188257.380', '0.880', '3.170', 'Gradiška', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'Donacije', '171602.700', '0.800', '2.890', 'Gradiška', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'Kapitalni primici od prodaje stalnih sredstava', '484625.770', '2.270', '8.170', 'Gradiška', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacija', '0.000', '0.000', '0.000', 'Gradiška', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 'Kapitalni transferi od ostalih razina vlasti', '0.000', '0.000', '0.000', 'Gradiška', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, ' Primici od finansijske imovine', '157019.280', '0.730', '2.650', 'Gradiška', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 'Porezi na dohodak i dobit', '7323915.880', '20.030', '55.580', 'Tuzla', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 'Porez na lična primanja i prihode od samostalne djelatnosti', '349732.870', '0.960', '2.650', 'Tuzla', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 'Porez na imovinu ', '4123823.000', '11.280', '31.300', 'Tuzla', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 'Domaći porezi na dobra i usluge', '53875.400', '0.150', '0.410', 'Tuzla', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 'Prihodi od neizravnih poreza ', '11949103.500', '32.680', '90.680', 'Tuzla', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 'Ostali porezni prihodi ', '16277.630', '0.040', '0.120', 'Tuzla', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 'Prihodi od poduzetničkih aktivnosti i imovine ', '706007.410', '1.930', '5.360', 'Tuzla', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 'Naknade i pristojbe od pružanja javnih usluga', '8862537.730', '24.240', '67.260', 'Tuzla', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 'Novčane kazne ', '43690.000', '0.120', '0.330', 'Tuzla', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 'Ostali neporezni prihodi ', '211438.730', '0.580', '1.600', 'Tuzla', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '0.000', '0.000', '0.000', 'Tuzla', 'TRANSFERI I DONACIJE', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 'Primljeni tekući transferi od ostalih razina vlasti', '1719641.450', '4.700', '13.050', 'Tuzla', 'TRANSFERI I DONACIJE', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 'Donacije', '1208718.850', '3.310', '9.170', 'Tuzla', 'TRANSFERI I DONACIJE', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 'Kapitalni primici od prodaje stalnih sredstava', '0.000', '0.000', '0.000', 'Tuzla', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacija', '0.000', '0.000', '0.000', 'Tuzla', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 'Kapitalni transferi od ostalih razina vlasti', '0.000', '0.000', '0.000', 'Tuzla', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, ' Primici od finansijske imovine', '0.000', '0.000', '0.000', 'Tuzla', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 'Porezi na dohodak i dobit', '160.000', '0.000', '0.000', 'Doboj', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 'Porez na lična primanja i prihode od samostalne djelatnosti', '3314094.000', '9.650', '42.510', 'Doboj', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 'Porez na imovinu ', '1181657.000', '3.440', '15.160', 'Doboj', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 'Domaći porezi na dobra i usluge', '57343.000', '0.170', '0.740', 'Doboj', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 'Prihodi od neizravnih poreza ', '14747654.000', '42.960', '189.150', 'Doboj', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 'Ostali porezni prihodi ', '102621.000', '0.300', '1.320', 'Doboj', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 'Prihodi od poduzetničkih aktivnosti i imovine ', '997988.000', '2.910', '12.800', 'Doboj', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 'Naknade i pristojbe od pružanja javnih usluga', '5262542.000', '15.330', '67.500', 'Doboj', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 'Novčane kazne ', '3150.000', '0.010', '0.040', 'Doboj', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 'Ostali neporezni prihodi ', '368482.000', '1.070', '4.730', 'Doboj', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '0.000', '0.000', '0.000', 'Doboj', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 'Primljeni tekući transferi od ostalih razina vlasti', '55000.000', '0.160', '0.710', 'Doboj', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 'Donacije', '16800.000', '0.050', '0.220', 'Doboj', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 'Kapitalni primici od prodaje stalnih sredstava', '1665616.000', '4.850', '21.360', 'Doboj', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacija', '0.000', '0.000', '0.000', 'Doboj', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 'Kapitalni transferi od ostalih razina vlasti', '281168.000', '0.820', '3.610', 'Doboj', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, ' Primici od finansijske imovine', '6275644.000', '18.280', '80.490', 'Doboj', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 'Porezi na dohodak i dobit', '440726.910', '1.860', '3.510', 'Novi Grad Sarajevo', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 'Porez na lična primanja i prihode od samostalne djelatnosti', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 'Porez na imovinu ', '4206444.480', '17.720', '33.550', 'Novi Grad Sarajevo', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 'Domaći porezi na dobra i usluge', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 'Prihodi od neizravnih poreza ', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 'Ostali porezni prihodi ', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'POREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 'Prihodi od poduzetničkih aktivnosti i imovine ', '4273348.440', '18.000', '34.080', 'Novi Grad Sarajevo', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 'Naknade i pristojbe od pružanja javnih usluga', '4699824.000', '19.800', '37.480', 'Novi Grad Sarajevo', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 'Novčane kazne ', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 'Ostali neporezni prihodi ', '117403.030', '0.490', '0.940', 'Novi Grad Sarajevo', 'NEPOREZNI PRIHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'TRANSFERI I DONACIJE', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 'Primljeni tekući transferi od ostalih razina vlasti', '7933800.000', '33.430', '63.270', 'Novi Grad Sarajevo', 'TRANSFERI I DONACIJE', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 'Donacije', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'TRANSFERI I DONACIJE', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 'Kapitalni primici od prodaje stalnih sredstava', '9198.670', '0.040', '0.070', 'Novi Grad Sarajevo', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacija', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 'Kapitalni transferi od ostalih razina vlasti', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, ' Primici od finansijske imovine', '2053637.360', '8.650', '16.380', 'Novi Grad Sarajevo', 'KAPITALNI PRIMICI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 'Porezi na dohodak i dobit', '8307.340', '0.020', '0.080', 'Bijeljina', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 'Porez na lična primanja i prihode od samostalne djelatnosti', '5030734.250', '9.750', '46.230', 'Bijeljina', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 'Porez na imovinu ', '2296199.630', '4.450', '21.100', 'Bijeljina', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 'Domaći porezi na dobra i usluge', '18761.620', '0.040', '0.170', 'Bijeljina', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 'Prihodi od neizravnih poreza ', '23480083.410', '45.490', '215.780', 'Bijeljina', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 'Ostali porezni prihodi ', '49386.640', '0.100', '0.450', 'Bijeljina', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 'Prihodi od poduzetničkih aktivnosti i imovine ', '1718611.760', '3.330', '15.790', 'Bijeljina', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 'Naknade i pristojbe od pružanja javnih usluga', '8121843.540', '15.730', '74.640', 'Bijeljina', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 'Novčane kazne ', '24282.800', '0.050', '0.220', 'Bijeljina', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 'Ostali neporezni prihodi ', '992679.220', '1.920', '9.120', 'Bijeljina', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '0.000', '0.000', '0.000', 'Bijeljina', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 'Primljeni tekući transferi od ostalih razina vlasti', '125200.000', '0.240', '1.150', 'Bijeljina', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 'Donacije', '0.000', '0.000', '0.000', 'Bijeljina', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 'Kapitalni primici od prodaje stalnih sredstava', '85719.990', '0.170', '0.790', 'Bijeljina', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacija', '0.000', '0.000', '0.000', 'Bijeljina', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 'Kapitalni transferi od ostalih razina vlasti', '775963.470', '1.500', '7.130', 'Bijeljina', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, ' Primici od finansijske imovine', '8888742.500', '17.220', '81.690', 'Bijeljina', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 'Porezi na dohodak i dobit', '854.750', '0.000', '0.000', 'Banja Luka', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 'Porez na lična primanja i prihode od samostalne djelatnosti', '17487768.880', '11.690', '77.220', 'Banja Luka', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 'Porez na imovinu ', '5343780.660', '3.570', '23.600', 'Banja Luka', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 'Domaći porezi na dobra i usluge', '457397.300', '0.310', '2.020', 'Banja Luka', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 'Prihodi od neizravnih poreza ', '63651812.110', '42.540', '281.070', 'Banja Luka', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 'Ostali porezni prihodi ', '89562.340', '0.060', '0.400', 'Banja Luka', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 'Prihodi od poduzetničkih aktivnosti i imovine ', '5727191.940', '3.830', '25.290', 'Banja Luka', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 'Naknade i pristojbe od pružanja javnih usluga', '32730830.920', '21.870', '144.530', 'Banja Luka', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 'Novčane kazne ', '390600.000', '0.260', '1.720', 'Banja Luka', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 'Ostali neporezni prihodi ', '2176584.440', '1.450', '9.610', 'Banja Luka', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '0.000', '0.000', '0.000', 'Banja Luka', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 'Primljeni tekući transferi od ostalih razina vlasti', '1375840.100', '0.920', '6.080', 'Banja Luka', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 'Donacije', '0.000', '0.000', '0.000', 'Banja Luka', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 'Kapitalni primici od prodaje stalnih sredstava', '3884472.670', '2.600', '17.150', 'Banja Luka', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacija', '0.000', '0.000', '0.000', 'Banja Luka', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 'Kapitalni transferi od ostalih razina vlasti', '0.000', '0.000', '0.000', 'Banja Luka', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, ' Primici od finansijske imovine', '16328478.790', '10.910', '72.100', 'Banja Luka', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 'Porezi na dohodak i dobit', '2104.640', '0.020', '0.040', 'Prnjavor', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 'Porez na lična primanja i prihode od samostalne djelatnosti', '1317313.880', '9.960', '27.360', 'Prnjavor', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 'Porez na imovinu ', '369554.660', '2.800', '7.680', 'Prnjavor', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 'Domaći porezi na dobra i usluge', '103058.790', '0.780', '2.140', 'Prnjavor', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 'Prihodi od neizravnih poreza ', '8950934.570', '67.710', '185.920', 'Prnjavor', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 'Ostali porezni prihodi ', '4540.080', '0.030', '0.090', 'Prnjavor', 'POREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 'Prihodi od poduzetničkih aktivnosti i imovine ', '204120.490', '1.540', '4.240', 'Prnjavor', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 'Naknade i pristojbe od pružanja javnih usluga', '1751014.350', '13.250', '36.370', 'Prnjavor', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 'Novčane kazne ', '11180.000', '0.080', '0.230', 'Prnjavor', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 'Ostali neporezni prihodi ', '198207.070', '1.500', '4.120', 'Prnjavor', 'NEPOREZNI PRIHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 'Primljeni tekući transferi od inostranih vlada i međunarodnih organizacija ', '0.000', '0.000', '0.000', 'Prnjavor', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 'Primljeni tekući transferi od ostalih razina vlasti', '166460.380', '1.260', '3.460', 'Prnjavor', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 'Donacije', '4889.570', '0.040', '0.100', 'Prnjavor', 'TRANSFERI I DONACIJE', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 'Kapitalni primici od prodaje stalnih sredstava', '22008.400', '0.170', '0.460', 'Prnjavor', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 'Primljeni kapitalni transferi od inostranih vlada i međunarodnih organizacija', '58749.090', '0.440', '1.220', 'Prnjavor', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 'Kapitalni transferi od ostalih razina vlasti', '55900.000', '0.420', '1.160', 'Prnjavor', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, ' Primici od finansijske imovine', '0.000', '0.000', '0.000', 'Prnjavor', 'KAPITALNI PRIMICI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rashodi`
--

CREATE TABLE IF NOT EXISTS `rashodi` (
  `id` int(4) NOT NULL auto_increment,
  `stavka` varchar(77) default NULL,
  `ukupan_iznos` decimal(21,3) NOT NULL,
  `procenat` decimal(11,3) NOT NULL,
  `rashod_stanovnik` decimal(21,3) NOT NULL,
  `grad` varchar(21) default NULL,
  `grupa_rashoda` varchar(21) default NULL,
  `tip_rashoda` varchar(41) default NULL,
  `godina` varchar(5) default NULL,
  `entitet` varchar(11) default NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `grupa_prihoda` (`grupa_rashoda`),
  KEY `tip_prihoda` (`tip_rashoda`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `rashodi`
--

INSERT INTO `rashodi` (`id`, `stavka`, `ukupan_iznos`, `procenat`, `rashod_stanovnik`, `grad`, `grupa_rashoda`, `tip_rashoda`, `godina`, `entitet`, `created`, `updated`) VALUES
(1, 'Plaće i naknade troškova zaposlenih', '9050790.000', '38.528', '147.189', 'Bihać', 'TEKUĆI RASHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Doprinosi poslodavca i ostali doprinosi', '826039.000', '3.516', '13.433', 'Bihać', 'TEKUĆI RASHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Izdaci za materijal, sitni inventar i usluge', '2255831.000', '9.603', '36.686', 'Bihać', 'TEKUĆI RASHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Tekući  transferi', '4486553.000', '19.099', '72.963', 'Bihać', 'TEKUĆI RASHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Kapitalni transferi ', '265163.000', '1.129', '4.312', 'Bihać', 'TEKUĆI RASHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Izdaci za kamate ', '667153.000', '2.840', '10.850', 'Bihać', 'TEKUĆI RASHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Izdaci za nefinansijsku imovinu', '5939749.000', '25.285', '96.595', 'Bihać', 'KAPITALNI RASHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Budzetska rezerva', '0.000', '0.000', '0.000', 'Bihać', 'KAPITALNI RASHODI', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Izdaci za finansijsku imovinu', '0.000', '0.000', '0.000', 'Bihać', 'OTPLATA DUGOVA', '', '2011', 'fbih', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Doprinosi poslodavca i ostali doprinosi', '535888.950', '1.520', '4.210', 'Zenica', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Plaće i naknade troškova zaposlenih', '5770166.820', '16.370', '45.360', 'Zenica', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Izdaci za materijal, sitni inventar i usluge', '12116717.720', '34.370', '95.260', 'Zenica', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Tekući  transferi', '9108244.690', '25.830', '71.600', 'Zenica', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Kapitalni transferi ', '4766761.150', '13.520', '37.470', 'Zenica', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Izdaci za kamate ', '134075.860', '0.380', '1.050', 'Zenica', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Izdaci za nefinansijsku imovinu', '1274786.670', '3.620', '10.020', 'Zenica', 'KAPITALNI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Budžetska rezerva', '169500.000', '0.480', '1.330', 'Zenica', 'KAPITALNI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Izdaci za finansijsku imovinu', '1380565.050', '3.920', '10.850', 'Zenica', 'OTPLATA DUGOVA', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Plaće i naknade troškova zaposlenih', '6550069.280', '30.940', '110.393', 'Gradiška', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Doprinosi poslodavca i ostali doprinosi', '0.000', '0.000', '0.000', 'Gradiška', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Izdaci za materijal, sitni inventar i usluge', '4884426.930', '23.070', '82.321', 'Gradiška', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Tekući  transferi', '2828161.400', '13.360', '47.665', 'Gradiška', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Kapitalni transferi ', '1877206.180', '8.870', '31.638', 'Gradiška', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Izdaci za kamate ', '754969.010', '3.570', '12.724', 'Gradiška', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Izdaci za nefinansijsku imovinu', '1850140.740', '8.740', '31.182', 'Gradiška', 'KAPITALNI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Budžetska rezerva', '0.000', '0.000', '0.000', 'Gradiška', 'KAPITALNI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Izdaci za finansijsku imovinu', '2423775.480', '11.450', '40.850', 'Gradiška', 'OTPLATA DUGOVA', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Plaće i naknade troškova zaposlenih', '11777704.900', '31.240', '89.382', 'Tuzla', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Doprinosi poslodavca i ostali doprinosi', '978391.420', '2.600', '7.425', 'Tuzla', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Izdaci za materijal, sitni inventar i usluge', '12107448.330', '32.120', '91.885', 'Tuzla', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Tekući  transferi', '6746368.660', '17.900', '51.199', 'Tuzla', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Kapitalni transferi ', '1743835.800', '4.630', '13.234', 'Tuzla', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Izdaci za kamate ', '20811.140', '0.060', '0.158', 'Tuzla', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Izdaci za nefinansijsku imovinu', '4203229.840', '11.150', '31.899', 'Tuzla', 'KAPITALNI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Budžetska rezerva', '118309.340', '0.310', '0.898', 'Tuzla', 'KAPITALNI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Izdaci za finansijsku imovinu', '0.000', '0.000', '0.000', 'Tuzla', 'OTPLATA DUGOVA', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Plaće i naknade troškova zaposlenih', '8522206.000', '24.950', '109.305', 'Doboj', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Doprinosi poslodavca i ostali doprinosi', '0.000', '0.000', '0.000', 'Doboj', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Izdaci za materijal, sitni inventar i usluge', '6470100.000', '18.940', '82.985', 'Doboj', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Tekući  transferi', '1900900.000', '5.570', '24.381', 'Doboj', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Kapitalni transferi ', '5291001.000', '15.490', '67.862', 'Doboj', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Izdaci za kamate ', '779557.000', '2.280', '9.999', 'Doboj', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Izdaci za nefinansijsku imovinu', '4349031.000', '12.730', '55.780', 'Doboj', 'KAPITALNI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Budžetska rezerva', '0.000', '0.000', '0.000', 'Doboj', 'KAPITALNI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Izdaci za finansijsku imovinu', '6842837.000', '20.030', '87.766', 'Doboj', 'OTPLATA DUGOVA', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Plaće i naknade troškova zaposlenih', '5870480.340', '29.770', '46.816', 'Novi Grad Sarajevo', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Doprinosi poslodavca i ostali doprinosi', '473315.920', '2.400', '3.775', 'Novi Grad Sarajevo', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Izdaci za materijal, sitni inventar i usluge', '2555736.160', '12.960', '20.381', 'Novi Grad Sarajevo', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Tekući  transferi', '4200377.930', '21.300', '33.497', 'Novi Grad Sarajevo', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Kapitalni transferi ', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Izdaci za kamate ', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'TEKUĆI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Izdaci za nefinansijsku imovinu', '6622002.960', '33.580', '52.809', 'Novi Grad Sarajevo', 'KAPITALNI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Budžetska rezerva', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'KAPITALNI RASHODI', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Izdaci za finansijsku imovinu', '0.000', '0.000', '0.000', 'Novi Grad Sarajevo', 'OTPLATA DUGOVA', NULL, '2011', 'FBiH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Plaće i naknade troškova zaposlenih', '11242261.610', '22.030', '103.316', 'Bijeljina', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Doprinosi poslodavca i ostali doprinosi', '1163385.690', '2.280', '10.692', 'Bijeljina', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Izdaci za materijal, sitni inventar i usluge', '10767195.040', '21.100', '98.950', 'Bijeljina', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Tekući  transferi', '10458733.740', '20.500', '96.116', 'Bijeljina', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Kapitalni transferi ', '369701.840', '0.720', '3.398', 'Bijeljina', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Izdaci za kamate ', '1653261.670', '3.240', '15.193', 'Bijeljina', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Izdaci za nefinansijsku imovinu', '11921688.020', '23.360', '109.560', 'Bijeljina', 'KAPITALNI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Budžetska rezerva', '0.000', '0.000', '0.000', 'Bijeljina', 'KAPITALNI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Izdaci za finansijsku imovinu', '3449738.050', '6.760', '31.703', 'Bijeljina', 'OTPLATA DUGOVA', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Plaće i naknade troškova zaposlenih', '37362841.090', '24.820', '164.987', 'Banja Luka', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Doprinosi poslodavca i ostali doprinosi', '0.000', '0.000', '0.000', 'Banja Luka', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Izdaci za materijal, sitni inventar i usluge', '40595943.770', '26.960', '179.264', 'Banja Luka', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Tekući  transferi', '11012732.650', '7.310', '48.630', 'Banja Luka', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Kapitalni transferi ', '8242359.240', '5.470', '36.397', 'Banja Luka', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Izdaci za kamate ', '3822015.260', '2.540', '16.877', 'Banja Luka', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Izdaci za nefinansijsku imovinu', '37245108.880', '24.740', '164.467', 'Banja Luka', 'KAPITALNI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Budžetska rezerva', '0.000', '0.000', '0.000', 'Banja Luka', 'KAPITALNI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Izdaci za finansijsku imovinu', '12277057.540', '8.150', '54.213', 'Banja Luka', 'OTPLATA DUGOVA', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Plaće i naknade troškova zaposlenih', '4125243.390', '30.820', '85.684', 'Prnjavor', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Doprinosi poslodavca i ostali doprinosi', '0.000', '0.000', '0.000', 'Prnjavor', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Izdaci za materijal, sitni inventar i usluge', '2792211.560', '20.860', '57.996', 'Prnjavor', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Tekući  transferi', '1832946.470', '13.700', '38.071', 'Prnjavor', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Kapitalni transferi ', '1283601.240', '9.590', '0.000', 'Prnjavor', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Izdaci za kamate ', '716606.450', '5.350', '14.884', 'Prnjavor', 'TEKUĆI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Izdaci za nefinansijsku imovinu', '1658984.760', '12.400', '34.458', 'Prnjavor', 'KAPITALNI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Budžetska rezerva', '0.000', '0.000', '0.000', 'Prnjavor', 'KAPITALNI RASHODI', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Izdaci za finansijsku imovinu', '974011.400', '7.280', '20.231', 'Prnjavor', 'OTPLATA DUGOVA', NULL, '2011', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `hashed_password`, `password`) VALUES
(1, 'user01', NULL, NULL),
(2, 'fmntr', NULL, 'psw2012'),
(13, 'testuser', 'ee123fe5e35d1936106809b4d8b7cd3e77d9b9551a0e310962f282ae615dc124e6cc22ad507fbf7af4bbc621154c71893d0fa4796b46d74bdbf916a4767683b5', 'testpass'),
(14, 'testuser1', '3f63763137240f466ac32dec5dada516a3cc6aa19a372c04eac9f5d17e0734db71550cbf2348f0827cb4072d8db7590015a9e4dda92110bcca0aa3cb1ea91473', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
