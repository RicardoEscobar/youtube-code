-- Crea la base de datos
CREATE DATABASE IF NOT EXISTS productos_profesor_puntos CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Usa la base de datos 
USE productos_profesor_puntos;


CREATE TABLE area (
	id_area INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(45)
) ENGINE=InnoDB;

-- Creación de la tabla profesor
CREATE TABLE profesor (
	numero_economico VARCHAR(10) PRIMARY KEY,
	nombre VARCHAR(45),
	primer_apellido VARCHAR(45),
	segundo_apellido VARCHAR(45),
	grado_academico VARCHAR(45),
	area_id_area INT NOT NULL,
	FOREIGN KEY (area_id_area) REFERENCES area (id_area)
		ON DELETE RESTRICT ON UPDATE RESTRICT) ENGINE=InnoDB;

-- Creación de la tabla proyecto_investigacion
CREATE TABLE proyecto_investigacion (
	id_proyecto_investigacion INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR (150),
	area_id_area INT NOT NULL,
	FOREIGN KEY (area_id_area) REFERENCES area(id_area)
	ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE = InnoDB;

-- Creación de la tabla profesor_proyecto_investigacion
CREATE TABLE profesor_proyecto_investigacion(
id_profesor_proyecto_investigacion INT AUTO_INCREMENT PRIMARY KEY,
rol VARCHAR(15),
profesor_numero_economico VARCHAR(10) NOT NULL,
proyecto_investigacion_id_proyecto_investigacion INT NOT NULL,
FOREIGN KEY (profesor_numero_economico) 
	REFERENCES profesor(numero_economico) 
	ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (proyecto_investigacion_id_proyecto_investigacion)
	REFERENCES proyecto_investigacion(id_proyecto_investigacion)
	ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB;



INSERT INTO `area` VALUES (1,'Optimización Combinatoria'),
(2,'Sistemas Computacionales'),
(3,'Sistemas de Información Inteligentes'),
(4,'Innovación de Sistemas'),
(5,'Estadística e Investigación de Operaciones');

INSERT INTO `profesor` VALUES ('1234','Silvia Beatriz','González','Brambila','Doctorado',2),
('2345','Rafaela Blanca','Silva','López','Doctorado',3),
('3456','Francisco Javier','Zaragoza','Martínez','Doctorado',1),
('4567','Lisaura','Rodríguez','Alvarado','Doctorado',4),
('5678','Arturo','Aguilar','Álvarez','Maestría',5),
('6789','Francisco','Cervantes','de la Torre','Doctorado',2),
('7890','Hugo','Pablo','Leyva','Maestría',3),
('8901','Javier','Ramírez','Rojas','Doctorado',1),
('9012','Jesús','Loyo','Quijada','Maestría',4),
('9876','Miguel Angel','Abreu','Hernández','Maestría',4);


INSERT INTO `proyecto_investigacion` VALUES (1,'Identificación de las variaciones control de tráfico en una zona poblada',2),
(2,'El efecto de las variaciones en la estadística compleja',5),
(3,'Problema de coloreado de gráficas',1),
(4,'Coloración de grafos robustos',1),
(5,'Navegación por visión en un entorno con obstáculos',2),
(6,'Inteligencia artificial aplicada a sistemas',3),
(7,'Desarrollo de nuevos sistemas de producción de software',3),
(8,'La seguridad en el diseño de sistemas de información',2),
(9,'Controles modernos de producción en entornos de riesgo',5);


INSERT INTO `profesor_proyecto_investigacion` VALUES (1,'Participante','1234',1),
(2,'Responsable','6789',1),
(3,'Participante','5678',1),
(4,'Participante','9876',1),
(5,'Participante','4567',2),
(6,'Responsable','9876',2),
(7,'Participante','9012',2),
(8,'Participante','8901',2),
(9,'Participante','3456',3),
(10,'Responsable','8901',3),
(11,'Participante','9876',3),
(12,'Participante','1234',3),
(13,'Participante','1234',4),
(14,'Responsable','3456',4),
(15,'Participante','8901',4),
(16,'Participante','6789',4),
(17,'Participante','6789',5),
(18,'Responsable','4567',5),
(19,'Participante','7890',5),
(20,'Participante','8901',5),
(21,'Participante','1234',6),
(22,'Responsable','7890',6),
(23,'Participante','3456',6),
(24,'Participante','2345',6),
(25,'Participante','1234',7),
(26,'Responsable','2345',7),
(27,'Participante','7890',7),
(28,'Participante','6789',7),
(29,'Participante','2345',8),
(30,'Responsable','1234',8),
(31,'Participante','1234',8),
(32,'Participante','7890',8),
(33,'Responsable','9012',9),
(34,'Participante','9876',9),
(35,'Participante','4567',9),
(36,'Participante','5678',9);



