-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.21-MariaDB-log - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para almacen_bd
CREATE DATABASE IF NOT EXISTS `almacen_bd` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `almacen_bd`;

-- Volcando estructura para tabla almacen_bd.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `Cve_Cliente` varchar(10) COLLATE armscii8_bin NOT NULL DEFAULT '',
  `Nombre1` varchar(10) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT '',
  `Nombre2` varchar(10) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `ApellidoPat` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT '',
  `ApellidoMat` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT '',
  `Pais` varchar(15) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `CodigoPostal` int(5) NOT NULL,
  `Estado` varchar(15) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT '''0''',
  `Municipio` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT '''0''',
  `Ciudad` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT '''0''',
  `Colonia` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT '''''',
  `Calle` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT '',
  `Numero` int(4) DEFAULT 0,
  `CorreoE` varchar(30) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT '0',
  `Telefono` varchar(10) COLLATE armscii8_bin NOT NULL DEFAULT '0',
  `FechaNac` date NOT NULL,
  PRIMARY KEY (`Cve_Cliente`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla almacen_bd.clientes: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`Cve_Cliente`, `Nombre1`, `Nombre2`, `ApellidoPat`, `ApellidoMat`, `Pais`, `CodigoPostal`, `Estado`, `Municipio`, `Ciudad`, `Colonia`, `Calle`, `Numero`, `CorreoE`, `Telefono`, `FechaNac`) VALUES
	('CVCLI-001', 'Francisco', '', 'Espejel', 'Zarate', 'México', 902008, 'Tlaxcala', 'Calpulalpan', 'Calpulalpan', 'Espejel', 'Lazaro Cardenas', 1, 'francisco.espejel@gmail.com', '7751042908', '2005-04-22'),
	('CVCLI-1225', 'Mayte ', 'Sarahí', 'Silva', 'Hernández', 'México', 90235, 'Tlaxcala', 'Benito Juarez', 'Benito Juarez', 'Centro', 'Morelos', 19, 'msarahi_silva@gmail.com', '7491072668', '2021-09-14'),
	('CVCLI-2359', 'Karla', 'Marlen', 'Meneses', 'Leal', 'México', 43070, 'Hidalgo', 'Tepeapulco', 'Tepeapulco', 'Pino Suárez', 'Orquideas', 12, 'karlam@gmail.com', '3464547683', '2002-03-08'),
	('CVCLI-3436', 'Panfilo', NULL, 'Hernández', 'Olvera', 'México', 11111, 'Chiapas', 'Chiconcua', 'Cervantes', 'Centro', 'Rosalinda', 12, 'panfilo@gmail.com', '1231312342', '1990-07-11'),
	('CVCLI-3445', 'Ariadna', 'Ailyn', 'Avilés', 'Rodríguez', 'México', 43972, 'Hidalgo', 'Ciudad Sahagún', 'Ciudad Sahagún', 'Magisterial', 'Insurgentes', 85, 'aaviles@gmail.com', '7741291080', '2001-09-13'),
	('CVCLI-4638', 'Sofia', 'Alejandra', 'Morales', 'Marín', 'México', 64234, 'Aguascalientes', 'Calvillo', 'Buenavista', 'Matamoros', 'Valsequillo', 24, 'sofia@gmail', '7564523373', '1995-03-22'),
	('CVCLI-528', 'José', 'Eduardo', 'Durán', 'Alamilla', 'México', 43900, 'Hidalgo', 'Apan', 'Apan', 'Centro', 'Morelos', 10, 'eduardo@gmail.com', '9876543234', '2001-07-08'),
	('CVCLI-5344', 'fafasf', 'aa', 'a', 'sf', 'México', 13123, 'Campeche', 'sad', 'sdas', 'ccc', 'cc', 12, '@fmga', '2312312121', '2021-10-04'),
	('CVCLI-5426', 'Paola', 'Itzel', 'Hernández', 'Montes', 'México', 43900, 'Hidalgo', 'Apan', 'Apan', 'Loma Bonita', 'Hidalgo', 16, 'itzel_hdez@gmail.com', '7491045347', '2000-04-11'),
	('CVCLI-5447', 'Joanna', 'María', 'Olvera', 'Díaz', 'México', 43940, 'Hidalgo', 'Almoloya', 'Almoloya', 'Centro', 'Juarez', 23, 'joannao@gmail.com', '7712546709', '2001-04-14'),
	('CVCLI-5638', 'Itzel', 'Azucena', 'Castañeda', 'Dávila', 'México', 65324, 'Hidalgo', 'Tlanalapa', 'Tlanalapa', 'Centro', 'Ramos', 12, 'itzel@gmail.com', '4467276453', '2001-06-21'),
	('CVCLI-6389', 'Dario', 'Manuel', 'López', 'Hernández', 'México', 32442, 'Sonora', 'Hermosillo', 'La boutique', 'Centro', 'Condesa', 22, 'dario@gmail.com', '6876756453', '1990-03-21'),
	('CVCLI-6914', 'Daniela', '', 'Barragán', 'Pastrana', 'México', 43412, 'Chiapas', 'Cd. del Carmen', 'Torresillas', 'Loma vista', 'Matamoros', 54, 'daniela@gmail.com', '6524626435', '1993-03-12'),
	('CVCLI-7265', 'Uri', 'Yael', 'Covarrubias', 'Cruz', 'México', 43960, 'Hidalgo', 'Emiliano Zapata', 'Emiliano Zapata', 'Centro', 'Hidalgo', 19, 'yaelcruz417@gmail.com', '2212588969', '2001-12-19'),
	('CVCLI-7855', 'Paulo', 'Londra', 'Big', 'Ligas', 'México', 65324, 'Puebla', 'Puebla', 'Puebla de los ángele', 'Valsequillo', 'Carranza', 12, 'paulo@gmail.com', '3565435343', '1995-02-16'),
	('CVCLI-821', 'Miguel', 'Ángel', 'Flores', 'Álvarez', 'México', 76345, 'Guanajuato', 'León', 'Calvario', 'Suréste de Calvario', 'Ceneval', 14, 'miguela@gmail.com', '3726451343', '2001-11-06'),
	('CVCLI-8670', 'wdqddqwdv', 'sddsvswqd', 'qwqdqwd', 'dqwdqwd', 'México', 41412, 'Campeche', 'jndaknads', 'ansdkjnasd', 'jnkadsjnsadj', 'asdkjnkadjs', 12, 'sjda@gmail.com', '2131441432', '2021-10-04'),
	('CVCLI-8696', 'Josué', NULL, 'Vera', 'Aguilar', 'México', 43960, 'Hidalgo', 'Emiliano Zapata', 'Emiliano Zapata', 'Centro', 'Insurgentes', 12, 'josue@gmail.com', '3325352324', '2001-10-11');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Volcando estructura para tabla almacen_bd.entradas
CREATE TABLE IF NOT EXISTS `entradas` (
  `CveProducto` varchar(10) COLLATE armscii8_bin DEFAULT NULL,
  `CveProveedor` varchar(10) COLLATE armscii8_bin DEFAULT NULL,
  `CantidadEntrada` int(6) DEFAULT NULL,
  `FechaEntrada` date DEFAULT NULL,
  `NoEntrada` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`NoEntrada`),
  KEY `Entradas-Productos` (`CveProducto`),
  KEY `Entradas-Proveedores` (`CveProveedor`),
  CONSTRAINT `Entradas-Productos` FOREIGN KEY (`CveProducto`) REFERENCES `productos` (`Cve_Producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Entradas-Proveedores` FOREIGN KEY (`CveProveedor`) REFERENCES `proveedores` (`Cve_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla almacen_bd.entradas: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `entradas` DISABLE KEYS */;
INSERT INTO `entradas` (`CveProducto`, `CveProveedor`, `CantidadEntrada`, `FechaEntrada`, `NoEntrada`) VALUES
	('Prod-00', 'Prov-00', 10, '2021-09-15', 1),
	('Prod-05', 'Prov-02', 8, '2021-09-15', 2),
	('Prod-00', 'Prov-00', 9, '2021-09-15', 3),
	('Prod-09', 'Prov-06', 19, '2021-09-15', 4),
	('Prod-05', 'Prov-02', 12, '2021-09-15', 5),
	('Prod-13', 'Prov-03', 7, '2021-09-15', 6),
	('Prod-14', 'Prov-00', 12, '2021-09-15', 7),
	('Prod-02', 'Prov-08', 10, '2021-09-15', 8),
	('Prod-05', 'Prov-02', 15, '2021-09-15', 9),
	('Prod-05', 'Prov-08', 2, '2021-09-13', 10),
	('Prod-13', 'Prov-11', 13, '2021-07-16', 11),
	('Prod-05', 'Prov-11', 12, '2020-01-01', 12),
	('Prod-02', 'Prov-08', 8, '2021-09-17', 13),
	('Prod-03', 'Prov-03', 10, '2021-09-17', 14),
	('Prod-00', 'Prov-00', 3, '2021-09-17', 15),
	('Prod-09', 'Prov-06', 5, '2021-09-17', 16);
/*!40000 ALTER TABLE `entradas` ENABLE KEYS */;

-- Volcando estructura para tabla almacen_bd.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `Cve_Producto` varchar(10) COLLATE armscii8_bin NOT NULL,
  `NombreP` varchar(25) CHARACTER SET utf8 COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ContNeto` varchar(8) COLLATE armscii8_bin DEFAULT NULL,
  `Marca` varchar(25) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `Cantidad_Stok` int(6) DEFAULT NULL,
  PRIMARY KEY (`Cve_Producto`),
  KEY `Cantidad_Stok` (`Cantidad_Stok`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla almacen_bd.productos: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`Cve_Producto`, `NombreP`, `ContNeto`, `Marca`, `Cantidad_Stok`) VALUES
	('Prod-00', 'Ruffles fuego', '50 gr', 'Sabritass', 10),
	('Prod-02', 'Takis fuego', '50 g', 'Barcel', 13),
	('Prod-03', 'Mantecadas', '125 gr', 'Bimbo', 20),
	('Prod-04', 'Refresco Pepsi', '600 ml', 'PepsiCo', 99),
	('Prod-05', 'Galletas Emperador', '91 gr', 'Gamesa', 42),
	('Prod-06', 'Cerveza de lata Modelo', '355 ml', 'Grupo Modelo', 99),
	('Prod-07', 'Nito Bimbo', '62 g', 'Bimbo', 99),
	('Prod-08', 'Peñafiel manzana', '2 lts', 'Grupo Peñafiel', 99),
	('Prod-09', 'Bigotes', '60 g', 'Tia Rosa', 16),
	('Prod-10', 'Tortillinas', '310 gr', 'Tía Rosa', 99),
	('Prod-100', 'Kosako', '600 ml', 'Kosako', 110),
	('Prod-11', 'Sabritas Original', '170 gr', 'Sabritas', 99),
	('Prod-12', 'Tutsi Pop', '20 g', 'Tutsi de México', 99),
	('Prod-13', 'Donitas Espolvoreadas', '105 gr', 'Bimbo', 0),
	('Prod-14', 'Sabritas sal y limón', '45 g', 'Sabritas', 12),
	('Prod-15', 'Mazapán', '28 gr', 'De la Rosa', 12);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla almacen_bd.proveedores
CREATE TABLE IF NOT EXISTS `proveedores` (
  `Cve_Proveedor` varchar(10) COLLATE armscii8_bin NOT NULL,
  `Nombre_Proveedor` varchar(25) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `RazonSocial` varchar(40) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `Pais` varchar(15) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `CodigoPostal` int(5) NOT NULL,
  `Estado` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `Municipio` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `Ciudad` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `Colonia` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `Calle` varchar(20) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `Numero` int(6) DEFAULT NULL,
  `CorreoE` varchar(30) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `Telefono` varchar(10) COLLATE armscii8_bin DEFAULT NULL,
  PRIMARY KEY (`Cve_Proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla almacen_bd.proveedores: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` (`Cve_Proveedor`, `Nombre_Proveedor`, `RazonSocial`, `Pais`, `CodigoPostal`, `Estado`, `Municipio`, `Ciudad`, `Colonia`, `Calle`, `Numero`, `CorreoE`, `Telefono`) VALUES
	('Prov-00', 'Sabritas', 'S. de R.L. de C.V.', 'México', 32532, 'Ciudad de México', 'DF', 'Ciudad de México', 'Morelos', 'Morelos', 24, 'sabritas@gmail.com', '2133456789'),
	('Prov-01', 'Coca-Cola FEMSA', 'S.A. de C.V.', 'México', 42088, 'Hidalgo', 'Pachuca', 'Pachuca', 'Punta Azul', 'Cristal de Roca', 122, 'cocacola@gmail.com', '551710710'),
	('Prov-02', 'Gamesa', 'S.A. DE R. L.', 'México', 52321, 'Estado de México', 'Azcapotzalco', 'Industrial Vallejo', 'Industrial Vallejo', 'Matamoros', 14, 'gamesa@gmail.com', '8004263721'),
	('Prov-03', 'Grupo Bimbo', 'S.A.B de C.V.', 'México', 43647, 'Hidalgo', 'Tulancingo de Bravo', 'Tulancingo de Bravo', 'San Francisco', 'Santiago Tulantepec', 130, 'grupobimbo@gmail.com', '1501101010'),
	('Prov-04', 'PepsiCo', 'S. de R.L. de C.V.', 'México', 56618, 'Ciudad de México', 'De Los Santos', 'Sta Catarina Y.', 'Valle de Chalco', 'Iztapa', 12, 'pepsico@gmail.com', '4583256789'),
	('Prov-05', 'Manantiales Peñafiel', 'S.A', 'México', 11000, 'Estado de México ', 'Miguel Hidalgo', 'Ciudad de México', 'Lomas de Chapultepec', 'Manuel Ávila Camacho', 32, 'peñafiel@gmail.com', '55667890'),
	('Prov-06', 'Tia Rosa', 'S.A. DE C.V.', 'México', 9250, 'Ciudad de México', 'Iztapalapa', 'Iztapalapa', 'La Regadera', 'Luis Manuel Rojas', 12, 'tiarosa@gmail.com', '245735678'),
	('Prov-07', 'Tutsi de México', 'S.A. DE C.V.', 'México', 8400, 'Ciudad de México', 'Iztacalco', 'Granjas México', 'Centro', 'Goma', 230, 'tutsi@gmail.com', '5558030300'),
	('Prov-078', 'ABARROTES 4ARABIA', 'S. de R. de L.', 'México', 90208, 'Tlaxcala', 'Calpulalpan', 'Calpulalpan', 'Sarabia', 'salitreria', 11, 'LuistaRoberta@gmail.com', '7758501759'),
	('Prov-08', 'Barcel', 'S.A. de C.V.', 'México', 52000, 'Estado de México ', 'Toluca', 'Toluca', 'Insurgentes', 'Morelos', 109, 'barcel@gmail.com', '5552134789'),
	('Prov-09', 'Grupo Modelo', 'S.A. DE C.V.', 'México', 43904, 'Hidalgo', 'Apan', 'Apan', 'Acopinalco', 'SC', 0, 'grupomodelo@gmail.com', '5434567861'),
	('Prov-10', 'De la Rosa', 'S.A. de C.V.', 'México', 45609, 'Jalisco', 'Tlaquepaque', 'Tlaquepaque', 'Los cajetes', 'San Pedro', 795, 'delarosa@gmail.com', '5521345125'),
	('Prov-11', 'Abarrotes Espejel', 'S. de R.L de C.V', 'México', 90200, 'Tlaxcala', 'Calpulalpan', 'Calpulalpan', 'Espejel', 'Lazaro Cardenas', 2, 'abarrotes@itesa.com', '7756891038');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;

-- Volcando estructura para tabla almacen_bd.salidas
CREATE TABLE IF NOT EXISTS `salidas` (
  `CveProducto` varchar(10) COLLATE armscii8_bin DEFAULT NULL,
  `FechaVta` date DEFAULT NULL,
  `CveCliente` varchar(10) COLLATE armscii8_bin DEFAULT NULL,
  `CantidadVta` int(6) DEFAULT 0,
  `Vendedor` varchar(15) COLLATE armscii8_bin DEFAULT NULL,
  `NoVenta` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`NoVenta`),
  KEY `Salidas-Clientes` (`CveCliente`),
  KEY `Salidas-Productos` (`CveProducto`),
  KEY `Salidas-Usuarios` (`Vendedor`),
  CONSTRAINT `Salidas-Clientes` FOREIGN KEY (`CveCliente`) REFERENCES `clientes` (`Cve_Cliente`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `Salidas-Productos` FOREIGN KEY (`CveProducto`) REFERENCES `productos` (`Cve_Producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Volcando datos para la tabla almacen_bd.salidas: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `salidas` DISABLE KEYS */;
INSERT INTO `salidas` (`CveProducto`, `FechaVta`, `CveCliente`, `CantidadVta`, `Vendedor`, `NoVenta`) VALUES
	('Prod-13', '2021-09-15', 'CVCLI-6389', 2, 'UriY', 1),
	('Prod-00', '2021-09-15', 'CVCLI-528', 2, 'JazM', 2),
	('Prod-05', '2021-09-15', 'CVCLI-6914', 1, 'UriY', 3),
	('Prod-00', '2021-09-15', 'CVCLI-1225', 2, 'EduardoD', 4),
	('Prod-02', '2021-09-15', 'CVCLI-5638', 2, 'Luis Roberto', 5),
	('Prod-09', '2021-09-15', 'CVCLI-5426', 4, 'EsliJ', 6),
	('Prod-06', '2019-09-16', 'CVCLI-6914', 1, NULL, 9),
	('Prod-06', '2018-09-16', 'CVCLI-6914', 1, NULL, 11),
	('Prod-11', '2021-01-12', 'CVCLI-5638', 1, NULL, 12),
	('Prod-08', '2021-02-16', 'CVCLI-6389', 2, NULL, 13),
	('Prod-06', '2021-08-16', 'CVCLI-6914', 1, 'EduardoD', 15),
	('Prod-06', '2021-08-15', 'CVCLI-3445', 3, 'Luis Roberto', 16),
	('Prod-06', '2021-09-16', 'CVCLI-001', 1, 'Ricardo', 19),
	('Prod-15', '2021-09-17', 'CVCLI-001', 1, 'Ricardo', 21),
	('Prod-02', '2021-09-18', 'CVCLI-2359', 3, 'UriY', 22),
	('Prod-11', '2022-03-01', 'CVCLI-821', 1, '2', 24),
	('Prod-02', '2022-05-04', 'CVCLI-4638', 14, '12', 84),
	('Prod-02', '2022-03-01', 'CVCLI-001', 12, '2', 120);
/*!40000 ALTER TABLE `salidas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

/*Buenas Tardes, me surge otro problema, Tenemos una base de datos
de una tienda con varias tabla, queremos implementar un trigger 
que cada que en nuestra app hagan una compra se inserten los datos 
de la misma, pero para esto debo verificar si la cantidad que el 
comprador necesita esta disponible en mi tienda 
(ejemplo: si requiere 4 pz, y solo tengo 2 mande el error de que 
esa cantidad no esta disponible, y si si la ay que realice la accion 
e inserte los datos de la compra.), pensaba en un IF, 
pero no se como implementarlo.*/

/*
Este trigger esta ligado a la tabla `salidas`
Antes de realizar la insercion de registros en esta tabla, se ubica la
cantidad de stock (en existencia) del producto en especifico y se
pregunta si la cantidad a vender es igual o menor a la que hay en stock.
Si no hay la suficiente, se levanta un error a la app, si hay suficiente
cantidad en stok, se inserta el registro.
*/

DROP TRIGGER IF EXISTS validar_salida;
DELIMITER $$

CREATE TRIGGER validar_salida
 BEFORE INSERT ON salidas
 FOR EACH ROW
BEGIN
	DECLARE v_cantidad_stok INT DEFAULT 0;
    DECLARE v_mensaje VARCHAR(1000);
    
    -- Consigue el stok disponible del producto
	SELECT Cantidad_Stok INTO v_cantidad_stok
	FROM productos 
	WHERE Cve_Producto = NEW.CveProducto;
	
    -- Genera un mensaje de error, sera impreso al mandar el error a la app
    SET v_mensaje = CONCAT(
		'ERROR: No hay existencias suficientes. ',
		'CveProducto: ', NEW.CveProducto,
		', stok: ', v_cantidad_stok,
		', cantidad solicitada: ', NEW.CantidadVta,
        ', faltante: ', NEW.CantidadVta - v_cantidad_stok
	);

    
	-- checa si hay stok suficiente para la venta
    IF (v_cantidad_stok < NEW.CantidadVta) THEN
		-- Se manda un error a la app, si no hay stok suficiente para la venta.
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = v_mensaje;
	ELSE
		# Si la venta (salida) se realiza exitosamente, actualiza el stok en la tabla 'productos'
		UPDATE productos
        SET Cantidad_Stok = Cantidad_Stok - NEW.CantidadVta
        WHERE Cve_Producto = NEW.CveProducto;
	END IF;
END;
$$
DELIMITER ;

-- INSERT INTO `salidas` (`CveProducto`, `FechaVta`, `CveCliente`, `CantidadVta`, `Vendedor`, `NoVenta`) VALUES ('Prod-04', '2022-05-14', 'CVCLI-6389', 1, 'UriY', 121)

