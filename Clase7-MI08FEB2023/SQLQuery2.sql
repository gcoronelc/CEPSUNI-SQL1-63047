/*
Problema 15. 
Desarrolle una sentencia SELECT para encontrar el importe de la planilla por cada cargo, 
y el importe de la planilla por cada departamento. 
Base de datos RH.
Aplique: GROUP BY GROUPING SETS ( A, B, . . . )
*/


select iddepartamento, idcargo, sum(sueldo) planilla
from rh..empleado
group by GROUPING SETS (  (iddepartamento), (idcargo) ) 
order by 1;
go

