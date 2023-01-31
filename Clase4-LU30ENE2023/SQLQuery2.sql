/*

WHERE: Permite filtrar las filas a consultar.
       Se debe crear una condición de filtro.

PARA CREAR LA CONDICION
--------------------------------------------
- Operadores de comparacion o relacionales: =, <>, <, <=, >, >=
- Operadores Lógicos: NOT, AND, OR
- Otros operadores: IS NULL, LIKE, BETWEEN, IN
- Con subconsultas: ALL, ANY, SOME

*/


SELECT *
FROM RH..empleado
WHERE idcargo='C01' AND idcargo='C02' AND idcargo='C03';
GO

SELECT *
FROM RH..empleado
WHERE idcargo='C01' OR idcargo='C02' OR idcargo='C03';
GO

SELECT *
FROM RH..empleado
WHERE idcargo LIKE 'C0[123]';
GO

SELECT *
FROM RH..empleado
WHERE idcargo LIKE 'C0[1-3]';
GO

SELECT *
FROM RH..empleado
WHERE idcargo NOT LIKE 'C0[1-3]';
GO

SELECT *
FROM RH..empleado
WHERE idcargo IN ('C01','C02','C03');
GO

SELECT *
FROM RH..empleado
WHERE idcargo NOT IN ('C01','C02','C03');
GO
