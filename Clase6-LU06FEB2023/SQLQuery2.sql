/*
Pregunta 6. 
Desarrolle una sentencia SELECT para encontrar el salario 
promedio por departamento. 
Base de datos RH.
*/

-- El criterio de agrupamiento: departamento
-- Operacion: promedio
-- Funcion: AVG

select iddepartamento, AVG(sueldo) promedio 
from RH..empleado
group by iddepartamento;
go


/*
Problema 7. 
Desarrolle una sentencia SELECT para encontrar la cantidad de 
trabajadores por departamento. 
Base de datos RH.
*/

-- El criterio de agrupamiento: departamento
-- Operacion: Contar
-- Funcion: COUNT

select iddepartamento, COUNT(1) cantidad
from RH..empleado
group by iddepartamento;
go


/*
Problema 8. 
Desarrolle una sentencia SELECT para encontrar los departamentos 
que tienen más de 5 trabajadores. 
Base de datos RH.
*/

-- El criterio de agrupamiento: departamento
-- Operacion: Contar
-- Funcion: COUNT
-- Filtro de grupo: SI

select iddepartamento, COUNT(1) cantidad
from RH..empleado
group by iddepartamento
having COUNT(1) > 5;
go

