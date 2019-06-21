-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2019 a las 17:48:16
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asesorias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `matriculaA` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombreAd` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidoP` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidoM` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contraseña` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `numControl` int(10) NOT NULL,
  `nombreA` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidoP` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidoM` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `grupo` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `programaEdu` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cuatrimestre` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contraseña` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usuraio` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesoria`
--

CREATE TABLE `asesoria` (
  `numAsesoria` smallint(5) NOT NULL,
  `fecha` date NOT NULL,
  `materia` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombreP` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `hora` date NOT NULL,
  `comentario` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `numNoti` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `emisor` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `comentario` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `matriculaP` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombreP` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidoP` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidoM` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `area` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contraseña` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `horario` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estadoCon` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportea`
--

CREATE TABLE `reportea` (
  `matriculaH` int(10) NOT NULL,
  `nombreP` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidoP` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidoM` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `horario` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `matreria` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportease`
--

CREATE TABLE `reportease` (
  `matriculaAse` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombreP` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fechaIni` date NOT NULL,
  `fechaFin` date NOT NULL,
  `grupo` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `numAsesorias` int(11) NOT NULL,
  `comentario` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`matriculaA`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`numControl`);

--
-- Indices de la tabla `asesoria`
--
ALTER TABLE `asesoria`
  ADD PRIMARY KEY (`numAsesoria`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`numNoti`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`matriculaP`);

--
-- Indices de la tabla `reportea`
--
ALTER TABLE `reportea`
  ADD PRIMARY KEY (`matriculaH`);

--
-- Indices de la tabla `reportease`
--
ALTER TABLE `reportease`
  ADD PRIMARY KEY (`matriculaAse`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
