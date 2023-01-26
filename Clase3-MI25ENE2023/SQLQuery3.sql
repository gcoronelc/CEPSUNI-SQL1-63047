-- UPDATE

USE RH
GO

SELECT * FROM dbo.cargo;
GO

UPDATE dbo.cargo SET sueldo_min = 8500.0
WHERE idcargo = 'C15';
GO

SELECT * FROM dbo.cargo;
GO


