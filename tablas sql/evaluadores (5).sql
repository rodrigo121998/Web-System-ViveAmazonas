-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2020 a las 07:20:00
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
-- Estructura de tabla para la tabla `evaluadores`
--

CREATE TABLE `evaluadores` (
  `codigo_evaluador` int(11) NOT NULL,
  `Unidad` varchar(100) DEFAULT NULL,
  `cargo_evaluador` varchar(150) NOT NULL,
  `usuario` int(11) NOT NULL,
  `cv` longblob NOT NULL,
  `estado` varchar(2) NOT NULL,
  `tipo_cv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evaluadores`
--

INSERT INTO `evaluadores` (`codigo_evaluador`, `Unidad`, `cargo_evaluador`, `usuario`, `cv`, `estado`, `tipo_cv`) VALUES
(1, 'CTI', 'Representante DAFI', 4, '', 'A', ''),
(4, 'CTE', 'Especialista en salvaguardas ambientales', 18, '', 'A', ''),
(5, 'DIGE', 'Oficial de Proyectos DIGE', 15, '', 'A', ''),
(6, 'DE', 'Director DE', 10, '', 'A', ''),
(7, 'DONANTE', 'Donante ', 20, '', 'A', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evaluadores`
--
ALTER TABLE `evaluadores`
  ADD PRIMARY KEY (`codigo_evaluador`),
  ADD KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evaluadores`
--
ALTER TABLE `evaluadores`
  MODIFY `codigo_evaluador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evaluadores`
--
ALTER TABLE `evaluadores`
  ADD CONSTRAINT `evaluadores_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
