/*
Pregunta 9. 
Desarrollar una sentencia SELECT para consultar los empleados del departamento de contabilidad. 
Base de datos RH.
*/

-- Paso 1: Averiguar el codigo de contabilidad
select * from rh..departamento;
go
-- Codigo: 101

-- Paso 2: Consultar los empleados
select * from rh..empleado where iddepartamento=101;
go


/*
Pregunta 10. 
Desarrollar una sentencia SELECT para consultar los empleados que se desempeñan como gerentes. 
Base de datos RH.
*/



/*
Pregunta 11
Desarrollar una sentencia SELECT que permita averiguar los cursos 
que aún no tienen alumnos matriculados. 
Base de datos EDUCA.
*/

select * from EDUCA..CURSO where cur_matriculados=0;
go


/*
Pregunta 12
Desarrollar una sentencia SELECT para consultar los empleados 
de contabilidad cuyo sueldo es mayor a 10,000.00.
Base de datos RH.
*/

select * 
from RH..empleado
where iddepartamento=101 and sueldo>10000.0;
go

/*
Pregunta 13
Desarrollar una sentencia SELECT que permita averiguar los cursos que aún no tienen profesor. 
Base de datos EDUCA.
*/

select *
from EDUCA..CURSO
where cur_profesor IS NULL  ;
go

select *
from EDUCA..CURSO
where LEN(TRIM(cur_profesor)) = 0   ;
go


select *
from EDUCA..CURSO
where (cur_profesor IS NULL) OR  LEN(TRIM(cur_profesor)) = 0;
go

SELECT TRIM('GUSTAVO   ') DATO, LEN('GUSTAVO   ') LONGITUD


select *
from EDUCA..CURSO
where cur_profesor IS NULL
UNION
select *
from EDUCA..CURSO
where LEN(TRIM(cur_profesor)) = 0   ;
go



