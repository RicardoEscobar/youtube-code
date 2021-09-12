/*Mostrar el primer apellido, segundo apellido y nombre de los profesores dados de alta
en el sistema. Ordenar por primer apellido de la A a la Z
VALOR (0.5 PUNTOS)
*/
/*******************************SOLUCION************************************************/

/***************************************************************************************/

/*Mostrar los nombres de las areas de investigación ordenadas por nombre de la A a la Z
VALOR (0.5 PUNTOS)
*/
/*******************************SOLUCION************************************************/

/***************************************************************************************/

/*Mostrar los nombres de los proyectos de investigacion y el área a la que pertenecen
VALOR (1 PUNTO)
*/
/*******************************SOLUCION************************************************/

/***************************************************************************************/


/*Mostrar el primer apellido,segundo apellido y nombre de los profesores y el nombre del área a la que pertenecen
ordenar el resultado en base el primer apellido de la A a la Z
VALOR (1 PUNTO)
*/
/*******************************SOLUCION************************************************/

/***************************************************************************************/

/*Mostrar nombre,primer pellido y segundo apellido del profesor
así como el nombre del proyecto en el que participa y el rol
que tiene. Ordernar por primer apellido de la A a la Z
VALOR (2 PUNTOS)
*/
/*******************************SOLUCION************************************************/

/***************************************************************************************/

/*La siguiente sentencia busca obtener los nombres de los proyectos de 
investigación en los que está participando el profesor con número económico 1234,
pero el resultado muestra varias veces todos los proyectos. Corrijala

VALOR (1 PUNTO)
*/
SELECT proyecto_investigacion.nombre,profesor_proyecto_investigacion.rol
FROM proyecto_investigacion,profesor_proyecto_investigacion
WHERE profesor_proyecto_investigacion.profesor_numero_economico = '1234';

/*******************************SOLUCION************************************************/

/***************************************************************************************/


/*Mostrar el nombre completo (nombre primer apellido y segundo apellido) y el nombre del área del profesor
responsable del proyecto de investigación con clave = 9
(VALOR 2 PUNTOS)
*/
/*******************************SOLUCION************************************************/

/***************************************************************************************/


/*Mostrar el nombre completo (primer apellido, segundo apellido y nombre) del profesor y el nombre del proyecto de investigacion
de todos los profesores que son responsables de un proyecto
Ordenar los resultados por primer apellido de la A a la Z
(VALOR 1 PUNTO)
*/
/*******************************SOLUCION************************************************/

/***************************************************************************************/

/*Mostrar el nombre completo (primer apellido, segundo apellido y nombre) del profesor y el nombre del proyecto de investigacion
de todos los profesores que son responsables de un proyecto y que pertenecen al área de investigación con id= 3
(VALOR 1 PUNTO)
*/
/*******************************SOLUCION************************************************/

/***************************************************************************************/
