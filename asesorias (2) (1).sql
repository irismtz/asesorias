-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2019 a las 05:31:28
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.6

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
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `idnumControl` int(11) NOT NULL,
  `cuatrimestre` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idGrupo` int(11) NOT NULL,
  `idProEducativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesoria`
--

CREATE TABLE `asesoria` (
  `idAsesoria` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estatus` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `idNumEmpleado` int(11) NOT NULL,
  `idTema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contienematases`
--

CREATE TABLE `contienematases` (
  `idMateria` int(11) NOT NULL,
  `idAsesoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursamateria`
--

CREATE TABLE `cursamateria` (
  `idnumControl` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idNumEmpleado` int(50) NOT NULL,
  `estado` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idTipoEmpleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `idGrupo` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `idProEducativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impartemateria`
--

CREATE TABLE `impartemateria` (
  `idNumEmpleado` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `idMateria` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `idNotificacion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estatus` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `mensaje` varchar(250) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obtienenoti`
--

CREATE TABLE `obtienenoti` (
  `idNumEmpleado` int(11) NOT NULL,
  `idNotificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proeducativo`
--

CREATE TABLE `proeducativo` (
  `idProEducativo` int(11) NOT NULL,
  `nombre` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibirnoti`
--

CREATE TABLE `recibirnoti` (
  `idnumControl` int(11) NOT NULL,
  `idNotificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitaasesoria`
--

CREATE TABLE `solicitaasesoria` (
  `idnumControl` int(11) NOT NULL,
  `idAsesoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `idTema` int(11) NOT NULL,
  `tema` varchar(250) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoempleado`
--

CREATE TABLE `tipoempleado` (
  `idTipoEmpleado` int(11) NOT NULL,
  `estado` varchar(30) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `correo` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `usename` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `contrasena` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `apellidoP` varchar(35) COLLATE latin1_spanish_ci NOT NULL,
  `apellidoM` varchar(35) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`idnumControl`),
  ADD KEY `idUsuario` (`idUsuario`,`idGrupo`,`idProEducativo`),
  ADD KEY `idGrupo` (`idGrupo`),
  ADD KEY `idProEducativo` (`idProEducativo`);

--
-- Indices de la tabla `asesoria`
--
ALTER TABLE `asesoria`
  ADD PRIMARY KEY (`idAsesoria`),
  ADD KEY `idNumEmpleado` (`idNumEmpleado`,`idTema`),
  ADD KEY `idTema` (`idTema`);

--
-- Indices de la tabla `contienematases`
--
ALTER TABLE `contienematases`
  ADD PRIMARY KEY (`idMateria`,`idAsesoria`),
  ADD KEY `idMateria` (`idMateria`,`idAsesoria`),
  ADD KEY `idAsesoria` (`idAsesoria`);

--
-- Indices de la tabla `cursamateria`
--
ALTER TABLE `cursamateria`
  ADD PRIMARY KEY (`idnumControl`,`idMateria`),
  ADD KEY `idnumControl` (`idnumControl`,`idMateria`),
  ADD KEY `idMateria` (`idMateria`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idNumEmpleado`),
  ADD KEY `idUsuario` (`idUsuario`,`idTipoEmpleado`),
  ADD KEY `idTipoEmpleado` (`idTipoEmpleado`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idGrupo`),
  ADD KEY `idProEducativo` (`idProEducativo`);

--
-- Indices de la tabla `impartemateria`
--
ALTER TABLE `impartemateria`
  ADD PRIMARY KEY (`idNumEmpleado`,`idMateria`),
  ADD KEY `idNumEmpleado` (`idNumEmpleado`,`idMateria`),
  ADD KEY `idMateria` (`idMateria`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idMateria`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`idNotificacion`);

--
-- Indices de la tabla `obtienenoti`
--
ALTER TABLE `obtienenoti`
  ADD PRIMARY KEY (`idNumEmpleado`,`idNotificacion`),
  ADD KEY `idNumEmpleado` (`idNumEmpleado`,`idNotificacion`),
  ADD KEY `idNotificacion` (`idNotificacion`);

--
-- Indices de la tabla `proeducativo`
--
ALTER TABLE `proeducativo`
  ADD PRIMARY KEY (`idProEducativo`);

--
-- Indices de la tabla `recibirnoti`
--
ALTER TABLE `recibirnoti`
  ADD PRIMARY KEY (`idnumControl`,`idNotificacion`),
  ADD KEY `idnumControl` (`idnumControl`,`idNotificacion`),
  ADD KEY `idNotificacion` (`idNotificacion`);

--
-- Indices de la tabla `solicitaasesoria`
--
ALTER TABLE `solicitaasesoria`
  ADD PRIMARY KEY (`idnumControl`,`idAsesoria`),
  ADD KEY `idnumControl` (`idnumControl`,`idAsesoria`),
  ADD KEY `idAsesoria` (`idAsesoria`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`idTema`);

--
-- Indices de la tabla `tipoempleado`
--
ALTER TABLE `tipoempleado`
  ADD PRIMARY KEY (`idTipoEmpleado`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`idGrupo`) REFERENCES `grupo` (`idGrupo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumno_ibfk_3` FOREIGN KEY (`idProEducativo`) REFERENCES `proeducativo` (`idProEducativo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `asesoria`
--
ALTER TABLE `asesoria`
  ADD CONSTRAINT `asesoria_ibfk_1` FOREIGN KEY (`idTema`) REFERENCES `tema` (`idTema`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asesoria_ibfk_2` FOREIGN KEY (`idNumEmpleado`) REFERENCES `empleado` (`idNumEmpleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `contienematases`
--
ALTER TABLE `contienematases`
  ADD CONSTRAINT `contienematases_ibfk_1` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `contienematases_ibfk_2` FOREIGN KEY (`idAsesoria`) REFERENCES `asesoria` (`idAsesoria`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cursamateria`
--
ALTER TABLE `cursamateria`
  ADD CONSTRAINT `cursamateria_ibfk_1` FOREIGN KEY (`idnumControl`) REFERENCES `alumno` (`idnumControl`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cursamateria_ibfk_2` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`idTipoEmpleado`) REFERENCES `tipoempleado` (`idTipoEmpleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`idProEducativo`) REFERENCES `proeducativo` (`idProEducativo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `impartemateria`
--
ALTER TABLE `impartemateria`
  ADD CONSTRAINT `impartemateria_ibfk_1` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `impartemateria_ibfk_2` FOREIGN KEY (`idNumEmpleado`) REFERENCES `empleado` (`idNumEmpleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `obtienenoti`
--
ALTER TABLE `obtienenoti`
  ADD CONSTRAINT `obtienenoti_ibfk_1` FOREIGN KEY (`idNotificacion`) REFERENCES `notificacion` (`idNotificacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `obtienenoti_ibfk_2` FOREIGN KEY (`idNumEmpleado`) REFERENCES `empleado` (`idNumEmpleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `recibirnoti`
--
ALTER TABLE `recibirnoti`
  ADD CONSTRAINT `recibirnoti_ibfk_1` FOREIGN KEY (`idNotificacion`) REFERENCES `notificacion` (`idNotificacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `recibirnoti_ibfk_2` FOREIGN KEY (`idnumControl`) REFERENCES `alumno` (`idnumControl`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitaasesoria`
--
ALTER TABLE `solicitaasesoria`
  ADD CONSTRAINT `solicitaasesoria_ibfk_1` FOREIGN KEY (`idAsesoria`) REFERENCES `asesoria` (`idAsesoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitaasesoria_ibfk_2` FOREIGN KEY (`idnumControl`) REFERENCES `alumno` (`idnumControl`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
