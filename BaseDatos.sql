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


-- Volcando estructura de base de datos para electrodomesticos
CREATE DATABASE IF NOT EXISTS `electrodomesticos` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `electrodomesticos`;

-- Volcando estructura para tabla electrodomesticos.cargo
CREATE TABLE IF NOT EXISTS `cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla electrodomesticos.cargo: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` (`id`, `nombre`) VALUES
	(1, 'Gerente de Ventas');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;

-- Volcando estructura para tabla electrodomesticos.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla electrodomesticos.categoria: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`id`, `nombre`) VALUES
	(1, 'Televisor'),
	(2, 'Consolas'),
	(3, 'Teléfono');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Volcando estructura para tabla electrodomesticos.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `clave` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla electrodomesticos.cliente: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`id`, `dni`, `nombre`, `apellido`, `email`, `clave`) VALUES
	(1, '75902313', 'Diego Alonso', 'Valdez Stole', 'DigoGo@gmail.com', '31deoctubre'),
	(2, 'null', 'null', 'null', 'null', 'null'),
	(3, 'null', 'null', 'null', 'null', 'null'),
	(4, 'null', 'null', 'null', 'null', 'null'),
	(5, 'null', 'null', 'null', 'null', 'null'),
	(6, 'null', 'null', 'null', 'null', 'null'),
	(7, 'null', 'null', 'null', 'null', 'null'),
	(8, '12345678', 'arnold', 'cutipa', 'arnold@gmail.com', '12345');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla electrodomesticos.detalle_venta
CREATE TABLE IF NOT EXISTS `detalle_venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) DEFAULT NULL,
  `total_prod` double DEFAULT NULL,
  `Venta_id` int(11) NOT NULL,
  `Producto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Detalle_Venta_Venta1_idx` (`Venta_id`),
  KEY `fk_Detalle_Venta_Producto1_idx` (`Producto_id`),
  CONSTRAINT `fk_Detalle_Venta_Producto1` FOREIGN KEY (`Producto_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `fk_Detalle_Venta_Venta1` FOREIGN KEY (`Venta_id`) REFERENCES `venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla electrodomesticos.detalle_venta: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` (`id`, `cantidad`, `total_prod`, `Venta_id`, `Producto_id`) VALUES
	(1, 10, 53.5, 1, 1),
	(2, 9, 1100.99, 1, 2);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;

-- Volcando estructura para tabla electrodomesticos.empleado
CREATE TABLE IF NOT EXISTS `empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `clave` char(1) DEFAULT NULL,
  `Cargo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Empleado_Cargo1_idx` (`Cargo_id`),
  CONSTRAINT `fk_Empleado_Cargo1` FOREIGN KEY (`Cargo_id`) REFERENCES `cargo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla electrodomesticos.empleado: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` (`id`, `dni`, `nombre`, `apellido`, `estado`, `clave`, `Cargo_id`) VALUES
	(1, '74892212', 'Rafael Jesus', 'Valdez Apaza', 'A', '6', 1);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;

-- Volcando estructura para tabla electrodomesticos.marca
CREATE TABLE IF NOT EXISTS `marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla electrodomesticos.marca: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` (`id`, `nombre`, `email`, `telefono`) VALUES
	(1, 'Panasonic', 'PansonOfic@gmail.com', '956789632'),
	(2, 'Sonic', 'SonicOfic@gmail.com', '978456123'),
	(3, 'Samsung', 'SamsuOfic@gmail.com', '956789789');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;

-- Volcando estructura para tabla electrodomesticos.pago
CREATE TABLE IF NOT EXISTS `pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nrotarjet` varchar(25) DEFAULT NULL,
  `Cliente_id` int(11) NOT NULL,
  `Venta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Tarjeta_Cliente1_idx` (`Cliente_id`),
  KEY `fk_Tarjeta_Venta1_idx` (`Venta_id`),
  CONSTRAINT `fk_Tarjeta_Cliente1` FOREIGN KEY (`Cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_Tarjeta_Venta1` FOREIGN KEY (`Venta_id`) REFERENCES `venta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla electrodomesticos.pago: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;

-- Volcando estructura para tabla electrodomesticos.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `stock_referencial` int(11) DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `Marca_id` int(11) NOT NULL,
  `Categoria_id` int(11) NOT NULL,
  `Empleado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Producto_Categoria1_idx` (`Categoria_id`),
  KEY `fk_Producto_Marca1_idx` (`Marca_id`),
  KEY `fk_Producto_Empleado1_idx` (`Empleado_id`),
  CONSTRAINT `fk_Producto_Categoria1` FOREIGN KEY (`Categoria_id`) REFERENCES `categoria` (`id`),
  CONSTRAINT `fk_Producto_Empleado1` FOREIGN KEY (`Empleado_id`) REFERENCES `empleado` (`id`),
  CONSTRAINT `fk_Producto_Marca1` FOREIGN KEY (`Marca_id`) REFERENCES `marca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla electrodomesticos.producto: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` (`id`, `nombre`, `stock`, `stock_referencial`, `precio_venta`, `precio_compra`, `estado`, `foto`, `descripcion`, `Marca_id`, `Categoria_id`, `Empleado_id`) VALUES
	(1, 'Televisor 50 pulgadas', 10, 20, 959.99, 750.15, 'A', 'https://res.cloudinary.com/yizas26/image/upload/v1637809301/ProyectoUnidad3_Tienda/pana_sxom9b.png', 'Televisor Smart tv 50 pulgadas netflix, youtube, etc', 1, 1, 1),
	(2, 'Play Station 4', 41, 50, 1100.99, 958.12, 'A', 'https://res.cloudinary.com/yizas26/image/upload/v1637809302/ProyectoUnidad3_Tienda/play42_ygtwkx.png', 'Play Station 4 500GB 2 mandos + 3 juegos de regalo', 2, 2, 1),
	(3, 'Play Station 3', 30, 30, 599.99, 585.12, 'A', 'https://res.cloudinary.com/yizas26/image/upload/v1637809301/ProyectoUnidad3_Tienda/play3edit_fbteae.png', 'Play Station 3 1000GB 2 mandos + 2 juegos de regalo', 2, 2, 1),
	(4, 'Play Station 2', 30, 30, 255.99, 225.12, 'A', 'https://res.cloudinary.com/yizas26/image/upload/v1637809302/ProyectoUnidad3_Tienda/play2edit_c6jaj9.png', 'Play Station 2 50GB 2 mandos + 2 juegos de regalo', 2, 2, 1),
	(5, 'Play Station 1', 10, 10, 125.99, 110.12, 'A', 'https://res.cloudinary.com/yizas26/image/upload/v1637809301/ProyectoUnidad3_Tienda/play1edit_woerjv.png', 'Play Station 1 10GB 2 mandos + 2 juegos de regalo', 2, 2, 1),
	(6, 'Televisor 32 pulgadas', 20, 20, 544.99, 480.15, 'A', 'https://res.cloudinary.com/yizas26/image/upload/v1637809302/ProyectoUnidad3_Tienda/tv32edit_c6qii7.png', 'Televisor Smart tv 32 pulgadas netflix, youtube, etc', 3, 1, 1),
	(7, 'Televisor QLED 85 pulgadas', 20, 20, 43999.99, 40125.15, 'A', 'https://res.cloudinary.com/yizas26/image/upload/v1637809301/ProyectoUnidad3_Tienda/tv85edit_dkcafg.png', 'Televisor SAMSUNG QLED 85 pulgadas 8K Smart TV netflix, youtube, etc', 3, 1, 1),
	(8, 'Samsung Galaxy A31', 20, 20, 1199.99, 925.15, 'A', 'https://res.cloudinary.com/yizas26/image/upload/v1637809301/ProyectoUnidad3_Tienda/a31edit_ejsz2m.png', '128GB, 4GB ram, cámara principal 48MP + 8MP + 5MP + 5MP, frontal 20MP, 6.4 pulgadas, Octa-Core, negro', 3, 3, 1),
	(9, 'Samsung Galaxy A52S 5G', 20, 20, 1899.99, 1400.15, 'A', 'https://res.cloudinary.com/yizas26/image/upload/v1637809301/ProyectoUnidad3_Tienda/a52edit_uhmurc.png', '128GB, 6GB ram, cámara principal 64MP + 8MP + 5MP + 5MP, frontal 20MP, 6.4 pulgadas, Octa-Core, negro', 3, 3, 1),
	(10, 'tele', 12, 30, 1000, 500, 'A', 'asdfghh', 'televisor', 1, 1, 1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla electrodomesticos.transporte
CREATE TABLE IF NOT EXISTS `transporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `costo` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla electrodomesticos.transporte: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` (`id`, `nombre`, `email`, `telefono`, `costo`) VALUES
	(1, 'Olva Currier', 'OlvaOficial@gmail.com', '985236741', 19.08);
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
