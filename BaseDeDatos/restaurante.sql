-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-02-2020 a las 23:13:40
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `id_mesa` int(10) NOT NULL,
  `zona` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `zona`, `estado`, `precio`) VALUES
(1, 'general', 'vacio', 0),
(2, 'general', 'vacio', 0),
(3, 'general', 'vacio', 0),
(4, 'general', 'vacio', 0),
(5, 'general', 'vacio', 0),
(6, 'general', 'vacio', 0),
(7, 'general', 'vacio', 0),
(8, 'general', 'vacio', 0),
(9, 'general', 'vacio', 0),
(10, 'vip', 'vacio', 30),
(11, 'vip', 'vacio', 30),
(12, 'vip', 'vacio', 30),
(13, 'vip', 'vacio', 30),
(14, 'vip', 'vacio', 30),
(15, 'vip', 'vacio', 30),
(16, 'vip', 'vacio', 30),
(17, 'vip', 'vacio', 30),
(18, 'vip', 'vacio', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordencliente`
--

CREATE TABLE `ordencliente` (
  `id_orden` int(10) NOT NULL,
  `mesero` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nro_mesa` int(3) DEFAULT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nom_cliente` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `modo_pago` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `monto_total` float DEFAULT NULL,
  `nom_bebida` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cnt_bebida` int(3) DEFAULT NULL,
  `nom_postre` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cnt_postre` int(3) DEFAULT NULL,
  `nom_entrada` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cnt_entrada` int(3) DEFAULT NULL,
  `nom_comida` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cnt_comida` int(3) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora_entrada` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(10) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoP` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoM` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_nivel` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `registrado_por` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellidoP`, `apellidoM`, `email`, `telefono`, `username`, `password`, `tipo_nivel`, `estado`, `registrado_por`) VALUES
(1, 'Bryan', 'Salva', 'Torres', 'salvatorresb@gmail.com', '972399429', 'admin', '123456bst', 'administrador', 'activo', 'Bryan'),
(2, 'Angela', 'Martinez', 'Carrasco', 'carrasco13@gmail.com', '938472737', 'angela', '123456amc', 'caja', 'activo', 'Bryan'),
(3, 'Samanta', 'Dias', 'Dextre', 'dextre@gmail.com', '938473242', 'samanta', '123456sdd', 'mesera', 'activo', 'Bryan'),
(4, 'Juan', 'Aguilar', 'Perez', 'perez@gmail.com', '944362247', 'juan', '123456jap', 'mesera', 'activo', 'Bryan');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Indices de la tabla `ordencliente`
--
ALTER TABLE `ordencliente`
  ADD PRIMARY KEY (`id_orden`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ordencliente`
--
ALTER TABLE `ordencliente`
  MODIFY `id_orden` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
