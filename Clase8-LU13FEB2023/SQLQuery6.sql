/*
¿Que es una subconsulta?

Es una sentencia SELECT dentro de un Query
*/

-- Subconsulta escalar

-- ¿Quienes son los empleados que tienen el menor salario?
-- Base de datos: RH

select * 
from rh..empleado 
where sueldo = (select min(sueldo) from rh..empleado);
go


-- Subconsultas como tablas derivadas

/*
¿Quienes son los empleados con menor salario por departamento?
*/

select e.* 
from rh..empleado e
join (	select iddepartamento, min(sueldo) menor_salario
		from rh..empleado 
		group by iddepartamento ) t
on e.iddepartamento=t.iddepartamento and e.sueldo = t.menor_salario;
go


-- Subconsultas correlacionadas

/*
¿Quienes son los empleados con menor salario por departamento?
*/

select e.* 
from rh..empleado e
where sueldo = ( select min(e1.sueldo) from rh..empleado e1
				 where e.iddepartamento = e1.iddepartamento );
go


-- Subconsultas con varios valores

select * from rh..departamento 
where iddepartamento not in (select iddepartamento from rh..empleado);
go


select * from rh..departamento d 
where not exists (select 1 from rh..empleado e where d.iddepartamento = e.iddepartamento);
go


select * from rh..t_empleado2
go

insert into rh..t_empleado2
select * from rh..empleado;
go

