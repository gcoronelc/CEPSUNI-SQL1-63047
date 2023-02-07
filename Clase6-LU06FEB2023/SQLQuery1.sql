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
having sum(sueldo) > 30000.00;
go

-- Planilla con sueldo y comision
-- Solución de Juan Escobedo
select 	idcargo cargo,	sum(sueldo) planilla_sin_comision,	sum(sueldo + COALESCE(comision,0)) planilla_con_comisionfrom RH..empleado group by idcargo;go-- Cual es el cargo que tiene la planilla mas alta?select 
	idcargo cargo,
	sum(sueldo) planilla
from RH..empleado 
group by idcargo;
go-- Jesús: Ordenar por la 2da columna en ordes descendente
select top 1 -- Filas
	idcargo cargo,
	sum(sueldo) planilla
from RH..empleado 
group by idcargo
order by 2 desc;
go

select top 10 percent  -- Porcentaje
	idcargo cargo,
	sum(sueldo) planilla
from RH..empleado 
group by idcargo
order by planilla desc;
go

-- Edward: Funcion: Max
-- Aplicando CTE

with 
v1 as (
	select 
		idcargo cargo,
		sum(sueldo) planilla
	from RH..empleado 
	group by idcargo ),
v2 as (select max(planilla) valor_maximo from v1)
select v1.* 
from v1 join v2 
on v1.planilla=v2.valor_maximo;
go




