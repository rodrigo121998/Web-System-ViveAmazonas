-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2020 a las 07:19:24
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
-- Estructura de tabla para la tabla `colaboradores`
--

CREATE TABLE `colaboradores` (
  `cod_colaborador` int(11) NOT NULL,
  `cargo` varchar(150) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `area` varchar(250) NOT NULL,
  `subarea` varchar(250) NOT NULL,
  `descripcion_puesto` mediumtext NOT NULL,
  `id_usuario_colab` int(11) NOT NULL,
  `estado` varchar(2) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colaboradores`
--

INSERT INTO `colaboradores` (`cod_colaborador`, `cargo`, `fecha_ingreso`, `area`, `subarea`, `descripcion_puesto`, `id_usuario_colab`, `estado`) VALUES
(1, 'Jefe', '2020-06-03', 'Mayor', 'Mediana', 'Importante', 4, 'A'),
(2, 'Coordinador', '2020-06-01', 'Mayor', 'Mediana', 'Uff', 9, 'I'),
(3, 'Practicante', '2020-04-16', 'pucp', 'puqui', 'redactar', 11, 'A'),
(4, 'Jefex100', '2020-07-25', 'UPC', 'PUQUI', 'ES EL JEFE', 9, 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`cod_colaborador`),
  ADD KEY `id_usuario` (`id_usuario_colab`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  MODIFY `cod_colaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD CONSTRAINT `colaboradores_ibfk_1` FOREIGN KEY (`id_usuario_colab`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
