-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2020 a las 17:14:25
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `organizacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ayuda`
--

CREATE TABLE `ayuda` (
  `rol` int(10) NOT NULL,
  `fecha_envio` date NOT NULL,
  `id_destino` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ayuda_alimento`
--

CREATE TABLE `ayuda_alimento` (
  `rol` int(10) NOT NULL,
  `toneladas` int(10) NOT NULL,
  `descripcion` varchar(20) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ayuda_medicamento`
--

CREATE TABLE `ayuda_medicamento` (
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

CREATE TABLE `destino` (
  `id_destino` int(10) NOT NULL,
  `direccion` varchar(20) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envia`
--

CREATE TABLE `envia` (
  `id` int(10) NOT NULL,
  `rol` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamento`
--

CREATE TABLE `medicamento` (
  `cod_medicamento` int(10) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `nombre` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `descripcion` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `rol` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participa`
--

CREATE TABLE `participa` (
  `rut` int(10) NOT NULL,
  `rol` int(10) NOT NULL,
  `horas_trabaja` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_administrativo`
--

CREATE TABLE `personal_administrativo` (
  `rut` int(10) NOT NULL,
  `descripcion` varchar(20) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_humanitaria`
--

CREATE TABLE `personal_humanitaria` (
  `rut` int(10) NOT NULL,
  `tipo_profesion` varchar(20) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `id_sede` int(10) NOT NULL,
  `nombre_director` varchar(30) COLLATE utf32_spanish_ci NOT NULL,
  `direccion` varchar(30) COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE `socio` (
  `rut` int(10) NOT NULL,
  `nombre` int(20) NOT NULL,
  `fecha_pago` date NOT NULL,
  `cuenta` int(10) NOT NULL,
  `tipo_pago` varchar(10) COLLATE utf32_spanish_ci NOT NULL,
  `id_sede` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voluntario`
--

CREATE TABLE `voluntario` (
  `rut` int(10) NOT NULL,
  `nombre` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `descripcion` varchar(20) COLLATE utf32_spanish_ci NOT NULL,
  `id_sede` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ayuda`
--
ALTER TABLE `ayuda`
  ADD PRIMARY KEY (`rol`),
  ADD KEY `id_destino` (`id_destino`);

--
-- Indices de la tabla `ayuda_alimento`
--
ALTER TABLE `ayuda_alimento`
  ADD PRIMARY KEY (`rol`),
  ADD KEY `rol` (`rol`);

--
-- Indices de la tabla `ayuda_medicamento`
--
ALTER TABLE `ayuda_medicamento`
  ADD PRIMARY KEY (`rol`),
  ADD KEY `rol` (`rol`);

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`id_destino`);

--
-- Indices de la tabla `envia`
--
ALTER TABLE `envia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol` (`rol`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`cod_medicamento`),
  ADD KEY `rol` (`rol`);

--
-- Indices de la tabla `participa`
--
ALTER TABLE `participa`
  ADD PRIMARY KEY (`rut`,`rol`),
  ADD KEY `rut` (`rut`),
  ADD KEY `rol` (`rol`);

--
-- Indices de la tabla `personal_administrativo`
--
ALTER TABLE `personal_administrativo`
  ADD PRIMARY KEY (`rut`),
  ADD KEY `rut` (`rut`);

--
-- Indices de la tabla `personal_humanitaria`
--
ALTER TABLE `personal_humanitaria`
  ADD PRIMARY KEY (`rut`),
  ADD KEY `rut` (`rut`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`id_sede`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`rut`),
  ADD KEY `id_sede` (`id_sede`);

--
-- Indices de la tabla `voluntario`
--
ALTER TABLE `voluntario`
  ADD PRIMARY KEY (`rut`),
  ADD KEY `id_sede` (`id_sede`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `id_sede` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ayuda`
--
ALTER TABLE `ayuda`
  ADD CONSTRAINT `ayuda_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `envia` (`rol`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ayuda_alimento`
--
ALTER TABLE `ayuda_alimento`
  ADD CONSTRAINT `ayuda_alimento_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `ayuda` (`rol`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ayuda_medicamento`
--
ALTER TABLE `ayuda_medicamento`
  ADD CONSTRAINT `ayuda_medicamento_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `ayuda` (`rol`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `destino`
--
ALTER TABLE `destino`
  ADD CONSTRAINT `destino_ibfk_1` FOREIGN KEY (`id_destino`) REFERENCES `ayuda` (`id_destino`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `envia`
--
ALTER TABLE `envia`
  ADD CONSTRAINT `envia_ibfk_1` FOREIGN KEY (`id`) REFERENCES `sede` (`id_sede`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `medicamento`
--
ALTER TABLE `medicamento`
  ADD CONSTRAINT `medicamento_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `ayuda_medicamento` (`rol`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `participa`
--
ALTER TABLE `participa`
  ADD CONSTRAINT `participa_ibfk_1` FOREIGN KEY (`rut`) REFERENCES `personal_humanitaria` (`rut`) ON UPDATE CASCADE,
  ADD CONSTRAINT `participa_ibfk_2` FOREIGN KEY (`rol`) REFERENCES `ayuda` (`rol`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `personal_administrativo`
--
ALTER TABLE `personal_administrativo`
  ADD CONSTRAINT `personal_administrativo_ibfk_1` FOREIGN KEY (`rut`) REFERENCES `voluntario` (`rut`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `personal_humanitaria`
--
ALTER TABLE `personal_humanitaria`
  ADD CONSTRAINT `personal_humanitaria_ibfk_1` FOREIGN KEY (`rut`) REFERENCES `voluntario` (`rut`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `socio`
--
ALTER TABLE `socio`
  ADD CONSTRAINT `socio_ibfk_1` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id_sede`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `voluntario`
--
ALTER TABLE `voluntario`
  ADD CONSTRAINT `voluntario_ibfk_1` FOREIGN KEY (`id_sede`) REFERENCES `sede` (`id_sede`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
