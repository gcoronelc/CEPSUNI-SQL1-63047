-- Planilla por cargo
select 
	idcargo cargo,
	sum(sueldo) planilla
from RH..empleado 
group by idcargo
go

-- La planilla por cargo, pero las que son mayores a 30,000.00
select 
	idcargo cargo,
	sum(sueldo) planilla
from RH..empleado 
group by idcargo
having sum(sueldo) > 30000.00;;
go

-- Planilla con sueldo y comision
-- Solución de Juan Escobedo
select 	idcargo cargo,	sum(sueldo) planilla_sin_comision,	sum(sueldo + COALESCE(comision,0)) planilla_con_comisionfrom RH..empleado group by idcargo;go
