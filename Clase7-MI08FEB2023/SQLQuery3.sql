
select * from rh..empleado
where iddepartamento is null;

select * 
from rh..departamento d
join rh..empleado e on d.iddepartamento = e.iddepartamento;
go


-- Que empleados su sueldo es mayor al maximo permitido.

select * 
from rh..cargo c
join rh..empleado e
on c.idcargo = e.idcargo and e.sueldo > c.sueldo_max;
go


select * 
from rh..departamento d
left join rh..empleado e on d.iddepartamento = e.iddepartamento;
go

select * 
from rh..departamento d
left join rh..empleado e on d.iddepartamento = e.iddepartamento
where e.iddepartamento is null;
go

select * 
from rh..departamento d
right join rh..empleado e on d.iddepartamento = e.iddepartamento;
go

