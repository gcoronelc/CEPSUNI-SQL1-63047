-- No se puede insertar una valor de clave foránea que no existe como clave primaria en la tabla padre.

USE RH
GO

SET DATEFORMAT DMY

SELECT * FROM dbo.cargo;
GO

SELECT * FROM dbo.empleado;
GO

INSERT INTO 
dbo.empleado(idempleado,apellido,nombre,fecingreso,idcargo,iddepartamento,sueldo) 
VALUES ( 'E9999', 'Ramos', 'Enrique', '30-05-2011', 'C77', 104,4000.0 )
GO

INSERT INTO 
dbo.empleado(idempleado,apellido,nombre,fecingreso,idcargo,iddepartamento,sueldo) 
VALUES ( 'E9999', 'Ramos', 'Enrique', '30-05-2011', 'C99', 104,4000.0 )
GO

SELECT * FROM dbo.empleado;
GO

