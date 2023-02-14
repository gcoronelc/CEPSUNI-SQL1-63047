

SELECT 'EMPLEADO' categoria, idempleado, nombre FROM empleado
UNION 
SELECT 'DEPARTAMENTO', CAST(iddepartamento AS VARCHAR(10)), nombre FROM departamento
GO


SELECT idempleado, nombre FROM empleado
UNION 
SELECT CAST(iddepartamento AS VARCHAR(10)), nombre FROM departamento
UNION 
SELECT CAST(iddepartamento AS VARCHAR(10)), nombre FROM departamento;
GO