-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-02-2020 a las 16:24:22
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
(2, 'Angela', 'Martinez', 'Carrasco', 'carrasco13@gmail.com', '938472737', 'angela', '123456amc', 'caja', 'activo', 'Bryan');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
