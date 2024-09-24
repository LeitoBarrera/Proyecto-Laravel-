-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2024 a las 22:20:44
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
-- Base de datos: `nomigo`
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
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id_cargo` bigint(20) UNSIGNED NOT NULL,
  `nombre_cargo` varchar(255) NOT NULL,
  `id_nivel_riesgo` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deducciones`
--

CREATE TABLE `deducciones` (
  `id_deduccion` bigint(20) UNSIGNED NOT NULL,
  `descrip_deduccion` varchar(255) NOT NULL,
  `nro_documento` varchar(255) NOT NULL,
  `porcentaje_deduccion` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `deducciones`
--

INSERT INTO `deducciones` (`id_deduccion`, `descrip_deduccion`, `nro_documento`, `porcentaje_deduccion`, `created_at`, `updated_at`) VALUES
(1, 'Descuento de EPS', '100281923', 0.11, '2024-09-19 09:04:48', '2024-09-19 09:04:48'),
(2, 'Pruebaa siempre', '100002020', 1.20, '2024-09-24 23:54:30', '2024-09-24 23:54:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` bigint(20) UNSIGNED NOT NULL,
  `nro_documento` varchar(255) NOT NULL,
  `tipo_documento` varchar(255) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `estado_sistema` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `id_rol` bigint(20) UNSIGNED NOT NULL,
  `estado_civil` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `nit` varchar(255) NOT NULL,
  `id_empleado` bigint(20) UNSIGNED NOT NULL,
  `razon_social` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `estado_sistema` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2024_08_11_222029_create_roles_table', 1),
(5, '2024_08_11_222116_create_empleados_table', 1),
(6, '2024_08_11_222152_create_nivel_riesgos_table', 1),
(7, '2024_08_11_222248_create_tipo_vinculaciones_table', 1),
(8, '2024_08_11_222334_create_cargos_table', 1),
(9, '2024_08_11_222405_create_deducciones_table', 1),
(10, '2024_08_11_222457_create_tipo_nivel_riesgos_table', 1),
(11, '2024_08_11_222527_create_seguridad_socials_table', 1),
(12, '2024_08_11_222613_create_tipo_seguridad_socials_table', 1),
(13, '2024_08_11_222650_create_empresas_table', 1),
(14, '2024_08_11_222713_create_vinculaciones_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_riesgos`
--

CREATE TABLE `nivel_riesgos` (
  `id_nivel_riesgo` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` bigint(20) UNSIGNED NOT NULL,
  `descp_rol` varchar(255) NOT NULL,
  `permisos` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `descp_rol`, `permisos`, `created_at`, `updated_at`) VALUES
(2, 'Administrador Prueba', 'Prueba de guardar datos', '2024-08-13 01:36:12', '2024-08-13 01:36:12'),
(3, 'Operador', 'Prueba Operador', '2024-08-13 08:25:05', '2024-08-13 08:25:05'),
(4, 'Empresario', 'Consultar', '2024-09-19 05:53:05', '2024-09-19 05:53:05'),
(5, 'Jefe', 'Mandar', '2024-09-19 06:00:20', '2024-09-19 06:00:20'),
(6, 'Prueba inserción', 'Administrador', '2024-09-25 01:00:37', '2024-09-25 01:00:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad_socials`
--

CREATE TABLE `seguridad_socials` (
  `id_seguridad_social` bigint(20) UNSIGNED NOT NULL,
  `descp_deduccion` varchar(255) NOT NULL,
  `nro_documento` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seguridad_socials`
--

INSERT INTO `seguridad_socials` (`id_seguridad_social`, `descp_deduccion`, `nro_documento`, `created_at`, `updated_at`) VALUES
(1, 'Deduccion por salud', '1017002891', '2024-09-19 07:57:33', '2024-09-19 07:57:33'),
(2, 'Deduccion por salud', '1017002891', '2024-09-19 07:58:05', '2024-09-19 07:58:05'),
(3, 'Deduccion por salud', '1000000', '2024-09-19 07:58:12', '2024-09-19 07:58:12');

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
('xLLEoMtTS1ef2JziuoCZkKfn9I4UzNoCgr9sal6t', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36 Edg/129.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibm4yRDFJRnpMbXd5NmR2ZXZUd3FyRzRNSkNjOWZ0U21BU1JjUFlTZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZWR1Y2Npb25lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727209115);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_nivel_riesgos`
--

CREATE TABLE `tipo_nivel_riesgos` (
  `id_tipo_nivel_riesgo` bigint(20) UNSIGNED NOT NULL,
  `descp_tipo_nivel_riesgo` varchar(255) NOT NULL,
  `porcentaje_desc` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_nivel_riesgos`
--

INSERT INTO `tipo_nivel_riesgos` (`id_tipo_nivel_riesgo`, `descp_tipo_nivel_riesgo`, `porcentaje_desc`, `created_at`, `updated_at`) VALUES
(1, 'Riesgo Grave', 4.00, '2024-09-19 07:44:12', '2024-09-19 07:44:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_seguridad_socials`
--

CREATE TABLE `tipo_seguridad_socials` (
  `id_tipo_seguridad_social` bigint(20) UNSIGNED NOT NULL,
  `descp_tipo_seguridad_social` varchar(255) NOT NULL,
  `porcentaje_deduccion` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vinculaciones`
--

CREATE TABLE `tipo_vinculaciones` (
  `id_tipo_vinculacion` bigint(20) UNSIGNED NOT NULL,
  `descp_tipo_vinculacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vinculaciones`
--

CREATE TABLE `vinculaciones` (
  `id_vinculacion` bigint(20) UNSIGNED NOT NULL,
  `nro_documento` varchar(255) NOT NULL,
  `id_cargo` bigint(20) UNSIGNED NOT NULL,
  `fecha_vinculacion` date NOT NULL,
  `id_tipo_vinculacion` bigint(20) UNSIGNED NOT NULL,
  `id_empleado` bigint(20) UNSIGNED NOT NULL,
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
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id_cargo`),
  ADD KEY `cargos_id_nivel_riesgo_foreign` (`id_nivel_riesgo`);

--
-- Indices de la tabla `deducciones`
--
ALTER TABLE `deducciones`
  ADD PRIMARY KEY (`id_deduccion`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`),
  ADD UNIQUE KEY `empleados_correo_unique` (`correo`),
  ADD KEY `empleados_id_rol_foreign` (`id_rol`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`nit`),
  ADD UNIQUE KEY `empresas_correo_unique` (`correo`),
  ADD KEY `empresas_id_empleado_foreign` (`id_empleado`);

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
-- Indices de la tabla `nivel_riesgos`
--
ALTER TABLE `nivel_riesgos`
  ADD PRIMARY KEY (`id_nivel_riesgo`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `seguridad_socials`
--
ALTER TABLE `seguridad_socials`
  ADD PRIMARY KEY (`id_seguridad_social`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tipo_nivel_riesgos`
--
ALTER TABLE `tipo_nivel_riesgos`
  ADD PRIMARY KEY (`id_tipo_nivel_riesgo`);

--
-- Indices de la tabla `tipo_seguridad_socials`
--
ALTER TABLE `tipo_seguridad_socials`
  ADD PRIMARY KEY (`id_tipo_seguridad_social`);

--
-- Indices de la tabla `tipo_vinculaciones`
--
ALTER TABLE `tipo_vinculaciones`
  ADD PRIMARY KEY (`id_tipo_vinculacion`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vinculaciones`
--
ALTER TABLE `vinculaciones`
  ADD PRIMARY KEY (`id_vinculacion`),
  ADD KEY `vinculaciones_id_cargo_foreign` (`id_cargo`),
  ADD KEY `vinculaciones_id_tipo_vinculacion_foreign` (`id_tipo_vinculacion`),
  ADD KEY `vinculaciones_id_empleado_foreign` (`id_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id_cargo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deducciones`
--
ALTER TABLE `deducciones`
  MODIFY `id_deduccion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `nivel_riesgos`
--
ALTER TABLE `nivel_riesgos`
  MODIFY `id_nivel_riesgo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `seguridad_socials`
--
ALTER TABLE `seguridad_socials`
  MODIFY `id_seguridad_social` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_nivel_riesgos`
--
ALTER TABLE `tipo_nivel_riesgos`
  MODIFY `id_tipo_nivel_riesgo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_seguridad_socials`
--
ALTER TABLE `tipo_seguridad_socials`
  MODIFY `id_tipo_seguridad_social` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_vinculaciones`
--
ALTER TABLE `tipo_vinculaciones`
  MODIFY `id_tipo_vinculacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vinculaciones`
--
ALTER TABLE `vinculaciones`
  MODIFY `id_vinculacion` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD CONSTRAINT `cargos_id_nivel_riesgo_foreign` FOREIGN KEY (`id_nivel_riesgo`) REFERENCES `nivel_riesgos` (`id_nivel_riesgo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_id_empleado_foreign` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`);

--
-- Filtros para la tabla `vinculaciones`
--
ALTER TABLE `vinculaciones`
  ADD CONSTRAINT `vinculaciones_id_cargo_foreign` FOREIGN KEY (`id_cargo`) REFERENCES `cargos` (`id_cargo`),
  ADD CONSTRAINT `vinculaciones_id_empleado_foreign` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  ADD CONSTRAINT `vinculaciones_id_tipo_vinculacion_foreign` FOREIGN KEY (`id_tipo_vinculacion`) REFERENCES `tipo_vinculaciones` (`id_tipo_vinculacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
