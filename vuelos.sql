-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2017 a las 18:33:43
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vuelos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aerolineas`
--

CREATE TABLE `aerolineas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aerolineas`
--

INSERT INTO `aerolineas` (`id`, `nombre`, `telefono`, `created_at`, `updated_at`) VALUES
(1, 'Volaris', '52 55 1102 8000', '2017-08-05 19:14:07', '0000-00-00 00:00:00'),
(2, 'Aeromexico', '55 5133 4000', '2017-08-09 05:00:00', NULL),
(3, 'Aeromar', '01 800 237 6627', '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(4, 'Interjet', '52 800 322 5050', '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(5, 'Vivaerobus', '52 81 8215 0150', '2017-08-09 05:00:00', '2017-08-09 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aeropuerto_llegadas`
--

CREATE TABLE `aeropuerto_llegadas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aeropuerto_llegadas`
--

INSERT INTO `aeropuerto_llegadas` (`id`, `nombre`, `ciudad_id`, `created_at`, `updated_at`) VALUES
(1, 'Aeropuerto Internacional General Mariano Matamoros', 1, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(2, 'Aeropuerto Internacional General Lucio Blanco', 2, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(3, 'Aeropuerto Internacional de la Ciudad de México', 3, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(4, 'Aeropuerto Internacional de Monterrey', 4, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(5, 'Aeropuerto Internacional General Juan N. Álvarez', 5, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(6, 'Aeropuerto Internacional de Aguascalientes', 6, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(7, 'Aeropuerto Internacional de Cancún', 7, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(8, 'Aeropuerto Internacional de Chetumal', 8, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(9, 'Aeropuerto Internacional General Roberto Fierro Villalobos', 9, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(10, 'Aeropuerto Internacional de Cozumel', 10, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(11, 'Aeropuerto Internacional de Durango', 11, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(12, 'Aeropuerto Internacional de Guadalajara', 12, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(13, 'Aeropuerto Internacional de Guanajuato', 13, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(14, 'Aeropuerto Internacional General José María Yáñez', 14, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(15, 'Aeropuerto Internacional de La Paz', 15, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(16, 'Aeropuerto Internacional de Los Cabos', 16, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(17, 'Aeropuerto Internacional de Manzanillo', 17, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(18, 'Aeropuerto Internacional de Nogales', 18, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(19, 'Aeropuerto Internacional de Oaxaca', 19, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(20, 'Aeropuerto Internacional de Piedras Negras', 20, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(21, 'Aeropuerto Internacional Hermanos Serdán', 21, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(22, 'Aeropuerto Nacional de San Cristóbal de las Casas', 22, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(23, 'Aeropuerto Internacional de Tapachula', 23, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(24, 'Aeropuerto Internacional General Heriberto Jara', 24, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(25, 'Aeropuerto Internacional de Zacatecas', 25, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(26, 'Aeropuerto Nacional El Tajín', 26, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(27, 'Aeropuerto Internacional de Campeche', 27, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(28, 'Aeropuerto Internacional General y Licenciado Ignacio López Rayón', 28, '2017-08-09 05:00:00', '2017-08-09 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aeropuerto_salidas`
--

CREATE TABLE `aeropuerto_salidas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aeropuerto_salidas`
--

INSERT INTO `aeropuerto_salidas` (`id`, `nombre`, `ciudad_id`, `created_at`, `updated_at`) VALUES
(1, 'Aeropuerto Internacional General Mariano Matamoros', 1, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(2, 'Aeropuerto Internacional General Lucio Blanco', 2, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(3, 'Aeropuerto Internacional de la Ciudad de México', 3, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(4, 'Aeropuerto Internacional de Monterrey', 4, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(5, 'Aeropuerto Internacional General Juan N. Álvarez', 5, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(6, 'Aeropuerto Internacional de Aguascalientes', 6, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(7, 'Aeropuerto Internacional de Cancún', 7, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(8, 'Aeropuerto Internacional de Chetumal', 8, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(9, 'Aeropuerto Internacional General Roberto Fierro Villalobos', 9, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(10, 'Aeropuerto Internacional de Cozumel', 10, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(11, 'Aeropuerto Internacional de Durango', 11, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(12, 'Aeropuerto Internacional de Guadalajara', 12, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(13, 'Aeropuerto Internacional de Guanajuato', 13, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(14, 'Aeropuerto Internacional General José María Yáñez', 14, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(15, 'Aeropuerto Internacional de La Paz', 15, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(16, 'Aeropuerto Internacional de Los Cabos', 16, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(17, 'Aeropuerto Internacional de Manzanillo', 17, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(18, 'Aeropuerto Internacional de Nogales', 18, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(19, 'Aeropuerto Internacional de Oaxaca', 19, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(20, 'Aeropuerto Internacional de Piedras Negras', 20, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(21, 'Aeropuerto Internacional Hermanos Serdán', 21, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(22, 'Aeropuerto Nacional de San Cristóbal de las Casas', 22, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(23, 'Aeropuerto Internacional de Tapachula', 23, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(24, 'Aeropuerto Internacional General Heriberto Jara', 24, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(25, 'Aeropuerto Internacional de Zacatecas', 25, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(26, 'Aeropuerto Nacional El Tajín', 26, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(27, 'Aeropuerto Internacional de Campeche', 27, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(28, 'Aeropuerto Internacional General y Licenciado Ignacio López Rayón', 28, '2017-08-09 05:00:00', '2017-08-09 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avions`
--

CREATE TABLE `avions` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_avion` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_asientos` int(11) NOT NULL,
  `cap_maletas` int(11) NOT NULL,
  `aerolinea_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `avions`
--

INSERT INTO `avions` (`id`, `no_avion`, `no_asientos`, `cap_maletas`, `aerolinea_id`, `created_at`, `updated_at`) VALUES
(2, '031095', 25, 52, 1, '2017-08-05 05:00:00', NULL),
(3, '210895', 25, 15, 2, NULL, NULL),
(4, '23986', 50, 60, 3, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(5, '07812', 100, 150, 4, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(6, '67831', 120, 150, 5, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(7, '43198', 100, 150, 1, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(8, '00921', 80, 150, 2, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(9, '15732', 110, 130, 3, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(10, '98761', 80, 120, 4, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(11, '26791', 100, 120, 5, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(12, '18632', 120, 130, 3, '2017-08-09 05:00:00', '2017-08-09 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudads`
--

CREATE TABLE `ciudads` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudads`
--

INSERT INTO `ciudads` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Cuernavaca', '2017-08-05 05:00:00', NULL),
(2, 'Reynosa', '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(3, 'CDMX', '2017-08-05 05:00:00', NULL),
(4, 'Monterrey', '2017-08-09 12:45:23', '2017-08-09 12:45:23'),
(5, 'Acapulco', '2017-08-09 12:45:23', '2017-08-09 12:45:23'),
(6, 'Aguascalientes', '2017-08-09 12:46:00', '2017-08-09 12:46:00'),
(7, 'Cancun', '2017-08-09 12:46:00', '2017-08-09 12:46:00'),
(8, 'Chetumal', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(9, 'Chihuahua', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(10, 'Cozumel', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(11, 'Durango', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(12, 'Guadalajara', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(13, 'Leon', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(14, 'Guaymas', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(15, 'La paz', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(16, 'Los cabos', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(17, 'Manzanillo', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(18, 'Nogales', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(19, 'Oaxaca', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(20, 'Piedras negras', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(21, 'Puebla', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(22, 'San Cristobal de las Casas', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(23, 'Tapachula', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(24, 'Veracruz', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(25, 'Zacatecas', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(26, 'Poza Rica', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(27, 'Campeche', '2017-08-09 12:49:44', '2017-08-09 12:49:44'),
(28, 'Uruapan', '2017-08-09 12:49:44', '2017-08-09 12:49:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidoP`, `apellidoM`, `email`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'Jonathan', 'Arzate', 'Juarez', 'jonathan.cife@gmail.com', NULL, '2017-08-10 21:31:58', '2017-08-10 21:31:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numeroHabitaciones` int(11) NOT NULL,
  `ciudad_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `hotels`
--

INSERT INTO `hotels` (`id`, `nombre`, `telefono`, `numeroHabitaciones`, `ciudad_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Resort Mundo Imperial', '01 744 435 1700', 260, 5, NULL, '2017-08-08 23:25:02', '2017-08-08 23:25:02'),
(2, 'Holiday Inn', '01 777 362 0203', 380, 1, NULL, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(3, 'Holiday Inn', '01 55 5140 7780', 300, 3, NULL, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(4, 'Fiesta Inn Cancún las Américas', '01 998 891 5650', 130, 7, NULL, '2017-08-09 13:08:45', '2017-08-09 13:08:45'),
(5, 'Fiesta Americana', '01 987 872 9600', 450, 12, NULL, '2017-08-09 13:12:08', '2017-08-09 13:12:08'),
(6, 'Holiday Inn', '01 800 838 1188', 200, 5, NULL, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(7, 'City Express', '01 983 835 1980', 135, 8, NULL, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(8, 'Best Western Plus', '01 878 786 1914', 80, 20, NULL, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(9, 'Holiday Inn', '01 878 783 6040', 120, 20, NULL, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(10, 'Holiday Inn', '01 951 512 9200', 180, 19, NULL, '2017-08-09 13:21:44', '2017-08-09 13:21:44'),
(11, 'Fiesta Americana', '01 612 123 6000', 120, 15, NULL, '2017-08-09 13:30:10', '2017-08-09 13:30:10'),
(12, 'Poza Rica Inn', '01 782 826 0300', 90, 26, NULL, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(13, 'Fiesta Inn', '01 782 826 1600', 120, 26, NULL, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(14, 'Hotel NH', '01 222 309 1919', 130, 21, NULL, '2017-08-09 05:00:00', '2017-08-09 05:00:00'),
(15, 'Mision Grand ', '01 967 678 0928', 200, 22, NULL, '2017-08-09 05:00:00', '2017-08-09 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_05_164302_create_cliente_table', 1),
(4, '2017_08_05_165526_create_ciudades_table', 1),
(5, '2017_08_05_165717_create_aerolineas_table', 1),
(6, '2017_08_05_165934_create_aviones_table', 1),
(7, '2017_08_05_170847_create_hoteles_table', 1),
(8, '2017_08_05_171200_create_aeropuertos_llegada_table', 1),
(9, '2017_08_05_171433_create_aeropuertos_salida_table', 1),
(10, '2017_08_05_171953_create_vuelos_table', 1),
(11, '2017_08_05_172808_create_reservaciones_table', 2),
(12, '2017_08_05_183236_create_users_udate_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservacions`
--

CREATE TABLE `reservacions` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_asiento` int(11) NOT NULL,
  `vuelo_id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reservacions`
--

INSERT INTO `reservacions` (`id`, `no_asiento`, `vuelo_id`, `cliente_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 1, 1, 16, NULL, '2017-08-10 21:31:59', '2017-08-10 21:31:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Daniela Sanchez', 'danni.sanchez21@outlook.com', '$2y$10$RqLhNY2CpMY5SQAS8pGZb.D/HHQkiTFWh7etwYHRAqbi0zwj1EU2S', '4PGVhq4wDvJGlZtTUK2I3BVXjJMDzOt6hom85quadu4Gnj4J0Z4bUGI5zx4A', '2017-08-10 19:21:38', '2017-08-10 19:21:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_salida` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_salida` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_llegada` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_llegada` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avion_id` int(10) UNSIGNED NOT NULL,
  `aeropuerto_llegada_id` int(10) UNSIGNED NOT NULL,
  `aeropuerto_salida_id` int(10) UNSIGNED NOT NULL,
  `precio` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id`, `fecha_salida`, `hora_salida`, `fecha_llegada`, `hora_llegada`, `avion_id`, `aeropuerto_llegada_id`, `aeropuerto_salida_id`, `precio`, `created_at`, `updated_at`) VALUES
(1, '2017-08-21', '5:00', '2017-08-21', '11:00', 8, 7, 1, 1500, '2017-08-10 19:23:19', '2017-08-10 19:23:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aerolineas`
--
ALTER TABLE `aerolineas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aeropuerto_llegadas`
--
ALTER TABLE `aeropuerto_llegadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aeropuertos_llegadas_ciudades_id_foreign` (`ciudad_id`);

--
-- Indices de la tabla `aeropuerto_salidas`
--
ALTER TABLE `aeropuerto_salidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aeropuertos_salidas_ciudades_id_foreign` (`ciudad_id`);

--
-- Indices de la tabla `avions`
--
ALTER TABLE `avions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aviones_aerolineas_id_foreign` (`aerolinea_id`);

--
-- Indices de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_email_unique` (`email`);

--
-- Indices de la tabla `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hoteles_ciudades_id_foreign` (`ciudad_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `reservacions`
--
ALTER TABLE `reservacions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservaciones_vuelos_id_foreign` (`vuelo_id`),
  ADD KEY `reservaciones_clientes_id_foreign` (`cliente_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vuelos_aviones_id_foreign` (`avion_id`),
  ADD KEY `vuelos_aeropuertos_llegadas_id_foreign` (`aeropuerto_llegada_id`),
  ADD KEY `vuelos_aeropuertos_salidas_id_foreign` (`aeropuerto_salida_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aerolineas`
--
ALTER TABLE `aerolineas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `aeropuerto_llegadas`
--
ALTER TABLE `aeropuerto_llegadas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `aeropuerto_salidas`
--
ALTER TABLE `aeropuerto_salidas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `avions`
--
ALTER TABLE `avions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `reservacions`
--
ALTER TABLE `reservacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aeropuerto_llegadas`
--
ALTER TABLE `aeropuerto_llegadas`
  ADD CONSTRAINT `aeropuertos_llegadas_ciudades_id_foreign` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudads` (`id`);

--
-- Filtros para la tabla `aeropuerto_salidas`
--
ALTER TABLE `aeropuerto_salidas`
  ADD CONSTRAINT `aeropuertos_salidas_ciudades_id_foreign` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudads` (`id`);

--
-- Filtros para la tabla `avions`
--
ALTER TABLE `avions`
  ADD CONSTRAINT `aviones_aerolineas_id_foreign` FOREIGN KEY (`aerolinea_id`) REFERENCES `aerolineas` (`id`);

--
-- Filtros para la tabla `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hoteles_ciudades_id_foreign` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudads` (`id`);

--
-- Filtros para la tabla `reservacions`
--
ALTER TABLE `reservacions`
  ADD CONSTRAINT `reservaciones_clientes_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `reservaciones_vuelos_id_foreign` FOREIGN KEY (`vuelo_id`) REFERENCES `vuelos` (`id`);

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_aeropuertos_llegadas_id_foreign` FOREIGN KEY (`aeropuerto_llegada_id`) REFERENCES `aeropuerto_llegadas` (`id`),
  ADD CONSTRAINT `vuelos_aeropuertos_salidas_id_foreign` FOREIGN KEY (`aeropuerto_salida_id`) REFERENCES `aeropuerto_salidas` (`id`),
  ADD CONSTRAINT `vuelos_aviones_id_foreign` FOREIGN KEY (`avion_id`) REFERENCES `avions` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
