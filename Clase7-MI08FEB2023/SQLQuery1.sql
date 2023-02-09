
with v1 as (
	Select	
		cp.IdProfesor,
		count(1) Cursos,
		sum(cp.matriculados) matriculados,
		sum(t.Horas * t.PagoHora) as Importe
	From EduTec..CursoProgramado cp
	inner join EduTec..Curso c on (cp.IdCurso = c.IdCurso)
	inner join EduTec..Tarifa t on (c.IdTarifa = t.IdTarifa)
	where cp.IdCiclo ='2022-02'
	Group by cp.IdProfesor)
Select 
	v1.IdProfesor,
	CONCAT(p.NomProfesor,' ',p.ApeProfesor) as NomProfesor,
	v1.Cursos,
	v1.matriculados,
	v1.Importe
from v1 
join EduTec..Profesor p on v1.IdProfesor = p.IdProfesor
order by 1;
go