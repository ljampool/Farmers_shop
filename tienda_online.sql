-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2022 a las 21:10:42
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

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
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Cultivo'),
(2, 'Herramientas'),
(3, 'Maquinas'),
(4, 'Trajes'),
(5, 'Contedores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `comentario` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `email`, `telefono`, `comentario`) VALUES
(4, 'may', 'alzate', 'anfrelu@gmail.com', '3137175962', 'san andresit'),
(5, 'maycol', 'alzate', 'anfrelu@gmail.com', '3137175962', 'san andresito'),
(6, 'maycol', 'alzate', 'anfrelu@gmail.com', '3137175962', 'san andresito'),
(7, 'andres', 'alzate', 'anfrelu@gmail.com', '3137175962', 'san andresito'),
(8, 'andres', 'alzate', 'anf@gmail.com', '3137175962', 'san andresito'),
(9, 'andres', 'alzate', 'anf@gmail.com', '6748678', 'san andresito'),
(10, 'camilo', 'lois', 'ajp@gamil.com', '67486786', 'san andresito'),
(11, 'camilo', 'lois', 'ajp@gamil.com', '67486786', 'san andresito 2122'),
(12, 'pedro', 'emilio', 'juan@gmail.com', '12345566', 'sasasaa'),
(13, 'elizabeth', 'gomez', 'haha@gmail.com', '123456678989', 'facatativa'),
(14, 'felipe', 'montero', 'cualquiera@gmail.com', '321456276', 'ibague'),
(15, 'juan esteban', 'perez', 'jajaja@gmail.com', '7125712571', 'sena\r\n'),
(16, 'jhon ', 'MORENO', 'cualquiera1@gmail.com', '212345167', 'armenia'),
(17, 'camilo', 'forero', 'ca@gmail.com', '764657', 'armenia'),
(18, 'julian', 'parra', 'coco@gmail.com', '3214567898', 'bogota'),
(19, 'Willinton', 'Rincon', 'nose@gmail.com', '321567543', 'Cali'),
(20, 'Cristian', 'Henao', 'cualquiera3@gmail.com', '3214567326', 'Armenia'),
(21, 'Natalia', 'Buitrago', 'nose@gmail.com', '3125463782', 'Armenia'),
(22, 'rodrigo', 'padilla', 'nose@gmail.com', '321456732', 'cali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `pedido_id`, `pelicula_id`, `precio`, `cantidad`, `estado`) VALUES
(1, 2, 12, '40.00', 7, 1),
(2, 3, 11, '17.00', 3, 1),
(3, 5, 17, '200.00', 1, 1),
(4, 12, 9, '36.00', 1, 1),
(5, 12, 10, '31.00', 1, 1),
(6, 13, 14, '350000.00', 1, 1),
(7, 13, 6, '40.00', 1, 1),
(8, 13, 15, '250000.00', 1, 1),
(9, 14, 16, '40000.00', 1, 1),
(10, 14, 14, '350000.00', 1, 1),
(11, 15, 16, '40000.00', 1, 1),
(12, 16, 5, '50.00', 1, 1),
(13, 17, 5, '50.00', 1, 1),
(14, 17, 16, '40000.00', 5, 1),
(15, 17, 15, '250000.00', 1, 1),
(16, 18, 17, '200.00', 1, 1),
(17, 18, 12, '70.00', 1, 1),
(18, 18, 2, '100.00', 1, 1),
(19, 19, 15, '250000.00', 1, 1),
(20, 20, 16, '40000.00', 1, 1),
(21, 20, 10, '31.00', 2, 1),
(22, 21, 11, '120.00', 1, 1),
(23, 21, 4, '40.00', 2, 1),
(24, 22, 12, '70.00', 1, 1),
(25, 22, 10, '31.00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `cliente_id`, `total`, `fecha`, `estado`) VALUES
(19, 19, '250000.00', '2022-12-13', 1),
(20, 20, '40062.00', '2022-12-13', 1),
(21, 21, '200.00', '2022-12-13', 1),
(22, 22, '101.00', '2022-12-13', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(80) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `descripcion`, `foto`, `precio`, `categoria_id`, `fecha`, `estado`) VALUES
(1, 'Fertilizante', 'full', 'fertilizante.jpg', '60.00', 1, '2022-12-13', 1),
(2, 'Cantina para leche', 'FULL ANIMACION', 'cantina.jpg', '100.00', 5, '2022-12-10', 1),
(3, 'Carretilla de carga', 'FULL AVENTURA', 'carretillacarga.jpg', '45.00', 4, '2022-12-10', 1),
(4, 'Sacos para bultos', 'FULL ACCION', 'saco.jpg', '40.00', 1, '2022-12-10', 1),
(5, 'Bascula de piso', 'FULL TERROR', 'bascula.jpg', '50.00', 3, '2022-12-10', 1),
(6, 'Canastas de madera', 'FULL ACCION', 'canasta.jpg', '40.00', 1, '2022-12-10', 1),
(7, 'Bolsas de empaque', 'FULL ANIMADA', 'bolsas.jpg', '25.00', 5, '2022-12-10', 1),
(9, 'Bascula electronica', 'FULL ACCION', 'basculapequeña.jpg', '36.00', 1, '2022-12-10', 1),
(10, 'herramientas de cosecha', 'FULL', 'herramientascosecha.jpg', '31.00', 4, '2022-12-10', 1),
(11, 'Colmena', 'FULL accion', 'colmena.jpg', '120.00', 2, '2022-12-10', 1),
(12, 'Hacha', 'hacha', 'hacha.jpg', '70.00', 2, '2022-12-13', 1),
(13, 'Semillas de manzana', 'Semillas de manzana', 'semillasdemanzana.jpg', '15.00', 1, '2022-12-13', 1),
(14, 'Insectisida', 'producto para eliminar los parasitos de los cultivos', 'insectisida.jpg', '350000.00', 1, '2022-12-13', 1),
(15, 'Semillas de Moringa', 'semillas para cultivar un arbol de moringa', 'semillasdemoringa.jpg', '250000.00', 1, '2022-12-13', 1),
(16, 'Trinchera', 'Herramienta para cultivar', 'trinchera.jpg', '40000.00', 2, '2022-12-13', 1),
(17, 'Podadora', 'Maquina para cortar el pasto', 'podadora.jpg', '200.00', 3, '2022-12-13', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descuento` tinyint(3) DEFAULT 0,
  `id_categoria` int(11) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `descuento`, `id_categoria`, `activo`) VALUES
(1, 'Centrifuga', 'Maquina para secar la miel de los panales de abejas', '20000.00', 0, 1, 1),
(2, 'Semillas de Tomate', ' Semillas para cultivar tomates', '23000.00', 0, 1, 1),
(3, 'Traje de fumigador', ' Traje que se utiliza a la hora de realizar las fumigaciones', '1333900.00', 0, 1, 1),
(4, 'Pala de hierro', ' Herramienta para sacar la tierra', '110000.00', 0, 1, 1),
(5, 'Rastrillo', 'Herramienta para rastrillar la tierra para la siembra', '39900.00', 0, 1, 1),
(6, 'Guadaña', 'Herramienta para cortar la maleza que crecee en el pasto', '14900.00', 0, 1, 1),
(7, 'Traje de apicultor', 'Traje para no ser picado por abejas', '899990.00', 0, 1, 1),
(8, 'Machete de 20 pulgadas', 'Herramienta que se utiliza para cortar madera o maleza', '13800.00', 0, 1, 1),
(9, 'Semilla de zanahoria', 'Semillas para cultivar zanahorias', '23899.00', 0, 1, 1),
(10, 'Hoz', 'Herramienta que se utiliza para cortar el pasto', '49999.00', 0, 1, 1),
(11, 'Semillas de lulo', 'Semillas para cultivar frutos de lulo', '15951.00', 0, 1, 1),
(12, 'Bulto de limones', 'Limones salidos del campo ya listos para exprimir y consumir', '13000.00', 0, 1, 1),
(13, 'Bulto de papas', 'Papas de la tierra campesina , listas para lavar y consumir', '31900.00', 0, 1, 1),
(14, 'Botas de ule', 'Botas que se usan para prevenir llenarse de tierra', '23000.00', 0, 1, 1),
(15, 'Azadon', 'Herramienta para arrastar parte de la tierra', '18100.00', 0, 1, 1),
(16, 'Regadera', 'Herramienta que se utiliza para recolectar agua y regarla sobre los cultivos o plantas', '21000.00', 20, 1, 1),
(17, 'Panel Solar', 'Utencilio que se utiliza para acomular energia ', '400000.00', 50, 1, 1),
(18, 'Comedero para cerdos', 'Contenedor para darle de comer a los cerdos', '250000.00', 0, 1, 1),
(19, 'Semillas de sandia', 'Semillas para cultivar frutos de sandia', '27000.00', 0, 1, 1),
(20, 'Guantes de goma', 'Hechos de goma para uso agricola', '24000.00', 5, 1, 1),
(21, 'Tijera cortacesped', 'Herramienta que se utiliza para cortar el cesped', '42000.00', 35, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `phonenumber`, `email`, `password`) VALUES
(26, 'jhanpol', 'javier', 3945, 'jhan@gmail.com', '$2y$10$aL1Qbk4ebzPrywkJwaL8B.bOrc9OoiDKUWvqmeBLh8oXPeJMH53MO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `clave` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `clave`, `estado`) VALUES
(1, 'sa', '123', 1),
(2, 'admin', '1234', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
