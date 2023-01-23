


select * from dbo.empleado;
go

begin tran;
go

delete from dbo.empleado;
go

select * from dbo.empleado;
go


