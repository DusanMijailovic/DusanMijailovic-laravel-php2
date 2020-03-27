-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2020 at 06:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toolshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(11) NOT NULL,
  `quantity` int(100) NOT NULL DEFAULT '0',
  `amount` int(50) NOT NULL DEFAULT '0',
  `addedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userID` int(11) NOT NULL,
  `paymentID` int(11) DEFAULT NULL,
  `ctID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `quantity`, `amount`, `addedDate`, `userID`, `paymentID`, `ctID`) VALUES
(659, 0, 1500, '2020-03-24 18:34:18', 56, NULL, 57),
(658, 0, 1500, '2020-03-24 18:34:17', 56, NULL, 57),
(657, 0, 1500, '2020-03-24 18:34:16', 56, NULL, 57),
(656, 0, 1500, '2020-03-24 18:34:15', 56, NULL, 57),
(655, 0, 1500, '2020-03-24 18:34:14', 56, NULL, 57);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `name`) VALUES
(1, 'Ručni alati'),
(2, 'Električni alati'),
(3, 'Baštenski alati'),
(4, 'Alati za obradu drveta'),
(5, 'Merni instrumenti');

-- --------------------------------------------------------

--
-- Table structure for table `category_tool`
--

CREATE TABLE `category_tool` (
  `ctID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `toolID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_tool`
--

INSERT INTO `category_tool` (`ctID`, `categoryID`, `toolID`) VALUES
(56, 1, 1),
(57, 1, 2),
(58, 1, 3),
(59, 1, 4),
(60, 1, 5),
(61, 1, 6),
(62, 2, 7),
(63, 2, 8),
(64, 2, 9),
(65, 2, 10),
(66, 2, 11),
(67, 2, 12),
(68, 3, 13),
(69, 3, 14),
(70, 3, 15),
(71, 3, 16),
(72, 3, 17),
(73, 3, 18),
(74, 4, 19),
(75, 4, 20),
(76, 4, 21),
(77, 4, 22),
(78, 4, 23),
(79, 4, 24),
(80, 5, 25),
(81, 5, 26),
(82, 5, 27),
(83, 5, 28),
(84, 5, 29),
(85, 5, 30);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactID` int(11) NOT NULL,
  `fullName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactID`, `fullName`, `email`, `content`) VALUES
(104, 'Dusan Mijailovic', 'ana@gmail.com', 'aaaa'),
(90, 'Ivana Ivanic', 'ana@gmail.com', 'ana@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `genderID` int(11) NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`genderID`, `gender`) VALUES
(1, 'Muški'),
(2, 'Ženski');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `logID` int(255) NOT NULL,
  `log` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`logID`, `log`, `date`) VALUES
(35, 'Poruka je poslata', '2020-03-27 15:41:48'),
(36, 'Ivana Ivanic je novi korisnik!', '2020-03-27 15:43:27'),
(37, 'Jova Jovic je novi korisnik!', '2020-03-27 15:43:48'),
(38, 'Korisnik Ana Anic se ulogovao', '2020-03-27 15:45:43'),
(39, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 15:45:55'),
(40, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 15:45:56'),
(41, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 15:45:56'),
(42, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 15:46:01'),
(43, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 15:46:01'),
(44, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 15:46:02'),
(45, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 15:46:10'),
(46, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 15:46:10'),
(47, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 15:46:11'),
(48, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 15:46:28'),
(49, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 15:51:11'),
(50, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 15:51:16'),
(51, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 15:51:23'),
(52, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 15:51:37'),
(53, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 15:51:42'),
(54, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 15:51:44'),
(55, 'Korisnik Ana Anic je zavrsio kupovinu', '2020-03-27 15:51:47'),
(56, 'Poruka je poslata', '2020-03-27 15:52:13'),
(57, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 16:12:50'),
(58, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 16:12:51'),
(59, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 16:12:51'),
(60, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 16:12:52'),
(61, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 16:12:59'),
(62, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 16:13:02'),
(63, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 16:13:04'),
(64, 'Korisnik Ana Anic je zavrsio kupovinu', '2020-03-27 16:13:06'),
(65, 'Korisnik Ana Anic se izlogovao', '2020-03-27 16:13:39'),
(66, 'Korisnik Ivana Ivanic se ulogovao', '2020-03-27 16:13:51'),
(67, 'Korisnik Ivana Ivanic je obrisan', '2020-03-27 16:18:25'),
(68, 'Korisnik Ivana Ivanic je obrisan', '2020-03-27 16:18:28'),
(69, 'Kategorija Merni instrument je izmenjena', '2020-03-27 16:18:41'),
(70, 'Kategorija Merni instrumenti je izmenjena', '2020-03-27 16:18:47'),
(71, 'Dodata je nova kategorija  aaaaaddd', '2020-03-27 16:18:52'),
(72, 'Kategorija aaaaa je izmenjena', '2020-03-27 16:19:00'),
(73, 'Obrisana je kategorija ', '2020-03-27 16:19:07'),
(74, 'Kategorija Baštenski alat je izmenjena', '2020-03-27 16:20:54'),
(75, 'Kategorija Baštenski alati je izmenjena', '2020-03-27 16:21:01'),
(76, 'Dodata je nova kategorija  asasasdsad', '2020-03-27 16:21:06'),
(77, 'Kategorija smrdi je izmenjena', '2020-03-27 16:21:13'),
(78, 'Obrisana je kategorija ', '2020-03-27 16:21:15'),
(79, 'Greška : SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'imgSrc\' cannot be null (SQL: update `tool` set `name` = Laserski daljinomer DW03050 DeWalt, `description` = Laserski daljinomer DW03050 DeWaltDomet do 50 mOčitavanje udaljenosti, površine i volumenaLaserska dioda/klasa: Class2Preciznost: +/- 1 mm/mBroj zraka: 1Vidljivost u zatvorenom prostoru: 50 mNapajanje: 2x 1.5V dc LR03 (AAA veličina) baterijaNavoj stativa: 5/8”Težina 0.15 kg, `price` = 23000, `sitePrice` = 20990, `imgSrc` = ?, `imgAlt` = ? where `toolID` = 30)', '2020-03-27 16:21:59'),
(80, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:22:16'),
(81, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:23:27'),
(82, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:23:44'),
(83, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:25:05'),
(84, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:25:17'),
(85, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:26:38'),
(86, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:28:36'),
(87, 'Greška : SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'imgSrc\' cannot be null (SQL: update `tool` set `name` = Laserski daljinomer DW03050 DeWalt, `description` = Laserski daljinomer DW03050 DeWaltDomet do 50 mOčitavanje udaljenosti, površine i volumenaLaserska dioda/klasa: Class2Preciznost: +/- 1 mm/mBroj zraka: 1Vidljivost u zatvorenom prostoru: 50 mNapajanje: 2x 1.5V dc LR03 (AAA veličina) baterijaNavoj stativa: 5/8”Težina 0.15 kg, `price` = 23000, `sitePrice` = 20990, `imgSrc` = ?, `imgAlt` = daljinomer where `toolID` = 30)', '2020-03-27 16:28:43'),
(88, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:28:51'),
(89, 'Dodat je novi alat asdsda', '2020-03-27 16:29:47'),
(90, '  asdsda je izmenjen', '2020-03-27 16:30:15'),
(91, '  asdsda je izmenjen', '2020-03-27 16:30:28'),
(92, '  asdsda je izmenjen', '2020-03-27 16:30:36'),
(93, 'Alat je obrisan', '2020-03-27 16:30:38'),
(94, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:30:47'),
(95, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:30:54'),
(96, ' Kontakt je obrisan', '2020-03-27 16:31:06'),
(97, ' Kontakt je obrisan', '2020-03-27 16:31:08'),
(98, ' Kontakt je obrisan', '2020-03-27 16:31:09'),
(99, ' Kontakt je obrisan', '2020-03-27 16:31:11'),
(100, ' Kontakt je obrisan', '2020-03-27 16:31:18'),
(101, ' Kontakt je obrisan', '2020-03-27 16:31:20'),
(102, 'Korisnik Ivana Ivanic se izlogovao', '2020-03-27 16:45:47'),
(103, 'Korisnik Ana Anic se ulogovao', '2020-03-27 16:49:34'),
(104, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 16:49:40'),
(105, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 16:49:40'),
(106, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 16:49:41'),
(107, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 16:49:50'),
(108, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 16:49:51'),
(109, 'Korisnik Ana Anic je dodao proizvod u korpu', '2020-03-27 16:49:52'),
(110, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 16:49:57'),
(111, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 16:49:59'),
(112, 'Korisnik Ana Anic je uklonio proizvod iz korpe', '2020-03-27 16:50:00'),
(113, 'Korisnik Ana Anic je zavrsio kupovinu', '2020-03-27 16:50:03'),
(114, 'Korisnik Ana Anic se izlogovao', '2020-03-27 16:52:13'),
(115, 'Korisnik Ivana Ivanic se ulogovao', '2020-03-27 16:52:22'),
(116, 'Kategorija Merni instrument je izmenjena', '2020-03-27 16:52:31'),
(117, 'Kategorija Merni instrumenti je izmenjena', '2020-03-27 16:52:35'),
(118, 'Dodata je nova kategorija  sa', '2020-03-27 16:52:39'),
(119, 'Kategorija saki je izmenjena', '2020-03-27 16:52:43'),
(120, 'Obrisana je kategorija ', '2020-03-27 16:52:44'),
(121, 'Greška : SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'imgSrc\' cannot be null (SQL: update `tool` set `name` = Laserski daljinomer DW03050 DeWalt, `description` = Laserski daljinomer DW03050 DeWaltDomet do 50 mOčitavanje udaljenosti, površine i volumenaLaserska dioda/klasa: Class2Preciznost: +/- 1 mm/mBroj zraka: 1Vidljivost u zatvorenom prostoru: 50 mNapajanje: 2x 1.5V dc LR03 (AAA veličina) baterijaNavoj stativa: 5/8”Težina 0.15 kg, `price` = 23000, `sitePrice` = 20990, `imgSrc` = ?, `imgAlt` = daljinomer where `toolID` = 30)', '2020-03-27 16:52:55'),
(122, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:53:04'),
(123, 'Greška : SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'imgSrc\' cannot be null (SQL: update `tool` set `name` = Laserski daljinomer DW03050 DeWalt, `description` = Laserski daljinomer DW03050 DeWaltDomet do 50 mOčitavanje udaljenosti, površine i volumenaLaserska dioda/klasa: Class2Preciznost: +/- 1 mm/mBroj zraka: 1Vidljivost u zatvorenom prostoru: 50 mNapajanje: 2x 1.5V dc LR03 (AAA veličina) baterijaNavoj stativa: 5/8”Težina 0.15 kg, `price` = 23000, `sitePrice` = 20990, `imgSrc` = ?, `imgAlt` = daljinomer where `toolID` = 30)', '2020-03-27 16:53:18'),
(124, 'Greška : SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'imgSrc\' cannot be null (SQL: update `tool` set `name` = Laserski daljinomer DW03050 DeWalt, `description` = Laserski daljinomer DW03050 DeWaltDomet do 50 mOčitavanje udaljenosti, površine i volumenaLaserska dioda/klasa: Class2Preciznost: +/- 1 mm/mBroj zraka: 1Vidljivost u zatvorenom prostoru: 50 mNapajanje: 2x 1.5V dc LR03 (AAA veličina) baterijaNavoj stativa: 5/8”Težina 0.15 kg, `price` = 23000, `sitePrice` = 20990, `imgSrc` = ?, `imgAlt` = daljinomer where `toolID` = 30)', '2020-03-27 16:53:19'),
(125, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:53:28'),
(126, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:53:38'),
(127, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:53:44'),
(128, 'Greška : SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'name\' cannot be null (SQL: update `tool` set `name` = ?, `description` = Laserski daljinomer DW03050 DeWaltDomet do 50 mOčitavanje udaljenosti, površine i volumenaLaserska dioda/klasa: Class2Preciznost: +/- 1 mm/mBroj zraka: 1Vidljivost u zatvorenom prostoru: 50 mNapajanje: 2x 1.5V dc LR03 (AAA veličina) baterijaNavoj stativa: 5/8”Težina 0.15 kg, `price` = 23000, `sitePrice` = 20990, `imgSrc` = /img/tools/30.jpg, `imgAlt` = daljinomer where `toolID` = 30)', '2020-03-27 16:53:51'),
(129, '  Laserski daljinomer DW03050 DeWalt je izmenjen', '2020-03-27 16:54:00'),
(130, 'Dodat je novi alat sdsdsd', '2020-03-27 16:54:16'),
(131, '  sdsdsd je izmenjen', '2020-03-27 16:54:28'),
(132, 'Alat je obrisan', '2020-03-27 16:54:32'),
(133, 'Korisnik Ivana Ivanic se izlogovao', '2020-03-27 16:56:24'),
(134, 'Korisnik Ivana Ivanic se ulogovao', '2020-03-27 17:11:41'),
(135, 'Korisnik Ivana Ivanic se izlogovao', '2020-03-27 17:11:49'),
(136, 'Milica Miletic je novi korisnik!', '2020-03-27 17:12:18'),
(137, 'Korisnik Ivana Ivanic se ulogovao', '2020-03-27 17:12:45'),
(138, 'Korisnik Ivana Ivanic je obrisan', '2020-03-27 17:12:48'),
(139, 'Korisnik Ivana Ivanic se izlogovao', '2020-03-27 17:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuID`, `name`, `href`) VALUES
(1, 'Naslovna', '/'),
(2, 'O autoru', '/about'),
(3, 'Kontakt', '/contact');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttype`
--

CREATE TABLE `paymenttype` (
  `paymentID` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymenttype`
--

INSERT INTO `paymenttype` (`paymentID`, `name`) VALUES
(2, 'Keš'),
(1, 'Kreditna kartica');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleID` int(11) NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleID`, `role`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `socialnetwork`
--

CREATE TABLE `socialnetwork` (
  `socialID` int(11) NOT NULL,
  `link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialnetwork`
--

INSERT INTO `socialnetwork` (`socialID`, `link`, `icon`) VALUES
(1, 'https://www.facebook.com', 'fab fa-facebook-square'),
(2, 'https://www.youtube.com', 'fab fa-youtube'),
(3, 'https://www.instagram.com', 'fab fa-instagram'),
(4, 'https://www.twitter.com', 'fab fa-twitter'),
(5, 'documentation.pdf', 'fas fa-file-alt');

-- --------------------------------------------------------

--
-- Table structure for table `tool`
--

CREATE TABLE `tool` (
  `toolID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(20) NOT NULL,
  `sitePrice` int(50) NOT NULL,
  `imgSrc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgAlt` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tool`
--

INSERT INTO `tool` (`toolID`, `name`, `description`, `price`, `sitePrice`, `imgSrc`, `imgAlt`) VALUES
(1, 'Beorol građevinska testera 70 cm', 'Testera građevinska dužine 70cm\r\nRučni alat koji može seći lakše građevinske elemente koristeći jaku konstrukciju i kvalitetne zube\r\nList je izrađen od visokokvalitetnog manganskog čelika sa zubima od tvrdog metala visine 15mm\r\nDrška je izrađena od kombinacije metala, plastike i TPR\r\nTežina: 1 kg', 2880, 2500, '/img/tools/1.jpg', 'testera'),
(2, 'Ručna ubodna testera za knauf WOLFCRAFT', 'Ručna ubodna testera za knauf WOLFCRAFT\r\n2-komponentna ručka sa mekanim prihvatom\r\nLak prvi rez i brz napredak pri testerisanju\r\nIndukciono-kaljeni zubi sečiva za dug životni vek\r\nTežina: 0.2 kg', 1750, 1500, '/img/tools/2.jpg', 'ubodna'),
(3, 'Akumulatorska heftalica BST110Z 14,4 V MAKITA', 'Ergonomski dizajniran gumirani mekani rukohvat omogućava udobno držanje i veću kontrol\r\nDvojni bezbednosni okida\r\nPotrebna je manja sila za povlačenje glavnog okidača\r\nOdržava se stalna sila ispucavanja za svaku spajalicu\r\nPodešavanje dubine\r\nProzor za gledanje spajalica\r\nNapon akumulatora 14,4 V\r\nKapacitet akumulatora 3,0 Ah\r\nTip akumulatora Li-ion\r\nKapacitet magacina 125\r\nDužina spajalice 7 - 10 mm\r\nPrečnik spajalice10 mm\r\nDebljina spajalice 0,5 x 0,7 mm\r\nDimenzije (D x Š x V) 245 x 79 x 191 mm\r\nTežina: 2 kg', 44200, 42000, '/img/tools/3.jpg', 'heftalica'),
(4, 'Alat CR u torbici 906CR Unior', 'Klešta kombinovana (dužina 180mm)\r\nSečice kose (dužina 160mm)\r\nOdvijači u kompletu:\r\nRavni 0.4 x 2.5 x 75mm\r\nRavni 0.8 x 4.0 x 100mm\r\nKrstasti PH2 x 100mm\r\nIspitivač napona 220-250V sa zakačkom\r\n0.5 x 3.0 x 140mm\r\nTežina: 0.8 kg', 6900, 6500, '/img/tools/4.jpg', 'alat'),
(5, 'Beoro čekić gumeni 250gr', 'Gumeni čekić 250gr sa drvenom hrastovom drškom, zaštićenom premazom laka\r\nDimenzija 295mm\r\nDrška drvo\r\nMaterijal guma\r\nTežina: 0.3 kg', 650, 600, '/img/tools/5.jpg', 'cekic'),
(6, 'Ašov ErgoComfort 131911 fiskars', 'Ašov ErgoComfort 131911 Fiskars\r\nFiskars ErgoComfort Ašov\r\nOva snažna alatka je posebno dobra za kopanje u kamenitom, glinastom i tvrdom zemljištu\r\nRučka D oblika omogućava korišćenje bez obzira na veličinu šake, sa ili bez rukavica, dok dužina alata omogućava idealno korišćenje visokim ljudima\r\nZaobljena čelična osovina je dizajnirana da bude izuzetno izdržljiva dok zavareni spoj između lopatice i vratila obezbeđuje krutu izdržljivost\r\nOva lopata je opremljena posebnim plastificiranim slojem na vratilu za veću udobnost korisnika\r\nKonstrukcija alata daje dodatnu snagu i čini prodiranje u zemljište lakše\r\nDužina 1270 mm\r\nTežina: 2.2 kg', 4990, 4500, '/img/tools/6.jpg', 'asov'),
(7, 'ISKRA elektropneumatska bušilica 1600W SDS MAX IE-RH40L-1600', 'Elektropneumatska bušilica iz ISKRA ERO linije proizvoda\r\nNamenjena za udarno bušenje u betonu, kamenu i opeci, kao i za klesanje uz upotrebu odgovarajućih burgija ili dleta\r\nPoseduje dodatnu, lako podesivu ručku za praktičnije rukovanje\r\nSDS MAX sistem prihvata burgije, omogućava brzu i laku zamenu nastavaka za rad\r\nIsporučuje se u koferu za praktično nošenje i odlaganj', 21000, 20000, '/img/tools/7.jpg', 'busilica'),
(8, 'ISPITIVAČ ZA AKUMULATORE WOMAX', 'Opseg voltaže za testiranje: 2V, 6V, 12V\r\nKapacitet:\r\n· 6~120 Ah\r\n· 32~195 Ah\r\nTežina: 0.3 kg', 3400, 3200, '/img/tools/8.jpg', 'ispitivac'),
(9, 'GLODALICA W-OF 1200 WOMAX', 'Napon: 230 V - 50 Hz\r\nSnaga: 1200 W\r\nBroj obrtaja praznog hoda: 11000-30000 /min\r\nPrihvat alata: 6, 8 mm\r\nIsporuka: ključ za izmenu alata, paralelna vođica-graničnik, adapter za usisivač za prašinu\r\nTežina: 2 kg', 9800, 9500, '/img/tools/9.jpg', 'glodalica'),
(10, 'Testera ubodna GP-PS 10.8 LI WOMAX GREEN POWER', 'Nominalni napon: 10.8 V\r\nĆelija baterije: 3.7 V Li-ion\r\nNominalni kapacitet baterije: 1300 mAh\r\nBroj rezova bez opterećenja: 2100 rez/min\r\nHod testerice: 13 mm\r\nMaksimalne debljine sečenja:\r\nDrvo: 25 mm, Metal: 2 mm\r\nPunjač:\r\nNapon punjača: 230 V~50 Hz\r\nSnaga punjača: 40 W\r\nNapon punjenja: 13.5 V\r\nStruja punjenja: 1.3 A\r\nKlasa zaštite: II\r\nVrema punjenja: 1 h (cca)\r\nTežina: 1.1 kg', 10990, 9880, '/img/tools/10.jpg', 'testera'),
(11, 'BRUSILICA ZA ZID SA TELESKOPOM W-WWS 800 WOMAX GREEN POWER', 'Napon: 230V - 50 Hz\r\nSnaga: 800 W\r\nBroj obrtaja: 800 - 1800 /min\r\nPrečnik ploče: 225 mm\r\nBrusilica je namenjena za brušenje zidova, tavanica i gipsanih obloga koje su omalterisane ili okrečene\r\nTežina: 4.8 kg', 22500, 20440, '/img/tools/11.jpg', 'brusilica'),
(12, 'Aparat za električno lučno zavarivanje TC-EW 160 D Einhell', 'Napon: 230V/400V\r\nOsigurač: 16 A\r\nPrilagodljiva struja varenja: 55-160 A\r\nElektrode: Ø 1.6 - 4 mm\r\nHlađenje pomoću ventilatora\r\nAparat za elektrolučno zavarivanje koristi se kod postupka spajanja varenjem\r\nVelika prednost elektrolučnog zavarivanja je ta, da se materijali ne moraju zagrejavati i varenje može početi direktno na potrebnom mjestu\r\nDelovi obrade različite snage mogu se spajati sa drugima bez ikakvih problema\r\nPromjenjiva struja varenja omogućuje obavljanje širokog spektra varenja', 18500, 16900, '/img/tools/12.jpg', 'elektricno'),
(13, 'Motorni trimer za travu BC 26 ES Villager', 'Motorni trimer za travu BC 26 ES Villager\r\nZbog svoje male težine pogodan i lagan za korišćenje\r\nPreporučuje se za održavanje travnjaka u kojima je posadjeno drveće, cveće ili voće gde je veoma teško pristupiti kosilicom, kao i za održavanje po ivicama ili uglovima\r\nRezna struna laganim udarcem Tap and Go glave automatski izlazi\r\nMotor: 2-taktni vazdušno hlađeni\r\nZapremina motora: 25,4 cm3\r\nSnaga: 0,75 kW, 1 KS - 8.400 rpm\r\nSistem prenosa: sajla\r\nPrečnik kardanske cevi 26 mm\r\nKardanska cev deljiva\r\nRadni zahvat niti: 38 cm', 13400, 11900, '/img/tools/13.jpg', 'trimer'),
(14, 'Beorol baštensko crevo anti-twist 1/2\" 25m', 'Baštensko crevo anti-twist 1/2\" 25m, podnosi pritisak do 32 bara, otpornost na temperature u opsegu –20°C/+60°C, crevo je otporno na UV zrake a unutrašnji slojevi na alge, bez kadmijuma i barijuma, otporno na uvrtanje i ne dozvoljava pravljenje čvorova koji bi zaustavili protok vode\r\nDuplo upredeno ojačanje (ATS2™) od poliestera najvišeg kvaliteta.', 3850, 3500, '/img/tools/14.jpg', 'crevo'),
(15, 'WOMAX ELEKTRIČNA KOSILICA W-EM 1800', 'Napon: 230V - 50Hz\r\nSnaga: 1800 W\r\nBroj obrtaja: 3500 /min\r\nŠirina otkosa: 380 mm\r\nVisina košenja: 6 podešavanja: 20-70 mm\r\nZapremina koša za travu: 40 l\r\nTežina: 12 kg', 18000, 15900, '/img/tools/15.jpg', 'kosilica'),
(16, 'Motorni trimer BC500XT 2.2 KS GARDEN Master', 'Vrsta motora: Benzinski, 2 takta, EUII\r\nZapremina motora: 52cm3\r\nSnaga motora: 2,2 / 1,6 ks/kw\r\nDebljina cevi: 28mm\r\nSistem prenosa: Kardan\r\nRezervoar goriva: 1,2 L\r\nRezna oprema: Glava za košenje PRO, trokraki nož\r\nKaiš za nošenje: Dvostruki komforni\r\nZa otklanjanje šipražja i divljeg rastinja, za košenje velikih površina kao i za seckanje tanjih grana\r\nRobusan, dugotrajan i snažan uređaj za profesionalce\r\nZa radove na većim površinama sa jakom travom\r\nPrednosti', 19900, 17900, '/img/tools/16.jpg', 'trimer'),
(17, 'LOPATA ZA SNEG 41 ECO CRNA SA DRVENOM D DRŠKOM', 'Lopata za sneg sa drvenim držaljem\r\nDimenzije: 1230x410x320 mm\r\nTežina: 2 kg', 980, 950, '/img/tools/17.jpg', 'lopata'),
(18, 'MAKAZE TICK 50 ZA GRANE 60 CM', 'Univerzalne makaze za najteže poslove u vinogradarstvu, voćarstvu i vrtlarstvu\r\nOblikovane da osiguraju optimum u rezidbi sa lakoćom korištenja\r\nKovana oštrica te hromirana površinska obrada čuva oštećenja oštrice i osigurava dugotrajnu upotrebu\r\nDužina 60 cm\r\nMax širina reza 35 mm\r\nTežina: 0.2 kg', 3900, 3850, '/img/tools/18.jpg', 'makaze'),
(19, 'Električna glodalica 1800W RP 1800FX MAKITA', 'Ergonomski oblikovane ručke\r\nParalelni graničnik s finim podešavanjem\r\nMože da se postavi naopako, kada se menja ili kada se ne koristi pribor. Glodalica može stabilno da stoji na četiri rebra na gornjem kraju kućišta motora\r\nLinearni kuglični ležaj za super-nežnu operaciju sa ukopavanjem. Linearni kuglični ležaj drži jedan od stubova za ukopavanje, obezbeđujući nežno i precizno ukopavanje, bez prekomernog odstupanja ili preopterećenja. Laka operacija za ukopavanje, sa rad sa jednom rukom', 69300, 65400, '/img/tools/19.jpg', 'glodalica'),
(20, 'Električno rende za drvo 900W 1911B MAKITA', 'Širina rendisaljke 110 mm za 35% veći učinak rendisanja\r\nVeliki krilni navrtanj za lakše prihvatanje\r\nSnažan Makita motor od 900 W\r\nVisok broj obrtaja omogućava besprekornu obradu\r\nPraktično rende Makita zahvaljujući ergonomskoj drški i pravilnom položaju tezista', 49900, 39900, '/img/tools/20.jpg', 'rende'),
(21, 'HEFTALICA TR45 (TIP A) Stanley', 'Mehanička tapetarska heftalica sa čeličnom konstrukcijom\r\nMehanizam za zaključavanje ručice\r\nLako se koristi\r\nTežina: 0.2 kg', 3000, 2850, '/img/tools/21.jpg', 'heftalica'),
(22, 'Akumulatorska ubodna testera 18V DJV182RFJ Makita', 'Akumulatorska ubodna testera 18V DJV182RFJ Makita\r\nMekani start bez opterećenja – spora operacija pri pokretanju\r\nSistem promene lista testere bez korišćenja alata, omogućuje brzu i laku izmenu lista\r\nUgrađeno LED radno svetlo\r\nErgonomski dizajnirana drška, sa gumiranim rukohvatom\r\nVeliki prekidač koji ne izaziva umor u prstima\r\nElektronska kontrola brzine\r\nElektronski prekidač', 71200, 69000, '/img/tools/22.jpg', 'ubodna'),
(23, 'Diht za grede 304mm 1650W 2012NB Makita', 'Diht za grede 304mm 1650W 2012NB Makita\r\nKompaktna, laka i jednostavna za transport\r\nSnažan Makita motor od 1.650 W s malim nivoom buke (samo 83 dB)\r\nOdličan mehanizam za pomeranje omogućava besprekornu obradu', 116000, 104880, '/img/tools/23.jpg', 'diht'),
(24, 'Ručni cirkular TC-CS 1400 Einhell', 'Ručni cirkular TC-CS 1400/1 - TH-CS 1400/1 Einhell\r\nSnaga: 1,400 W\r\nBr. obrtaja: 5,200 min-1\r\nDubina reza: kod 90° / 45° - 66 / 45 mm\r\nRezni list: Ø 190 x Ø 30 x 2.5 mm / 24 z\r\nKlin za odvajanje (prilagođava se dubini reza)\r\nAdapter za usisavanje prašine\r\nObim isporuke: Rezni list, paralelni graničnik\r\nTežina: 4.3 kg', 8999, 8400, '/img/tools/24.jpg', 'cirkular'),
(25, 'Amper klešta do150A MS2007B Mastech', 'AMPER KLEŠTA Mastech 150A MS2007B\r\nFunkcije merenja: AC struja\r\nOtvor klještar: MAX Ф31mm\r\nDisplej: LCD 1999 cifara\r\nManuelno rangiranje: 200mA/2A/150A\r\nTačnost: ≤±2.0%\r\nNapon kabla: ≤AC 600V\r\nOdgovara standardu:: IEC1010-1 & IEC1010-2-032 600V CAT III\r\nNapajanje: 2 x 1.5V (AAA)', 14000, 13880, '/img/tools/25.jpg', 'amper'),
(26, 'Libela 779 SPIRIT 50cm Kapro', 'Libela 779 SPIRIT 50cm Kapro\r\n2 čvrste akrilne bočice sa mehurom\r\nprecizno obrađena donja površina za libele do 120 cm\r\ngumirani krajevi otporni na udarce\r\ngumene stopice protiv proklizavanja libele\r\ndužina: 40 cm\r\ntačnost: < 0.5 mm/m\r\ntežina: 571 g/m', 1785, 1250, '/img/tools/26.jpg', 'libela'),
(27, 'Samo nivelišući laser za linije PLL 360 Bosch', 'Samo nivelišući laser za linije PLL 360 Bosch\r\nSavršeno iznivelisana vertikalna linija za još više primena\r\nProjekcija dijagonalnih linija – pod svakim uglom zahvaljujući Lock-funkciji\r\nJednostavno pozicioniranje laserske linije na svakoj visini sa univerzalnim držačem ili aluminijumskim stativom od 1,5 m', 21084, 17500, '/img/tools/27.jpg', 'laser'),
(28, 'Laser za nivelisanje pločica GTL 3 Bosch', 'Laser za nivelisanje pločica GTL 3 Bosch\r\nMetalna ploča za bolju stabilnost pri radu na neravnim podovima i za pričvršćenje na zidu\r\nDobro vidljive laserske linije za primenu u unutrašnjem prostoru\r\nEkstremno robustan laser za nivelisanje potpuno funkcionalan čak i nakon pada sa visine od 1 metra na beton, te poseduje zaštitu od prašine i prskanja vode (IP 54)\r\nAutomatsko isključivanje za redukciju potrošnje baterije Bosch', 25040, 23900, '/img/tools/28.jpg', 'laser'),
(29, 'Daljinometar laserski MK30 WOMAX', 'Daljinometar laserski MK30 WOMAX\r\nRadno područje: 0.05 - 30 m\r\nTačnost merenja: ±2mm\r\nTrajno merenje: da\r\nFunkcija memorisanja: da\r\nBaterije 2*1.5V\r\nTežina: 0.2 kg', 8000, 7500, '/img/tools/29.jpg', 'laser'),
(30, 'Laserski daljinomer DW03050 DeWalt', 'Laserski daljinomer DW03050 DeWaltDomet do 50 mOčitavanje udaljenosti, površine i volumenaLaserska dioda/klasa: Class2Preciznost: +/- 1 mm/mBroj zraka: 1Vidljivost u zatvorenom prostoru: 50 mNapajanje: 2x 1.5V dc LR03 (AAA veličina) baterijaNavoj stativa: 5/8”Težina 0.15 kg', 23000, 20990, '/img/tools/30.jpg', 'daljinomer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `fullName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registerDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(11) DEFAULT '0',
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `fullName`, `email`, `password`, `registerDate`, `active`, `token`, `roleID`) VALUES
(55, 'Ana Anic', 'ana@gmail.com', '5116f16d3399fcb6571f571d79f35f41', '2020-02-11 20:15:19', 1, '675917d54e8c02a4942b5ecf82807fb387cd6ec96d58c982f15ea36c76f4e87c7c52940c5486e26f9fa5a698a951c4dd90a7e53fd48c58d9d7d3e786', 2),
(56, 'Ivana Ivanic', 'ika@gmail.com', '8f38430f9d60b28e01fd3248dc025b2d', '2020-02-16 23:26:28', 1, 'c65e1a35b12f446724b84fce33a0c2564f89282205eed7fb16be8c17c931429b01ebaeaa82e71200d1ff93bdcd89fa05b3042a9f8e2225e81939e232', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `paymentID` (`paymentID`),
  ADD KEY `cbID` (`ctID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `category_tool`
--
ALTER TABLE `category_tool`
  ADD PRIMARY KEY (`ctID`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `bookID` (`toolID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactID`),
  ADD KEY `email` (`email`) USING BTREE;

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`genderID`),
  ADD KEY `gender` (`gender`) USING BTREE;

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuID`);

--
-- Indexes for table `paymenttype`
--
ALTER TABLE `paymenttype`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`),
  ADD UNIQUE KEY `role` (`role`),
  ADD KEY `role_2` (`role`);

--
-- Indexes for table `socialnetwork`
--
ALTER TABLE `socialnetwork`
  ADD PRIMARY KEY (`socialID`);

--
-- Indexes for table `tool`
--
ALTER TABLE `tool`
  ADD PRIMARY KEY (`toolID`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `roleID` (`roleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=727;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `category_tool`
--
ALTER TABLE `category_tool`
  MODIFY `ctID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `genderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `logID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paymenttype`
--
ALTER TABLE `paymenttype`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socialnetwork`
--
ALTER TABLE `socialnetwork`
  MODIFY `socialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tool`
--
ALTER TABLE `tool`
  MODIFY `toolID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6075;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
