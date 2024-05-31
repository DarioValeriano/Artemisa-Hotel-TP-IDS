-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-05-2024 a las 06:43:20
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
-- Base de datos: `proyecto_messi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_habitaciones`
--

CREATE TABLE `tipos_habitaciones` (
  `nombre` varchar(50) NOT NULL,
  `especificaciones` varchar(150) NOT NULL,
  `precio` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_habitaciones`
--

INSERT INTO `tipos_habitaciones` (`nombre`, `especificaciones`, `precio`) VALUES
('Ejecutiva', 'TV satélite, Minibar, Caja fuerte, WIFI, Aire Acondicionado, Habitación Climatizada, Microondas, Artículos de Aseo, Menaje de Cocina, Teléfono', 52000.00),
('Suite Junior', 'TV satélite, Minibar, Caja fuerte, WIFI, Aire Acondicionado, Habitación Climatizada, Artículos de Aseo, Teléfono', 64000.00),
('Suite Lujo', 'TV satélite, Minibar, Caja fuerte, Aire Acondicionado, Habitación Climatizada, Microondas, Artículos de Aseo, Bañera, Teléfono', 75000.00),
('Twin', 'TV satélite, Minibar, Caja fuerte, WIFI, Aire Acondicionado, Habitación Climatizada, Microondas, Artículos de Aseo, Menaje de Cocina, Teléfono', 48000.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tipos_habitaciones`
--
ALTER TABLE `tipos_habitaciones`
  ADD PRIMARY KEY (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
