-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2017 a las 04:55:36
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(1, 'Volaris', '555512348', '2017-08-05 19:14:07', '0000-00-00 00:00:00'),
(2, 'Aeromexico', '55551132321', NULL, NULL);

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
(1, 'Mariano Matamoros', 1, NULL, NULL),
(2, 'Benito Juarez', 3, NULL, NULL);

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
(1, 'Mariana Matamoros', 1, NULL, NULL),
(2, 'Benito Juarez', 3, NULL, NULL);

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
(3, '210895', 25, 15, 2, NULL, NULL);

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
(3, 'CDMX', '2017-08-05 05:00:00', NULL);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudades_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `vuelos_id` int(10) UNSIGNED NOT NULL,
  `clientes_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(10, '06/08/2017', '15:00 hrs', '06/08/2017', '20:00hrs', 3, 1, 2, 550, '2017-08-07 06:31:43', '2017-08-07 06:31:43');

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
  ADD KEY `hoteles_ciudades_id_foreign` (`ciudades_id`);

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
  ADD KEY `reservaciones_vuelos_id_foreign` (`vuelos_id`),
  ADD KEY `reservaciones_clientes_id_foreign` (`clientes_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `aeropuerto_llegadas`
--
ALTER TABLE `aeropuerto_llegadas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `aeropuerto_salidas`
--
ALTER TABLE `aeropuerto_salidas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `avions`
--
ALTER TABLE `avions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `reservacions`
--
ALTER TABLE `reservacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
  ADD CONSTRAINT `hoteles_ciudades_id_foreign` FOREIGN KEY (`ciudades_id`) REFERENCES `ciudads` (`id`);

--
-- Filtros para la tabla `reservacions`
--
ALTER TABLE `reservacions`
  ADD CONSTRAINT `reservaciones_clientes_id_foreign` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `reservaciones_vuelos_id_foreign` FOREIGN KEY (`vuelos_id`) REFERENCES `vuelos` (`id`);

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_aeropuertos_llegadas_id_foreign` FOREIGN KEY (`aeropuerto_llegada_id`) REFERENCES `aeropuerto_llegadas` (`id`),
  ADD CONSTRAINT `vuelos_aeropuertos_salidas_id_foreign` FOREIGN KEY (`aeropuerto_salida_id`) REFERENCES `aeropuerto_salidas` (`id`),
  ADD CONSTRAINT `vuelos_aviones_id_foreign` FOREIGN KEY (`avion_id`) REFERENCES `avions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
