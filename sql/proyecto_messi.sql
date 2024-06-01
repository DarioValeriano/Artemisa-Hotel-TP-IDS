-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-06-2024 a las 22:31:17
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
  `especificaciones` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`especificaciones`)),
  `precio` decimal(10,2) NOT NULL,
  `ruta_imagen1` varchar(100) NOT NULL,
  `ruta_imagen2` varchar(100) NOT NULL,
  `ruta_imagen3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_habitaciones`
--

INSERT INTO `tipos_habitaciones` (`nombre`, `especificaciones`, `precio`, `ruta_imagen1`, `ruta_imagen2`, `ruta_imagen3`) VALUES
('Ejecutiva', '[\"TV LCD\", \"Minibar\", \"Caja Fuerte\", \"WIFI\", \"Cerradura Magnética\", \"Aire Acondicionado\", \"Habitación Climatizada\", \"Escritorio\", \"Microondas\", \"Artículos de Aseo\", \"Amenities\", \"Secador de Cabello\", \"Bañera\", \"Hidromasaje\", \"Teléfono\", \"Cafetera Nespresso\"]\r\n', 75000.00, '/static/images/Ejecutiva1.jpg', '/static/images/Ejecutiva2.jpg', '/static/images/Ejecutiva3.jpg'),
('Suite Junior', '[\"TV LCD\",\"Microondas\", \"Caja fuerte\", \"Cerradura Magnética\", \"WIFI\", \"Aire Acondicionado\", \"Minibar\", \"Habitación Climatizada\", \"Escritorio\", \"Artículos de Aseo\",\"Amenities\", \"Secador de Cabello\", \"Bañera\", \"Teléfono\"]\r\n', 52000.00, '/static/images/SuiteJunior1.jpg', '/static/images/SuiteJunior2.jpg', ''),
('Suite Lujo', '[\"TV LCD\", \"Minibar\", \"Aire Acondicionado\", \"WIFI\", \"Cerradura Magnética\", \"Habitación Climatizada\", \"Bañera\", \"Caja fuerte\", \"Escritorio\", \"Artículos de Aseo\", \"Amenities\", \"Secador de Cabello\", \"Jacuzzi\", \"Teléfono\"]\r\n', 64000.00, '/static/images/SuiteLujo1.jpg', '/static/images/SuiteLujo2.jpg', ''),
('Twin', '[\"TV LCD\", \"Minibar\", \"Caja fuerte\", \"WIFI\", \"Cerradura Magnética\", \"Aire Acondicionado\", \"Habitación Climatizada\", \"Microondas\", \"Artículos de Aseo\", \"Amenities\", \"Secador de Cabello\", \"Bañera\", \"Teléfono\"]', 48000.00, '/static/images/Twin1.jpg', '/static/images/Twin2.jpg', '');

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
