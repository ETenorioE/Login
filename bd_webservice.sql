-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2021 a las 17:44:00
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_webservice`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usermovil`
--

CREATE TABLE `tm_usermovil` (
  `user_id` int(11) NOT NULL,
  `user_dni` int(8) NOT NULL,
  `user_namepri` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `user_nameseg` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_apepri` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `user_apeseg` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `user_edad` int(2) NOT NULL,
  `user_depa` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `user_provi` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `user_distrito` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `user_correo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_celular` int(9) DEFAULT NULL,
  `user_domicilio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `est` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla usuario movil';

--
-- Volcado de datos para la tabla `tm_usermovil`
--

INSERT INTO `tm_usermovil` (`user_id`, `user_dni`, `user_namepri`, `user_nameseg`, `user_apepri`, `user_apeseg`, `user_edad`, `user_depa`, `user_provi`, `user_distrito`, `user_correo`, `user_celular`, `user_domicilio`, `est`) VALUES
(1, 76816993, 'EDUARDO', 'BRIAN', 'TENORIO', 'QUISPE', 0, 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA', 'TENOR.EDUARDO7@GMAIL.COM', 966929080, 'JR. MICAELA BASTIDAS N° 486', 1),
(3, 48384190, 'DELCY', 'MOYRA', 'ESPITIRU', 'POMA', 0, 'AYACUCHO', 'HUAMANGA', 'ANDRES ABELINO CACERES', 'MOYRA_148_12@GMAIL.COM', 958474717, 'JR. LOS ANGELES 159', 1),
(4, 28267684, 'RENEE', NULL, 'QUISPE', 'HUAMAN', 0, 'AYACUCHO', 'HUAMANGA', 'CARMEN ALTO', 'RENYQH-0713@HOTMAIL.COM', 966964489, 'JR. MICAELBA BASTIDAS 580', 1),
(5, 12345678, 'MARTIN', 'JOSUE', 'TENOR', 'QUISPE', 0, 'AYACUCHO', 'HUAMANGA', 'NAZARENAS', 'MOYRA_148_12@GMAIL.COM', 966964489, 'JR. LOS ANGELES 159', 1),
(6, 12345678, 'EDU', '', 'TENOR', 'QUISPE', 0, 'AYACUCHO', 'HUAMANGA', 'NAZARENAS', 'MOYRA_148_12@GMAIL.COM', 101010, 'JR. LOS ANGELES 159', 1),
(7, 56565656, 'noame', 'noeasd', 'apeloo', 'aleppi', 25, 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA', 'CORREO@GMAIL.COM', 966987785, 'AV. JOSE GRANDA', 1),
(8, 48384190, 'BRIAN', 'EDWARD', 'TENOR', 'QUISPE', 25, 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA', 'TENOR.EDUARDO7@GMAIL.COM', 966929080, 'JR. LOS ANGELES 159', 1),
(9, 19565656, 'noame', 'noeasd', 'apeloo', 'aleppi', 25, 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA', 'CORREO@GMAIL.COM', 966987785, 'AV. JOSE GRANDA', 1),
(10, 1115656, 'noame', 'noeasd', 'apeloo', 'aleppi', 25, 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA', 'CORREO@GMAIL.COM', 966987785, 'AV. JOSE GRANDA', 1),
(11, 4445656, 'noame', 'noeasd', 'apeloo', 'aleppi', 25, 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA', 'CORREO@GMAIL.COM', 966987785, 'AV. JOSE GRANDA', 1),
(12, 123, 'EDU', 'noeasd', 'apeloo', 'aleppi', 25, 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA', 'CORREO@GMAIL.COM', 966987785, 'AV. JOSE GRANDA', 1),
(13, 85857996, 'UUDUARDO', 'BBRIAN', 'TTENORIO', 'QQUISPE', 10, 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA', 'TENOR.EDUARDO7@GMAIL.COM', 966929080, 'JR. MICAELA BASTIDAS N° 486', 1),
(16, 21857996, 'UUDUARDO', '', 'TTENORIO', 'QQUISPE', 10, 'AYACUCHO', 'HUAMANGA', 'SAN JUAN BAUTISTA', 'TENOR.EDUARDO7@GMAIL.COM', 966929080, 'JR. MICAELA BASTIDAS N° 486', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_usermovil`
--
ALTER TABLE `tm_usermovil`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_usermovil`
--
ALTER TABLE `tm_usermovil`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
