/*
PRoblema 14. 
Desarrollar una sentencia SELECT que permita consultar 
los empleados que su nombre finaliza con la letra "O". 
Base de datos RH.
*/

select * 
from rh..empleado
where nombre like '%o';
go

select * 
from rh..empleado
where SUBSTRING(nombre,LEN(nombre)-1,1) = 'o';
go

select * 
from rh..empleado
where SUBSTRING(nombre,1,1) = 'c';
go


/*
Problema 15. 
Desarrollar una sentencia SELECT que permita consultar los empleados 
que su apellido tiene en la segunda posición la letra "A" o "O". 
Base de datos RH.
*/


select * 
from rh..empleado
where apellido like '_[AO]%';
go

-- ORDENAMIENTO

select * from rh..empleado
order by nombre desc;
go

select * from rh..empleado
order by 3 desc;
go







