-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2021 a las 08:17:18
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdanime`
--
CREATE DATABASE IF NOT EXISTS `bdanime` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdanime`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animes`
--

CREATE TABLE `animes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_05_221355_create_animes_table', 1),
(5, '2021_05_05_224233_add_avatar_to_users_table', 1),
(6, '2021_05_05_231120_cambiar_propiedades_to_users_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animes`
--
ALTER TABLE `animes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `animes`
--
ALTER TABLE `animes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `bdia`
--
CREATE DATABASE IF NOT EXISTS `bdia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdia`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_producto`
--

CREATE TABLE `area_producto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `area_producto`
--

INSERT INTO `area_producto` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'QUESO', NULL, NULL),
(2, 'JAMON DEL PAIS', NULL, NULL),
(3, 'TALLARINES ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bien_producto`
--

CREATE TABLE `bien_producto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bien_producto`
--

INSERT INTO `bien_producto` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'ACEITE', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_recetas`
--

CREATE TABLE `categoria_recetas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_recetas`
--

INSERT INTO `categoria_recetas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'PIZZA', NULL, NULL),
(2, 'POSTRE', NULL, NULL),
(3, 'FRUTAS', NULL, NULL),
(4, 'CRIOLLOS', NULL, NULL),
(5, 'MODELOS', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca_producto`
--

CREATE TABLE `marca_producto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `marca_producto`
--

INSERT INTO `marca_producto` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'COCINERO', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_22_124037_create_productos_table', 1),
(5, '2021_04_27_123329_create_recetas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo_producto`
--

CREATE TABLE `modelo_producto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `modelo_producto`
--

INSERT INTO `modelo_producto` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'EXTRA GRANDE ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codpatrimonial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sistemao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discoduro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tecnologia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `modelo_id` bigint(20) UNSIGNED NOT NULL,
  `bien_id` bigint(20) UNSIGNED NOT NULL,
  `marca_id` bigint(20) UNSIGNED NOT NULL,
  `ubi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredientes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preparacion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id`, `titulo`, `ingredientes`, `preparacion`, `imagen`, `user_id`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'ESPAGETI A LA  BOLONESA', '<div>ASDASD</div>', '<div>ASDASD</div>', 'upload-recetas/i1CjRYAcZr6GnHcATMoHeF5tLyGaK3p7rECgHy5i.jpg', 1, 2, NULL, NULL),
(2, 'ESPAGETI A LA  BOLONESA', '<div>ASDASD</div>', '<div>ASDASD</div>', 'upload-recetas/SR3a7LivKHDatBqWy3oMvxFG4hILyJ9pbU1KiV2s.jpg', 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubi_producto`
--

CREATE TABLE `ubi_producto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ubi_producto`
--

INSERT INTO `ubi_producto` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'SOTANO 5 ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'david alexander perez garcia', 'davidalexd1234@gmail.com', NULL, '$2y$10$8GhYJ6lQbm4b82Zo2X6joedI4NEzFls623GcmT9Hm/gCekGzVPB8W', NULL, '2021-04-27 17:53:01', '2021-04-27 17:53:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area_producto`
--
ALTER TABLE `area_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bien_producto`
--
ALTER TABLE `bien_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria_recetas`
--
ALTER TABLE `categoria_recetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca_producto`
--
ALTER TABLE `marca_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelo_producto`
--
ALTER TABLE `modelo_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_user_id_foreign` (`user_id`),
  ADD KEY `productos_area_id_foreign` (`area_id`),
  ADD KEY `productos_modelo_id_foreign` (`modelo_id`),
  ADD KEY `productos_bien_id_foreign` (`bien_id`),
  ADD KEY `productos_marca_id_foreign` (`marca_id`),
  ADD KEY `productos_ubi_id_foreign` (`ubi_id`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recetas_user_id_foreign` (`user_id`),
  ADD KEY `recetas_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `ubi_producto`
--
ALTER TABLE `ubi_producto`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT de la tabla `area_producto`
--
ALTER TABLE `area_producto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `bien_producto`
--
ALTER TABLE `bien_producto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoria_recetas`
--
ALTER TABLE `categoria_recetas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marca_producto`
--
ALTER TABLE `marca_producto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `modelo_producto`
--
ALTER TABLE `modelo_producto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ubi_producto`
--
ALTER TABLE `ubi_producto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `area_producto` (`id`),
  ADD CONSTRAINT `productos_bien_id_foreign` FOREIGN KEY (`bien_id`) REFERENCES `bien_producto` (`id`),
  ADD CONSTRAINT `productos_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marca_producto` (`id`),
  ADD CONSTRAINT `productos_modelo_id_foreign` FOREIGN KEY (`modelo_id`) REFERENCES `modelo_producto` (`id`),
  ADD CONSTRAINT `productos_ubi_id_foreign` FOREIGN KEY (`ubi_id`) REFERENCES `ubi_producto` (`id`),
  ADD CONSTRAINT `productos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD CONSTRAINT `recetas_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_recetas` (`id`),
  ADD CONSTRAINT `recetas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Base de datos: `citytours`
--
CREATE DATABASE IF NOT EXISTS `citytours` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `citytours`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradors`
--

CREATE TABLE `administradors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletas`
--

CREATE TABLE `boletas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_travel` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `boletas`
--

INSERT INTO `boletas` (`id`, `quantity`, `total`, `subtotal`, `created_at`, `updated_at`, `id_travel`, `id_user`) VALUES
(1, 2, '900.00', '920.00', NULL, NULL, 29, 1),
(2, 1, '500.00', '520.00', NULL, NULL, 15, 1),
(3, 1, '500.00', '520.00', NULL, NULL, 15, 1),
(4, 1, '500.00', '520.00', NULL, NULL, 15, 1),
(5, 1, '500.00', '520.00', NULL, NULL, 15, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `departamento`, `imagen`) VALUES
(1, 'Amazonas', 'amazonas-card.jpg'),
(2, 'Ancash', 'ancash-card.jpg'),
(3, 'Apurimac', 'apurimac-card.jpg'),
(6, 'Cajamarca', 'cajamarca-card.jpg'),
(7, 'Callao', 'CARD-CALLAO.jpg'),
(10, 'Cusco', 'cusco-card.jpg'),
(12, 'Ica', 'ica-card.jpg'),
(13, 'Junin', 'junin-card.jpg'),
(17, 'Loreto', 'loreto-card.jpg'),
(18, 'Madre de Dios', 'madre-de-dios-card.jpg'),
(21, 'Puno', 'puno-card.jpg'),
(22, 'San Martín', 'san-martin-card.jpg'),
(23, 'Tacna', 'tacna-card.jpg'),
(25, 'Ucayali', 'ucayali-card.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares_turisticos`
--

CREATE TABLE `lugares_turisticos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lugar_turistico` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_departamento` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lugares_turisticos`
--

INSERT INTO `lugares_turisticos` (`id`, `lugar_turistico`, `imagen`, `id_departamento`) VALUES
(1, 'Ciudad de Chachapoyas', 'ciudad-chachapoyas_card.jpg', 1),
(2, 'Zona Arqueológica Monumental Kuélap', 'zona-arqueologica-kuelap_card.jpg', 1),
(3, 'Catarata Gocta', 'catarata-gocta_card.jpg', 1),
(4, 'Ciudad de Cajamarca', 'ciudad-cajamarca_card.jpg', 6),
(5, 'Complejo Turistico Baños del Inca', 'complejo-turistico-inca_card.jpg', 6),
(6, 'Ventanillas de Otuzco', 'ventanillas-otuzco_card.jpg', 6),
(7, 'Ciudad de Chincha', 'ciudad-chincha_card.jpg', 12),
(8, 'Zona Arqueológica Tambo Colorado', 'zona-tambo-colorado_card.jpg', 12),
(9, 'Reserva Nacional de Paracas', 'reserva-paracas_card.jpg', 1),
(10, 'La Ciudad de Iquitos', 'ciudad-de-iquitos_card.jpg', 17),
(11, 'Rio Amazonas', 'rio-amazonas_card.jpg', 17),
(12, 'Ciudad de Puno', 'ciudad-puno_card.jpg', 21),
(13, 'Reserva Nacional del Titicaca', 'reserva-titicaca_card.jpg', 21),
(14, 'Islas Flotantes de Uros', 'islas-flotantes-uros_card.jpg', 21),
(15, 'Ciudad de Huaraz', 'ciudad-huaraz_card.jpg', 2),
(16, 'Callejón de Huaylas', 'callejon-huaylas_card.jpg', 2),
(17, 'Parque Nacional del Huascarán', 'parque-huascaran_card.jpg', 2),
(18, 'Ciudad del Callao', 'ciudad-callao_card.jpg', 7),
(19, 'Museo de Sitio Naval Submarino Abtao', 'submarino-abtao_card.jpg', 7),
(20, 'Sistema de Islas, Islotes y Puntas Guaneras', 'sistema-de-islas_card.jpg', 7),
(21, 'Huancayo', 'huancayo_card.jpg', 13),
(22, 'Jauja', 'jauja_card.jpg', 13),
(23, 'Concepción', 'concepcion_card.jpg', 13),
(24, 'Reserva Nacional de Tambopata', 'reserva-tambopata_card.jpg', 18),
(25, 'Reserva Nacional Bahuaja-Sonene', 'parque-nacional-sonene_card.jpg', 18),
(26, 'Ciudad de Puerto Maldonado', 'ciudad-puerto-maldonado_card.jpg', 18),
(27, 'Ciudad de Tarapoto', 'ciudad-de-tarapoto_card.jpg', 22),
(28, 'Distrito el Sauce', 'distrito-el-sauce_card.jpg', 22),
(29, 'Catarata Ahuashiyacu', 'catarata-de-ahuashiyacu_card.jpg', 22),
(30, 'Ciudad de Andahuaylas', 'ciudad-andahuaylas_card.jpg', 3),
(31, 'Laguna de Pacucha y Complejo y Arqueolóogico de Sóndor', 'laguna-pacucha_card.jpg', 3),
(32, 'Bosque de Piedras Pampanchiri', 'bosque-piedras-pampachiri_card.jpg', 3),
(33, 'Ciudad de Cusco', 'ciudad-cusco_card.jpg', 10),
(34, 'Parque Arqueológico de Sacsayhuaman', 'parque-sacsayhuaman_card.jpg', 10),
(35, 'Camino Inca a Machupicchu', 'camino-inca-machupiccchu_card.jpg', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_07_173734_create_administradors_table', 1),
(5, '2021_05_07_173753_create_viajeros_table', 1),
(6, '2021_05_12_030603_departamentos', 1),
(7, '2021_05_12_030613_lugares_turisticos', 1),
(8, '2021_05_12_030619_tours', 1),
(9, '2021_05_12_032745_viajes', 1),
(10, '2021_05_12_032800_boletas', 1),
(11, '2021_05_17_203938_s_p__t_i_c_k_e_t_s', 1),
(12, '2021_05_17_205409_s_p__b_o_l_e_t_a', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_lugar_turistico` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tours`
--

INSERT INTO `tours` (`id`, `tour`, `details`, `imagen`, `id_lugar_turistico`) VALUES
(1, 'Basílica Catedral San Juan Bautista', 'Construida por los españoles al establecerse la ciudad de Chachapoyas en su ubicación actual, aproximadamente en 1546, se la denominó Iglesia Matriz San Juan Bautista. En 1843 es elevada a Catedral y en 1925, el Papa Benedicto XV le otorga el título de Basílica agregándola a la Basílica Vaticana de San Pedro.', 'basilica-san-juan-bautista_mini.jpg', 1),
(2, 'Plaza Mayor de la ciudad de Chachapoyas', 'Parte de su encanto son las casonas coloniales que aún conservan su arquitectura tradicional, como la Municipalidad Provincial de Chachapoyas, la Basílica Catedral San Juan Bautista y la Escuela de Primeras Letras. En la parte central destaca una pileta de bronce que data de mediados del siglo XIX.', 'plaza-mayor-chachapoyas_mini.jpg', 1),
(3, 'Zona Arqueológica Monumental Kuélap', 'Kuélap, ciudadela fortificada que vigila desde lo alto. Legado milenario de la cultura Chachapoyas que se desarrolló del año 500 d. C al 1570 d. C. Sus imponentes murallas, de hasta 20 metros de altura, son el reflejo de una avanzada ingeniería y arquitectura monumental.', 'zona-kuelap_mini.jpg', 1),
(4, 'Zona Arqueológica Monumental Kuélap', 'Kuélap, ciudadela fortificada que vigila desde lo alto. Legado milenario de la cultura Chachapoyas que se desarrolló del año 500 d. C al 1570 d. C. Sus imponentes murallas, de hasta 20 metros de altura, son el reflejo de una avanzada ingeniería y arquitectura monumental.', 'zona-kuelap_mini.jpg', 2),
(5, 'Catarata de Gocta', 'A la distancia, en medio de verdes montañas, el gigante se observa como un extenso velo de novia. Sin embargo, la proximidad revela una impresionante caída de agua que mide 771 metros. Gocta desciende en dos caídas: la primera de 231 metros de alto y la segunda, 540 metros.', 'catarata-gocta-poblado_mini.jpg', 3),
(6, 'Plaza de Armas Cajamarca', 'Históricamente, la Plaza de Armas de Cajamarca es considerada la más importante de Sudamérica. En ese espacio público, el conquistador español Francisco Pizarro capturó al inca Atahualpa.  En la actualidad conserva todavía la forma cuadrada. Destaca en la parte central una hermosa pileta octogonal de piedra del siglo XVII.', 'plaza-cajamarca_desk.jpg', 4),
(7, 'Catedral de Cajamarca', 'Ubicada en el perímetro de la Plaza de Armas, la Catedral o Santa Catalina fue construida a fines del siglo XVII y principios del siglo XVIII. Su fachada con dos torres truncas es una fina y bien lograda muestra del arte barroco, adornada con hermosas columnas salomónicas, hornacinas y arabescos de diferentes formas.', 'catedral-cajamarca_desk.jpg', 4),
(8, 'Complejo Turístico Baños del Inca', 'A 15 minutos de la ciudad de Cajamarca están los Baños del Inca. Los cronistas cuentan que en este lugar el inca Atahualpa recuperaba fuerzas.', 'banos-del-inca_desk.jpg', 5),
(9, 'Ventanillas de Otuzco', 'Es una necrópolis de origen preinca, formada por criptas cavadas en farallones rocosos en forma de pequeñas ventanas.  Estas criptas, de forma rectangular y cuadrada, han sido talladas en roca y estaban protegidas por canaletas para que el agua discurra en épocas de lluvias.', 'otuzco-turistas.jpg', 6),
(10, 'Huaca La Centinela', 'También se le conoce como ‘Ciudadela Chinchaycamac’. Este sitio arqueológico perteneció a la cultura Chincha (1200 d. C. - 1450 d. C.), quienes lo habrían construido antes de ser conquistados por el imperio incaico. Luego, los incas modificaron su estructura original incorporando algunos elementos propios. Fue un importante centro político administrativo de la época.', 'Iglesia-de-El-Carmen-en-Chincha-Ica.jpg', 7),
(11, 'Distrito de El Carmen', 'El Carmen se formó a raíz de la llegada de los esclavos africanos para cumplir con las labores agrícolas en la costa peruana, durante los siglos XVII y XVIII, en las haciendas San José y San Regis.', 'distrito-carmen-chincha_desk.jpg', 7),
(12, 'Zona Arqueológica Tambo Colorado', 'Centro urbano inca construido durante la época de Pachacútec como albergue para soldados y altas autoridades.', 'zona-tambo-colorado_desk.jpg', 8),
(13, 'Reserva Nacional de Paracas', 'Impresionante ecosistema costero de 335 hectáreas de extensión. Comprende desiertos, playas, islas, acantilados y litoral. Este hábitat protege a pelicanos, flamencos, pingüinos, delfines, lobos marinos e infinidad de peces y crustáceos.', 'ica-reserva-paracas_desk.jpg', 1),
(14, 'Plaza de Armas y Catedral de Iquitos', 'La iglesia matriz de Iquitos es de estilo neogótico, su construcción empezó en 1911 y se inauguró el 16 de marzo de 1919. En la parte superior de la torre está incrustada una cruz metálica.', 'plaza-catedral-iquitos_mini.jpg', 10),
(15, 'Casa de Fierro', 'La Casa de Fierro fue diseñada por Gustave Eiffel. Es uno de los edificios emblemáticos que tiene la ciudad de Iquitos.', 'casa-de-fierro_mini.jpg', 10),
(16, 'Río Amazonas', 'El río Amazonas, considerado el más largo y caudaloso del mundo, nace en las cumbres nevadas de la provincia de Caylloma, en el departamento de Arequipa y atraviesa extensas selvas tropicales en un recorrido de aproximadamente 7062 km.', 'loreto-rio-amazonas_min.jpg', 11),
(17, 'Reserva Nacional Pacaya Samiria', 'Dentro del territorio de la reserva podremos divisar una gran diversidad de especies de flora y fauna que conviven en un frágil equilibrio, así como la belleza escénica del bosque tropical húmedo, que merece nuestro cuidado y respeto.', 'loreto-reserva-pacaya-samiria_min.jpg', 11),
(18, 'Basílica Menor de la Catedral de Puno', 'Destaca por su estilo barroco mestizo, la fachada principal presenta relieves labrados en granito con motivos andinos. La basílica cuenta con el Cristo de la Bala, único en el Perú.', 'catedral-de-puno_desk.jpg', 12),
(19, 'Templo San Juan - Santuario Virgen de la Candelaria', 'En el interior, se encuentra la venerada imagen de la Virgen María de la Candelaria, patrona de Puno. Su festividad se celebra el 2 de febrero.', 'iglesia-virgen-candelaria_desk.jpg', 12),
(20, 'Reserva Nacional del Titicaca', 'Área protegida que preserva los recursos naturales propios del ecosistema del lago Titicaca. Tiene un área de 36 180 ha. Se registraron alrededor de 105 especies de aves, destacando el zambullidor del Titicaca (Rollandáa microptera) o keñola, especie endémica y protegida por la legislación nacional.', 'puno-reserva-titicaca-flora_desk.jpg', 12),
(21, 'Reserva Nacional del Titicaca', 'Área protegida que preserva los recursos naturales propios del ecosistema del lago Titicaca. Tiene un área de 36 180 ha. Se registraron alrededor de 105 especies de aves, destacando el zambullidor del Titicaca (Rollandáa microptera) o keñola, especie endémica y protegida por la legislación nacional.', 'puno-reserva-titicaca-flora_desk.jpg', 13),
(22, 'Islas flotantes de los Uros', 'Están construidas con totora gracias a un paciente, diestro e interminable entretejido. Esta tradición milenaria se renueva cada dos meses para evitar la desintegración de las islas artificiales.', 'isla-uros-pobladores_desk.jpg', 1),
(23, 'Museo Arqueológico de Áncash', 'En el lugar se expone una importante colección de esculturas de piedra de la cultura Recuay, así como piezas de cerámica y textiles de las culturas preíncas Chavín, Huaraz, Mochica, Wari y Chimú.', 'museo-ancash-culturas_mini.jpg', 15),
(24, 'Santuario del Señor de la Soledad', 'Construido después del terremoto de 1970, está ubicado en la Plazuela de la Soledad. El templo guarda la imagen del Señor de la Soledad, patrono de la ciudad de Huaraz.', 'santuario-soledad-fachada_desk.jpg', 15),
(25, 'Callejón de Huaylas', 'Destino ideal para la práctica del andinismo, deportes de montaña, excursiones y observadores de la biodiversidad andina.', 'callejon-huaylas_desk.jpg', 16),
(26, 'Recuay', 'Pueblo tradicional que mantiene la arquitectura andina.', 'recuay_desk.jpg', 16),
(27, 'Laguna Churup', 'Ubicada a 18 km al este de Huaraz (1 hora 30 min en auto). Las aguas de Churup poseen un color azulado, está rodeada de quenuales, quisuares e ichu.', 'laguna-churup_desk.jpg', 17),
(28, 'Lagunas de Llanganuco', 'Se ubican a 25 km al noreste de Yungay (45 min en auto). Las lagunas se encuentran dentro del Parque Nacional Huascarán y nacen del deshielo de los nevados Huascarán, Huandoy, Pisco, Yanapaccha y Chopicalqui.', 'lagunas-llanganuco_desk.jpg', 17),
(29, 'Plaza de Armas de la Ciudad de Cusco', 'En tiempos de los incas fue llamada Haukaypata, palabra quechua que significa “Lugar del guerrero”.', 'plaza-cusco_desk.jpg', 33),
(30, 'Catedral de la Ciudad de Cusco', 'Su edificación tuvo dos etapas: primero se construyó la Capilla del Triunfo sobre lo que fue el antiguo templo de Suntur Wasi (Casa de Dios).', 'cusco-catedral-de-cusco_desk.jpg', 1),
(31, 'Catedral de la Ciudad de Cusco', 'Su edificación tuvo dos etapas: primero se construyó la Capilla del Triunfo sobre lo que fue el antiguo templo de Suntur Wasi (Casa de Dios).', 'cusco-catedral-de-cusco_desk.jpg', 33),
(32, 'Complejo Arqueológico de Sacsayhuaman', 'El complejo abarca 33 sitios arqueológicos. El más conocido es Saqsayhuaman, se presume que su construcción fue de carácter religioso.', 'complejo-sacsayhuaman_desk.jpg', 34),
(33, 'Complejo Arqueológico de Qenko', 'Qenko o Laberinto es considerado un lugar sagrado. Se presume que se oficiaban ceremonias en honor al Sol, la Luna y las estrellas.', 'complejo-qenko-monolito_desk.jpg', 34),
(34, 'Camino Inca a Machu Picchu', 'Esta increíble ruta forma parte de la red del Qhapaq Ñan. Por eso, recorrer el Camino Inca es observar las estaciones del año en pocos días: de un frio moderado a uno extremo, de una temperatura templada a un calor intenso.', 'camino-inca-cusco_desk.jpg', 35),
(35, 'Plaza de armas y templo de San Pedro', 'Andahuaylas, cuna de la cultura Chanka, es conocida como la “Pradera de los celajes”.', 'plaza-templo-san-pedro_desk.jpg', 30),
(36, 'Puente Colonial El Chumbao', 'La base del puente fue construida con piedra de sillar en 1776, en tiempos del Virrey Amat.', 'puente-el-chumbao_desk.jpg', 30),
(37, 'Laguna de Pacucha', 'La laguna Pacucha es hábitat del pejerrey y también se crían truchas.', 'laguna-de-pacucha_desk.jpg', 31),
(38, 'Complejo arqueológico de Sóndor', 'Estas construcciones pertenecieron originalmente a la cultura Chanka (1100-1400 d. C.), pero fueron posteriormente ocupadas por los incas (1400-1532).', 'complejo-sondor_desk.jpg', 31),
(39, 'Bosque de Piedras de Pampachiri', 'Recorrer la formación de rocas labradas por el tiempo es toda una aventura. Estos bosques líticos tienen formas piramidales, con alturas de 6 a 8 metros.', 'piedras-de-pampachiri_desk.jpg', 32),
(40, 'Fortaleza del Real Felipe', 'Es una de las fortalezas más importantes de América. Se construyó en 1747 y cumplió un papel relevante en la colonia al proteger a la capital de los ataques de piratas y corsarios.', 'fortaleza-real-felipe_desk.jpg', 18),
(41, 'Museo Naval Elías Murguía', 'Contiene una importante colección de óleos, fotografías, joyas, instrumentos de navegación y armas de la historia marítima del Perú.', 'museo-naval-murguia_desk.jpg', 18),
(42, 'Iglesia Catedral', 'La Iglesia Matriz o Catedral del Callao es de estilo neoclásico, simétrico y elegante. Tiene una nave y está dedicada a San Judas Tadeo y San Simón, El Zelote que, según la tradición, cuidan la bahía del Callao desde tiempos inmemorables.', 'iglesia-catedral-callao_desk.jpg', 18),
(43, 'Museo de Sitio Naval Submarino Abtao', 'Gracias a este museo podrá sentirse submarinista por un día y así descubrir cómo la tripulación de la Marina de Guerra del Perú podía permanecer en su interior entre treinta y cuarenta días.', 'museo-sitio-naval_desk.jpg', 19),
(44, 'Islas Palomino', 'Nadar con lobos marinos en su hábitat natural es una experiencia única. Las Islas Palomino se dividen en dos', 'islas-palomino_desk.jpg', 20),
(45, 'Isla San Lorenzo', 'La más grande y alta del Perú. Tiene 8 km de largo por 2,2 km de ancho. Antiguamente fue considerada una divinidad femenina por los nativos de la zona.', 'isla-san-lorenzo_desk.jpg', 20),
(46, 'Plaza de la Constitución', 'Huancayo es la ciudad más grande de la sierra central del Perú y se ubica en el hermoso valle del Mantaro.', 'plaza-huancayo_desk.jpg', 21),
(47, 'Catedral de Huancayo', 'Este templo de estilo barroco neoclásico fue elevado al rango de Catedral en 1955. En su interior se conservan pinturas de la Escuela Cusqueña.', 'catedral-huancayo_desk.jpg', 21),
(48, 'Parque de la Identidad Huanca', 'Presenta extensas áreas verdes, trabajos hechos en canto rodado, mármol, piedra espuma, laja y cuarzo.', 'parque-identidad-huanca_desk.jpg', 21),
(49, 'Laguna de Paca', 'La forma de esta laguna parece la figura de un hombre acostado, por eso los pobladores la llaman el “Indio dormido”', 'laguna-paca-botes_desk.jpg', 22),
(50, 'Iglesia Matriz Santa Fe de Jauja', 'Su altar mayor está bellamente tallado al estilo churrigueresco y dedicado a la Virgen del Rosario. Se celebra su fiesta patronal el primer domingo de octubre.', 'iglesia-jauja_desk.jpg', 22),
(51, 'Iglesia Matriz Purísima Inmaculada Concepción', 'Construida en1540, esta es una iglesia de estilo neoclásico con torres de piedras labradas. En el altar mayor está la efigie de la Virgen Inmaculada Concepción, patrona de la ciudad.', 'iglesia-inmaculada-concepcion_desk.jpg', 23),
(52, 'Plaza de Armas de Concepción', 'Fue escenario de hechos heroicos en la Campaña de la Breña, el 9 y 10 de julio de 1882. La plaza tiene bellos jardines, cubiertos de hermosas flores y plantas exóticas.', 'plaza-de-concepcion_desk.jpg', 23),
(53, 'Lago Sandoval', 'Tiene alrededor de 3 km de longitud, 1 km de ancho y una profundidad de hasta 3 m. Sus aguas tienen una temperatura promedio de 26 ºC y poseen una gran riqueza ictiológica.', 'lago-sandoval_desk.jpg', 24),
(54, 'Lago Sachavacayoc', 'El lago Sachavacayoc es uno de los más hermosos y bellos de la selva peruana. La coloración de sus aguas es clara y tiene una profundidad aproximada de tres metros.', 'lago-sachavacayoc_desk.jpg', 24),
(55, 'Collpa de Guacamayos Chuncho', 'Collpa de Guacamayos Chuncho Conocida porque sus paisajes son fotos de postales. Todos los días, a las 5 a.m., se puede apreciar la llegada de las aves en bandadas desde el río Tambopata en busca de alimento.', 'collpa-guacamayos_desk.jpg', 24),
(56, 'Parque Nacional Bahuaja-Sonene', 'Se estableció para proteger la única sabana húmeda tropical que existe en el Perú. El Parque Nacional Bahuaja Sonene (PNBS) es un mosaico de hábitats que alberga una gran diversidad de flora y fauna.', 'madre-de-dios-parque-bahuaja-sonene-bosque_desk.jpg', 25),
(57, 'Mirador de la Biodiversidad', 'Tiene la forma de un árbol de castaña, especie oriunda de la región Madre de Dios. Desde la cima de este mirador se puede observar un hermoso paisaje: el infinito verde de la naturaleza y toda la ciudad de Puerto Maldonado.', 'mirador-biodiversidad-ciudad_desk.jpg', 26),
(58, 'Serpentario Tropifauna', 'En el lugar se crían las serpientes loro machaco, chicotillo, anaconda, boa esmeralda, shushupe. Asimismo se encuentran anfibios como ranas y sapos.', 'serpentario-tropifauna-turista_desk.jpg', 26),
(59, 'Ciudad de Tarapoto', 'Debe su nombre a la especie llamada Tarapotus, palmera que creció antiguamente en las orillas de lo que fue la laguna Suchiche, lugar de asentamiento de poblaciones nativas y punto de referencia importante en su historia.', 'san-martin-ciudad-tarapoto_desk.jpg', 27),
(60, 'Catarata de Ahuashiyacu', 'A 15 km al noroeste de la ciudad de Tarapoto (20 minutos en auto y 15 minutos a pie). Una ruta de trekking de alrededor de 15 minutos por el Área de Conservación Regional Cordillera Escalera, en medio de la flora y fauna de selva alta.', 'san-martin-catarata-ahuashiyacu_desk.jpg', 27),
(61, 'Laguna de Sauce', 'El Lago Sauce, llamado también Laguna Azul, es un bello espejo de agua de 350 hectáreas. Actualmente es el destino turístico más visitado de San Martín.', 'laguna-de-sauce_desk.jpg', 28),
(62, 'Lago Lindo', 'Área privada de reserva ecoturística que se encuentra en el extremo sur de la Laguna Azul. Está conformada por dos pequeñas lagunas: Sunicocha y Limón Cocha.', 'lago-lindo_desk.jpg', 28),
(63, 'Catarata Ahuashiyacu', 'Su nombre proviene de los vocablos quechuas Ahuashi, que significa canta; y Yacu, que es agua. La traducción sería Agua cantarina o Agua que se ríe.', 'sm-catarata-ahuashiyacu_desk.jpg', 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `email_verified_at`, `phone_number`, `address`, `dni`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$/laEXcXwStOwS.jEyTlHIucPCmGkZICSipYIEk.FlSy8gSP9ZeCeS', 'david', 'perez', 'koko@gmail.com', NULL, '123123123', 'pamplona alta', '92345678', 1, NULL, NULL, '2021-05-18 10:20:53'),
(2, 'juancho', '$2y$10$fS6I.rH4Xbhd/f9O9kMiEuJMJKwjZsZO3zJdUr3GVt61Bopg0JDNS', 'perez', 'torres', 'davidalexd1234@gmail.com', NULL, '945555555', 'mz h lote venezuela', '79546213', 0, NULL, '2021-05-19 05:47:25', '2021-05-19 05:47:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajeros`
--

CREATE TABLE `viajeros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` time NOT NULL DEFAULT '00:00:00',
  `date` date NOT NULL,
  `tickets` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_lugar` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`id`, `time`, `date`, `tickets`, `price`, `discount`, `created_at`, `updated_at`, `id_lugar`) VALUES
(1, '12:30:00', '2021-01-10', 60, '120.00', '20.00', NULL, NULL, 1),
(2, '13:30:00', '2021-01-15', 70, '200.00', '50.00', NULL, NULL, 2),
(3, '14:30:00', '2021-01-20', 80, '500.00', '10.00', NULL, NULL, 3),
(4, '15:30:00', '2021-01-25', 80, '600.00', '25.00', NULL, NULL, 4),
(5, '16:30:00', '2021-02-10', 60, '350.00', '60.00', NULL, NULL, 5),
(6, '17:30:00', '2021-02-15', 70, '250.00', '30.00', NULL, NULL, 6),
(7, '18:30:00', '2021-02-20', 50, '300.00', '20.00', NULL, NULL, 7),
(8, '19:30:00', '2021-02-25', 60, '450.00', '14.00', NULL, NULL, 8),
(9, '20:30:00', '2021-03-10', 70, '600.00', '20.00', NULL, NULL, 9),
(10, '21:30:00', '2021-03-15', 80, '800.00', '25.00', NULL, NULL, 10),
(11, '22:30:00', '2021-03-20', 35, '600.00', '30.00', NULL, NULL, 11),
(12, '23:30:00', '2021-03-25', 25, '350.00', '12.00', NULL, NULL, 12),
(13, '12:30:00', '2021-04-10', 40, '600.00', '10.00', NULL, NULL, 13),
(14, '13:30:00', '2021-04-15', 45, '675.00', '30.00', NULL, NULL, 14),
(15, '14:30:00', '2021-04-20', 46, '500.00', '20.00', NULL, NULL, 15),
(16, '15:30:00', '2021-04-25', 60, '400.00', '15.00', NULL, NULL, 16),
(17, '16:30:00', '2021-05-10', 75, '300.00', '10.00', NULL, NULL, 17),
(18, '17:30:00', '2021-05-15', 65, '200.00', '5.00', NULL, NULL, 18),
(19, '18:30:00', '2021-05-20', 60, '150.00', '6.00', NULL, NULL, 19),
(20, '19:30:00', '2021-05-25', 75, '350.00', '10.00', NULL, NULL, 20),
(21, '20:30:00', '2021-06-10', 80, '640.00', '25.00', NULL, NULL, 21),
(22, '21:30:00', '2021-06-15', 90, '750.00', '30.00', NULL, NULL, 22),
(23, '22:30:00', '2021-06-20', 35, '840.00', '24.00', NULL, NULL, 23),
(24, '23:30:00', '2021-06-25', 50, '700.00', '20.00', NULL, NULL, 24),
(25, '09:30:00', '2021-07-10', 25, '400.00', '30.00', NULL, NULL, 25),
(26, '10:30:00', '2021-07-15', 60, '340.00', '60.00', NULL, NULL, 26),
(27, '11:30:00', '2021-07-20', 70, '200.00', '10.00', NULL, NULL, 27),
(28, '12:30:00', '2021-07-25', 80, '600.00', '15.00', NULL, NULL, 29),
(29, '13:30:00', '2021-08-10', 58, '450.00', '20.00', NULL, NULL, 30),
(30, '14:30:00', '2021-09-15', 50, '200.00', '10.00', NULL, NULL, 31),
(31, '15:30:00', '2021-09-20', 60, '230.00', '20.00', NULL, NULL, 32),
(32, '16:30:00', '2021-09-25', 70, '150.00', '30.00', NULL, NULL, 33),
(33, '17:30:00', '2021-10-10', 80, '620.00', '15.00', NULL, NULL, 34),
(34, '18:30:00', '2021-10-15', 90, '200.00', '10.00', NULL, NULL, 35),
(35, '12:30:00', '2021-01-09', 30, '120.00', '20.00', NULL, NULL, 1),
(36, '13:30:00', '2021-01-14', 35, '200.00', '50.00', NULL, NULL, 2),
(37, '14:30:00', '2021-01-19', 40, '450.00', '10.00', NULL, NULL, 3),
(38, '15:30:00', '2021-01-24', 40, '550.00', '25.00', NULL, NULL, 4),
(39, '16:30:00', '2021-02-09', 30, '400.00', '60.00', NULL, NULL, 5),
(40, '17:30:00', '2021-02-14', 35, '200.00', '30.00', NULL, NULL, 6),
(41, '18:30:00', '2021-02-19', 20, '350.00', '20.00', NULL, NULL, 7),
(42, '19:30:00', '2021-02-24', 30, '400.00', '14.00', NULL, NULL, 8),
(43, '20:30:00', '2021-03-09', 35, '300.00', '20.00', NULL, NULL, 9),
(44, '21:30:00', '2021-03-08', 40, '500.00', '25.00', NULL, NULL, 10),
(45, '22:30:00', '2021-03-19', 30, '300.00', '30.00', NULL, NULL, 11),
(46, '23:30:00', '2021-03-24', 20, '300.00', '12.00', NULL, NULL, 12),
(47, '12:30:00', '2021-04-09', 20, '550.00', '10.00', NULL, NULL, 13),
(48, '13:30:00', '2021-04-14', 40, '605.00', '30.00', NULL, NULL, 14),
(49, '14:30:00', '2021-04-19', 25, '200.00', '20.00', NULL, NULL, 15),
(50, '15:30:00', '2021-04-24', 30, '300.00', '15.00', NULL, NULL, 16),
(51, '16:30:00', '2021-05-09', 70, '200.00', '10.00', NULL, NULL, 17),
(52, '17:30:00', '2021-05-14', 60, '150.00', '5.00', NULL, NULL, 18),
(53, '18:30:00', '2021-05-19', 62, '100.00', '6.00', NULL, NULL, 19),
(54, '19:30:00', '2021-05-24', 60, '500.00', '10.00', NULL, NULL, 20),
(55, '20:30:00', '2021-06-09', 50, '600.00', '25.00', NULL, NULL, 21),
(56, '21:30:00', '2021-06-14', 40, '700.00', '30.00', NULL, NULL, 22),
(57, '22:30:00', '2021-06-19', 25, '600.00', '24.00', NULL, NULL, 23),
(58, '23:30:00', '2021-06-24', 10, '750.00', '20.00', NULL, NULL, 24),
(59, '09:30:00', '2021-07-09', 24, '350.00', '30.00', NULL, NULL, 25),
(60, '10:30:00', '2021-07-14', 30, '300.00', '60.00', NULL, NULL, 26),
(61, '11:30:00', '2021-07-19', 50, '250.00', '10.00', NULL, NULL, 27),
(62, '12:30:00', '2021-07-24', 60, '350.00', '15.00', NULL, NULL, 29),
(63, '13:30:00', '2021-08-09', 30, '400.00', '20.00', NULL, NULL, 30),
(64, '14:30:00', '2021-09-14', 25, '250.00', '10.00', NULL, NULL, 31),
(65, '15:30:00', '2021-09-19', 30, '200.00', '20.00', NULL, NULL, 32),
(66, '16:30:00', '2021-09-24', 60, '100.00', '30.00', NULL, NULL, 33),
(67, '17:30:00', '2021-10-09', 40, '320.00', '15.00', NULL, NULL, 34),
(68, '18:30:00', '2021-10-14', 45, '250.00', '10.00', NULL, NULL, 35);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradors`
--
ALTER TABLE `administradors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `administradors_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `boletas`
--
ALTER TABLE `boletas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boletas_id_travel_foreign` (`id_travel`),
  ADD KEY `boletas_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `lugares_turisticos`
--
ALTER TABLE `lugares_turisticos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lugares_turisticos_id_departamento_foreign` (`id_departamento`);

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
-- Indices de la tabla `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tours_id_lugar_turistico_foreign` (`id_lugar_turistico`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `viajeros`
--
ALTER TABLE `viajeros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `viajeros_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `viajes_id_lugar_foreign` (`id_lugar`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradors`
--
ALTER TABLE `administradors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `boletas`
--
ALTER TABLE `boletas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lugares_turisticos`
--
ALTER TABLE `lugares_turisticos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `viajeros`
--
ALTER TABLE `viajeros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `viajes`
--
ALTER TABLE `viajes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administradors`
--
ALTER TABLE `administradors`
  ADD CONSTRAINT `administradors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `boletas`
--
ALTER TABLE `boletas`
  ADD CONSTRAINT `boletas_id_travel_foreign` FOREIGN KEY (`id_travel`) REFERENCES `viajes` (`id`),
  ADD CONSTRAINT `boletas_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `lugares_turisticos`
--
ALTER TABLE `lugares_turisticos`
  ADD CONSTRAINT `lugares_turisticos_id_departamento_foreign` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id`);

--
-- Filtros para la tabla `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_id_lugar_turistico_foreign` FOREIGN KEY (`id_lugar_turistico`) REFERENCES `lugares_turisticos` (`id`);

--
-- Filtros para la tabla `viajeros`
--
ALTER TABLE `viajeros`
  ADD CONSTRAINT `viajeros_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD CONSTRAINT `viajes_id_lugar_foreign` FOREIGN KEY (`id_lugar`) REFERENCES `lugares_turisticos` (`id`);
--
-- Base de datos: `delibakery`
--
CREATE DATABASE IF NOT EXISTS `delibakery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `delibakery`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(20) NOT NULL,
  `desc_category` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `id_chat` int(11) NOT NULL,
  `chat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dish`
--

CREATE TABLE `dish` (
  `id_dish` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name_dish` varchar(20) NOT NULL,
  `price_dish` decimal(19,3) DEFAULT NULL,
  `available_dish` bit(1) NOT NULL,
  `desc_dish` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `id_message` int(11) NOT NULL,
  `id_chat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `state` bit(1) NOT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_detail`
--

CREATE TABLE `order_detail` (
  `id_order_detail` int(11) NOT NULL,
  `id_dish` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_user`
--

CREATE TABLE `order_user` (
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_order` varchar(10) NOT NULL,
  `desc_order` text DEFAULT NULL,
  `total_order_price` decimal(19,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participants`
--

CREATE TABLE `participants` (
  `id_participants` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_chat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `id_payment` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_payment_method` int(11) NOT NULL,
  `status_payment` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_method`
--

CREATE TABLE `payment_method` (
  `id_payment_method` int(11) NOT NULL,
  `name_payment_method` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id_role` int(11) NOT NULL,
  `name_role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `name_user` varchar(100) NOT NULL,
  `profile_picture` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `password_user` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id_chat`);

--
-- Indices de la tabla `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id_dish`),
  ADD KEY `fk_idcategory` (`id_category`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `fk_idchatm` (`id_chat`),
  ADD KEY `fk_iduserm` (`id_user`),
  ADD KEY `fk_idorderm` (`id_order`);

--
-- Indices de la tabla `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_order_detail`),
  ADD KEY `fk_iddish` (`id_dish`),
  ADD KEY `fk_idorder` (`id_order`);

--
-- Indices de la tabla `order_user`
--
ALTER TABLE `order_user`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `fk_idusero` (`id_user`);

--
-- Indices de la tabla `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id_participants`),
  ADD KEY `fk_iduser` (`id_user`),
  ADD KEY `fk_idchat` (`id_chat`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_payment`),
  ADD KEY `fk_idorderp` (`id_order`),
  ADD KEY `fk_idpaymentmethod` (`id_payment_method`);

--
-- Indices de la tabla `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id_payment_method`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id_role`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `fk_idrol` (`id_role`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dish`
--
ALTER TABLE `dish`
  MODIFY `id_dish` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_order_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_user`
--
ALTER TABLE `order_user`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `participants`
--
ALTER TABLE `participants`
  MODIFY `id_participants` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id_payment_method` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dish`
--
ALTER TABLE `dish`
  ADD CONSTRAINT `fk_idcategory` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);

--
-- Filtros para la tabla `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_idchatm` FOREIGN KEY (`id_chat`) REFERENCES `chat` (`id_chat`),
  ADD CONSTRAINT `fk_idorderm` FOREIGN KEY (`id_order`) REFERENCES `order_user` (`id_order`),
  ADD CONSTRAINT `fk_iduserm` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Filtros para la tabla `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `fk_iddish` FOREIGN KEY (`id_dish`) REFERENCES `dish` (`id_dish`),
  ADD CONSTRAINT `fk_idorder` FOREIGN KEY (`id_order`) REFERENCES `order_user` (`id_order`);

--
-- Filtros para la tabla `order_user`
--
ALTER TABLE `order_user`
  ADD CONSTRAINT `fk_idusero` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Filtros para la tabla `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `fk_idchat` FOREIGN KEY (`id_chat`) REFERENCES `chat` (`id_chat`),
  ADD CONSTRAINT `fk_iduser` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Filtros para la tabla `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_idorderp` FOREIGN KEY (`id_order`) REFERENCES `order_user` (`id_order`),
  ADD CONSTRAINT `fk_idpaymentmethod` FOREIGN KEY (`id_payment_method`) REFERENCES `payment_method` (`id_payment_method`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_idrol` FOREIGN KEY (`id_role`) REFERENCES `role_user` (`id_role`);
--
-- Base de datos: `ias`
--
CREATE DATABASE IF NOT EXISTS `ias` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ias`;
--
-- Base de datos: `new_schema`
--
CREATE DATABASE IF NOT EXISTS `new_schema` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `new_schema`;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Volcado de datos para la tabla `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'AREKU', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"administradors\",\"boletas\",\"departamentos\",\"failed_jobs\",\"lugares_turisticos\",\"migrations\",\"password_resets\",\"tours\",\"users\",\"viajeros\",\"viajes\"],\"table_structure[]\":[\"administradors\",\"boletas\",\"departamentos\",\"failed_jobs\",\"lugares_turisticos\",\"migrations\",\"password_resets\",\"tours\",\"users\",\"viajeros\",\"viajes\"],\"table_data[]\":[\"administradors\",\"boletas\",\"departamentos\",\"failed_jobs\",\"lugares_turisticos\",\"migrations\",\"password_resets\",\"tours\",\"users\",\"viajeros\",\"viajes\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estructura de la tabla @TABLE@\",\"latex_structure_continued_caption\":\"Estructura de la tabla @TABLE@ (continúa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Contenido de la tabla @TABLE@\",\"latex_data_continued_caption\":\"Contenido de la tabla @TABLE@ (continúa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bdanime\",\"table\":\"animes\"},{\"db\":\"citytours\",\"table\":\"viajeros\"},{\"db\":\"citytours\",\"table\":\"departamentos\"},{\"db\":\"citytours\",\"table\":\"boletas\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-08-20 06:16:54', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
