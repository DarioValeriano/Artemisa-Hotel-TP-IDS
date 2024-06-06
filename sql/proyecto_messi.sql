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
-- Indices de la tabla `tipos_habitaciones`
--
ALTER TABLE `tipos_habitaciones`
  ADD PRIMARY KEY (`nombre`);
COMMIT;

INSERT INTO `servicios1` (`Nombre de servicio`, `Especificaciones del servicio`) VALUES
('Piscina ', 'Una piscina techada en la planta baja del edificio con una longitud de 25mts. y una profundidad de 2mts con horarios de uso entre las 8am y las 9pm todos los dias.'),
('Sala recreativa', 'Sala con consolas de videojuegos, mesas para distintos juegos de cartas, una mesa de pool y una mesa de ping pong. '),
('Juegos de mesa y de cartas', 'En la recepción están disponibles mazos de cartas, tanto barajas españolas como barajas de póker, además de juegos de mesa varios para usar en la sala recreativa.'),
('Pet Care', 'Un espacio para que puedan dejar sus mascotas donde estas van a ser cuidadas y mimadas mientras ustedes pueden disfrutar del resto de su estadia.'),
('Spa', 'Spa disponible para poder relajarse y recuperarse durante su estadía, en el que se ofrecen tanto masajes como tratamientos de la piel.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2024 a las 20:44:34
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
-- Base de datos: `servicios`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
