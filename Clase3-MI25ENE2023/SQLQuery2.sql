-- DELETE

USE RH
GO

BEGIN TRANSACTION;
GO

SELECT * FROM dbo.cargo;
SELECT * FROM dbo.empleado;
GO

DELETE FROM dbo.cargo;
GO

DELETE FROM dbo.cargo WHERE idcargo='C01';
GO

DELETE FROM dbo.cargo WHERE idcargo = 'C15';
GO

SELECT * FROM dbo.cargo;
GO

COMMIT; -- Canfirma cambios
GO

ROLLBACK; -- Cancela cambios
GO

SELECT * FROM dbo.cargo;
GO




