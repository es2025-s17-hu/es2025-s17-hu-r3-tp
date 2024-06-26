-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: competitor_db:3306
-- Generation Time: Apr 21, 2024 at 08:17 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `competitor2`
--

-- --------------------------------------------------------

--
-- Table structure for table `MenuCategory`
--

CREATE TABLE `MenuCategory` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` double NOT NULL DEFAULT '-1',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `MenuCategory`
--

INSERT INTO `MenuCategory` (`id`, `name`, `priority`, `createdAt`, `updatedAt`) VALUES
(12, 'Soft Drinks VZ', 12, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275'),
(13, 'Beers', 99, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275'),
(14, 'Wines', 14, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275'),
(15, 'Soup, Starter, Salad', 15, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275'),
(16, 'Canotto', 16, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275'),
(17, 'Pinsa Romana', 17, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275'),
(18, 'Pinsella Romana', 18, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275'),
(19, 'Desserts', 19, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275'),
(20, 'Coffees', 20, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275'),
(21, 'Packaging', 21, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275'),
(22, 'Spirits', 22, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275'),
(23, 'Cocktails', 23, '2024-04-21 20:16:32.275', '2024-04-21 20:16:32.275');

-- --------------------------------------------------------

--
-- Table structure for table `MenuItem`
--

CREATE TABLE `MenuItem` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FOOD',
  `menuCategoryId` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `MenuItem`
--

INSERT INTO `MenuItem` (`id`, `name`, `type`, `menuCategoryId`, `price`, `createdAt`, `updatedAt`) VALUES
(79, 'Fritzkola', 'DRINK', 12, 1190.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(80, 'Fritzkola sugarfree', 'DRINK', 12, 1190.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(81, 'Fever Tree Indian Tonic', 'DRINK', 12, 1190.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(82, 'Elderflower lemonade', 'DRINK', 12, 990.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(83, 'Classic lemonade', 'DRINK', 12, 990.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(84, 'Strawberry lemonade', 'DRINK', 12, 990.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(85, 'Raspberry lemonade', 'DRINK', 12, 990.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(86, 'Cleance filtered water', 'DRINK', 12, 750.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(87, 'Menabrea Bionda Premium lager', 'DRINK', 13, 1350.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(88, 'Birra Ichnusa unfiltered light', 'DRINK', 13, 1800.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(89, 'Menabrea 00 alcoholfree', 'DRINK', 13, 1350.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(90, 'Provima Verdicchio Di Matelica 1 dl', 'DRINK', 14, 1350.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(91, 'Provima Verdicchio Di Matelica', 'DRINK', 14, 8900.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(92, 'Winelovers Sauvignon Blanc 1 dl', 'DRINK', 14, 850.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(93, 'Winelovers Sauvignon Blanc', 'DRINK', 14, 5900.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(94, 'Casa Rinaldi Prosecco Extra Dry', 'DRINK', 14, 750.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(95, 'Casa Rinaldi Prosecco Extra Dry', 'DRINK', 14, 6500.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(96, 'Gazpacho soup', 'FOOD', 15, 1890.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(97, 'Pizza bread with dip', 'FOOD', 15, 2690.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(98, 'Arugula salad', 'FOOD', 15, 1790.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(99, 'Extra topping', 'FOOD', 15, 400.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(100, 'Pizza Marinara di Vegazzi', 'FOOD', 16, 3190.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(101, 'Pizza Ungherese', 'FOOD', 16, 3890.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(102, 'Pizza Verde', 'FOOD', 16, 4190.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(103, 'Pizza Assolo', 'FOOD', 16, 4290.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(104, 'Calzone con Friarelle', 'FOOD', 16, 4490.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(105, 'Pizza BBQ', 'FOOD', 16, 4290.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(106, 'Pinsa Ungherese', 'FOOD', 17, 3890.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(107, 'Pinsa Verde', 'FOOD', 17, 4190.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(108, 'Pinsa Messicano', 'FOOD', 17, 4690.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(109, 'Pinsa Tapenade', 'FOOD', 17, 4190.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(110, 'Pinsa Dolce Arrabbiata', 'FOOD', 17, 4490.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(111, 'Pinsella Tapenade', 'FOOD', 18, 2890.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(112, 'Pinsella Dolce Arrabbiata', 'FOOD', 18, 3390.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(113, 'Ligurian lemon cake', 'FOOD', 19, 2290.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(114, 'Coffee jelly cup', 'FOOD', 19, 1990.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(115, 'Hunyadi white kings daughter', 'DRINK', 14, 950.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(116, 'Hunyadi white kings daughter', 'DRINK', 14, 6900.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(117, 'Hunyadi sauvignon blanc', 'DRINK', 14, 950.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(118, 'Hunyadi sauvignon blanc', 'DRINK', 14, 6900.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(119, 'Hunyadi rose', 'DRINK', 14, 950.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(120, 'Hunyadi ros', 'DRINK', 14, 6900.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(121, 'Hunyadi cabernet sav red', 'DRINK', 14, 950.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(122, 'Hunyadi cabernet sav red', 'DRINK', 14, 6900.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(123, 'Vylyan rooster', 'DRINK', 14, 650.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(124, 'Vylyan rooster', 'DRINK', 14, 4500.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(125, 'Soda water', 'DRINK', 12, 100.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(126, 'Espresso', 'DRINK', 20, 650.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(127, 'Double espresso', 'DRINK', 20, 950.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(128, 'Long coffee', 'DRINK', 20, 650.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(129, 'Cappuccino', 'DRINK', 20, 1150.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(130, 'Latte', 'DRINK', 20, 1300.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(131, 'Bottle', 'OTHER', 21, 3000.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(132, 'Box', 'OTHER', 21, 300.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(133, 'Trulli Primitivo Rosato 1 dl', 'DRINK', 14, 1200.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(134, 'Trulli Primitivo Rosato', 'DRINK', 14, 7900.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(135, 'Trulli Primitivo 1 dl', 'DRINK', 14, 1350.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(136, 'Trulli Primitivo', 'DRINK', 14, 8900.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(137, 'Borgo Molino Prosecco Brut DOCG 2022', 'DRINK', 14, 14900.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(138, 'Birra Messina Cristalli di Sale', 'DRINK', 13, 1800.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(139, 'Limoncino Tradizionale  4 cl', 'DRINK', 22, 800.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(140, 'Marcati Grappa Bianca  4 cl', 'DRINK', 22, 1100.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(141, 'Marcati Grappa Riserva  4 cl', 'DRINK', 22, 1100.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(142, 'Aperol  4 cl', 'DRINK', 22, 800.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(143, 'Tubi 60  4 cl', 'DRINK', 22, 2100.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(144, 'Gin Mare  4 cl', 'DRINK', 22, 2400.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(145, 'Diplomatico Reserva  4 cl', 'DRINK', 22, 2400.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(146, 'Glenlivet Founders Reserve  4 cl', 'DRINK', 22, 2700.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(147, 'Woodford Reserve  4 cl', 'DRINK', 22, 2100.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(148, 'Stolichnaya Vodka  4 cl', 'DRINK', 22, 1500.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(149, 'Gin Tonic', 'DRINK', 23, 3500.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(150, 'Aperol Spritz', 'DRINK', 23, 2700.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(151, 'Aperol Spritz', 'DRINK', 23, 2700.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(152, 'Syrup  chili mango', 'DRINK', 12, 990.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(153, 'Syrup  zero cherry', 'DRINK', 12, 990.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303'),
(154, 'Casillo flour 1 kg', 'OTHER', 21, 1100.00, '2024-04-21 20:16:32.303', '2024-04-21 20:16:32.303');

-- --------------------------------------------------------

--
-- Table structure for table `Order`
--

CREATE TABLE `Order` (
  `id` int NOT NULL,
  `tableId` int NOT NULL,
  `closedAt` datetime(3) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Order`
--

INSERT INTO `Order` (`id`, `tableId`, `closedAt`, `createdAt`, `updatedAt`) VALUES
(12335, 26, '2024-04-14 08:35:46.000', '2024-04-14 07:54:42.000', '2024-04-21 20:16:32.352'),
(12336, 31, '2024-04-14 08:34:45.000', '2024-04-14 08:04:51.000', '2024-04-21 20:16:32.352'),
(12337, 29, '2024-04-14 08:44:54.000', '2024-04-14 08:08:55.000', '2024-04-21 20:16:32.352'),
(12338, 34, '2024-04-14 08:18:39.000', '2024-04-14 08:17:34.000', '2024-04-21 20:16:32.352'),
(12339, 34, '2024-04-14 08:26:28.000', '2024-04-14 08:19:05.000', '2024-04-21 20:16:32.352'),
(12340, 25, '2024-04-14 10:18:34.000', '2024-04-14 08:51:27.000', '2024-04-21 20:16:32.352'),
(12341, 36, '2024-04-14 10:59:22.000', '2024-04-14 08:54:24.000', '2024-04-21 20:16:32.352'),
(12342, 34, '2024-04-14 09:49:19.000', '2024-04-14 08:58:17.000', '2024-04-21 20:16:32.352'),
(12343, 32, '2024-04-14 09:09:04.000', '2024-04-14 08:59:11.000', '2024-04-21 20:16:32.352'),
(12344, 26, '2024-04-14 09:27:40.000', '2024-04-14 09:03:03.000', '2024-04-21 20:16:32.352'),
(12345, 29, '2024-04-14 09:42:27.000', '2024-04-14 09:13:21.000', '2024-04-21 20:16:32.352'),
(12346, 30, '2024-04-14 10:16:29.000', '2024-04-14 09:13:41.000', '2024-04-21 20:16:32.352'),
(12347, 26, '2024-04-14 10:35:52.000', '2024-04-14 09:39:49.000', '2024-04-21 20:16:32.352'),
(12348, 29, '2024-04-14 10:39:10.000', '2024-04-14 09:55:52.000', '2024-04-21 20:16:32.352'),
(12349, 32, '2024-04-14 10:58:47.000', '2024-04-14 09:58:33.000', '2024-04-21 20:16:32.352'),
(12350, 22, '2024-04-14 10:38:25.000', '2024-04-14 10:37:53.000', '2024-04-21 20:16:32.352'),
(12351, 38, '2024-04-14 16:28:09.000', '2024-04-14 10:57:40.000', '2024-04-21 20:16:32.352'),
(12352, 30, '2024-04-14 11:51:29.000', '2024-04-14 11:13:20.000', '2024-04-21 20:16:32.352'),
(12353, 30, '2024-04-14 12:26:12.000', '2024-04-14 11:57:40.000', '2024-04-21 20:16:32.352'),
(12354, 26, '2024-04-14 13:05:09.000', '2024-04-14 12:13:01.000', '2024-04-21 20:16:32.352'),
(12355, 30, '2024-04-14 13:47:24.000', '2024-04-14 12:34:40.000', '2024-04-21 20:16:32.352'),
(12356, 32, '2024-04-14 13:43:37.000', '2024-04-14 12:38:36.000', '2024-04-21 20:16:32.352'),
(12357, 33, '2024-04-14 13:26:05.000', '2024-04-14 13:04:13.000', '2024-04-21 20:16:32.352'),
(12358, 36, '2024-04-14 13:06:12.000', '2024-04-14 13:04:32.000', '2024-04-21 20:16:32.352'),
(12359, 36, '2024-04-14 14:22:16.000', '2024-04-14 13:08:45.000', '2024-04-21 20:16:32.352'),
(12360, 26, '2024-04-14 13:24:27.000', '2024-04-14 13:18:46.000', '2024-04-21 20:16:32.352'),
(12361, 31, '2024-04-14 15:11:56.000', '2024-04-14 14:13:03.000', '2024-04-21 20:16:32.352'),
(12362, 29, NULL, '2024-04-14 14:28:43.000', '2024-04-21 20:16:32.352'),
(12363, 26, NULL, '2024-04-14 14:49:03.000', '2024-04-21 20:16:32.352'),
(12364, 30, NULL, '2024-04-14 14:52:43.000', '2024-04-21 20:16:32.352'),
(12365, 3, NULL, '2024-04-14 16:45:19.000', '2024-04-21 20:16:32.352'),
(12366, 22, NULL, '2024-04-14 16:46:55.000', '2024-04-21 20:16:32.352');

-- --------------------------------------------------------

--
-- Table structure for table `OrderItem`
--

CREATE TABLE `OrderItem` (
  `id` int NOT NULL,
  `orderId` int NOT NULL,
  `menuItemId` int NOT NULL,
  `quantity` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `OrderItem`
--

INSERT INTO `OrderItem` (`id`, `orderId`, `menuItemId`, `quantity`, `createdAt`, `updatedAt`) VALUES
(1, 12335, 79, 1, '2024-04-14 07:54:43.000', '2024-04-14 07:54:43.000'),
(2, 12335, 139, 1, '2024-04-14 08:04:31.000', '2024-04-14 08:04:31.000'),
(3, 12335, 86, 1, '2024-04-14 08:04:36.000', '2024-04-14 08:04:36.000'),
(4, 12335, 101, 1, '2024-04-14 08:04:41.000', '2024-04-14 08:04:41.000'),
(5, 12335, 102, 1, '2024-04-14 08:04:42.000', '2024-04-14 08:04:42.000'),
(6, 12336, 100, 1, '2024-04-14 08:04:51.000', '2024-04-14 08:04:51.000'),
(7, 12336, 101, 1, '2024-04-14 08:04:51.000', '2024-04-14 08:04:51.000'),
(8, 12336, 87, 1, '2024-04-14 08:04:55.000', '2024-04-14 08:04:55.000'),
(9, 12336, 87, 1, '2024-04-14 08:04:55.000', '2024-04-14 08:04:55.000'),
(10, 12337, 82, 1, '2024-04-14 08:08:56.000', '2024-04-14 08:08:56.000'),
(11, 12337, 84, 1, '2024-04-14 08:08:56.000', '2024-04-14 08:08:56.000'),
(12, 12337, 100, 1, '2024-04-14 08:08:59.000', '2024-04-14 08:08:59.000'),
(13, 12337, 100, 1, '2024-04-14 08:09:00.000', '2024-04-14 08:09:00.000'),
(14, 12338, 106, 1, '2024-04-14 08:17:34.000', '2024-04-14 08:17:34.000'),
(15, 12338, 106, 1, '2024-04-14 08:17:35.000', '2024-04-14 08:17:35.000'),
(16, 12338, 107, 1, '2024-04-14 08:17:35.000', '2024-04-14 08:17:35.000'),
(17, 12338, 132, 1, '2024-04-14 08:17:39.000', '2024-04-14 08:17:39.000'),
(18, 12338, 132, 1, '2024-04-14 08:17:40.000', '2024-04-14 08:17:40.000'),
(19, 12338, 132, 1, '2024-04-14 08:17:40.000', '2024-04-14 08:17:40.000'),
(20, 12339, 107, 1, '2024-04-14 08:19:05.000', '2024-04-14 08:19:05.000'),
(21, 12339, 132, 1, '2024-04-14 08:19:09.000', '2024-04-14 08:19:09.000'),
(22, 12340, 152, 1, '2024-04-14 08:51:27.000', '2024-04-14 08:51:27.000'),
(23, 12344, 101, 1, '2024-04-14 08:54:24.000', '2024-04-14 08:54:24.000'),
(24, 12344, 109, 1, '2024-04-14 08:54:40.000', '2024-04-14 08:54:40.000'),
(25, 12344, 132, 1, '2024-04-14 08:57:37.000', '2024-04-14 08:57:37.000'),
(26, 12344, 97, 1, '2024-04-14 08:57:46.000', '2024-04-14 08:57:46.000'),
(27, 12344, 98, 1, '2024-04-14 08:57:47.000', '2024-04-14 08:57:47.000'),
(28, 12342, 82, 1, '2024-04-14 08:58:17.000', '2024-04-14 08:58:17.000'),
(29, 12342, 84, 1, '2024-04-14 08:58:17.000', '2024-04-14 08:58:17.000'),
(30, 12342, 97, 1, '2024-04-14 08:58:22.000', '2024-04-14 08:58:22.000'),
(31, 12342, 104, 1, '2024-04-14 08:58:26.000', '2024-04-14 08:58:26.000'),
(32, 12343, 85, 1, '2024-04-14 08:59:11.000', '2024-04-14 08:59:11.000'),
(33, 12343, 85, 1, '2024-04-14 08:59:11.000', '2024-04-14 08:59:11.000'),
(34, 12343, 126, 1, '2024-04-14 08:59:14.000', '2024-04-14 08:59:14.000'),
(35, 12351, 79, 1, '2024-04-14 09:09:14.000', '2024-04-14 09:09:14.000'),
(36, 12345, 84, 1, '2024-04-14 09:13:21.000', '2024-04-14 09:13:21.000'),
(37, 12345, 101, 1, '2024-04-14 09:13:23.000', '2024-04-14 09:13:23.000'),
(38, 12346, 84, 1, '2024-04-14 09:13:41.000', '2024-04-14 09:13:41.000'),
(39, 12346, 84, 1, '2024-04-14 09:13:42.000', '2024-04-14 09:13:42.000'),
(40, 12346, 82, 1, '2024-04-14 09:13:44.000', '2024-04-14 09:13:44.000'),
(41, 12346, 85, 1, '2024-04-14 09:13:47.000', '2024-04-14 09:13:47.000'),
(42, 12346, 86, 1, '2024-04-14 09:13:54.000', '2024-04-14 09:13:54.000'),
(43, 12346, 108, 1, '2024-04-14 09:13:59.000', '2024-04-14 09:13:59.000'),
(44, 12346, 101, 1, '2024-04-14 09:14:02.000', '2024-04-14 09:14:02.000'),
(45, 12346, 100, 1, '2024-04-14 09:14:03.000', '2024-04-14 09:14:03.000'),
(46, 12346, 102, 1, '2024-04-14 09:14:05.000', '2024-04-14 09:14:05.000'),
(47, 12346, 105, 1, '2024-04-14 09:14:06.000', '2024-04-14 09:14:06.000'),
(48, 12340, 84, 1, '2024-04-14 09:23:27.000', '2024-04-14 09:23:27.000'),
(49, 12340, 84, 1, '2024-04-14 09:23:27.000', '2024-04-14 09:23:27.000'),
(50, 12340, 97, 1, '2024-04-14 09:23:29.000', '2024-04-14 09:23:29.000'),
(51, 12340, 100, 1, '2024-04-14 09:23:31.000', '2024-04-14 09:23:31.000'),
(52, 12340, 105, 1, '2024-04-14 09:23:33.000', '2024-04-14 09:23:33.000'),
(53, 12340, 109, 1, '2024-04-14 09:23:37.000', '2024-04-14 09:23:37.000'),
(54, 12347, 86, 1, '2024-04-14 09:39:49.000', '2024-04-14 09:39:49.000'),
(55, 12347, 97, 1, '2024-04-14 09:39:51.000', '2024-04-14 09:39:51.000'),
(56, 12347, 100, 1, '2024-04-14 09:39:56.000', '2024-04-14 09:39:56.000'),
(57, 12347, 102, 1, '2024-04-14 09:39:57.000', '2024-04-14 09:39:57.000'),
(58, 12347, 98, 1, '2024-04-14 09:40:02.000', '2024-04-14 09:40:02.000'),
(59, 12348, 100, 1, '2024-04-14 09:55:52.000', '2024-04-14 09:55:52.000'),
(60, 12350, 101, 1, '2024-04-14 09:55:52.000', '2024-04-14 09:55:52.000'),
(61, 12349, 101, 1, '2024-04-14 09:58:33.000', '2024-04-14 09:58:33.000'),
(62, 12349, 102, 1, '2024-04-14 09:58:34.000', '2024-04-14 09:58:34.000'),
(63, 12349, 82, 1, '2024-04-14 09:58:38.000', '2024-04-14 09:58:38.000'),
(64, 12341, 84, 1, '2024-04-14 09:58:44.000', '2024-04-14 09:58:44.000'),
(65, 12346, 132, 1, '2024-04-14 10:08:50.000', '2024-04-14 10:08:50.000'),
(66, 12349, 85, 1, '2024-04-14 10:13:29.000', '2024-04-14 10:13:29.000'),
(67, 12341, 101, 1, '2024-04-14 10:15:32.000', '2024-04-14 10:15:32.000'),
(68, 12349, 85, 1, '2024-04-14 10:15:40.000', '2024-04-14 10:15:40.000'),
(69, 12349, 126, 1, '2024-04-14 10:57:45.000', '2024-04-14 10:57:45.000'),
(70, 12352, 100, 1, '2024-04-14 11:13:20.000', '2024-04-14 11:13:20.000'),
(71, 12352, 105, 1, '2024-04-14 11:13:21.000', '2024-04-14 11:13:21.000'),
(72, 12352, 86, 1, '2024-04-14 11:13:23.000', '2024-04-14 11:13:23.000'),
(73, 12352, 89, 1, '2024-04-14 11:13:27.000', '2024-04-14 11:13:27.000'),
(74, 12353, 100, 1, '2024-04-14 11:57:40.000', '2024-04-14 11:57:40.000'),
(75, 12353, 100, 1, '2024-04-14 11:57:40.000', '2024-04-14 11:57:40.000'),
(76, 12353, 80, 1, '2024-04-14 11:57:43.000', '2024-04-14 11:57:43.000'),
(77, 12353, 84, 1, '2024-04-14 11:57:45.000', '2024-04-14 11:57:45.000'),
(78, 12358, 105, 1, '2024-04-14 12:13:01.000', '2024-04-14 12:13:01.000'),
(79, 12354, 105, 1, '2024-04-14 12:13:01.000', '2024-04-14 12:13:01.000'),
(80, 12358, 101, 1, '2024-04-14 12:13:04.000', '2024-04-14 12:13:04.000'),
(81, 12354, 152, 1, '2024-04-14 12:13:43.000', '2024-04-14 12:13:43.000'),
(82, 12354, 89, 1, '2024-04-14 12:13:46.000', '2024-04-14 12:13:46.000'),
(83, 12358, 86, 1, '2024-04-14 12:13:48.000', '2024-04-14 12:13:48.000'),
(84, 12355, 149, 1, '2024-04-14 12:34:40.000', '2024-04-14 12:34:40.000'),
(85, 12355, 79, 1, '2024-04-14 12:34:45.000', '2024-04-14 12:34:45.000'),
(86, 12356, 85, 1, '2024-04-14 12:38:36.000', '2024-04-14 12:38:36.000'),
(87, 12356, 82, 1, '2024-04-14 12:38:36.000', '2024-04-14 12:38:36.000'),
(88, 12356, 100, 1, '2024-04-14 12:38:38.000', '2024-04-14 12:38:38.000'),
(89, 12356, 103, 1, '2024-04-14 12:38:39.000', '2024-04-14 12:38:39.000'),
(90, 12355, 104, 1, '2024-04-14 12:42:32.000', '2024-04-14 12:42:32.000'),
(91, 12355, 108, 1, '2024-04-14 12:42:35.000', '2024-04-14 12:42:35.000'),
(92, 12355, 86, 1, '2024-04-14 12:42:37.000', '2024-04-14 12:42:37.000'),
(93, 12357, 97, 1, '2024-04-14 13:04:13.000', '2024-04-14 13:04:13.000'),
(94, 12357, 96, 1, '2024-04-14 13:04:14.000', '2024-04-14 13:04:14.000'),
(95, 12356, 101, 1, '2024-04-14 13:06:31.000', '2024-04-14 13:06:31.000'),
(96, 12360, 100, 1, '2024-04-14 13:08:45.000', '2024-04-14 13:08:45.000'),
(97, 12360, 86, 1, '2024-04-14 13:08:50.000', '2024-04-14 13:08:50.000'),
(98, 12357, 90, 1, '2024-04-14 13:24:38.000', '2024-04-14 13:24:38.000'),
(99, 12357, 132, 1, '2024-04-14 13:24:42.000', '2024-04-14 13:24:42.000'),
(100, 12355, 113, 1, '2024-04-14 13:32:23.000', '2024-04-14 13:32:23.000'),
(101, 12361, 98, 1, '2024-04-14 14:13:03.000', '2024-04-14 14:13:03.000'),
(102, 12361, 97, 1, '2024-04-14 14:13:04.000', '2024-04-14 14:13:04.000'),
(103, 12361, 101, 1, '2024-04-14 14:13:07.000', '2024-04-14 14:13:07.000'),
(104, 12361, 86, 1, '2024-04-14 14:13:11.000', '2024-04-14 14:13:11.000'),
(105, 12359, 127, 1, '2024-04-14 14:14:01.000', '2024-04-14 14:14:01.000'),
(106, 12359, 129, 1, '2024-04-14 14:14:03.000', '2024-04-14 14:14:03.000'),
(107, 12362, 100, 1, '2024-04-14 14:28:43.000', '2024-04-14 14:28:43.000'),
(108, 12362, 101, 1, '2024-04-14 14:28:44.000', '2024-04-14 14:28:44.000'),
(109, 12362, 89, 1, '2024-04-14 14:28:51.000', '2024-04-14 14:28:51.000'),
(110, 12362, 86, 1, '2024-04-14 14:28:53.000', '2024-04-14 14:28:53.000'),
(111, 12363, 82, 1, '2024-04-14 14:49:04.000', '2024-04-14 14:49:04.000'),
(112, 12363, 85, 1, '2024-04-14 14:49:05.000', '2024-04-14 14:49:05.000'),
(113, 12363, 100, 1, '2024-04-14 14:49:09.000', '2024-04-14 14:49:09.000'),
(114, 12363, 101, 1, '2024-04-14 14:49:10.000', '2024-04-14 14:49:10.000'),
(115, 12364, 82, 1, '2024-04-14 14:52:43.000', '2024-04-14 14:52:43.000'),
(116, 12364, 82, 1, '2024-04-14 14:52:43.000', '2024-04-14 14:52:43.000'),
(117, 12364, 102, 1, '2024-04-14 14:52:45.000', '2024-04-14 14:52:45.000'),
(118, 12364, 101, 1, '2024-04-14 14:52:45.000', '2024-04-14 14:52:45.000'),
(119, 12365, 106, 1, '2024-04-14 16:45:19.000', '2024-04-14 16:45:19.000'),
(120, 12365, 132, 1, '2024-04-14 16:45:24.000', '2024-04-14 16:45:24.000'),
(121, 12366, 103, 1, '2024-04-14 16:46:55.000', '2024-04-14 16:46:55.000');

-- --------------------------------------------------------

--
-- Table structure for table `Table`
--

CREATE TABLE `Table` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `x` int NOT NULL,
  `y` int NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Table`
--

INSERT INTO `Table` (`id`, `name`, `x`, `y`, `width`, `height`, `createdAt`, `updatedAt`) VALUES
(3, 'Table 04', 120, 90, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(14, 'Table T9', 0, 0, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(22, 'Table 03', 0, 90, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(25, 'Table 13', 700, 450, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(26, 'Table 12', 700, 330, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(28, 'Table 10', 590, 210, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(29, 'Table 09', 700, 210, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(30, 'Table 08', 700, 90, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(31, 'Table 07', 570, 90, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(32, 'Table 06', 440, 90, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(33, 'Table 05', 270, 90, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(34, 'Table 01', 0, 330, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(35, 'Table 02', 0, 210, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(36, 'Table 02', 0, 210, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(37, 'Table 11', 480, 210, 100, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229'),
(38, 'Bar', 270, 390, 250, 100, '2024-04-21 20:16:32.229', '2024-04-21 20:16:32.229');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'WAITER',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `firstName`, `lastName`, `username`, `password`, `pin`, `role`, `token`, `createdAt`, `updatedAt`) VALUES
(1, 'John', 'Doe', 'jdoe', 'dineease1', '9999', 'ADMIN', NULL, '2024-04-21 20:16:32.332', '2024-04-21 20:16:32.332'),
(2, 'Jane', 'Doe', 'jane', 'dineease2', '1234', 'WAITER', NULL, '2024-04-21 20:16:32.332', '2024-04-21 20:16:32.332'),
(3, 'Bob', 'Smith', 'bsmith', 'dineease3', '5678', 'MANAGER', NULL, '2024-04-21 20:16:32.332', '2024-04-21 20:16:32.332');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('f7504b7e-ea6c-4df3-a7f6-6c37d6abd60d', '98b33bd2241ccf0faf94b72ec75afa23ecee3d4a91b8cfac6251374e8e94f934', '2024-04-21 20:16:28.105', '20240421160742_init', NULL, NULL, '2024-04-21 20:16:27.210', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MenuCategory`
--
ALTER TABLE `MenuCategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MenuItem`
--
ALTER TABLE `MenuItem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MenuItem_menuCategoryId_fkey` (`menuCategoryId`);

--
-- Indexes for table `Order`
--
ALTER TABLE `Order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_tableId_fkey` (`tableId`);

--
-- Indexes for table `OrderItem`
--
ALTER TABLE `OrderItem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OrderItem_orderId_fkey` (`orderId`),
  ADD KEY `OrderItem_menuItemId_fkey` (`menuItemId`);

--
-- Indexes for table `Table`
--
ALTER TABLE `Table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_username_key` (`username`),
  ADD UNIQUE KEY `User_pin_key` (`pin`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `MenuCategory`
--
ALTER TABLE `MenuCategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `MenuItem`
--
ALTER TABLE `MenuItem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `Order`
--
ALTER TABLE `Order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12367;

--
-- AUTO_INCREMENT for table `OrderItem`
--
ALTER TABLE `OrderItem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `Table`
--
ALTER TABLE `Table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `MenuItem`
--
ALTER TABLE `MenuItem`
  ADD CONSTRAINT `MenuItem_menuCategoryId_fkey` FOREIGN KEY (`menuCategoryId`) REFERENCES `MenuCategory` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `Order`
--
ALTER TABLE `Order`
  ADD CONSTRAINT `Order_tableId_fkey` FOREIGN KEY (`tableId`) REFERENCES `Table` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `OrderItem`
--
ALTER TABLE `OrderItem`
  ADD CONSTRAINT `OrderItem_menuItemId_fkey` FOREIGN KEY (`menuItemId`) REFERENCES `MenuItem` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `OrderItem_orderId_fkey` FOREIGN KEY (`orderId`) REFERENCES `Order` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
