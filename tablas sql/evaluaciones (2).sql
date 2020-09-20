-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2020 a las 07:19:55
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
-- Estructura de tabla para la tabla `evaluaciones`
--

CREATE TABLE `evaluaciones` (
  `codigo_evaluacion` int(11) NOT NULL,
  `codigo_proyecto` int(11) NOT NULL,
  `evaluador` int(11) NOT NULL,
  `tipo_evaluacion` varchar(150) NOT NULL,
  `proceco_calificacion` varchar(150) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `observaciones_ad` mediumtext NOT NULL,
  `motivo_decision` mediumtext NOT NULL,
  `estado` varchar(2) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evaluaciones`
--

INSERT INTO `evaluaciones` (`codigo_evaluacion`, `codigo_proyecto`, `evaluador`, `tipo_evaluacion`, `proceco_calificacion`, `puntaje`, `observaciones_ad`, `motivo_decision`, `estado`) VALUES
(1, 26, 5, 'Fase 1', '', 9, '', '', 'A'),
(2, 27, 5, 'Fase 1', '', 7, '', 'No cumple con los requisitos.', 'A'),
(3, 26, 1, 'Fase 2', '', 17, '', 'Cumple', 'A'),
(4, 30, 1, 'Fase 2', '', 19, '', '', 'A'),
(5, 34, 5, 'Fase 1', '', 9, '', '', 'A'),
(6, 34, 1, 'Fase 2', '', 17, '', '', 'A'),
(7, 34, 4, 'Fase 3', '', 18, '', '', 'A'),
(8, 34, 6, 'Fase 4', '', 1, '', '', 'A'),
(9, 34, 7, 'Fase 5', '', 1, '', '', 'A'),
(10, 35, 5, 'Fase 1', '', 9, '', '', 'A'),
(11, 35, 1, 'Fase 2', '', 17, '', '', 'A'),
(12, 35, 4, 'Fase 3', '', 18, '', '', 'A'),
(13, 35, 6, 'Fase 4', '', 1, '', '', 'A'),
(14, 35, 7, 'Fase 5', '', 1, '', '', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD PRIMARY KEY (`codigo_evaluacion`),
  ADD KEY `codigo_proyecto` (`codigo_proyecto`),
  ADD KEY `evaluador` (`evaluador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  MODIFY `codigo_evaluacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD CONSTRAINT `evaluaciones_ibfk_1` FOREIGN KEY (`codigo_proyecto`) REFERENCES `proyectos` (`Codigo_Proyecto`),
  ADD CONSTRAINT `evaluaciones_ibfk_2` FOREIGN KEY (`evaluador`) REFERENCES `evaluadores` (`codigo_evaluador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
