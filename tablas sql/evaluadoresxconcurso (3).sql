-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2020 a las 07:20:04
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
-- Estructura de tabla para la tabla `evaluadoresxconcurso`
--

CREATE TABLE `evaluadoresxconcurso` (
  `id` int(11) NOT NULL,
  `id_evaluador` int(11) NOT NULL,
  `id_concurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evaluadoresxconcurso`
--

INSERT INTO `evaluadoresxconcurso` (`id`, `id_evaluador`, `id_concurso`) VALUES
(6, 5, 19),
(7, 1, 19),
(8, 4, 19),
(9, 6, 19),
(10, 7, 19),
(11, 1, 6),
(12, 4, 6),
(13, 5, 6),
(14, 6, 6),
(15, 7, 6),
(16, 1, 28),
(17, 4, 28),
(18, 5, 28),
(19, 6, 28),
(20, 7, 28),
(21, 1, 29),
(22, 4, 29),
(23, 5, 29),
(24, 6, 29),
(25, 7, 29);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evaluadoresxconcurso`
--
ALTER TABLE `evaluadoresxconcurso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_concurso` (`id_concurso`),
  ADD KEY `id_evaluador` (`id_evaluador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evaluadoresxconcurso`
--
ALTER TABLE `evaluadoresxconcurso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evaluadoresxconcurso`
--
ALTER TABLE `evaluadoresxconcurso`
  ADD CONSTRAINT `evaluadoresxconcurso_ibfk_1` FOREIGN KEY (`id_concurso`) REFERENCES `concurso` (`codigo_concurso`),
  ADD CONSTRAINT `evaluadoresxconcurso_ibfk_2` FOREIGN KEY (`id_evaluador`) REFERENCES `evaluadores` (`codigo_evaluador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
