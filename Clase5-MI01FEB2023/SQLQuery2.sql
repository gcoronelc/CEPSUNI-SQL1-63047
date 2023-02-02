/*
Pregunta 16
Desarrollar una sentencia SELECT que permita averiguar qué 
empleados tienen un sueldo mayor de 3,000.0 y menor de 10,000.0. 
Base de datos RH.
*/

select * from rh..empleado
where sueldo > 3000 and sueldo < 10000;
go



/*
Pregunta 17. 
Desarrollar una sentencia SELECT que permita averiguar quiénes son 
los empleados de los departamentos de contabilidad y ventas. 
Base de datos RH.
*/

-- Averiguar codigos
select * from rh..departamento;
go
-- Contabilidad: 101
-- Ventas: 103

select * from rh..empleado
where iddepartamento = 101 or iddepartamento = 103;
go

select * from rh..empleado
where iddepartamento in (101,103);
go





