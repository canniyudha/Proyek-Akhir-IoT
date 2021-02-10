-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2021 at 06:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arduino_mysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `arduino_data`
--

CREATE TABLE `arduino_data` (
  `id` int(6) UNSIGNED NOT NULL,
  `kelembapan` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `aksi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arduino_data`
--

INSERT INTO `arduino_data` (`id`, `kelembapan`, `status`, `aksi`) VALUES
(112, '68.00', 'Siaga', 'Nyala'),
(113, '68.00', 'Siaga', 'Nyala'),
(114, '68.00', 'Siaga', 'Nyala'),
(115, '68.00', 'Siaga', 'Nyala'),
(116, '68.00', 'Siaga', 'Nyala'),
(117, '68.00', 'Siaga', 'Nyala'),
(118, '68.00', 'Siaga', 'Nyala'),
(119, '68.00', 'Siaga', 'Nyala'),
(120, '68.00', 'Siaga', 'Nyala'),
(121, '68.00', 'Siaga', 'Nyala'),
(122, '67.00', 'Siaga', 'Nyala'),
(123, '66.00', 'Siaga', 'Nyala'),
(124, '64.00', 'Siaga', 'Nyala'),
(125, '63.00', 'Siaga', 'Nyala'),
(126, '65.00', 'Siaga', 'Nyala'),
(127, '63.00', 'Siaga', 'Nyala'),
(128, '65.00', 'Siaga', 'Nyala'),
(129, '62.00', 'Siaga', 'Nyala'),
(130, '62.00', 'Siaga', 'Nyala'),
(131, '62.00', 'Siaga', 'Nyala'),
(132, '61.00', 'Siaga', 'Nyala'),
(133, '61.00', 'Siaga', 'Nyala'),
(134, '61.00', 'Siaga', 'Nyala'),
(135, '62.00', 'Siaga', 'Nyala'),
(136, '62.00', 'Siaga', 'Nyala'),
(137, '61.00', 'Siaga', 'Nyala'),
(138, '60.00', 'Siaga', 'Nyala'),
(139, '60.00', 'Siaga', 'Nyala'),
(140, '60.00', 'Siaga', 'Nyala'),
(141, '62.00', 'Siaga', 'Nyala'),
(142, '61.00', 'Siaga', 'Nyala'),
(143, '61.00', 'Siaga', 'Nyala'),
(144, '61.00', 'Siaga', 'Nyala'),
(145, '60.00', 'Siaga', 'Nyala'),
(146, '61.00', 'Siaga', 'Nyala'),
(147, '62.00', 'Siaga', 'Nyala'),
(148, '62.00', 'Siaga', 'Nyala'),
(149, '61.00', 'Siaga', 'Nyala'),
(150, '59.00', 'Siaga', 'Nyala'),
(151, '58.00', 'Siaga', 'Nyala'),
(152, '58.00', 'Siaga', 'Nyala'),
(153, '59.00', 'Siaga', 'Nyala'),
(154, '58.00', 'Siaga', 'Nyala'),
(155, '59.00', 'Siaga', 'Nyala'),
(156, '56.00', 'Siaga', 'Nyala'),
(157, '61.00', 'Siaga', 'Nyala'),
(158, '59.00', 'Siaga', 'Nyala'),
(159, '59.00', 'Siaga', 'Nyala'),
(160, '59.00', 'Siaga', 'Nyala'),
(161, '58.00', 'Siaga', 'Nyala'),
(162, '58.00', 'Siaga', 'Nyala'),
(163, '58.00', 'Siaga', 'Nyala'),
(164, '58.00', 'Siaga', 'Nyala'),
(165, '58.00', 'Siaga', 'Nyala'),
(166, '58.00', 'Siaga', 'Nyala'),
(167, '59.00', 'Siaga', 'Nyala'),
(168, '58.00', 'Siaga', 'Nyala'),
(169, '58.00', 'Siaga', 'Nyala'),
(170, '58.00', 'Siaga', 'Nyala'),
(171, '58.00', 'Siaga', 'Nyala'),
(172, '56.00', 'Siaga', 'Nyala'),
(173, '47.00', 'Siaga', 'Nyala'),
(174, '59.00', 'Siaga', 'Nyala'),
(175, '60.00', 'Siaga', 'Nyala'),
(176, '59.00', 'Siaga', 'Nyala'),
(177, '60.00', 'Siaga', 'Nyala'),
(178, '60.00', 'Siaga', 'Nyala'),
(179, '61.00', 'Siaga', 'Nyala'),
(180, '61.00', 'Siaga', 'Nyala'),
(181, '62.00', 'Siaga', 'Nyala'),
(182, '62.00', 'Siaga', 'Nyala'),
(183, '62.00', 'Siaga', 'Nyala'),
(184, '62.00', 'Siaga', 'Nyala'),
(185, '63.00', 'Siaga', 'Nyala'),
(186, '63.00', 'Siaga', 'Nyala'),
(187, '64.00', 'Siaga', 'Nyala'),
(188, '64.00', 'Siaga', 'Nyala'),
(189, '64.00', 'Siaga', 'Nyala'),
(190, '65.00', 'Siaga', 'Nyala'),
(191, '65.00', 'Siaga', 'Nyala'),
(192, '65.00', 'Siaga', 'Nyala'),
(193, '65.00', 'Siaga', 'Nyala'),
(194, '64.00', 'Siaga', 'Nyala'),
(195, '65.00', 'Siaga', 'Nyala'),
(196, '65.00', 'Siaga', 'Nyala'),
(197, '66.00', 'Siaga', 'Nyala'),
(198, '66.00', 'Siaga', 'Nyala'),
(199, '62.00', 'Siaga', 'Nyala'),
(200, '62.00', 'Siaga', 'Nyala'),
(201, '61.00', 'Siaga', 'Nyala'),
(202, '62.00', 'Siaga', 'Nyala'),
(203, '62.00', 'Siaga', 'Nyala'),
(204, '62.00', 'Siaga', 'Nyala'),
(205, '63.00', 'Siaga', 'Nyala'),
(206, '63.00', 'Siaga', 'Nyala'),
(207, '63.00', 'Siaga', 'Nyala'),
(208, '64.00', 'Siaga', 'Nyala'),
(209, '65.00', 'Siaga', 'Nyala'),
(210, '67.00', 'Siaga', 'Nyala'),
(211, '66.00', 'Siaga', 'Nyala'),
(212, '68.00', 'Siaga', 'Nyala'),
(213, '68.00', 'Siaga', 'Nyala'),
(214, '68.00', 'Siaga', 'Nyala'),
(215, '69.00', 'Siaga', 'Nyala'),
(216, '69.00', 'Siaga', 'Nyala'),
(217, '69.00', 'Siaga', 'Nyala'),
(218, '69.00', 'Siaga', 'Nyala'),
(219, '69.00', 'Siaga', 'Nyala'),
(220, '70.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(221, '70.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(222, '70.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(223, '71.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(224, '71.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(225, '71.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(226, '71.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(227, '71.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(228, '71.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(229, '72.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(230, '72.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(231, '72.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(232, '72.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(233, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(234, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(235, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(236, '74.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(237, '75.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(238, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(239, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(240, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(241, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(242, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(243, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(244, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(245, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(246, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(247, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(248, '72.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(249, '72.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(250, '72.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(251, '72.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(252, '72.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(253, '72.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(254, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(255, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi'),
(256, '73.00', 'Berpotensi longsor!', 'Nyala dan Bunyi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arduino_data`
--
ALTER TABLE `arduino_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arduino_data`
--
ALTER TABLE `arduino_data`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
