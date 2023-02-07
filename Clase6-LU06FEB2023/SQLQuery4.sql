/*
Problema 12. 
Desarrolle una sentencia SELECT para encontrar los ingresos por mes 
y los ingresos totales. 
Base de datos EDUCA.

Aplique: GROUP BY ROLLUP ( A, B, . . . )
*/

select 
	MONTH(pag_fecha) mes,
	SUM(pag_importe) ingresos
from educa..PAGO
group by rollup ( MONTH(pag_fecha) );
go


/*
Problema 13. 
Desarrolle una sentencia SELECT para encontrar el importe de la 
planilla por cargo en cada departamento, el total por cargo, el 
total por departamento y el total general. 
Base de datos RH
Aplique: GROUP BY ROLLUP ( A, B, . . . )
*/

select iddepartamento, idcargo, SUM(sueldo) planilla
from rh..empleado
group by ROLLUP (iddepartamento, idcargo);
go

select iddepartamento, idcargo, SUM(sueldo) planilla
from rh..empleado
group by CUBE (iddepartamento, idcargo);
go

WITH 
V1 AS (
	select iddepartamento, idcargo, SUM(sueldo) planilla
	from rh..empleado
	group by CUBE (iddepartamento, idcargo) )
SELECT * FROM V1
WHERE idcargo is null or iddepartamento is Null;
go

