/*Mostrar el primer apellido, segundo apellido y nombre de los profesores dados de alta
en el sistema. Ordenar por primer apellido de la A a la Z
VALOR (0.5 PUNTOS)
*/
/*******************************SOLUCION************************************************/
select primer_apellido, segundo_apellido, nombre
from profesor
order by primer_apellido;
/***************************************************************************************/

/*Mostrar los nombres de las areas de investigación ordenadas por nombre de la A a la Z
VALOR (0.5 PUNTOS)
*/
/*******************************SOLUCION************************************************/
select nombre
from area
order by nombre;
/***************************************************************************************/

/*Mostrar los nombres de los proyectos de investigacion y el área a la que pertenecen
VALOR (1 PUNTO)
*/
/*******************************SOLUCION************************************************/
select
	proyecto_investigacion.nombre as proyecto,
	area.nombre as area
from proyecto_investigacion
join area on id_area = area_id_area;
/***************************************************************************************/


/*Mostrar el primer apellido,segundo apellido y nombre de los profesores y el nombre del área a la que pertenecen
ordenar el resultado en base el primer apellido de la A a la Z
VALOR (1 PUNTO)
*/
/*******************************SOLUCION************************************************/
select
    primer_apellido,
    segundo_apellido,
    profesor.nombre,
    area.nombre as area
from profesor
join area on area_id_area = id_area
order by primer_apellido;
/***************************************************************************************/

/*Mostrar nombre,primer pellido y segundo apellido del profesor
así como el nombre del proyecto en el que participa y el rol
que tiene. Ordernar por primer apellido de la A a la Z
VALOR (2 PUNTOS)
*/
/*******************************SOLUCION************************************************/
select
    profesor.nombre,
    primer_apellido,
    segundo_apellido,
    rol,
    proyecto_investigacion.nombre as proyecto
from profesor
join profesor_proyecto_investigacion on numero_economico = profesor_numero_economico
join proyecto_investigacion on id_proyecto_investigacion = proyecto_investigacion_id_proyecto_investigacion
order by primer_apellido;
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
select
    /*profesor.nombre,
    primer_apellido,
    segundo_apellido,
    rol,*/
    proyecto_investigacion.nombre as proyecto
from profesor
join profesor_proyecto_investigacion on
    numero_economico = profesor_numero_economico
    and rol = 'Participante'
join proyecto_investigacion on
    id_proyecto_investigacion = proyecto_investigacion_id_proyecto_investigacion
where numero_economico = '1234'
order by primer_apellido;
/***************************************************************************************/


/*Mostrar el nombre completo (nombre primer apellido y segundo apellido) y el nombre del área del profesor
responsable del proyecto de investigación con clave = 9
(VALOR 2 PUNTOS)
*/
/*******************************SOLUCION************************************************/
select
    profesor.nombre,
    primer_apellido,
    segundo_apellido,
    area.nombre as area
from profesor
join area on area_id_area = id_area
join profesor_proyecto_investigacion 
    on numero_economico = profesor_numero_economico
    and rol = 'Responsable'
join proyecto_investigacion on id_proyecto_investigacion = proyecto_investigacion_id_proyecto_investigacion
where id_proyecto_investigacion = 9;
/***************************************************************************************/


/*Mostrar el nombre completo (primer apellido, segundo apellido y nombre) del profesor y el nombre del proyecto de investigacion
de todos los profesores que son responsables de un proyecto
Ordenar los resultados por primer apellido de la A a la Z
(VALOR 1 PUNTO)
*/
/*******************************SOLUCION************************************************/
select
    primer_apellido,
    segundo_apellido,
    profesor.nombre,
    proyecto_investigacion.nombre as proyecto
from profesor
join area on area_id_area = id_area
join profesor_proyecto_investigacion 
    on numero_economico = profesor_numero_economico
    and rol = 'Responsable'
join proyecto_investigacion on id_proyecto_investigacion = proyecto_investigacion_id_proyecto_investigacion
order by primer_apellido;
/***************************************************************************************/

/*Mostrar el nombre completo (primer apellido, segundo apellido y nombre) del profesor y el nombre del proyecto de investigacion
de todos los profesores que son responsables de un proyecto y que pertenecen al área de investigación con id= 3
(VALOR 1 PUNTO)
*/
/*******************************SOLUCION************************************************/
select
    primer_apellido,
    segundo_apellido,
    profesor.nombre,
    proyecto_investigacion.nombre as proyecto
from profesor
join area on area_id_area = id_area
join profesor_proyecto_investigacion 
    on numero_economico = profesor_numero_economico
    and rol = 'Responsable'
join proyecto_investigacion on id_proyecto_investigacion = proyecto_investigacion_id_proyecto_investigacion
where profesor.area_id_area = 3
order by primer_apellido;
/***************************************************************************************/
