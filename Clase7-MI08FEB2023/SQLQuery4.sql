/*
Problema 1. 
Desarrolle una sentencia SELECT para obtener un listado que incluya 
el nombre del curso con sus respectivos nombres de alumnos. 
Base de datos EDUCA.
*/

select c.cur_nombre, a.alu_nombre
from EDUCA..CURSO c
join EDUCA..MATRICULA m on c.cur_id = m.cur_id
join EDUCA..ALUMNO a on m.alu_id = a.alu_id;
go



/*
Problema 2. 
Desarrolle una sentencia SELECT que muestre el nombre del alumno y 
la suma de todos sus pagos. 
Base de datos EDUCA.
*/







/*
Problema 3. 
Desarrolle una sentencia SELECT que muestre el nombre del curso 
y la suma de todos sus pagos. 
Base de datos EDUCA.
*/



/*
Problema 5.
Desarrolle una sentencia SELECT para encontrar la cantidad 
de trabajadores en cada ciudad. 
Base de datos RH.
*/


select u.ciudad, count(1) trabajadores
from rh..empleado e
join rh..departamento d on e.iddepartamento = d.iddepartamento
join rh..ubicacion u on d.idubicacion = u.idubicacion
group by u.ciudad;
go

select count(1) from rh..empleado;
go





