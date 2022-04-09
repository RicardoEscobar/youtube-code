DROP DATABASE IF EXISTS bitacora_trigger;
CREATE DATABASE bitacora_trigger;
USE bitacora_trigger;

DROP TABLE IF EXISTS `alumnos`;

CREATE TABLE `alumnos` (
  `idalumnos` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Calificacion` INT DEFAULT NULL,
  PRIMARY KEY (`idalumnos`)
);

CREATE TABLE `bitacora` (
  `idbitacora` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime,
  `executedSQL` varchar(2000) DEFAULT NULL,
  `reverseSQL` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`idbitacora`)
);

DROP TRIGGER IF EXISTS after_insert_alumnos;
DELIMITER $$
CREATE TRIGGER after_insert_alumnos
 AFTER INSERT ON alumnos
 FOR EACH ROW
BEGIN
 insert into bitacora ( fecha, executedSQL, reverseSQL )
	values(
    now(),
    -- La funcion CONCAT, junta dos valores como una cadena de caracteres.
    -- construyendo el SQL que elimina el registro recien insertado
    CONCAT("INSERT INTO alumnos (idalumnos, Nombre, Apellido, Calificacion) VALUES (",NEW.idalumnos,", """,NEW.Nombre,""", """,NEW.Apellido,""", ",NEW.Calificacion,");"),
    CONCAT("DELETE FROM alumnos WHERE idalumnos = ",  NEW.idalumnos,";")
);
END;
$$
DELIMITER ;

-- Antes de borrar un registro, almacenar su sentencia INSERT, para revertirlo a su estado anterior.
DROP TRIGGER IF EXISTS after_delete_alumnos;
DELIMITER $$
CREATE TRIGGER after_delete_alumnos
 AFTER DELETE ON alumnos
 FOR EACH ROW
BEGIN
 insert into bitacora( fecha, executedSQL, reverseSQL )
values(
	now(),
    -- La funcion CONCAT, junta dos valores como una cadena de caracteres.
    -- construyendo el SQL que elimina el registro recien insertado
    CONCAT("DELETE FROM alumnos WHERE idalumnos = ",OLD.idalumnos,";"),
    CONCAT("INSERT INTO alumnos (idalumnos, Nombre, Apellido, Calificacion) VALUES (",OLD.idalumnos,", """,OLD.Nombre,""", """,OLD.Apellido,""", ",OLD.Calificacion,");")
);
END;
$$
DELIMITER ;

-- Antes de actualizar un registro, almacenar su sentencia UPDATE para revertirlo a su estado anterior.
DROP TRIGGER IF EXISTS after_update_alumnos;
DELIMITER $$
CREATE TRIGGER after_update_alumnos
 AFTER UPDATE ON alumnos
 FOR EACH ROW
BEGIN
 insert into bitacora( fecha, executedSQL, reverseSQL)
values(   
    now(),
    -- La funcion CONCAT, junta dos valores como una cadena de caracteres.
    -- construyendo el SQL que elimina el registro recien insertado
    CONCAT("UPDATE alumnos SET idalumnos = ",NEW.idalumnos,", Nombre = """,NEW.Nombre,""", Apellido = """,NEW.Apellido,""", Calificacion = ",NEW.Calificacion," WHERE idalumnos = ", OLD.idalumnos,";"),
    CONCAT("UPDATE alumnos SET idalumnos = ",OLD.idalumnos,", Nombre = """,OLD.Nombre,""", Apellido = """,OLD.Apellido,""", Calificacion = ",OLD.Calificacion," WHERE idalumnos = ", NEW.idalumnos,";")
);
END;
$$
DELIMITER ;

-- DATA

-- INSERT INTO alumnos (Nombre, Apellido, Calificacion) VALUES ("Jorge", "Escobar", 50);
-- UPDATE alumnos SET (Calificacion = 40) WHERE id = 1;
-- DELETE FROM alumnos WHERE id = 1;

-- UPDATE alumnos SET (id = 100) WHERE id = 1;

-- INSERT INTO alumnos (Nombre, Apellido, Calificacion)
-- VALUES
--   ("Jose", "Perez", 60)
--   ("Ana", "Lopez", 70)
--   ("Rosa", "Hernandez", 80);