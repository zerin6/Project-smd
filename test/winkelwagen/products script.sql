-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 nov 2016 om 14:24
-- Serverversie: 10.1.16-MariaDB
-- PHP-versie: 7.0.9

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
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `id` int(15) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `products`
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

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
