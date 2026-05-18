-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2025 at 11:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitmajster`
--

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `kategoria` varchar(50) DEFAULT 'Obiad',
  `kcal` int(11) DEFAULT 0,
  `bialko` decimal(6,2) DEFAULT 0.00,
  `weglowodany` decimal(6,2) DEFAULT 0.00,
  `tluszcze` decimal(6,2) DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `name`, `kategoria`, `kcal`, `bialko`, `weglowodany`, `tluszcze`, `notes`, `date`, `time`, `created_at`) VALUES
(203, 'Kurczak z ryżem', 'Obiad', 520, '36.00', '67.00', '12.00', 'Pierś kurczaka, ryż, warzywa', NULL, NULL, '2025-11-22 18:25:47'),
(204, 'Omlet z warzywami', 'Śniadanie', 310, '25.00', '8.00', '18.00', 'Jajka, papryka, szpinak', NULL, NULL, '2025-11-22 18:25:47'),
(205, 'Kanapka z łososiem', 'Kolacja', 400, '22.00', '41.00', '15.00', 'Chleb, łosoś, serek, warzywa', NULL, NULL, '2025-11-22 18:25:47'),
(206, 'Fit pizza', 'Obiad', 600, '32.00', '70.00', '18.00', 'Tortilla, pierś, mozzarella, rukola', NULL, NULL, '2025-11-22 18:25:47'),
(207, 'Sałatka grecka', 'Kolacja', 320, '9.00', '21.00', '25.00', 'Feta, ogórek, pomidor, oliwki', NULL, NULL, '2025-11-22 18:25:47'),
(208, 'Bigos domowy', 'Obiad', 420, '24.00', '32.00', '20.00', 'Kapusta, mięso, pomidor', NULL, NULL, '2025-11-22 18:25:47'),
(209, 'Jajka sadzone z kaszą', 'Śniadanie', 380, '17.00', '55.00', '12.00', 'Jajka, kasza, koper', NULL, NULL, '2025-11-22 18:25:47'),
(210, 'Placki bananowe z jogurtem', 'Śniadanie', 360, '14.00', '52.00', '12.00', 'Płatki owsiane, banan, jogurt', NULL, NULL, '2025-11-22 18:25:47'),
(211, 'Zupa pomidorowa', 'Obiad', 280, '6.00', '39.00', '7.00', 'Pomidor, ryż, śmietana', NULL, NULL, '2025-11-22 18:25:47'),
(212, 'Risotto z kurczakiem', 'Obiad', 540, '34.00', '69.00', '14.00', 'Ryż, kurczak, parmezan', NULL, NULL, '2025-11-22 18:25:47'),
(213, 'Makaron z pesto', 'Obiad', 470, '12.00', '65.00', '20.00', 'Makaron, pesto, pomidor', NULL, NULL, '2025-11-22 18:25:47'),
(214, 'Tortilla z łososiem', 'Kolacja', 410, '23.00', '38.00', '13.00', 'Tortilla, łosoś, sałata', NULL, NULL, '2025-11-22 18:25:47'),
(215, 'Kasza bulgur z warzywami', 'Obiad', 330, '10.00', '58.00', '8.00', 'Kasza, cukinia, papryka', NULL, NULL, '2025-11-22 18:25:47'),
(216, 'Pieczony dorsz z ziemniakami', 'Obiad', 370, '28.00', '45.00', '9.00', 'Dorsz, ziemniaki, koperek', NULL, NULL, '2025-11-22 18:25:47'),
(217, 'Owsianka proteinowa', 'Śniadanie', 340, '24.00', '48.00', '7.00', 'Płatki owsiane, białko, owoce', NULL, NULL, '2025-11-22 18:25:47'),
(218, 'Pasztet warzywny', 'Kolacja', 290, '11.00', '28.00', '14.00', 'Warzywa, kasza, słonecznik', NULL, NULL, '2025-11-22 18:25:47'),
(219, 'Tarta z brokułem i serem', 'Obiad', 460, '19.00', '52.00', '22.00', 'Ciasto, brokuł, ser żółty', NULL, NULL, '2025-11-22 18:25:47'),
(220, 'Kurczak curry', 'Obiad', 570, '33.00', '60.00', '21.00', 'Kurczak, ryż, curry, jogurt', NULL, NULL, '2025-11-22 18:25:47'),
(221, 'Szaszłyki warzywne', 'Kolacja', 220, '6.00', '25.00', '7.00', 'Papryka, cukinia, pieczarka', NULL, NULL, '2025-11-22 18:25:47'),
(222, 'Gulasz wołowy z kaszą', 'Obiad', 530, '31.00', '63.00', '15.00', 'Wołowina, kasza gryczana, marchew', NULL, NULL, '2025-11-22 18:25:47'),
(223, 'Bananowy hot dog', 'Kolacja', 1000, '0.00', '0.00', '0.00', '', NULL, NULL, '2025-11-22 18:30:13'),
(224, 'Bananowy potwór', 'Przekąska', 180, '17.00', '29.00', '1.00', 'Banan (100g), Jogurt naturalny (155g)', NULL, NULL, '2025-11-22 18:48:36'),
(225, 'Lody Majstra', 'Śniadanie', 740, '56.00', '133.00', '4.00', 'Jogurt naturalny (500g), Banan (500g)', NULL, NULL, '2025-11-22 18:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `meal_items`
--

CREATE TABLE `meal_items` (
  `id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 1,
  `title` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `time` datetime NOT NULL,
  `is_sent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `message`, `time`, `is_sent`) VALUES
(1, 1, 'Pora na śniadanie!', 'Nie zapomnij zjeść śniadania', '2025-11-19 08:00:00', 0),
(2, 1, 'Wypij wodę', 'Pamiętaj o nawodnieniu', '2025-11-19 10:00:00', 0),
(3, 1, 'Czas na obiad', 'Nadszedł czas na obiad', '2025-11-19 13:00:00', 0),
(4, 1, 'Przekąska', 'Czas na zdrową przekąskę', '2025-11-19 16:00:00', 0),
(5, 1, 'Kolacja', 'Pora na kolację', '2025-11-19 19:00:00', 0),
(6, 1, 'Trening!', 'Czas na dzisiejszy trening', '2025-11-19 18:00:00', 0),
(7, 1, 'Podsumowanie dnia', 'Sprawdź dzisiejsze spożycie', '2025-11-19 21:00:00', 0),
(8, 1, 'Motywacja', 'Jesteś o krok bliżej celu!', '2025-11-19 09:00:00', 1),
(9, 1, 'Cel kalorii', 'Osiągnąłeś 80% dziennego celu', '2025-11-19 17:00:00', 1),
(10, 1, 'Białko', 'Pamiętaj o białku w kolacji', '2025-11-19 18:30:00', 0),
(11, 1, 'Śniadanie jutro', 'Przygotuj śniadanie na jutro', '2025-11-19 20:00:00', 0),
(12, 1, 'Waga', 'Zważ się rano', '2025-11-20 07:00:00', 0),
(13, 1, 'Plan tygodniowy', 'Zaplanuj posiłki na tydzień', '2025-11-20 10:00:00', 0),
(14, 1, 'Zakupy', 'Zrób listę zakupów', '2025-11-20 12:00:00', 0),
(15, 1, 'Poranna woda', 'Wypij szklankę wody', '2025-11-20 07:30:00', 0),
(16, 1, 'Lunch reminder', 'Za 30 min lunch', '2025-11-20 12:30:00', 0),
(17, 1, 'Cel białkowy', 'Jeszcze 30g białka dzisiaj', '2025-11-20 17:00:00', 0),
(18, 1, 'Gratulacje!', 'Tydzień bez pominięć!', '2025-11-20 20:00:00', 0),
(19, 1, 'Nowy przepis', 'Sprawdź nowy przepis', '2025-11-21 10:00:00', 0),
(20, 1, 'Wyzwanie', 'Dołącz do wyzwania 30 dni', '2025-11-21 09:00:00', 0),
(21, 1, 'Tips', 'Wskazówka: jedz wolniej', '2025-11-21 13:00:00', 0),
(22, 1, 'Evening snack', 'Zdrowa przekąska wieczorem', '2025-11-21 20:00:00', 0),
(23, 1, 'Hydration', '2L wody dziennie!', '2025-11-21 15:00:00', 0),
(24, 1, 'Meal prep', 'Czas na meal prep', '2025-11-22 10:00:00', 0),
(25, 1, 'Progress', 'Zrób zdjęcie postępów', '2025-11-22 08:00:00', 0),
(26, 1, 'Breakfast', 'Zjedz w ciągu godziny', '2025-11-22 08:30:00', 0),
(27, 1, 'Macro check', 'Sprawdź makro', '2025-11-22 14:00:00', 0),
(28, 1, 'Rest day', 'Dzisiaj odpoczynek', '2025-11-23 09:00:00', 0),
(29, 1, 'Cheat meal?', 'Możesz sobie pozwolić', '2025-11-23 18:00:00', 0),
(30, 1, 'Weekly goal', 'Osiągnąłeś cel tygodnia!', '2025-11-23 21:00:00', 1),
(31, 1, 'Morning routine', 'Zacznij dzień od wody', '2025-11-24 07:00:00', 0),
(32, 1, 'Lunch prep', 'Przygotuj lunch', '2025-11-24 11:00:00', 0),
(33, 1, 'Afternoon energy', 'Czas na zieloną herbatę', '2025-11-24 15:00:00', 0),
(34, 1, 'Dinner time', 'Kolacja za 30 min', '2025-11-24 18:30:00', 0),
(35, 1, 'Sleep routine', 'Pora na sen', '2025-11-24 22:00:00', 0),
(36, 1, 'New week', 'Nowy tydzień, nowe cele!', '2025-11-25 08:00:00', 0),
(37, 1, 'Protein shake', 'Post-workout shake', '2025-11-25 10:00:00', 0),
(38, 1, 'Veggies', 'Pamiętaj o warzywach', '2025-11-25 13:00:00', 0),
(39, 1, 'Omega-3', 'Zjedz rybę dzisiaj', '2025-11-25 12:00:00', 0),
(40, 1, 'Fiber', 'Sprawdź błonnik', '2025-11-25 14:00:00', 0),
(41, 1, 'Evening walk', 'Spacer po kolacji', '2025-11-25 19:30:00', 0),
(42, 1, 'Meal log', 'Zapisz dzisiejsze posiłki', '2025-11-25 20:00:00', 1),
(43, 1, 'Vitamins', 'Przyjmij suplementy', '2025-11-26 08:00:00', 1),
(44, 1, 'Breakfast ideas', 'Nowe pomysły na śniadanie', '2025-11-26 07:30:00', 0),
(45, 1, 'Lunch variety', 'Urozmaić lunch', '2025-11-26 12:00:00', 1),
(46, 1, 'Snack healthy', 'Zdrowe przekąski', '2025-11-26 16:00:00', 1),
(47, 1, 'Dinner light', 'Lekka kolacja', '2025-11-26 19:00:00', 1),
(48, 1, 'Weekend prep', 'Przygotuj się na weekend', '2025-11-27 10:00:00', 1),
(49, 1, 'Celebrate', 'Świętuj swoje sukcesy!', '2025-11-27 20:00:00', 1),
(50, 1, 'Keep going', 'Nie poddawaj się!', '2025-11-28 09:00:00', 0),
(51, 1, '⚠️ Przekroczono limit!', 'Osiągnąłeś 217% celu! (4780 / 2200 kcal)', '2025-12-02 23:46:34', 0),
(52, 1, '⚠️ Przekroczono limit!', 'Osiągnąłeś 217% celu! (4780 / 2200 kcal)', '2025-12-02 23:46:34', 0),
(53, 1, '⚠️ Przekroczono limit!', 'Osiągnąłeś 172% celu! (3780 / 2200 kcal)', '2025-12-02 23:46:51', 0),
(54, 1, '⚠️ Przekroczono limit!', 'Osiągnąłeś 138% celu! (3040 / 2200 kcal)', '2025-12-02 23:46:54', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `calories` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `description`, `created_at`, `calories`) VALUES
(54, 'Byle do Swiat', 'Automatyczny plan reduction - 2200 kcal/dzień', '2025-12-02 16:17:24', '2200.00'),
(55, 'Masa moc kiełbasa', 'Automatyczny plan mass - 3600 kcal/dzień', '2025-12-02 16:21:20', '3600.00'),
(56, 'Jeszcze jeden dzień', 'Automatyczny plan maintenance - 2500 kcal/dzień', '2025-12-02 16:24:22', '2500.00'),
(57, 'Byle do piatku', 'Automatyczny plan reduction - 1800 kcal/dzień', '2025-12-02 16:27:10', '1800.00'),
(58, 'Dla Michala', 'Automatyczny plan reduction - 3900 kcal/dzień', '2025-12-02 23:02:25', '3900.00');

-- --------------------------------------------------------

--
-- Table structure for table `plan_items`
--

CREATE TABLE `plan_items` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `day_number` int(11) NOT NULL,
  `meal_id` int(11) DEFAULT NULL,
  `quantity` float NOT NULL,
  `meal_time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan_items`
--

INSERT INTO `plan_items` (`id`, `plan_id`, `day_number`, `meal_id`, `quantity`, `meal_time`) VALUES
(79, 57, 1, 209, 0, 'Śniadanie'),
(80, 57, 1, 206, 0, 'Obiad'),
(81, 57, 1, 214, 0, 'Kolacja'),
(82, 57, 1, 224, 0, 'Przekąska'),
(83, 57, 2, 209, 0, 'Śniadanie'),
(84, 57, 2, 206, 0, 'Obiad'),
(85, 57, 2, 214, 0, 'Kolacja'),
(86, 57, 2, 224, 0, 'Przekąska'),
(87, 57, 3, 209, 0, 'Śniadanie'),
(88, 57, 3, 206, 0, 'Obiad'),
(89, 57, 3, 214, 0, 'Kolacja'),
(90, 57, 3, 224, 0, 'Przekąska'),
(91, 57, 4, 209, 0, 'Śniadanie'),
(92, 57, 4, 206, 0, 'Obiad'),
(93, 57, 4, 214, 0, 'Kolacja'),
(94, 57, 4, 224, 0, 'Przekąska'),
(95, 57, 5, 209, 0, 'Śniadanie'),
(96, 57, 5, 206, 0, 'Obiad'),
(97, 57, 5, 214, 0, 'Kolacja'),
(98, 57, 5, 224, 0, 'Przekąska'),
(99, 57, 6, 209, 0, 'Śniadanie'),
(100, 57, 6, 206, 0, 'Obiad'),
(101, 57, 6, 214, 0, 'Kolacja'),
(102, 57, 6, 224, 0, 'Przekąska'),
(103, 57, 7, 209, 0, 'Śniadanie'),
(104, 57, 7, 206, 0, 'Obiad'),
(105, 57, 7, 214, 0, 'Kolacja'),
(106, 57, 7, 224, 0, 'Przekąska'),
(107, 58, 1, 225, 0, 'Śniadanie'),
(108, 58, 1, 206, 0, 'Obiad'),
(109, 58, 1, 223, 0, 'Kolacja'),
(110, 58, 1, 224, 0, 'Przekąska'),
(111, 58, 2, 225, 0, 'Śniadanie'),
(112, 58, 2, 206, 0, 'Obiad'),
(113, 58, 2, 223, 0, 'Kolacja'),
(114, 58, 2, 224, 0, 'Przekąska'),
(115, 58, 3, 225, 0, 'Śniadanie'),
(116, 58, 3, 206, 0, 'Obiad'),
(117, 58, 3, 223, 0, 'Kolacja'),
(118, 58, 3, 224, 0, 'Przekąska'),
(119, 58, 4, 225, 0, 'Śniadanie'),
(120, 58, 4, 206, 0, 'Obiad'),
(121, 58, 4, 223, 0, 'Kolacja'),
(122, 58, 4, 224, 0, 'Przekąska'),
(123, 58, 5, 225, 0, 'Śniadanie'),
(124, 58, 5, 206, 0, 'Obiad'),
(125, 58, 5, 223, 0, 'Kolacja'),
(126, 58, 5, 224, 0, 'Przekąska'),
(127, 58, 6, 225, 0, 'Śniadanie'),
(128, 58, 6, 206, 0, 'Obiad'),
(129, 58, 6, 223, 0, 'Kolacja'),
(130, 58, 6, 224, 0, 'Przekąska'),
(131, 58, 7, 225, 0, 'Śniadanie'),
(132, 58, 7, 206, 0, 'Obiad'),
(133, 58, 7, 223, 0, 'Kolacja'),
(134, 58, 7, 224, 0, 'Przekąska');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `calories` float NOT NULL,
  `protein` float NOT NULL,
  `carbs` float NOT NULL,
  `fat` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `calories`, `protein`, `carbs`, `fat`) VALUES
(1, 'Kurczak pierś', 165, 31, 0, 3.6),
(2, 'Ryż biały', 130, 2.7, 28, 0.3),
(3, 'Brokuły', 34, 2.8, 7, 0.4),
(4, 'Jajko', 155, 13, 1.1, 11),
(5, 'Płatki owsiane', 389, 16.9, 66.3, 6.9),
(6, 'Banan', 89, 1.1, 23, 0.3),
(7, 'Łosoś', 208, 20, 0, 13),
(8, 'Awokado', 160, 2, 9, 15),
(9, 'Jogurt naturalny', 59, 10, 3.6, 0.4),
(10, 'Ser biały', 98, 11.1, 3.4, 4.3),
(11, 'Makaron pełnoziarnisty', 348, 13, 64, 2.5),
(12, 'Pierś indyka', 135, 30, 0, 1),
(13, 'Szynka', 145, 21, 1.4, 6),
(14, 'Pomarańcza', 47, 0.9, 12, 0.1),
(15, 'Jabłko', 52, 0.3, 14, 0.2),
(16, 'Orzech włoski', 654, 15, 14, 65),
(17, 'Migdały', 579, 21, 22, 49),
(18, 'Masło orzechowe', 588, 25, 20, 50),
(19, 'Chleb żytni', 259, 8.5, 48, 3.3),
(20, 'Chleb pełnoziarnisty', 247, 13, 41, 4.2),
(21, 'Sałata', 15, 1.4, 2.9, 0.2),
(22, 'Pomidor', 18, 0.9, 3.9, 0.2),
(23, 'Ogórek', 16, 0.7, 3.6, 0.1),
(24, 'Marchew', 41, 0.9, 10, 0.2),
(25, 'Ziemniaki', 77, 2, 17, 0.1),
(26, 'Batat', 86, 1.6, 20, 0.1),
(27, 'Szpinak', 23, 2.9, 3.6, 0.4),
(28, 'Papryka czerwona', 31, 1, 6, 0.3),
(29, 'Tuńczyk w puszce', 116, 26, 0, 0.8),
(30, 'Sardynki', 208, 25, 0, 11),
(31, 'Tofu', 76, 8, 1.9, 4.8),
(32, 'Mleko 2%', 50, 3.3, 4.8, 2),
(33, 'Kefir', 41, 3.3, 4, 1),
(34, 'Ser żółty', 402, 25, 1.3, 33),
(35, 'Feta', 264, 14, 4.1, 21),
(36, 'Kakao', 228, 19, 58, 14),
(37, 'Miód', 304, 0.3, 82, 0),
(38, 'Oliwa z oliwek', 884, 0, 0, 100),
(39, 'Olej kokosowy', 862, 0, 0, 100),
(40, 'Quinoa', 368, 14, 64, 6),
(41, 'Kasza gryczana', 343, 13, 72, 3.4),
(42, 'Kasza jaglana', 378, 11, 73, 4.2),
(43, 'Soczewica', 116, 9, 20, 0.4),
(44, 'Ciecierzyca', 164, 8.9, 27, 2.6),
(45, 'Fasola czerwona', 127, 8.7, 23, 0.5),
(46, 'Groszek zielony', 81, 5, 14, 0.4),
(47, 'Kalafior', 25, 1.9, 5, 0.3),
(48, 'Kapusta biała', 25, 1.3, 6, 0.1),
(49, 'Gruszka', 57, 0.4, 15, 0.1),
(50, 'Truskawki', 32, 0.7, 8, 0.3),
(51, 'byle co', 200, 0, 0, 0),
(52, 'test', 999, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_diary`
--

CREATE TABLE `user_diary` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT '12:00:00',
  `type` enum('meal','product') NOT NULL,
  `meal_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT 100.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_diary`
--

INSERT INTO `user_diary` (`id`, `user_id`, `name`, `date`, `time`, `type`, `meal_id`, `product_id`, `quantity`, `created_at`) VALUES
(1, 1, 'Banan', '2025-11-22', '19:32:02', 'product', NULL, 6, '200.00', '2025-11-22 18:32:02'),
(5, 1, 'Posiłek nr 2', '2025-12-02', '23:19:00', 'meal', 225, NULL, '100.00', '2025-12-02 22:19:20'),
(10, 1, 'mocne zakonczenie dnia', '2025-12-02', '21:40:00', 'meal', 223, NULL, '100.00', '2025-12-02 22:40:10'),
(11, 1, 'Posiłek', '2025-12-02', '23:40:34', 'product', NULL, 2, '1000.00', '2025-12-02 22:40:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_items`
--
ALTER TABLE `meal_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meal_id` (`meal_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_items`
--
ALTER TABLE `plan_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`),
  ADD KEY `product_id` (`meal_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_diary`
--
ALTER TABLE `user_diary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meal_id` (`meal_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `meal_items`
--
ALTER TABLE `meal_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `plan_items`
--
ALTER TABLE `plan_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user_diary`
--
ALTER TABLE `user_diary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meal_items`
--
ALTER TABLE `meal_items`
  ADD CONSTRAINT `meal_items_ibfk_1` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meal_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plan_items`
--
ALTER TABLE `plan_items`
  ADD CONSTRAINT `plan_items_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plan_items_meal_fk` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_diary`
--
ALTER TABLE `user_diary`
  ADD CONSTRAINT `user_diary_ibfk_1` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_diary_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
