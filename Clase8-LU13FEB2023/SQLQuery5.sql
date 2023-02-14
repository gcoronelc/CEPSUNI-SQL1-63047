-- CTE = Divide y venceras
/*
Se necesita saber quien es el mejor estudiante por curso del ciclo 2022-01.
Base de datos: EDUTEC
*/

-- Data base

select c.NomCurso, m.IdAlumno, m.Promedio 
from dbo.Matricula M 
join dbo.CursoProgramado cp on m.IdCursoProg = cp.IdCursoProg
join dbo.Curso c on cp.IdCurso = c.IdCurso

-- Empezando con WITH

with
data as (
	select c.NomCurso, m.IdAlumno, m.Promedio 
	from dbo.Matricula M 
	join dbo.CursoProgramado cp on m.IdCursoProg = cp.IdCursoProg
	join dbo.Curso c on cp.IdCurso = c.IdCurso
)
select * from data
go

-- Segun Lucia, el promedio por curso
with
data as (
	select c.NomCurso, m.IdAlumno, m.Promedio 
	from dbo.Matricula M 
	join dbo.CursoProgramado cp on m.IdCursoProg = cp.IdCursoProg
	join dbo.Curso c on cp.IdCurso = c.IdCurso
)
select NomCurso, MAX(promedio) mejor_promedio
from data
group by NomCurso;
go


with
data as (
	select c.NomCurso, m.IdAlumno, m.Promedio 
	from dbo.Matricula M 
	join dbo.CursoProgramado cp on m.IdCursoProg = cp.IdCursoProg
	join dbo.Curso c on cp.IdCurso = c.IdCurso
)
select NomCurso, MAX(promedio) mejor_promedio
from data
group by NomCurso;
go