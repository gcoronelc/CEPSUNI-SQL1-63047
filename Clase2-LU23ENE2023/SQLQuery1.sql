
select * from sysobjects
where name = 'empleado';
go

select * from sysobjects where xtype='PK';

select * from sysobjects where xtype='U';


sp_help empleado
