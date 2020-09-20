-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2020 a las 07:19:43
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
-- Estructura de tabla para la tabla `donantes`
--

CREATE TABLE `donantes` (
  `IDDonante` int(11) NOT NULL,
  `ID_usuario` int(11) DEFAULT NULL,
  `Nombre_donante` varchar(50) NOT NULL,
  `RUC` varchar(12) NOT NULL,
  `Fecha_donacion` date NOT NULL,
  `pagina_web` varchar(150) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion_donan` varchar(250) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `monto_donado` float NOT NULL,
  `telefono2` varchar(12) DEFAULT NULL,
  `estado` varchar(2) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `donantes`
--

INSERT INTO `donantes` (`IDDonante`, `ID_usuario`, `Nombre_donante`, `RUC`, `Fecha_donacion`, `pagina_web`, `telefono`, `direccion_donan`, `correo`, `pais`, `monto_donado`, `telefono2`, `estado`) VALUES
(1, 18, 'J Balvin', '112233445566', '2020-06-02', NULL, NULL, NULL, NULL, NULL, 1000, '', 'A'),
(2, 17, 'Karol J y Becki G', '121212121212', '2020-06-12', '', '', '', '', '', 2000, '', 'A'),
(3, 20, 'Romeo Santos', '131313131313', '2020-06-20', NULL, NULL, NULL, NULL, NULL, 3000, '', 'A'),
(4, 4, 'Goku y Gohan', '12345678910', '2020-07-16', 'https://www.youtube.com/watch?v=_2nt21QSRSE', '987199362', 'gaaaa', 'bebaga@hotmail.com', 'Peru', 5, '', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `donantes`
--
ALTER TABLE `donantes`
  ADD PRIMARY KEY (`IDDonante`),
  ADD KEY `ID_usuario` (`ID_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `donantes`
--
ALTER TABLE `donantes`
  MODIFY `IDDonante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `donantes`
--
ALTER TABLE `donantes`
  ADD CONSTRAINT `donantes_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
