-- Error de integridad referencial

USE RH;
GO

SELECT * FROM dbo.cargo;
GO

UPDATE dbo.cargo
SET idcargo = 'C99'
WHERE idcargo = 'C02';
GO

UPDATE dbo.cargo
SET idcargo = 'C99'
WHERE idcargo = 'C15';
GO
