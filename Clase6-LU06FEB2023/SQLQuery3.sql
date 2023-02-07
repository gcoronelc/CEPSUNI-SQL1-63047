
/*
Problema 9. 
Desarrolle una sentencia SELECT para encontrar el importe 
recaudado por curso. 
Base de datos EDUCA.
*/

-- El criterio de agrupamiento: curso
-- Operacion: suma
-- Funcion: SUM

select cur_id, SUM(pag_importe) recaudado
from EDUCA..PAGO
group by cur_id;
go




/*
Problema 10. 
Desarrollar una sentencia SELECT para encontrar los profesores 
que tienen mas de 2 cursos programados en el ciclo actual. 
Base de datos EDUTEC.
*/

-- Filtro de filas: Ciclo actual 2023-02
-- El criterio de agrupamiento: profesor
-- Operacion: Contar
-- Funcion: COUNT
-- Filtro de grupo: Mas de 2 cursos programadas

select IdProfesor, COUNT(1) cursos
from EduTec..CursoProgramado
where IdCiclo='2022-07'
group by IdProfesor
having COUNT(1) > 2;
go


/*
Problema 11. 
Desarrollar una sentencia SELECT para encontrar la cantidad de veces
que se ha programado cada curso en cada ciclo en el presente año. 
Solo se debe mostrar los cursos que se han programado mas de 2 veces. 
Base de datos EDUTEC.
*/

-- Filtro de filas: 2023
-- Criterio de grupo: Ciclo
-- Criterio de subgrupo: Curso
-- Operacion: Contar
-- Funcion: COUNT
-- Filtro de grupo: COUNT(1) > 2 


select IdCiclo, IdCurso, COUNT(1) cantidad
from EduTec..CursoProgramado
where IdCiclo like '2022%'
group by IdCiclo, IdCurso
having COUNT(1) > 2
order by 1, 2;
go
