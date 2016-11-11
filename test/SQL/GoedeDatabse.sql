-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2016 at 01:04 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Account_ID` int(11) NOT NULL,
  `Emailadres` varchar(50) NOT NULL,
  `Wachtwoord` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Account_ID`, `Emailadres`, `Wachtwoord`) VALUES
(12345678, 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `Categorie_ID` int(11) NOT NULL,
  `Naam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`Categorie_ID`, `Naam`) VALUES
(23456789, 'ethernetkabel'),
(34567890, 'audiokabel');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `uid`, `date`, `message`) VALUES
(53, 'anonymous', '2016-11-10', ''),
(54, 'anonymous', '2016-11-10', '');

-- --------------------------------------------------------

--
-- Table structure for table `contactformulieren`
--

CREATE TABLE `contactformulieren` (
  `ID` int(11) NOT NULL,
  `Voornaam` text NOT NULL,
  `Achternaam` text NOT NULL,
  `Emailadres` text NOT NULL,
  `Onderwerp` text NOT NULL,
  `Bericht` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `klant`
--

CREATE TABLE `klant` (
  `Klant_ID` int(11) NOT NULL,
  `Voornaam` varchar(100) NOT NULL,
  `Achternaam` varchar(100) NOT NULL,
  `Telefoonnummer` varchar(13) NOT NULL,
  `Postcode` varchar(7) NOT NULL,
  `Plaatsnaam` varchar(100) NOT NULL,
  `Huisnummer` varchar(100) NOT NULL,
  `Straatnaam` varchar(100) NOT NULL,
  `TYPE_KLANT_Type_ID` int(11) NOT NULL,
  `ACCOUNT_Account_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klant`
--

INSERT INTO `klant` (`Klant_ID`, `Voornaam`, `Achternaam`, `Telefoonnummer`, `Postcode`, `Plaatsnaam`, `Huisnummer`, `Straatnaam`, `TYPE_KLANT_Type_ID`, `ACCOUNT_Account_ID`) VALUES
(34214568, 'Sam', 'van Putten', '0643183692', '9000AA', 'Groningen', '9', 'Ebbingestraat', 43211234, 12345678);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Order_ID` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `VERKOPER_Verkoper_ID` int(11) NOT NULL,
  `KLANT_Klant_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Order_ID`, `Datum`, `VERKOPER_Verkoper_ID`, `KLANT_Klant_ID`) VALUES
(24107654, '0000-00-00 00:00:00', 35620098, 34214568);

-- --------------------------------------------------------

--
-- Table structure for table `orderregel`
--

CREATE TABLE `orderregel` (
  `Aantal` smallint(6) NOT NULL,
  `ORDER_Order_ID` int(11) NOT NULL,
  `PRODUCT_Product_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderregel`
--

INSERT INTO `orderregel` (`Aantal`, `ORDER_Order_ID`, `PRODUCT_Product_ID`) VALUES
(5, 24107654, 5481028);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(15) NOT NULL,
  `voornaam` varchar(100) NOT NULL,
  `achternaam` varchar(100) NOT NULL,
  `adresenhuisnummer` varchar(150) NOT NULL,
  `postcode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `voornaam`, `achternaam`, `adresenhuisnummer`, `postcode`) VALUES
(4, 'pedro', 'baller', 'blaner', 'sdvsdvcs'),
(6, 'fgh', 'fgh', 'fgh', 'fgh'),
(7, '11', '11', '11', '11'),
(8, 'bh', 'bh', 'bh', 'hb');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `Prijs` decimal(5,2) NOT NULL,
  `CATEGORIE_Categorie_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Prijs`, `CATEGORIE_Categorie_ID`) VALUES
(5481028, '9.99', 23456789);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(15) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `p_name`, `image`, `price`) VALUES
(1, 'Zwart audio jack kabel', 'zwart-jack-kabel.jpg', 1.99),
(2, 'Rood audio jack kabel', 'rood-jack-kabel.jpg', 2.99),
(3, 'Wit audio jack kabel', 'wit-jack-kabel.jpg', 0.99),
(4, 'DVI kabel', 'dvi.jpg', 4.99),
(5, 'SCART kabel', 'scart.jpg', 7.99),
(6, 'VGA kabel', 'vga.jpg', 3.99),
(7, 'UTP kabel wit', 'netwerkkabel-wit.jpg', 6.99),
(8, 'Zwarte UTP kabel', 'netwerkkabel-zwart.jpg', 9.99),
(9, 'Grijze UTP kabel', 'netwerkkabel-grijs.jpg', 12.99),
(10, 'Kabelhaspel 4 aansluitingen', 'kabelhaspel-10meter.jpg', 19.99),
(11, 'Kabelhaspel met 4 aansluitingen', 'kabelhaspel-15meter.jpg', 49.99),
(12, 'Kabel haspel 4 aansluitingen', 'kabelhaspel-40meter.jpg', 56.99),
(13, 'HDMI 1.4 kabel', 'hdmi-2meter.jpg', 4.99),
(14, 'HDMI high speed kabel', 'hdmi-7-5meter.jpg', 9.99),
(15, 'HDMI kabel 4k', 'hdmi-4k.jpg', 13.99),
(16, 'Apple lightning 8 pin kabel', 'lightning.jpg', 4.99),
(17, 'Samsung oplaadkabel', 'samsung-oplader.jpg', 2.99),
(18, 'Apple dock 30 pin Kabel', 'dock connector.jpg', 13.99),
(19, 'USB 2.0 verlengkabel', 'usb2.0.jpg', 1.99),
(20, 'USB 3.0 verlengkabel', 'usb-3.0.jpg', 2.99),
(21, 'USB printerkabel', 'printerkabel.jpg', 3.99),
(22, 'XBOX ONE controller oplaadkabel', 'xbox-one-oplader.jpg', 14.99),
(23, 'Playstaton 4 controller oplaadkabel', 'playstation-4-oplader.jpg', 14.99),
(24, 'XBOX 360 plug & play', 'xbox360-oplader.jpg', 9.99),
(25, 'RJ11 kabel', 'rj11.jpg', 4.99),
(26, 'RJ10 hoornkabel', 'rj10.jpg', 2.99),
(27, 'RJ12 kabel', 'rj12.jpg', 4.99),
(28, 'Camera kabel ''Hirose''', 'hirose-camera.jpg', 9.99),
(29, 'Haakse camera kabel', 'haakse.jpg', 5.99),
(30, 'Camera kabel', 'camera.jpg', 5.99);

-- --------------------------------------------------------

--
-- Table structure for table `type_klant`
--

CREATE TABLE `type_klant` (
  `Type_ID` int(11) NOT NULL,
  `Type_klant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_klant`
--

INSERT INTO `type_klant` (`Type_ID`, `Type_klant`) VALUES
(43211234, 'Klant met account'),
(54321012, 'Bezoeker');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first` varchar(128) NOT NULL,
  `last` varchar(128) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `pwd` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first`, `last`, `uid`, `pwd`) VALUES
(10, '2', '2', '2', '2'),
(11, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `verkoper`
--

CREATE TABLE `verkoper` (
  `Verkoper_ID` int(11) NOT NULL,
  `Voornaam` varchar(100) DEFAULT NULL,
  `Achternaam` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verkoper`
--

INSERT INTO `verkoper` (`Verkoper_ID`, `Voornaam`, `Achternaam`) VALUES
(35620098, 'Remco', 'Brand');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`Categorie_ID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contactformulieren`
--
ALTER TABLE `contactformulieren`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `klant`
--
ALTER TABLE `klant`
  ADD PRIMARY KEY (`Klant_ID`),
  ADD KEY `KLANT_ACCOUNT_FK` (`ACCOUNT_Account_ID`),
  ADD KEY `KLANT_TYPE_KLANT_FK` (`TYPE_KLANT_Type_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `ORDER_KLANT_FK` (`KLANT_Klant_ID`),
  ADD KEY `ORDER_VERKOPER_FK` (`VERKOPER_Verkoper_ID`);

--
-- Indexes for table `orderregel`
--
ALTER TABLE `orderregel`
  ADD PRIMARY KEY (`ORDER_Order_ID`,`PRODUCT_Product_ID`),
  ADD KEY `ORDERREGEL_PRODUCT_FK` (`PRODUCT_Product_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `PRODUCT_CATEGORIE_FK` (`CATEGORIE_Categorie_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_klant`
--
ALTER TABLE `type_klant`
  ADD PRIMARY KEY (`Type_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verkoper`
--
ALTER TABLE `verkoper`
  ADD PRIMARY KEY (`Verkoper_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `contactformulieren`
--
ALTER TABLE `contactformulieren`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `klant`
--
ALTER TABLE `klant`
  ADD CONSTRAINT `KLANT_ACCOUNT_FK` FOREIGN KEY (`ACCOUNT_Account_ID`) REFERENCES `account` (`Account_ID`),
  ADD CONSTRAINT `KLANT_TYPE_KLANT_FK` FOREIGN KEY (`TYPE_KLANT_Type_ID`) REFERENCES `type_klant` (`Type_ID`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `ORDER_KLANT_FK` FOREIGN KEY (`KLANT_Klant_ID`) REFERENCES `klant` (`Klant_ID`),
  ADD CONSTRAINT `ORDER_VERKOPER_FK` FOREIGN KEY (`VERKOPER_Verkoper_ID`) REFERENCES `verkoper` (`Verkoper_ID`);

--
-- Constraints for table `orderregel`
--
ALTER TABLE `orderregel`
  ADD CONSTRAINT `ORDERREGEL_ORDER_FK` FOREIGN KEY (`ORDER_Order_ID`) REFERENCES `order` (`Order_ID`),
  ADD CONSTRAINT `ORDERREGEL_PRODUCT_FK` FOREIGN KEY (`PRODUCT_Product_ID`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `PRODUCT_CATEGORIE_FK` FOREIGN KEY (`CATEGORIE_Categorie_ID`) REFERENCES `categorie` (`Categorie_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
