-- SELECT

USE RH
GO

SELECT * FROM dbo.empleado
WHERE idcargo = 'C02';
GO


-- INSERT

USE RH
GO

SELECT * FROM dbo.cargo;
GO

INSERT INTO dbo.cargo VALUES('C15','Jefe',8000.0,11000.0)
GO

SELECT * FROM dbo.cargo
GO

-- TRUNCATE TABLE

USE RH
GO

SELECT * INTO dbo.emp_c02 
FROM dbo.empleado WHERE idcargo = 'C02';
GO

SELECT * FROM dbo.emp_c02
GO

TRUNCATE TABLE dbo.emp_c02
GO

SELECT * FROM dbo.emp_c02
GO



