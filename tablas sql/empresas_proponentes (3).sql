-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2020 a las 07:19:49
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
-- Estructura de tabla para la tabla `empresas_proponentes`
--

CREATE TABLE `empresas_proponentes` (
  `Codigo_Empresa` int(11) NOT NULL,
  `Nombre_Empresa` varchar(30) NOT NULL,
  `RUC` varchar(11) NOT NULL,
  `Grupo` varchar(250) NOT NULL,
  `ID_Representante` int(11) NOT NULL,
  `Pagina_web` varchar(250) NOT NULL,
  `Experiencia` varchar(500) NOT NULL,
  `Telefono_contacto` varchar(15) NOT NULL,
  `Direccion` varchar(500) NOT NULL,
  `Correo_Empresa` varchar(100) NOT NULL,
  `CEO` varchar(200) NOT NULL,
  `Representante_legal` varchar(200) NOT NULL,
  `Estado` char(1) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresas_proponentes`
--

INSERT INTO `empresas_proponentes` (`Codigo_Empresa`, `Nombre_Empresa`, `RUC`, `Grupo`, `ID_Representante`, `Pagina_web`, `Experiencia`, `Telefono_contacto`, `Direccion`, `Correo_Empresa`, `CEO`, `Representante_legal`, `Estado`) VALUES
(1, 'EcoAmazonas', '12345232763', 'Organizacion No Gubernamental', 6, 'www.ecoamazonas.com', 'La empresa cuenta con 50 años de experiencia', '994312728', 'Av.Amazonas 131', 'rosoriol@pucp.edu.pe', 'Rodrigo Osorio', 'Jairo Mallma', 'A'),
(22, 'EcoAmazonasgaa', '12345232763', 'Organizacion No Gubernamental', 7, 'www.ecoamazonas.com', 'La empresa cuenta con 50 años de experiencia', '994312728', 'Av.Amazonas 131', 'rosoriol@pucp.edu.pe', 'Rodrigo Osorio', 'Jairo Mallma', 'A'),
(24, 'Amundi S.A', '1234', 'Organiz', 19, 'https://paideia.pucp.edu.pe/', 'mucha', '987199362', 'gaaa', 'rosoriol@pucp.edu.pe', 'Jairo Mallma', 'Johao Ramirez', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas_proponentes`
--
ALTER TABLE `empresas_proponentes`
  ADD PRIMARY KEY (`Codigo_Empresa`),
  ADD KEY `ID_Representante` (`ID_Representante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas_proponentes`
--
ALTER TABLE `empresas_proponentes`
  MODIFY `Codigo_Empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresas_proponentes`
--
ALTER TABLE `empresas_proponentes`
  ADD CONSTRAINT `empresas_proponentes_ibfk_1` FOREIGN KEY (`ID_Representante`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
