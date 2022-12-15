-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2022 a las 03:29:49
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descuento` tinyint(3) DEFAULT 0,
  `id_categoria` int(11) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `descuento`, `id_categoria`, `activo`) VALUES
(1, 'Centrifuga', '', '20000.00', 0, 1, 1),
(2, 'Semillas de Tomate', ' ', '23000.00', 0, 1, 1),
(3, 'Traje de fumigador', ' ', '1333900.00', 0, 1, 1),
(4, 'Pala de hierro', ' ', '110000.00', 0, 1, 1),
(5, 'Rastrillo', '', '39900.00', 0, 1, 1),
(6, 'Guadaña', '', '14900.00', 0, 1, 1),
(7, 'Traje de apicultor', '', '899990.00', 0, 1, 1),
(8, 'Machete de 20 pulgadas', '', '13800.00', 0, 1, 1),
(9, 'Semilla de zanahoria', '', '23899.00', 0, 1, 1),
(10, 'Hoz', '', '49999.00', 0, 1, 1),
(11, 'Semillas de lulo', '', '15951.00', 0, 1, 1),
(12, 'Bulto de limones', '', '13000.00', 0, 1, 1),
(13, 'Bulto de papas', '', '31900.00', 0, 1, 1),
(14, 'Botas de ule', '', '23000.00', 0, 1, 1),
(15, 'Azadon', '', '18100.00', 0, 1, 1),
(16, 'Regadera', '', '21000.00', 20, 1, 1),
(17, 'Panel Solar', '', '400000.00', 50, 1, 1),
(18, 'Comedero para cerdos', '', '250000.00', 0, 1, 1),
(19, 'Semillas de sandia', '', '27000.00', 0, 1, 1),
(20, 'Guantes de goma', '', '24000.00', 5, 1, 1),
(21, 'Tijera cortacesped', '', '42000.00', 35, 1, 1),
(48, 'Guantes de goma', '', '24000.00', 5, 1, 1),
(49, 'Tijera cortacesped', '', '42000.00', 35, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
