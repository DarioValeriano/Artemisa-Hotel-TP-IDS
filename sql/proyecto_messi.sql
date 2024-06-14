-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-06-2024 a las 23:52:21
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
-- Estructura de tabla para la tabla `FAQ`
--

CREATE TABLE `FAQ` (
  `ID` int(11) NOT NULL,
  `Pregunta` longtext NOT NULL,
  `Respuesta` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `nombre_servicio` varchar(50) NOT NULL,
  `descripcion_servicio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`nombre_servicio`, `descripcion_servicio`) VALUES
('servicios y amenities', 'Nuestro compromiso con su bienestar es evidente en cada rincón de Hotel Artemisa. Desde nuestras lujosas playas donde disfrutara vistas panorámicas del océano hasta nuestros espacios de bienestar especialmente diseñados para revitalizar cuerpo y mente, cada aspecto de su estadía ha sido meticulosamente planificado para ofrecer una experiencia inolvidable. Diseñado para el disfrute en familia o amigos, el predio cuenta con diversas actividades disponibles a todas horas. Contamos con staff capacitado para garantizar una experiencia de lujo.'),
('Piscina', 'La piscina cuenta con bar integrado donde podrás disfrutar de las bebidas de tu preferencia, así como también una zona donde podrás asistir a también nuestras clases de aeróbics acuáticos, ejercicios que combinan movimiento y flexibilidad con la tranquilidad de flotar en el agua rodeados de un hermoso follaje tropical. <br> En estas sesiones gratuitas, un instructor le guiará a través de los ejercicios con música animada para disfrutar de una experiencia divertida y vigorizante.<br> El horario de la piscina es de 8:00 a 22:00.'),
('Restaurante Apolo', 'A la par de los mejores restaurantes de Copacabana, Hotel Artemisa ofrece experiencias gastronómicas para todos los gustos. Nuestro personal experimentado trae vivos todos los colores y sabores de Copacabana.<br> Los huéspedes del hotel pueden disfrutar de una excelente cena en el restaurante donde podrán saborear la cocina tropical. Ubicado en el último piso, abierto en el horario de 18:00 a 00:00, donde se pueden deleitar con nuestra amplia variedad de platos y tragos de autor.'),
('Cafetería', 'También contamos con una cafetería/pastelería para que pueda comenzar su día en Copacabana con su café recién hecho favorito y unos deliciosos dulces. Podrán disfrutar de nuestras ricas meriendas de 14:30 a 19:00. Las opciones gastronómicas son infinitas en nuestro hotel, así que asegúrese de visitar todos nuestros restaurantes y disfrutar de una aventura culinaria como ninguna otra que se pueda encontrar en Copacabana.<br> El desayuno tipo buffet se sirve de 6:30 a 10:00 en el restaurante de planta baja.'),
('Servicio de spa', 'Tanto en el hotel como en la isla privada contamos con servicio de Spa, donde se ofrece una experiencia sensorial incomparable, desde tratamientos faciales rejuvenecedores hasta masajes relajantes realizados por expertos terapeutas. Sumérgete en nuestras piscinas climatizadas, sauna y jacuzzi, y déjate llevar por la armonía y el lujo en cada momento.'),
('Flamingo Island', 'Explore las playas cercanas Flamingo Beach y Wind Creek, solo para adultos. En minutos, el taxi acuático de nuestro hotel lo llevará a nuestra isla privada de 40 acres, donde los flamencos deambulan libremente y le esperan tratamientos relajantes en nuestro Spa. <br> Y, con la gran variedad de restaurantes y bares que sirven de todo, desde cócteles artesanales hasta filetes auténticos, la experiencia gastronómica perfecta nunca está lejos.'),
('Servicio pet-care', 'Con el servicio de guardería para mascotas puedes salir a explorar la ciudad teniendo la seguridad de que tu amigo peludo estará recibiendo los mejores cuidados en nuestro hotel.<br> También puedes disfrutar con tu mascota en las áreas de juego designadas para su entretenimiento, las mismas se dividen en zona de gatitos y zona de perritos. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_habitaciones`
--

CREATE TABLE `tipos_habitaciones` (
  `nombre` varchar(50) NOT NULL,
  `especificaciones` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`especificaciones`)),
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_habitaciones`
--

INSERT INTO `tipos_habitaciones` (`nombre`, `especificaciones`, `precio`) VALUES
('Ejecutiva', '[\"TV LCD\", \"Minibar\", \"Caja Fuerte\", \"WIFI\", \"Cerradura Magnética\", \"Aire Acondicionado\", \"Habitación Climatizada\", \"Escritorio\", \"Microondas\", \"Artículos de Aseo\", \"Amenities\", \"Secador de Cabello\", \"Bañera\", \"Hidromasaje\", \"Teléfono\", \"Cafetera Nespresso\"]\r\n', 75000.00),
('Suite Junior', '[\"TV LCD\",\"Microondas\", \"Caja fuerte\", \"Cerradura Magnética\", \"WIFI\", \"Aire Acondicionado\", \"Minibar\", \"Habitación Climatizada\", \"Escritorio\", \"Artículos de Aseo\",\"Amenities\", \"Secador de Cabello\", \"Bañera\", \"Teléfono\"]\r\n', 52000.00),
('Suite Lujo', '[\"TV LCD\", \"Minibar\", \"Aire Acondicionado\", \"WIFI\", \"Cerradura Magnética\", \"Habitación Climatizada\", \"Bañera\", \"Caja fuerte\", \"Escritorio\", \"Artículos de Aseo\", \"Amenities\", \"Secador de Cabello\", \"Jacuzzi\", \"Teléfono\"]\r\n', 64000.00),
('Twin', '[\"TV LCD\", \"Minibar\", \"Caja fuerte\", \"WIFI\", \"Cerradura Magnética\", \"Aire Acondicionado\", \"Habitación Climatizada\", \"Microondas\", \"Artículos de Aseo\", \"Amenities\", \"Secador de Cabello\", \"Bañera\", \"Teléfono\"]', 48000.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `FAQ`
--
ALTER TABLE `FAQ`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tipos_habitaciones`
--
ALTER TABLE `tipos_habitaciones`
  ADD PRIMARY KEY (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `FAQ`
--
ALTER TABLE `FAQ`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
