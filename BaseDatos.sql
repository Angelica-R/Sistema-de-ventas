-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



/*
	PARTE Alexis Jeanpierre Martínez Vargas
	PARTE Rafael Jesus Valdez Apaza
*/

-- Volcando estructura de base de datos para dbprueba
CREATE DATABASE IF NOT EXISTS `dbprueba` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `dbprueba`;

-- Volcando estructura para tabla dbprueba.tbcargo
CREATE TABLE IF NOT EXISTS `tbcargo` (
  `codcargo` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecargo` varchar(45) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`codcargo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbprueba.tbcargo: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `tbcargo` DISABLE KEYS */;
INSERT INTO `tbcargo` (`codcargo`, `nombrecargo`, `estado`) VALUES
	(1, 'ADMINISTRADOR', 1),
	(2, 'SECRETARIA ADMINISTRACION', 1),
	(3, 'GERENTE DE RECURSOS HUMANOS', 1),
	(4, 'GERENTE DE LOGISTICA', 1),
	(5, 'GERENTE DE VENTAS', 0),
	(6, 'GERENTE DE ALMACEN', 0),
	(7, 'PROGRAMADOR', NULL),
	(8, 'GUARDIA', NULL);
/*!40000 ALTER TABLE `tbcargo` ENABLE KEYS */;

-- Volcando estructura para tabla dbprueba.tbcliente
CREATE TABLE IF NOT EXISTS `tbcliente` (
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `correo` varchar(25) DEFAULT NULL,
  `clave` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbprueba.tbcliente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbcliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcliente` ENABLE KEYS */;

-- Volcando estructura para tabla dbprueba.tbempleado
CREATE TABLE IF NOT EXISTS `tbempleado` (
  `DNI` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Celular` varchar(11) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `clave` varchar(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `codcargo` int(11) NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `fk_tbempleado_tbcargo_idx` (`codcargo`),
  CONSTRAINT `fk_tbempleado_tbcargo` FOREIGN KEY (`codcargo`) REFERENCES `tbcargo` (`codcargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbprueba.tbempleado: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tbempleado` DISABLE KEYS */;
INSERT INTO `tbempleado` (`DNI`, `Nombre`, `Apellidos`, `Celular`, `Direccion`, `email`, `clave`, `estado`, `codcargo`) VALUES
	(12345678, 'UPT', 'UPT', '123456', 'POCOLLAY S/N', 'UPT@UPT.PE', '123456', 1, 1),
	(87654321, 'UNJBG', 'UNJBG', '123456', 'XXX', 'UNJBG@UNJBG.EDU.PE', '123456', 0, 1);
/*!40000 ALTER TABLE `tbempleado` ENABLE KEYS */;

-- Volcando estructura para tabla dbprueba.tbproducto
CREATE TABLE IF NOT EXISTS `tbproducto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla dbprueba.tbproducto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbproducto` ENABLE KEYS */;

-- Volcando estructura para procedimiento dbprueba.USP_D_ELIMINARCARGO
DELIMITER //
CREATE PROCEDURE `USP_D_ELIMINARCARGO`(
	IN `ccargo` CHAR(50)
)
BEGIN
DELETE FROM tbcargo
WHERE CODCARGO=ccargo;
END//
DELIMITER ;

-- Volcando estructura para procedimiento dbprueba.USP_I_AGREGARCARGO
DELIMITER //
CREATE PROCEDURE `USP_I_AGREGARCARGO`(
	IN `ccargo` CHAR(50),
	IN `ncargo` VARCHAR(255)
)
BEGIN
INSERT INTO tbcargo(codcargo,nombrecargo) VALUES(ccargo,ncargo);
END//
DELIMITER ;

-- Volcando estructura para procedimiento dbprueba.USP_S_BUSCARCARGOPORCODIGO
DELIMITER //
CREATE PROCEDURE `USP_S_BUSCARCARGOPORCODIGO`(
	IN `ccargo` CHAR(50)
)
BEGIN
SELECT codcargo,nombrecargo FROM tbcargo WHERE codcargo=ccargo;
END//
DELIMITER ;

-- Volcando estructura para procedimiento dbprueba.USP_S_BUSCARCARGOPORNOMBRE
DELIMITER //
CREATE PROCEDURE `USP_S_BUSCARCARGOPORNOMBRE`(
	IN `ncargo` VARCHAR(255)
)
BEGIN
SELECT codcargo,nombrecargo FROM tbcargo WHERE nombrecargo LIKE CONCAT(ncargo,'%');
END//
DELIMITER ;

-- Volcando estructura para procedimiento dbprueba.USP_S_LISTARTODOSLOSCARGOS
DELIMITER //
CREATE PROCEDURE `USP_S_LISTARTODOSLOSCARGOS`()
BEGIN
SELECT codcargo,nombrecargo FROM tbcargo; 
END//
DELIMITER ;

-- Volcando estructura para procedimiento dbprueba.USP_S_VERIFCARLOGIN
DELIMITER //
CREATE PROCEDURE `USP_S_VERIFCARLOGIN`(
	IN `demp` INT,
	IN `cemp` VARCHAR(50),
	IN `eemp` INT
)
BEGIN
SELECT DNI,NOMBRE,APELLIDOS,CLAVE,ESTADO FROM TBEMPLEADO WHERE DNI=DEMP AND CLAVE=CEMP AND ESTADO=EEMP;
END//
DELIMITER ;

-- Volcando estructura para procedimiento dbprueba.USP_U_ACTUALIZARCARGO
DELIMITER //
CREATE PROCEDURE `USP_U_ACTUALIZARCARGO`(
	IN `ccargo` VARCHAR(50),
	IN `ncargo` VARCHAR(255)
)
BEGIN
UPDATE tbcargo
SET
    nombrecargo=ncargo
    WHERE codcargo=ccargo;
END//
DELIMITER ;

/*
	FIN PARTE Alexis Jeanpierre Martínez Vargas
	FIN PARTE Rafael Jesus Valdez Apaza
*/

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
