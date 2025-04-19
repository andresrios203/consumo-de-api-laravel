-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2025 a las 08:26:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rickmorty`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `characters`
--

CREATE TABLE `characters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `species` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `origin_name` varchar(255) NOT NULL,
  `origin_url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `characters`
--

INSERT INTO `characters` (`id`, `name`, `status`, `species`, `type`, `gender`, `origin_name`, `origin_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Rick Sanchez', 'Alive', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/1.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(2, 'Morty Smith', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/2.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(3, 'Summer', 'Alive', 'alien', NULL, 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/3.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:23:21'),
(4, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/4.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(5, 'Jerry Smith', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/5.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(6, 'Abadango Cluster Princess', 'Alive', 'Alien', '', 'Female', 'Abadango', 'https://rickandmortyapi.com/api/location/2', 'https://rickandmortyapi.com/api/character/avatar/6.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(7, 'Abradolf Lincler', 'unknown', 'Human', 'Genetic experiment', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/7.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(8, 'Adjudicator Rick', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/8.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(9, 'Agency Director', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/9.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(10, 'Alan Rails', 'Dead', 'Human', 'Superhuman (Ghost trains summoner)', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/10.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(11, 'Albert Einstein', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/11.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(12, 'Alexander', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/12.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(13, 'Alien Googah', 'unknown', 'Alien', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/13.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(14, 'Alien Morty', 'unknown', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/14.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(15, 'Alien Rick', 'unknown', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/15.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(16, 'Amish Cyborg', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/16.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(17, 'Annie', 'Alive', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/17.jpeg', '2025-04-19 11:22:32', '2025-04-19 11:22:32'),
(18, 'Antenna Morty', 'Alive', 'Human', 'Human with antennae', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/18.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(19, 'Antenna Rick', 'unknown', 'Human', 'Human with antennae', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/19.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(20, 'Ants in my Eyes Johnson', 'unknown', 'Human', 'Human with ants in his eyes', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/20.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(21, 'Aqua Morty', 'unknown', 'Humanoid', 'Fish-Person', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/21.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(22, 'Aqua Rick', 'unknown', 'Humanoid', 'Fish-Person', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/22.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(23, 'Arcade Alien', 'unknown', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/23.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(24, 'Armagheadon', 'Alive', 'Alien', 'Cromulon', 'Male', 'Signus 5 Expanse', 'https://rickandmortyapi.com/api/location/22', 'https://rickandmortyapi.com/api/character/avatar/24.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(25, 'Armothy', 'Dead', 'unknown', 'Self-aware arm', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/location/8', 'https://rickandmortyapi.com/api/character/avatar/25.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(26, 'Arthricia', 'Alive', 'Alien', 'Cat-Person', 'Female', 'Purge Planet', 'https://rickandmortyapi.com/api/location/9', 'https://rickandmortyapi.com/api/character/avatar/26.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(27, 'Artist Morty', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/27.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(28, 'Attila Starwar', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/28.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(29, 'Baby Legs', 'Alive', 'Human', 'Human with baby legs', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/29.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(30, 'Baby Poopybutthole', 'Alive', 'Poopybutthole', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/30.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(31, 'Baby Wizard', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/31.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(32, 'Bearded Lady', 'Dead', 'Alien', 'Parasite', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/32.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(33, 'Beebo', 'Dead', 'Alien', '', 'Male', 'Venzenulon 7', 'https://rickandmortyapi.com/api/location/10', 'https://rickandmortyapi.com/api/character/avatar/33.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(34, 'Benjamin', 'Alive', 'Poopybutthole', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/34.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(35, 'Bepisian', 'Alive', 'Alien', 'Bepisian', 'unknown', 'Bepis 9', 'https://rickandmortyapi.com/api/location/11', 'https://rickandmortyapi.com/api/character/avatar/35.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(36, 'Beta-Seven', 'Alive', 'Alien', 'Hivemind', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/36.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(37, 'Beth Sanchez', 'Alive', 'Human', '', 'Female', 'Earth (C-500A)', 'https://rickandmortyapi.com/api/location/23', 'https://rickandmortyapi.com/api/character/avatar/37.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(38, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/38.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(39, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (Evil Rick\'s Target Dimension)', 'https://rickandmortyapi.com/api/location/34', 'https://rickandmortyapi.com/api/character/avatar/39.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(40, 'Beth\'s Mytholog', 'Dead', 'Mythological Creature', 'Mytholog', 'Female', 'Nuptia 4', 'https://rickandmortyapi.com/api/location/13', 'https://rickandmortyapi.com/api/character/avatar/40.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(41, 'Big Boobed Waitress', 'Alive', 'Mythological Creature', '', 'Female', 'Fantasy World', 'https://rickandmortyapi.com/api/location/48', 'https://rickandmortyapi.com/api/character/avatar/41.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(42, 'Big Head Morty', 'unknown', 'Human', 'Human with giant head', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/42.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(43, 'Big Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/43.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(44, 'Body Guard Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/44.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(45, 'Bill', 'Alive', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/45.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(46, 'Bill', 'unknown', 'Animal', 'Dog', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/46.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(47, 'Birdperson', 'Alive', 'Alien', 'Bird-Person', 'Male', 'Bird World', 'https://rickandmortyapi.com/api/location/15', 'https://rickandmortyapi.com/api/character/avatar/47.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(48, 'Black Rick', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/48.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(49, 'Blamph', 'Alive', 'Alien', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/49.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(50, 'Blim Blam', 'Alive', 'Alien', 'Korblock', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/50.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(51, 'Blue Diplomat', 'Alive', 'Alien', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/51.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(52, 'Blue Footprint Guy', 'Dead', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/location/8', 'https://rickandmortyapi.com/api/character/avatar/52.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(53, 'Blue Shirt Morty', 'unknown', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/53.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(54, 'Bobby Moynihan', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/54.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(55, 'Boobloosian', 'Dead', 'Alien', 'Boobloosian', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/55.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(56, 'Bootleg Portal Chemist Rick', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/56.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(57, 'Borpocian', 'Alive', 'Alien', 'Elephant-Person', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/57.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(58, 'Brad', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/58.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(59, 'Brad Anderson', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/59.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(60, 'Calypso', 'Dead', 'Human', 'Superhuman', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/60.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(61, 'Campaign Manager Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/61.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(62, 'Canklanker Thom', 'Dead', 'Alien', 'Gromflomite', 'Male', 'Gromflom Prime', 'https://rickandmortyapi.com/api/location/19', 'https://rickandmortyapi.com/api/character/avatar/62.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(63, 'Centaur', 'Alive', 'Mythological Creature', 'Centaur', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/63.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(64, 'Chris', 'Dead', 'Alien', 'Organic gun', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/64.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(65, 'Chris', 'Alive', 'Humanoid', 'Microverse inhabitant', 'Male', 'Rick\'s Battery Microverse', 'https://rickandmortyapi.com/api/location/24', 'https://rickandmortyapi.com/api/character/avatar/65.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(66, 'Coach Feratu (Balik Alistane)', 'Dead', 'Mythological Creature', 'Vampire', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/66.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(67, 'Collector', 'Alive', 'Alien', 'Light bulb-Alien', 'Male', 'The Menagerie', 'https://rickandmortyapi.com/api/location/25', 'https://rickandmortyapi.com/api/character/avatar/67.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(68, 'Colossus', 'Dead', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/location/8', 'https://rickandmortyapi.com/api/character/avatar/68.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(69, 'Commander Rick', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/69.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(70, 'Concerto', 'Dead', 'Humanoid', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/70.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(71, 'Conroy', 'Dead', 'Robot', '', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/71.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(72, 'Cool Rick', 'Alive', 'Human', '', 'Male', 'Earth (K-83)', 'https://rickandmortyapi.com/api/location/26', 'https://rickandmortyapi.com/api/character/avatar/72.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(73, 'Cop Morty', 'Dead', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/73.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(74, 'Cop Rick', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/74.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(75, 'Courier Flap', 'Alive', 'Alien', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/75.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(76, 'Cousin Nicky', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/76.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(77, 'Cowboy Morty', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/77.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(78, 'Cowboy Rick', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/78.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(79, 'Crab Spider', 'Alive', 'Alien', 'Animal', 'unknown', 'Hideout Planet', 'https://rickandmortyapi.com/api/location/27', 'https://rickandmortyapi.com/api/character/avatar/79.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(80, 'Creepy Little Girl', 'Alive', 'Human', '', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/80.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(81, 'Crocubot', 'Dead', 'Animal', 'Robot-Crocodile hybrid', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/81.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(82, 'Cronenberg Rick', 'unknown', 'Cronenberg', '', 'Male', 'Cronenberg Earth', 'https://rickandmortyapi.com/api/location/12', 'https://rickandmortyapi.com/api/character/avatar/82.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(83, 'Cronenberg Morty', 'unknown', 'Cronenberg', '', 'Male', 'Cronenberg Earth', 'https://rickandmortyapi.com/api/location/12', 'https://rickandmortyapi.com/api/character/avatar/83.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(84, 'Cult Leader Morty', 'Alive', 'Human', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/84.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(85, 'Cyclops Morty', 'Alive', 'Humanoid', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/85.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(86, 'Cyclops Rick', 'Dead', 'Humanoid', '', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/86.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(87, 'Cynthia', 'Dead', 'Alien', 'Zigerion', 'Female', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/87.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(88, 'Cynthia', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/location/20', 'https://rickandmortyapi.com/api/character/avatar/88.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(89, 'Dale', 'Dead', 'Mythological Creature', 'Giant', 'Male', 'Giant\'s Town', 'https://rickandmortyapi.com/api/location/14', 'https://rickandmortyapi.com/api/character/avatar/89.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(90, 'Daron Jefferson', 'Alive', 'Alien', 'Cone-nippled alien', 'Male', 'Unity\'s Planet', 'https://rickandmortyapi.com/api/location/28', 'https://rickandmortyapi.com/api/character/avatar/90.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(91, 'David Letterman', 'Alive', 'Human', '', 'Male', 'Earth (C-500A)', 'https://rickandmortyapi.com/api/location/23', 'https://rickandmortyapi.com/api/character/avatar/91.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(92, 'Davin', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/92.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(93, 'Diablo Verde', 'Dead', 'Mythological Creature', 'Demon', 'Male', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/93.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(94, 'Diane Sanchez', 'Dead', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/location/1', 'https://rickandmortyapi.com/api/character/avatar/94.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(95, 'Dipper and Mabel Mortys', 'unknown', 'Human', '', 'unknown', 'unknown', '', 'https://rickandmortyapi.com/api/character/avatar/95.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(96, 'Tuberculosis', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/96.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(97, 'Gonorrhea', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/97.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(98, 'Hepatitis A', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/98.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(99, 'Hepatitis C', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/99.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33'),
(100, 'Bubonic Plague', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/location/5', 'https://rickandmortyapi.com/api/character/avatar/100.jpeg', '2025-04-19 11:22:33', '2025-04-19 11:22:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_19_013901_create_characters_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7OQp8TWI3KYgDxkaELVsvX8Qpx3eng9EZ20jR91U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkd6TXFtSTJuMWVaMUVXUkNsc2dERGE0elhOb20wM3I4MlNJNEdOeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGFyYWN0ZXJzL2FwaSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745035277),
('a14AkUlIzQRDqxXtt5PFvFmr3JmI6D9y27W0dxpS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXJwYXN4RmplakdiN0ZEMnY4aE11UUZDT1NRWWo2OWpFYmNvVjE1YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGFyYWN0ZXJzL2RiIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1745039435),
('Oye94LHc4VOhnMUhRnDQjz5FB5KSsbfsIf3Y6sLo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2p2Tkl3eFQzaXlSVFhXOFdLUXNobjVhaVdXSWtlRnQwRkdSNHY2YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGFyYWN0ZXJzL2RiIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1745043802);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `characters`
--
ALTER TABLE `characters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
