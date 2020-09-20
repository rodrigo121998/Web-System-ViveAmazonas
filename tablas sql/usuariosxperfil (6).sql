-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2020 a las 07:20:37
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_va`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosxperfil`
--

CREATE TABLE `usuariosxperfil` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `cod_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuariosxperfil`
--

INSERT INTO `usuariosxperfil` (`id`, `id_usuario`, `cod_perfil`) VALUES
(1, 5, 6),
(2, 7, 2),
(5, 14, 2),
(6, 17, 2),
(7, 6, 2),
(8, 9, 1),
(9, 11, 1),
(12, 13, 1),
(13, 12, 3),
(14, 18, 4),
(15, 17, 4),
(16, 15, 4),
(17, 4, 5),
(18, 10, 4),
(19, 19, 2),
(20, 20, 4),
(21, 8, 4),
(22, 10, 5),
(23, 22, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuariosxperfil`
--
ALTER TABLE `usuariosxperfil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `cod_perfil` (`cod_perfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuariosxperfil`
--
ALTER TABLE `usuariosxperfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuariosxperfil`
--
ALTER TABLE `usuariosxperfil`
  ADD CONSTRAINT `usuariosxperfil_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `usuariosxperfil_ibfk_2` FOREIGN KEY (`cod_perfil`) REFERENCES `perfiles` (`cod_perfil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
