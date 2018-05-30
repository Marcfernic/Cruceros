-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 27, 2013 at 01:30 PM
-- Server version: 5.5.32
-- PHP Version: 5.3.10-1ubuntu3.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cruceros`
--

-- --------------------------------------------------------

--
-- Table structure for table `Barcos`
--

CREATE TABLE IF NOT EXISTS `Barcos` (
  `codigo` varchar(2) NOT NULL,
  `nombre` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Barcos`
--

INSERT INTO `Barcos` (`codigo`, `nombre`) VALUES
('AR', 'ARMONIA'),
('DI', 'DIVINA'),
('FA', 'FANTASIA'),
('LI', 'LIRICA'),
('MA', 'MAGNIFICA'),
('MU', 'MUSICA'),
('OP', 'OPERA'),
('OR', 'ORCHESTRA'),
('PO', 'POESIA'),
('PR', 'PREZIOSA'),
('SI', 'SINFONIA'),
('SP', 'SPLENDIDA');

-- --------------------------------------------------------

--
-- Table structure for table `Camarote`
--

CREATE TABLE IF NOT EXISTS `Camarote` (
  `barco` varchar(2) NOT NULL,
  `numero` int(2) NOT NULL,
  `cubierta` int(1) DEFAULT NULL,
  `categoria` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`barco`,`numero`),
  KEY `categoria` (`categoria`),
  KEY `numero` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Camarote`
--

INSERT INTO `Camarote` (`barco`, `numero`, `cubierta`, `categoria`) VALUES
('DI', 1, 0, 'INS'),
('DI', 2, 0, 'OUT'),
('DI', 3, 0, 'OUB'),
('DI', 4, 0, 'SUI'),
('DI', 5, 0, 'SUB'),
('DI', 6, 0, 'SUA'),
('DI', 7, 0, 'SAB'),
('DI', 8, 0, 'SUD'),
('DI', 9, 0, 'SUF'),
('DI', 10, 1, 'FLA'),
('DI', 11, 1, 'YTC'),
('DI', 12, 1, 'INS'),
('DI', 13, 1, 'OUT'),
('DI', 14, 1, 'OUB'),
('DI', 15, 1, 'SUI'),
('DI', 16, 1, 'SUB'),
('DI', 17, 1, 'SUA'),
('DI', 18, 1, 'SAB'),
('DI', 19, 1, 'SUD'),
('DI', 20, 2, 'SUF'),
('DI', 21, 2, 'FLA'),
('DI', 22, 2, 'YTC'),
('DI', 23, 2, 'INS'),
('DI', 24, 2, 'OUT'),
('DI', 25, 2, 'OUB'),
('DI', 26, 2, 'SUI'),
('DI', 27, 2, 'SUB'),
('DI', 28, 2, 'SUA'),
('DI', 29, 2, 'SAB'),
('DI', 30, 3, 'SUD'),
('DI', 31, 3, 'SUF'),
('DI', 32, 3, 'FLA'),
('DI', 33, 3, 'YTC'),
('DI', 34, 3, 'INS'),
('DI', 35, 3, 'OUT'),
('DI', 36, 3, 'OUB'),
('DI', 37, 3, 'SUI'),
('DI', 38, 3, 'SUB'),
('DI', 39, 3, 'SUA'),
('DI', 40, 4, 'SAB'),
('DI', 41, 4, 'SUD'),
('DI', 42, 4, 'SUF'),
('DI', 43, 4, 'FLA'),
('DI', 44, 4, 'YTC'),
('FA', 1, 0, 'INS'),
('FA', 2, 0, 'OUT'),
('FA', 3, 0, 'OUB'),
('FA', 4, 0, 'SUI'),
('FA', 5, 0, 'SUB'),
('FA', 6, 0, 'SUA'),
('FA', 7, 0, 'SAB'),
('FA', 8, 0, 'SUD'),
('FA', 9, 0, 'SUF'),
('FA', 10, 1, 'FLA'),
('FA', 11, 1, 'YTC'),
('FA', 12, 1, 'INS'),
('FA', 13, 1, 'OUT'),
('FA', 14, 1, 'OUB'),
('FA', 15, 1, 'SUI'),
('FA', 16, 1, 'SUB'),
('FA', 17, 1, 'SUA'),
('FA', 18, 1, 'SAB'),
('FA', 19, 1, 'SUD'),
('FA', 20, 2, 'SUF'),
('FA', 21, 2, 'FLA'),
('FA', 22, 2, 'YTC'),
('FA', 23, 2, 'INS'),
('FA', 24, 2, 'OUT'),
('FA', 25, 2, 'OUB'),
('FA', 26, 2, 'SUI'),
('FA', 27, 2, 'SUB'),
('FA', 28, 2, 'SUA'),
('FA', 29, 2, 'SAB'),
('FA', 30, 3, 'SUD'),
('FA', 31, 3, 'SUF'),
('FA', 32, 3, 'FLA'),
('FA', 33, 3, 'YTC'),
('FA', 34, 3, 'INS'),
('FA', 35, 3, 'OUT'),
('FA', 36, 3, 'OUB'),
('FA', 37, 3, 'SUI'),
('FA', 38, 3, 'SUB'),
('FA', 39, 3, 'SUA'),
('FA', 40, 4, 'SAB'),
('FA', 41, 4, 'SUD'),
('FA', 42, 4, 'SUF'),
('FA', 43, 4, 'FLA'),
('FA', 44, 4, 'YTC'),
('LI', 1, 0, 'INS'),
('LI', 2, 0, 'OUT'),
('LI', 3, 0, 'OUB'),
('LI', 4, 0, 'SUI'),
('LI', 5, 0, 'SUB'),
('LI', 6, 0, 'SUA'),
('LI', 7, 0, 'SAB'),
('LI', 8, 0, 'SUD'),
('LI', 9, 0, 'SUF'),
('LI', 10, 1, 'FLA'),
('LI', 11, 1, 'YTC'),
('LI', 12, 1, 'INS'),
('LI', 13, 1, 'OUT'),
('LI', 14, 1, 'OUB'),
('LI', 15, 1, 'SUI'),
('LI', 16, 1, 'SUB'),
('LI', 17, 1, 'SUA'),
('LI', 18, 1, 'SAB'),
('LI', 19, 1, 'SUD'),
('LI', 20, 2, 'SUF'),
('LI', 21, 2, 'FLA'),
('LI', 22, 2, 'YTC'),
('LI', 23, 2, 'INS'),
('LI', 24, 2, 'OUT'),
('LI', 25, 2, 'OUB'),
('LI', 26, 2, 'SUI'),
('LI', 27, 2, 'SUB'),
('LI', 28, 2, 'SUA'),
('LI', 29, 2, 'SAB'),
('LI', 30, 3, 'SUD'),
('LI', 31, 3, 'SUF'),
('LI', 32, 3, 'FLA'),
('LI', 33, 3, 'YTC'),
('LI', 34, 3, 'INS'),
('LI', 35, 3, 'OUT'),
('LI', 36, 3, 'OUB'),
('LI', 37, 3, 'SUI'),
('LI', 38, 3, 'SUB'),
('LI', 39, 3, 'SUA'),
('LI', 40, 4, 'SAB'),
('LI', 41, 4, 'SUD'),
('LI', 42, 4, 'SUF'),
('LI', 43, 4, 'FLA'),
('LI', 44, 4, 'YTC'),
('PR', 1, 0, 'INS'),
('PR', 2, 0, 'OUT'),
('PR', 3, 0, 'OUB'),
('PR', 4, 0, 'SUI'),
('PR', 5, 0, 'SUB'),
('PR', 6, 0, 'SUA'),
('PR', 7, 0, 'SAB'),
('PR', 8, 0, 'SUD'),
('PR', 9, 0, 'SUF'),
('PR', 10, 1, 'FLA'),
('PR', 11, 1, 'YTC'),
('PR', 12, 1, 'INS'),
('PR', 13, 1, 'OUT'),
('PR', 14, 1, 'OUB'),
('PR', 15, 1, 'SUI'),
('PR', 16, 1, 'SUB'),
('PR', 17, 1, 'SUA'),
('PR', 18, 1, 'SAB'),
('PR', 19, 1, 'SUD'),
('PR', 20, 2, 'SUF'),
('PR', 21, 2, 'FLA'),
('PR', 22, 2, 'YTC'),
('PR', 23, 2, 'INS'),
('PR', 24, 2, 'OUT'),
('PR', 25, 2, 'OUB'),
('PR', 26, 2, 'SUI'),
('PR', 27, 2, 'SUB'),
('PR', 28, 2, 'SUA'),
('PR', 29, 2, 'SAB'),
('PR', 30, 3, 'SUD'),
('PR', 31, 3, 'SUF'),
('PR', 32, 3, 'FLA'),
('PR', 33, 3, 'YTC'),
('PR', 34, 3, 'INS'),
('PR', 35, 3, 'OUT'),
('PR', 36, 3, 'OUB'),
('PR', 37, 3, 'SUI'),
('PR', 38, 3, 'SUB'),
('PR', 39, 3, 'SUA'),
('PR', 40, 4, 'SAB'),
('PR', 41, 4, 'SUD'),
('PR', 42, 4, 'SUF'),
('PR', 43, 4, 'FLA'),
('PR', 44, 4, 'YTC'),
('SP', 1, 0, 'INS'),
('SP', 2, 0, 'OUT'),
('SP', 3, 0, 'OUB'),
('SP', 4, 0, 'SUI'),
('SP', 5, 0, 'SUB'),
('SP', 6, 0, 'SUA'),
('SP', 7, 0, 'SAB'),
('SP', 8, 0, 'SUD'),
('SP', 9, 0, 'SUF'),
('SP', 10, 1, 'FLA'),
('SP', 11, 1, 'YTC'),
('SP', 12, 1, 'INS'),
('SP', 13, 1, 'OUT'),
('SP', 14, 1, 'OUB'),
('SP', 15, 1, 'SUI'),
('SP', 16, 1, 'SUB'),
('SP', 17, 1, 'SUA'),
('SP', 18, 1, 'SAB'),
('SP', 19, 1, 'SUD'),
('SP', 20, 2, 'SUF'),
('SP', 21, 2, 'FLA'),
('SP', 22, 2, 'YTC'),
('SP', 23, 2, 'INS'),
('SP', 24, 2, 'OUT'),
('SP', 25, 2, 'OUB'),
('SP', 26, 2, 'SUI'),
('SP', 27, 2, 'SUB'),
('SP', 28, 2, 'SUA'),
('SP', 29, 2, 'SAB'),
('SP', 30, 3, 'SUD'),
('SP', 31, 3, 'SUF'),
('SP', 32, 3, 'FLA'),
('SP', 33, 3, 'YTC'),
('SP', 34, 3, 'INS'),
('SP', 35, 3, 'OUT'),
('SP', 36, 3, 'OUB'),
('SP', 37, 3, 'SUI'),
('SP', 38, 3, 'SUB'),
('SP', 39, 3, 'SUA'),
('SP', 40, 4, 'SAB'),
('SP', 41, 4, 'SUD'),
('SP', 42, 4, 'SUF'),
('SP', 43, 4, 'FLA'),
('SP', 44, 4, 'YTC');

-- --------------------------------------------------------

--
-- Table structure for table `Categoria`
--

CREATE TABLE IF NOT EXISTS `Categoria` (
  `codigo` varchar(3) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `precioNoche` int(3) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Categoria`
--

INSERT INTO `Categoria` (`codigo`, `nombre`, `precioNoche`) VALUES
('FLA', 'Super Family Cabin', 140),
('INS', 'Interior', 50),
('OUB', 'Camarote con balcon', 70),
('OUT', 'Vista al mar', 60),
('SAB', 'Aurea Suite Balcony', 110),
('SUA', 'Aurea Suite', 100),
('SUB', 'Suite con balcon', 90),
('SUD', 'Deluxe suite', 120),
('SUF', 'Suite familiar con balcon', 130),
('SUI', 'Suite', 80),
('YTC', 'Yacht Club', 150);

-- --------------------------------------------------------

--
-- Table structure for table `Etapas`
--

CREATE TABLE IF NOT EXISTS `Etapas` (
  `itinerario` int(1) NOT NULL,
  `dia` int(1) NOT NULL,
  `puerto` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`itinerario`,`dia`),
  KEY `fk_Etapas_Itinerarios1` (`itinerario`),
  KEY `puerto` (`puerto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Etapas`
--

INSERT INTO `Etapas` (`itinerario`, `dia`, `puerto`) VALUES
(1, 4, 'BCN'),
(3, 1, 'BRI'),
(2, 4, 'CVV'),
(3, 6, 'DUB'),
(1, 6, 'GOA'),
(2, 5, 'GOA'),
(3, 4, 'IST'),
(3, 3, 'IZM'),
(3, 2, 'KAT'),
(1, 5, 'MRS'),
(2, 6, 'MRS'),
(1, 1, 'MSN'),
(1, 2, 'TNZ'),
(2, 2, 'TNZ'),
(2, 1, 'VLC');

-- --------------------------------------------------------

--
-- Table structure for table `Itinerarios`
--

CREATE TABLE IF NOT EXISTS `Itinerarios` (
  `codigo` int(1) NOT NULL,
  `barco` varchar(2) DEFAULT NULL,
  `noches` int(1) DEFAULT NULL,
  `puertoSalida` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_Itinerarios_Barcos1` (`barco`),
  KEY `fk_Itinerarios_Puertos1` (`puertoSalida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Itinerarios`
--

INSERT INTO `Itinerarios` (`codigo`, `barco`, `noches`, `puertoSalida`) VALUES
(1, 'PR', 7, 'NAP'),
(2, 'SP', 7, 'BCN'),
(3, 'DI', 7, 'VCE');

-- --------------------------------------------------------

--
-- Table structure for table `Paises`
--

CREATE TABLE IF NOT EXISTS `Paises` (
  `codigo` varchar(2) NOT NULL,
  `nombre` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Paises`
--

INSERT INTO `Paises` (`codigo`, `nombre`) VALUES
('AE', 'Emiratos Arabes'),
('AL', 'Argelia'),
('AR', 'Argentina'),
('BR', 'Brasil'),
('CR', 'Croacia'),
('DE', 'Alemania'),
('DK', 'Dinamarca'),
('DO', 'Republica Dominicana'),
('ES', 'España'),
('FR', 'Francia'),
('GB', 'Gran Bretaña'),
('GR', 'Grecia'),
('IT', 'Italia'),
('NL', 'Holanda'),
('PT', 'Portugal'),
('TU', 'Turquia'),
('US', 'Estados Unidos'),
('ZA', 'Republica Surafricana');

-- --------------------------------------------------------

--
-- Table structure for table `Puertos`
--

CREATE TABLE IF NOT EXISTS `Puertos` (
  `codigo` varchar(3) NOT NULL,
  `nombre` varchar(17) DEFAULT NULL,
  `pais` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_Puertos_Paises1` (`pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Puertos`
--

INSERT INTO `Puertos` (`codigo`, `nombre`, `pais`) VALUES
('AGP', 'Malaga', 'ES'),
('AOI', 'Ancona', 'IT'),
('BCN', 'Barcelona', 'ES'),
('BIO', 'Bilbao', 'ES'),
('BRI', 'Bari', 'IT'),
('BUE', 'Buenos Aires', 'AR'),
('CPH', 'Copenhague', 'DK'),
('CPT', 'Ciudad del Cabo', 'ZA'),
('CVV', 'Civitavecchia', 'IT'),
('DUB', 'Dubrovnik', 'CR'),
('DUR', 'Durban', 'ZA'),
('DVR', 'Dover', 'GB'),
('DXB', 'Dubai', 'AE'),
('GOA', 'Genova', 'IT'),
('HAM', 'Hamburgo', 'DE'),
('IBZ', 'Ibiza', 'ES'),
('IJM', 'IJmuiden', 'NL'),
('IST', 'Estambul', 'TU'),
('IZM', 'Esmirna', 'TU'),
('KAT', 'Katakolon', 'GR'),
('KEL', 'Kiel', 'DE'),
('LIS', 'Lisboa ', 'PT'),
('LPA', 'Las Palmas', 'ES'),
('MIA', 'Miami', 'US'),
('MRS', 'Marsella', 'FR'),
('MSN', 'Mesina', 'IT'),
('NAP', 'Napoles', 'IT'),
('OLB', 'Olbia', 'IT'),
('PMI', 'Palma de Mallorca', 'ES'),
('PMO', 'Palermo', 'IT'),
('RIO', 'Rio de Janeiro', 'BR'),
('SAL', 'Salerno', 'IT'),
('SDQ', 'Santo Domingo', 'DO'),
('SOU', 'Southampton', 'GB'),
('SRL', 'San Rafael', 'US'),
('SSZ', 'Santos', 'BR'),
('TNZ', 'Tunez', 'AL'),
('VCE', 'Venecia ', 'IT'),
('VGO', 'Vigo', 'ES'),
('VLC', 'Valencia', 'ES');

-- --------------------------------------------------------

--
-- Table structure for table `Reservas`
--

CREATE TABLE IF NOT EXISTS `Reservas` (
  `salida` int(1) NOT NULL,
  `camarote` int(2) NOT NULL,
  `dni` int(8) DEFAULT NULL,
  `apellidos` varchar(11) DEFAULT NULL,
  `nombre` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`salida`,`camarote`),
  KEY `fk_Reservas_Salidas1` (`salida`),
  KEY `fk_Reservas_Camarote1` (`camarote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Reservas`
--

INSERT INTO `Reservas` (`salida`, `camarote`, `dni`, `apellidos`, `nombre`) VALUES
(1, 10, 11111111, 'apellidos1', 'nombre1'),
(1, 12, 22222222, 'apellidos2', 'nombre2'),
(1, 15, 33333333, 'apellidos3', 'nombre3'),
(1, 18, 44444444, 'apellidos4', 'nombre4'),
(1, 23, 77777777, 'apellidos7', 'nombre7'),
(1, 33, 55555555, 'apellidos5', 'nombre5'),
(1, 34, 88888888, 'apellidos8', 'nombre8'),
(1, 35, 66666666, 'apellidos6', 'nombre6'),
(1, 44, 99999999, 'apellidos9', 'nombre9'),
(2, 5, 10101010, 'apellidos10', 'nombre10'),
(2, 7, 20202020, 'apellidos11', 'nombre11'),
(2, 12, 30303030, 'apellidos12', 'nombre12'),
(2, 14, 40404040, 'apellidos13', 'nombre13'),
(2, 17, 50505050, 'apellidos14', 'nombre14'),
(2, 22, 60606060, 'apellidos15', 'nombre15'),
(2, 25, 70707070, 'apellidos16', 'nombre16'),
(2, 26, 80808080, 'apellidos17', 'nombre17'),
(2, 31, 90909090, 'apellidos18', 'nombre18'),
(3, 4, 34343434, 'apellidos21', 'nombre21'),
(3, 13, 56565656, 'apellidos23', 'nombre23'),
(3, 15, 45454545, 'apellidos22', 'nombre22'),
(3, 26, 23232323, 'apellidos20', 'nombre20'),
(3, 38, 12121212, 'apellidos19', 'nombre19'),
(3, 44, 67676767, 'apellidos24', 'nombre24'),
(4, 16, 24242424, 'apellidos28', 'nombre28'),
(4, 21, 35353535, 'apellidos29', 'nombre29'),
(4, 36, 78787878, 'apellidos25', 'nombre25'),
(4, 38, 46464646, 'apellidos30', 'nombre30'),
(4, 43, 89898989, 'apellidos26', 'nombre26'),
(4, 44, 13131313, 'apellidos27', 'nombre27'),
(5, 9, 79797979, 'apellidos33', 'nombre33'),
(5, 16, 15151515, 'apellidos34', 'nombre34'),
(5, 26, 57575757, 'apellidos31', 'nombre31'),
(5, 34, 68686868, 'apellidos32', 'nombre32'),
(5, 40, 37373737, 'apellidos36', 'nombre36'),
(5, 41, 26262626, 'apellidos35', 'nombre35'),
(6, 1, 38383838, 'apellidos41', 'nombre41'),
(6, 7, 27272727, 'apellidos40', 'nombre40'),
(6, 9, 16161616, 'apellidos39', 'nombre39'),
(6, 14, 49494949, 'apellidos42', 'nombre42'),
(6, 37, 48484848, 'apellidos37', 'nombre37'),
(6, 38, 59595959, 'apellidos38', 'nombre38');

-- --------------------------------------------------------

--
-- Table structure for table `Salidas`
--

CREATE TABLE IF NOT EXISTS `Salidas` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `itinerario` int(1) NOT NULL,
  `fechaSalida` date NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_Salidas_Itinerarios1` (`itinerario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Salidas`
--

INSERT INTO `Salidas` (`codigo`, `itinerario`, `fechaSalida`) VALUES
(1, 1, '2013/09/02'),
(2, 1, '2013/09/09'),
(3, 2, '2013/09/02'),
(4, 2, '2013/09/09'),
(5, 3, '2013/08/31'),
(6, 3, '2013/09/07');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Camarote`
--
ALTER TABLE `Camarote`
  ADD CONSTRAINT `Camarote_ibfk_2` FOREIGN KEY (`categoria`) REFERENCES `Categoria` (`codigo`),
  ADD CONSTRAINT `Camarote_ibfk_1` FOREIGN KEY (`barco`) REFERENCES `Barcos` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Etapas`
--
ALTER TABLE `Etapas`
  ADD CONSTRAINT `Etapas_ibfk_2` FOREIGN KEY (`puerto`) REFERENCES `Puertos` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Etapas_ibfk_1` FOREIGN KEY (`itinerario`) REFERENCES `Itinerarios` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Itinerarios`
--
ALTER TABLE `Itinerarios`
  ADD CONSTRAINT `Itinerarios_ibfk_2` FOREIGN KEY (`puertoSalida`) REFERENCES `Puertos` (`codigo`),
  ADD CONSTRAINT `Itinerarios_ibfk_1` FOREIGN KEY (`barco`) REFERENCES `Barcos` (`codigo`);

--
-- Constraints for table `Puertos`
--
ALTER TABLE `Puertos`
  ADD CONSTRAINT `Puertos_ibfk_2` FOREIGN KEY (`pais`) REFERENCES `Paises` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Reservas`
--
ALTER TABLE `Reservas`
  ADD CONSTRAINT `Reservas_ibfk_2` FOREIGN KEY (`camarote`) REFERENCES `Camarote` (`numero`),
  ADD CONSTRAINT `Reservas_ibfk_1` FOREIGN KEY (`salida`) REFERENCES `Salidas` (`codigo`);

--
-- Constraints for table `Salidas`
--
ALTER TABLE `Salidas`
  ADD CONSTRAINT `Salidas_ibfk_1` FOREIGN KEY (`itinerario`) REFERENCES `Itinerarios` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
