-- FUNCIONES GREGADAS
-- ===================================================

-- COUNT

SELECT COUNT(*), COUNT(1), COUNT(0), COUNT('X') FROM RH..empleado;
GO

SELECT COUNT(comision) FROM RH..empleado;
GO

SELECT COUNT(iddepartamento) FROM RH..empleado;
GO

SELECT COUNT(DISTINCT iddepartamento) FROM RH..empleado;
GO

SELECT COUNT(1) FROM RH..empleado
WHERE comision IS NULL;
GO

SELECT * FROM RH..empleado;
GO


-- SUM
-- AVG
-- MAX
-- MIN


/*
Pregunta 1. 
Desarrolle una sentencia SELECT para calcular el importe de la planilla 
del departamento de ventas. Debe incluir el sueldo y la comisión. 
Base de datos RH.
*/

select 200+null;
go


select * from rh..departamento;
go

select 
	sum(sueldo) suma_sueldo,
	sum(comision) suma_comision,
	sum(sueldo) + sum(comision) planilla_total,
	sum(sueldo + coalesce(comision,0)) planilla_total
from rh..empleado
where iddepartamento=103;
go

/*
Problema 5. 
Desarrollar una sentencia SELECT que permita consultar el importe 
de lo que se tiene comprometido (cobrado y no cobrado) por los cursos 
vendidos hasta el momento. 
Base de datos EDUCA.
*/

/*
Suponemos que el curso de SQL Server cuesta 500 Soles.

Pedro pago 200 debe 300
Juan pago 250 debe 250
Matha pago 300 debe 200
Lucia pago 250 debe 250

Compromiso: 2000.00
Recaudado: 1000.00
Por cobrar: 1000.00

*/

delete from educa..MATRICULA where cur_id=4 and alu_id=2;
go

select * from EDUCA..MATRICULA;
go

select sum(mat_precio) from EDUCA..MATRICULA;
go

select * from EDUCA..PAGO;
go


/*
Problema 2:
Desarrolle una sentencia SELECT para encontrar el mayor y menor sueldo 
en el departamento de ventas. 
Base de datos RH.
*/

select 
	max(sueldo) sueldo_mayor,
	min(sueldo) sueldo_menor
from rh..empleado
where iddepartamento=103;
go


/*
Probela 3. 
Desarrolle una sentencia SELECT para encontrar el salario promedio en la empresa. 
Base de datos RH.
*/


select avg(sueldo) sueldo_promedio
from rh..empleado;
go



/*
Probelam 4. 
Desarrollar una sentencia SELECT que permita obtener el importe de lo 
recaudado hasta el momento por los cursos vendidos. 
Base de datos EDUCA.
*/

select sum(pag_importe) recaudado
from EDUCA..PAGO;
go




