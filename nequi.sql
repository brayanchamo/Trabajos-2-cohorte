-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2024 a las 19:40:20
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nequi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia_itfip`
--

CREATE TABLE IF NOT EXISTS `guia_itfip` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `nombres` text NOT NULL,
  `apellidos` text NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `num_documento` char(20) NOT NULL,
  `tipo_documento` tinyint(1) NOT NULL,
  `celular` char(12) NOT NULL,
  `correo` char(50) NOT NULL,
  `extracto` tinyint(1) NOT NULL,
  `dr_recidencia` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `guia_itfip`
--

INSERT INTO `guia_itfip` (`id`, `fecha_sys`, `nombres`, `apellidos`, `fecha_nacimiento`, `num_documento`, `tipo_documento`, `celular`, `correo`, `extracto`, `dr_recidencia`) VALUES
(1, '0000-00-00 00:00:00', 'Juan Andres', 'Peña nieto', '2015-07-04', '1102340540', 0, '3229860354', 'bchamorro15@itfip.edu.co', 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencias`
--

CREATE TABLE IF NOT EXISTS `transferencias` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `num_origen` char(13) NOT NULL,
  `num_destino` char(13) NOT NULL,
  `valor` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `transferencias`
--

INSERT INTO `transferencias` (`id`, `fecha_sys`, `num_origen`, `num_destino`, `valor`) VALUES
(1, '0000-00-00 00:00:00', '3637943654', '3648961234', 1000000),
(2, '0000-00-00 00:00:00', '3637943654', '3648961234', 1000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_churros`
--

CREATE TABLE IF NOT EXISTS `ventas_churros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `cantidad` smallint(2) NOT NULL,
  `valor` smallint(5) NOT NULL,
  `sabor` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_fisico`
--

CREATE TABLE IF NOT EXISTS `venta_fisico` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `valor` smallint(6) NOT NULL,
  `documento` char(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `venta_fisico`
--

INSERT INTO `venta_fisico` (`id`, `fecha_sys`, `valor`, `documento`) VALUES
(1, '0000-00-00 00:00:00', 1500, '1105750215');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
