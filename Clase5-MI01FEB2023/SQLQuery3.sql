-- VALORES NULOS
-- ======================================================
/*
Se debe buscar siempre que no exista valores nulos en la base de datos.
El NULL signfica ausencia de valor.
Toda operación con NULL es otro NULL.
*/

select 200 + 0, 200 + null;
go


/*
Problema 19. 
Desarrollar una sentencia SELECT para consultar el ingreso 
total de cada empleado. 
Base de datos RH.
*/

select 
	idempleado, apellido, 
	nombre, sueldo, comision,
	sueldo + comision [ingreso total]
from rh..empleado;
go

select isnull(20,30);
go

select isnull(null,30);
go


select 
	idempleado, apellido, 
	nombre, sueldo, comision,
	sueldo + isnull(comision,0) [ingreso total]
from rh..empleado;
go

select 
	idempleado, apellido, 
	nombre, sueldo, comision,
	sueldo + case when comision is null then 0 else comision end [ingreso total]
from rh..empleado;
go

-- COALESCE

select COALESCE(null,null,30,null,50)
go

select 
	idempleado, apellido, 
	nombre, sueldo, comision,
	sueldo + COALESCE(comision,0) [ingreso total]
from rh..empleado;
go


/*
Pregunta 20. 
Desarrollar una sentencia SELECT para consultar los empleados 
cuyos ingresos totales es menor a 8,000.00. 
Base de datos RH.
*/


select 
	idempleado, apellido, 
	nombre, sueldo, comision,
	sueldo + COALESCE(comision,0) [ingreso total]
from rh..empleado
where sueldo + COALESCE(comision,0) < 8000;
go


/*
Problema 21. 
Desarrollar una sentencia SELECT para consultar los empleados 
que ingresaron a la empresa un mes de enero. 
Base de datos RH.
*/

select * from rh..empleado
where MONTH(fecingreso) = 1;

select * from rh..empleado
where DATEPART(month,fecingreso) = 1;

select * from rh..empleado
where DATEPART(mm,fecingreso) = 1;

/*
Problema 22. 
Desarrollar una sentencia SELECT para consultar 
las matrículas del último mes. 
Base de datos EDUCA.
*/

-- Ultimos 30 dias

select * from EDUCA..MATRICULA
where mat_fecha >= DATEADD(day,-30,getdate());
go


-- El mes actual


-- El mes anterior al actual


-- El mes de ultima matricula










