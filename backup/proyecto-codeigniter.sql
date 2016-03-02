-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-03-2016 a las 12:15:52
-- Versión del servidor: 5.5.44-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto-codeigniter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum`
--

CREATE TABLE IF NOT EXISTS `curriculum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `dni` char(8) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `distrito` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `curriculum`
--

INSERT INTO `curriculum` (`id`, `nombre`, `apellidos`, `dni`, `fecha_nac`, `distrito`, `direccion`, `estado`) VALUES
(26, 'Augusto', 'Bonilla', '41265628', '1982-08-06', 'SJL', 'Las flores', 1),
(27, 'Augusto', 'Bonilla', '41265628', '1982-08-06', 'Santa Anita', 'Las flores', 1),
(28, 'Augusto', 'Bonilla', '41265628', '1982-08-06', 'Santa Anita', 'Las flores', 1),
(29, 'Hellen', 'Sanchez', '58585855', '1982-06-06', 'SJL', 'rimarinas', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `dni` char(8) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `name`, `last_name`, `dni`, `status`, `date_add`, `date_update`) VALUES
(3, 'Augusto', 'Bonilla', '41265612', 99, '2016-02-29 16:16:22', NULL),
(4, 'Hellensdsdssssssssss', 'Sanchezsssssssssssssssssssssssssssssssssssss', '45265875', 1, '2016-03-02 15:20:07', NULL),
(5, 'Pepesssssdddddsssdd', 'Lunassssssssssssss', '52428563', 99, '2016-02-29 17:52:51', NULL),
(6, 'Pepe', 'Luna', '52428563', 99, '2016-02-29 16:16:53', NULL),
(7, 'Pepe', 'Luna', '52428563', 99, '2016-02-29 16:16:31', NULL),
(8, 'mili', 'perez', '52458756', 99, '2016-02-29 16:41:28', NULL),
(9, 'fffw', 'sdfwfw', '25425326', 99, '2016-02-29 16:41:06', NULL),
(10, 'mili', 'pepe', '52525252', 99, '2016-02-29 17:28:56', NULL),
(11, 'fdafaf', 'sanchez', '41414141', 99, '2016-02-29 17:04:33', NULL),
(12, 'hellen', 'sanchezzzzzzzzzzzzzzzzzz', '63636363', 99, '2016-02-29 17:10:16', NULL),
(13, 'Rosasssss', 'Julian', '76767676', 99, '2016-02-29 17:23:51', NULL),
(14, 'dfqfdwqdsdsdsd', 'qwdqwdwqfffffff', '85858585', 99, '2016-02-29 17:49:39', NULL),
(15, 'fafew', 'fewef', '56565656', 99, '2016-02-29 17:47:18', NULL),
(16, 'frgaewgr', 'garewgfarwg', '45252548', 1, '2016-02-29 17:53:09', NULL),
(17, 'frgaewgr', 'garewgfarwg', '45252548', 99, '2016-03-02 15:01:04', NULL),
(18, 'adelasssssssssssssss', 'barrios', '52458756', 99, '2016-03-02 14:49:08', NULL),
(19, 'dffdd', 'faff', '52425862', 1, '2016-03-02 15:24:27', NULL),
(20, 'dffdd', 'faff', '52425862', 1, '2016-03-02 15:24:39', NULL),
(21, 'hhhhh', 'hhhhjhh', '57487569', 1, '2016-03-02 15:25:27', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_lab`
--

CREATE TABLE IF NOT EXISTS `exp_lab` (
  `id` int(11) NOT NULL,
  `empresa` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` char(9) COLLATE utf8_spanish_ci NOT NULL,
  `year_ini` year(4) NOT NULL,
  `year_fin` year(4) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `exp_lab`
--

INSERT INTO `exp_lab` (`id`, `empresa`, `telefono`, `year_ini`, `year_fin`, `estado`) VALUES
(26, 'Supermercadossssssssssssssssssss', '4583373', 2006, 2010, 1),
(27, 'Las Firondias', '4583373', 2006, 2010, 1),
(28, 'Las Firondias', '4583373', 2006, 2010, 1),
(29, 'tulipan', '985623586', 2000, 2007, 99);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
