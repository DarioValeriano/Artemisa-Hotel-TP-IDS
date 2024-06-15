-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-06-2024 a las 16:57:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

@@ -24,30 +24,273 @@ SET time_zone = "+00:00";
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FAQ`

--

CREATE TABLE `FAQ` (
  `ID` int(11) NOT NULL,
  `Pregunta` longtext NOT NULL,
  `Respuesta` longtext NOT NULL

--
-- Estructura de tabla para la tabla `cliente`
--

--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `identificacion` int(8) NOT NULL,
  `telefono` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones_disponibles`
--

CREATE TABLE `habitaciones_disponibles` (
  `id_habitacion` int(11) NOT NULL,
  `nombre_habitacion` varchar(50) NOT NULL,
  `numero_habitacion` int(11) NOT NULL,
  `piso_habitacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitaciones_disponibles`
--

INSERT INTO `habitaciones_disponibles` (`id_habitacion`, `nombre_habitacion`, `numero_habitacion`, `piso_habitacion`) VALUES
(1, 'Twin', 100, 1),
(2, 'Twin', 101, 1),
(3, 'Twin', 102, 1),
(4, 'Twin', 103, 1),
(5, 'Twin', 104, 1),
(6, 'Twin', 105, 1),
(7, 'Twin', 106, 1),
(8, 'Twin', 107, 1),
(9, 'Twin', 108, 1),
(10, 'Twin', 109, 1),
(11, 'Twin', 110, 1),
(12, 'Twin', 111, 1),
(13, 'Twin', 112, 1),
(14, 'Junior Suite', 113, 1),
(15, 'Junior Suite', 114, 1),
(16, 'Junior Suite', 115, 1),
(17, 'Junior Suite', 116, 1),
(18, 'Junior Suite', 117, 1),
(19, 'Junior Suite', 118, 1),
(20, 'Junior Suite', 119, 1),
(21, 'Junior Suite', 120, 1),
(22, 'Junior Suite', 121, 1),
(23, 'Junior Suite', 122, 1),
(24, 'Junior Suite', 123, 1),
(25, 'Junior Suite', 124, 1),
(26, 'Junior Suite', 125, 1),
(27, 'Deluxe Suite', 126, 1),
(28, 'Deluxe Suite', 127, 1),
(29, 'Deluxe Suite', 128, 1),
(30, 'Deluxe Suite', 129, 1),
(31, 'Deluxe Suite', 130, 1),
(32, 'Deluxe Suite', 131, 1),
(33, 'Deluxe Suite', 132, 1),
(34, 'Deluxe Suite', 133, 1),
(35, 'Deluxe Suite', 134, 1),
(36, 'Deluxe Suite', 135, 1),
(37, 'Deluxe Suite', 136, 1),
(38, 'Deluxe Suite', 137, 1),
(39, 'Deluxe Suite', 138, 1),
(40, 'Executive Suite', 139, 1),
(41, 'Executive Suite', 140, 1),
(42, 'Executive Suite', 141, 1),
(43, 'Executive Suite', 142, 1),
(44, 'Executive Suite', 143, 1),
(45, 'Executive Suite', 144, 1),
(46, 'Executive Suite', 145, 1),
(47, 'Executive Suite', 146, 1),
(48, 'Executive Suite', 147, 1),
(49, 'Executive Suite', 148, 1),
(50, 'Executive Suite', 149, 1),
(51, 'Executive Suite', 150, 1),
(52, 'Executive Suite', 151, 1),
(53, 'Twin', 200, 2),
(54, 'Twin', 201, 2),
(55, 'Twin', 202, 2),
(56, 'Twin', 203, 2),
(57, 'Twin', 204, 2),
(58, 'Twin', 205, 2),
(59, 'Twin', 206, 2),
(60, 'Twin', 207, 2),
(61, 'Twin', 208, 2),
(62, 'Twin', 209, 2),
(63, 'Twin', 210, 2),
(64, 'Twin', 211, 2),
(65, 'Junior Suite', 212, 2),
(66, 'Junior Suite', 213, 2),
(67, 'Junior Suite', 214, 2),
(68, 'Junior Suite', 215, 2),
(69, 'Junior Suite', 216, 2),
(70, 'Junior Suite', 217, 2),
(71, 'Junior Suite', 218, 2),
(72, 'Junior Suite', 219, 2),
(73, 'Junior Suite', 220, 2),
(74, 'Junior Suite', 221, 2),
(75, 'Junior Suite', 222, 2),
(76, 'Junior Suite', 223, 2),
(77, 'Junior Suite', 224, 2),
(78, 'Junior Suite', 225, 2),
(79, 'Deluxe Suite', 226, 2),
(80, 'Deluxe Suite', 227, 2),
(81, 'Deluxe Suite', 228, 2),
(82, 'Deluxe Suite', 229, 2),
(83, 'Deluxe Suite', 230, 2),
(84, 'Deluxe Suite', 231, 2),
(85, 'Deluxe Suite', 232, 2),
(86, 'Deluxe Suite', 233, 2),
(87, 'Deluxe Suite', 234, 2),
(88, 'Deluxe Suite', 235, 2),
(89, 'Deluxe Suite', 236, 2),
(90, 'Deluxe Suite', 237, 2),
(91, 'Deluxe Suite', 238, 2),
(92, 'Executive Suite', 239, 2),
(93, 'Executive Suite', 240, 2),
(94, 'Executive Suite', 241, 2),
(95, 'Executive Suite', 242, 2),
(96, 'Executive Suite', 243, 2),
(97, 'Executive Suite', 244, 2),
(98, 'Executive Suite', 245, 2),
(99, 'Executive Suite', 246, 2),
(100, 'Executive Suite', 247, 2),
(101, 'Executive Suite', 248, 2),
(102, 'Executive Suite', 249, 2),
(103, 'Executive Suite', 250, 2),
(104, 'Executive Suite', 251, 2),
(105, 'Twin', 300, 3),
(106, 'Twin', 301, 3),
(107, 'Twin', 302, 3),
(108, 'Twin', 303, 3),
(109, 'Twin', 304, 3),
(110, 'Twin', 305, 3),
(111, 'Twin', 306, 3),
(112, 'Twin', 307, 3),
(113, 'Twin', 308, 3),
(114, 'Twin', 309, 3),
(115, 'Twin', 310, 3),
(116, 'Twin', 311, 3),
(117, 'Junior Suite', 312, 3),
(118, 'Junior Suite', 313, 3),
(119, 'Junior Suite', 314, 3),
(120, 'Junior Suite', 315, 3),
(121, 'Junior Suite', 316, 3),
(122, 'Junior Suite', 317, 3),
(123, 'Junior Suite', 318, 3),
(124, 'Junior Suite', 319, 3),
(125, 'Junior Suite', 320, 3),
(126, 'Junior Suite', 321, 3),
(127, 'Junior Suite', 322, 3),
(128, 'Junior Suite', 323, 3),
(129, 'Junior Suite', 324, 3),
(130, 'Junior Suite', 325, 3),
(131, 'Deluxe Suite', 326, 3),
(132, 'Deluxe Suite', 327, 3),
(133, 'Deluxe Suite', 328, 3),
(134, 'Deluxe Suite', 329, 3),
(135, 'Deluxe Suite', 330, 3),
(136, 'Deluxe Suite', 331, 3),
(137, 'Deluxe Suite', 332, 3),
(138, 'Deluxe Suite', 333, 3),
(139, 'Deluxe Suite', 334, 3),
(140, 'Deluxe Suite', 335, 3),
(141, 'Deluxe Suite', 336, 3),
(142, 'Deluxe Suite', 337, 3),
(143, 'Deluxe Suite', 338, 3),
(144, 'Executive Suite', 339, 3),
(145, 'Executive Suite', 340, 3),
(146, 'Executive Suite', 341, 3),
(147, 'Executive Suite', 342, 3),
(148, 'Executive Suite', 343, 3),
(149, 'Executive Suite', 344, 3),
(150, 'Executive Suite', 345, 3),
(151, 'Executive Suite', 346, 3),
(152, 'Executive Suite', 347, 3),
(153, 'Executive Suite', 348, 3),
(154, 'Executive Suite', 349, 3),
(155, 'Executive Suite', 350, 3),
(156, 'Executive Suite', 351, 3),
(157, 'Twin', 400, 4),
(158, 'Twin', 401, 4),
(159, 'Twin', 402, 4),
(160, 'Twin', 403, 4),
(161, 'Twin', 404, 4),
(162, 'Twin', 405, 4),
(163, 'Twin', 406, 4),
(164, 'Twin', 407, 4),
(165, 'Twin', 408, 4),
(166, 'Twin', 409, 4),
(167, 'Twin', 410, 4),
(168, 'Twin', 411, 4),
(169, 'Junior Suite', 412, 4),
(170, 'Junior Suite', 413, 4),
(171, 'Junior Suite', 414, 4),
(172, 'Junior Suite', 415, 4),
(173, 'Junior Suite', 416, 4),
(174, 'Junior Suite', 417, 4),
(175, 'Junior Suite', 418, 4),
(176, 'Junior Suite', 419, 4),
(177, 'Junior Suite', 420, 4),
(178, 'Junior Suite', 421, 4),
(179, 'Junior Suite', 422, 4),
(180, 'Junior Suite', 423, 4),
(181, 'Junior Suite', 424, 4),
(182, 'Junior Suite', 425, 4),
(183, 'Deluxe Suite', 426, 4),
(184, 'Deluxe Suite', 427, 4),
(185, 'Deluxe Suite', 428, 4),
(186, 'Deluxe Suite', 429, 4),
(187, 'Deluxe Suite', 430, 4),
(188, 'Deluxe Suite', 431, 4),
(189, 'Deluxe Suite', 432, 4),
(190, 'Deluxe Suite', 433, 4),
(191, 'Deluxe Suite', 434, 4),
(192, 'Deluxe Suite', 435, 4),
(193, 'Deluxe Suite', 436, 4),
(194, 'Deluxe Suite', 437, 4),
(195, 'Deluxe Suite', 438, 4),
(196, 'Executive Suite', 439, 4),
(197, 'Executive Suite', 440, 4),
(198, 'Executive Suite', 441, 4),
(199, 'Executive Suite', 442, 4),
(200, 'Executive Suite', 443, 4),
(201, 'Executive Suite', 444, 4),
(202, 'Executive Suite', 445, 4),
(203, 'Executive Suite', 446, 4),
(204, 'Executive Suite', 447, 4),
(205, 'Executive Suite', 448, 4),
(206, 'Executive Suite', 449, 4),
(207, 'Executive Suite', 450, 4),
(208, 'Executive Suite', 451, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupacion_hotel`
--

CREATE TABLE `ocupacion_hotel` (
  `id_ocupacion` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `fecha_checkin` date NOT NULL,
  `fecha_checkout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `FAQ`
--

INSERT INTO `FAQ` (`ID`, `Pregunta`, `Respuesta`) VALUES
(1, '¿A partir de qué horario puedo realizar el check-in?', 'Su habitación estará disponibles a partir de las 13:00. \r\nEn el caso de que llegue por la mañana, puede dejar su equipaje en el hotel de \r\nmanera gratuita hasta que la habitación esté lista.'),
(2, '¿A qué hora tengo que realizar el check-out?', 'El día de su partida, podrá disponer de su habitación hasta el mediodía. \r\nSi su vuelo sale más tarde y desea salir para aprovechar sus últimas horas en la ciudad,\r\npodemos guardarle su equipaje de manera gratuita.'),
(3, '¿Hay acceso de Wi-Fi en el hotel? ¿Es gratuito?', 'Sí. Hay acceso a Internet inalámbrico (Wi-Fi) de banda ancha en todo el hotel'),
(4, 'Vamos a viajar en avión. ¿Cuentan con servicio de traslado desde el aeropuerto?', 'Sí, en el hotel contamos con una línea de taxis exclusiva para nuestros clientes, \r\nsi desea el servicio de traslado desde el aeropuerto no olvide indicarlo cuando realice\r\nla reserva en el hotel.'),
(5, '¿Se puede fumar en las habitaciones?', 'No. Todas las habitaciones cuentan con un detector de humo muy sensible y está prohibido fumar en las habitaciones y todo el hotel.'),
(6, '¿Aceptan animales?', 'Sí, aceptamos mascotas. Le invitamos a que nos indique este detalle en su reserva.'),
(7, '¿Cuál es el horario del desayuno?', 'El desayuno tipo buffet se sirve de 6:30 a 10:00 en el restaurante de planta baja.'),
(8, '¿Qué pueden ofrecerme fuera del horario del desayuno buffet?', 'En el último piso del hotel contamos con un restaurante abierto en el horario de 18:00 a 00:00,\r\ndonde se pueden deleitar con nuestra amplia variedad de platos y tragos de autor.\r\nTambién podrán disfrutar de nuestras ricas meriendas de 14:30 a 19:00 en el restaurante de planta baja.'),
(9, '¿Puedo modificar las fechas de mi reserva?', 'Sí, se pueden realizar modificaciones en su reserva solo 24 horas antes de la misma.'),
(10, '¿Qué formas de pago acepta el hotel?', 'Se aceptan las siguientes formas de pago: efectivo, cheque, Visa, Mastercard, American Express.\r\nPodría solicitarse un documento de identificación para pagos con cheque y tarjeta bancaria');

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `nombre_habitacion` varchar(50) NOT NULL,
  `fecha_checkin` date NOT NULL,
  `fecha_checkout` date NOT NULL,
  `cantidad_huespedes` int(11) NOT NULL,
  `tipo_cama` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

@@ -90,20 +333,56 @@ CREATE TABLE `tipos_habitaciones` (
--

INSERT INTO `tipos_habitaciones` (`nombre`, `especificaciones`, `precio`) VALUES
('Ejecutiva', '[\"TV LCD\", \"Minibar\", \"Caja Fuerte\", \"WIFI\", \"Cerradura Magnética\", \"Aire Acondicionado\", \"Habitación Climatizada\", \"Escritorio\", \"Microondas\", \"Artículos de Aseo\", \"Amenities\", \"Secador de Cabello\", \"Bañera\", \"Hidromasaje\", \"Teléfono\", \"Cafetera Nespresso\"]\r\n', 75000.00),
('Suite Junior', '[\"TV LCD\",\"Microondas\", \"Caja fuerte\", \"Cerradura Magnética\", \"WIFI\", \"Aire Acondicionado\", \"Minibar\", \"Habitación Climatizada\", \"Escritorio\", \"Artículos de Aseo\",\"Amenities\", \"Secador de Cabello\", \"Bañera\", \"Teléfono\"]\r\n', 52000.00),
('Suite Lujo', '[\"TV LCD\", \"Minibar\", \"Aire Acondicionado\", \"WIFI\", \"Cerradura Magnética\", \"Habitación Climatizada\", \"Bañera\", \"Caja fuerte\", \"Escritorio\", \"Artículos de Aseo\", \"Amenities\", \"Secador de Cabello\", \"Jacuzzi\", \"Teléfono\"]\r\n', 64000.00),
('Deluxe Suite', '[\"TV LCD\", \"Minibar\", \"Aire Acondicionado\", \"WIFI\", \"Cerradura Magnética\", \"Habitación Climatizada\", \"Bañera\", \"Caja fuerte\", \"Escritorio\", \"Artículos de Aseo\", \"Amenities\", \"Secador de Cabello\", \"Jacuzzi\", \"Teléfono\"]\r\n', 64000.00),
('Executive Suite', '[\"TV LCD\", \"Minibar\", \"Caja Fuerte\", \"WIFI\", \"Cerradura Magnética\", \"Aire Acondicionado\", \"Habitación Climatizada\", \"Escritorio\", \"Microondas\", \"Artículos de Aseo\", \"Amenities\", \"Secador de Cabello\", \"Bañera\", \"Hidromasaje\", \"Teléfono\", \"Cafetera Nespresso\"]\r\n', 75000.00),
('Junior Suite', '[\"TV LCD\",\"Microondas\", \"Caja fuerte\", \"Cerradura Magnética\", \"WIFI\", \"Aire Acondicionado\", \"Minibar\", \"Habitación Climatizada\", \"Escritorio\", \"Artículos de Aseo\",\"Amenities\", \"Secador de Cabello\", \"Bañera\", \"Teléfono\"]\r\n', 52000.00),
('Twin', '[\"TV LCD\", \"Minibar\", \"Caja fuerte\", \"WIFI\", \"Cerradura Magnética\", \"Aire Acondicionado\", \"Habitación Climatizada\", \"Microondas\", \"Artículos de Aseo\", \"Amenities\", \"Secador de Cabello\", \"Bañera\", \"Teléfono\"]', 48000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `message` varchar(300) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `FAQ`
--
ALTER TABLE `FAQ`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `habitaciones_disponibles`
--
ALTER TABLE `habitaciones_disponibles`
  ADD PRIMARY KEY (`id_habitacion`);

--
-- Indices de la tabla `ocupacion_hotel`
--
ALTER TABLE `ocupacion_hotel`
  ADD PRIMARY KEY (`id_ocupacion`),
  ADD KEY `id_habitacion` (`id_habitacion`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_habitacion` (`id_habitacion`);

--
-- Indices de la tabla `tipos_habitaciones`
@@ -116,10 +395,51 @@ ALTER TABLE `tipos_habitaciones`
--

--
-- AUTO_INCREMENT de la tabla `FAQ`
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habitaciones_disponibles`
--
ALTER TABLE `habitaciones_disponibles`
  MODIFY `id_habitacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT de la tabla `ocupacion_hotel`
--
ALTER TABLE `ocupacion_hotel`
  MODIFY `id_ocupacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `habitaciones_disponibles`
--
ALTER TABLE `habitaciones_disponibles`
  ADD CONSTRAINT `habitaciones_disponibles_ibfk_1` FOREIGN KEY (`nombre_habitacion`) REFERENCES `tipos_habitaciones` (`nombre`);

--
-- Filtros para la tabla `ocupacion_hotel`
--
ALTER TABLE `ocupacion_hotel`
  ADD CONSTRAINT `ocupacion_hotel_ibfk_1` FOREIGN KEY (`id_habitacion`) REFERENCES `habitaciones_disponibles` (`id_habitacion`);

--
-- Filtros para la tabla `FAQ`
--
ALTER TABLE `FAQ`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_habitacion`) REFERENCES `habitaciones_disponibles` (`id_habitacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;