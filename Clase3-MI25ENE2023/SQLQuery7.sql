-- Pregunta 1
/*
Desarrolle una sentencia SELECT para consultar el nombre, apellido y correo 
de los empleados de la base de datos RH.
*/

select nombre,apellido,email
from RH..empleado;
go

-- Pregunta 2
/*
Desarrolle una sentencia SELECT para consultar el nombre, 
vacantes y precio de cada curso de la base de datos EDUCA.
*/

select cur_nombre,cur_vacantes, cur_precio 
from EDUCA..CURSO;
go
