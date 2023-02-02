use educa;
go

select * from MATRICULA;
go

insert into matricula values(1,12,GETDATE(),5000,1000,-10);
go

update matricula 
set mat_cuotas=1, mat_precio=1200, mat_nota=null
where cur_id=1 and alu_id=12;
go

create procedure usp_listado
@curso int
as
select * from MATRICULA
where cur_id = @curso;
go

exec usp_listado 2;
go

execute usp_listado 2;
go

select 
	GETDATE(), 
	DATEADD(year,1,GETDATE()), 
	DATEADD(MM,1,GETDATE()),
	DATEADD(DAY,1,GETDATE()),
	DATEADD(year,-1,GETDATE()) 


/*
Query o Consulta
--------------------------------------------
- INSERT
- UPDATE
- DELETE
- SELECT
*/

