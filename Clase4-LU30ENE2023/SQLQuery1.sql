
/*
Pregunta 5
El área de recursos humanos necesita una consulta que permita mostrar 
de cada empleado su sueldo actual y cuanto sería su incremento si se 
proyecta un aumento del 20% a cada uno respectivamente.
*/


SELECT idempleado,apellido,nombre,sueldo,sueldo*1.20 [Sueldo Proyectado]
FROM RH..empleado;
GO

/*
Pregunta 6
Desarrollar una sentencia SELECT para consultar el nombre y apellido 
de los empleados en una sola columna. Base de datos RH.
*/

SELECT CONCAT(nombre,', ',apellido) [Nombre completo]
FROM RH..empleado;
GO


/*
Pregunta 7
Desarrollar una sentencia SELECT para consultar el nombre y apellido 
de los profesores en una sola columna. Base de datos EDUTEC.
*/

SELECT CONCAT(NomProfesor,', ',ApeProfesor) [Nombre Completo]
FROM EDUTEC..Profesor;
go


/*
Pregunta 8
Desarrollar una consulta para consultar los datos de la tabla CURSOPROGRAMADO, 
pero se solicita las siguientes columnas:
- CODIGO: Columna IDCURSOPROG
- CURSO:  Se debe concatenar las columnas IDCICLO y IDCURSO en el siguiente formato: IDCICLO/IDCURSO
- VACANTES: Debe tener el siguiente formato: AA/BB
            Donde:
                    AA : Cantidad de matriculados
                    BB : Cantidad de vacantes programadas
- Base de datos: EDUTEC
*/

select 	IdCursoProg as CODIGO, 	CONCAT( IdCiclo, '/' ,IdCurso) as CURSO, 	CONCAT(  Matriculados,'/' ,(Vacantes + Matriculados) ) as VACANTESfrom edutec..CursoProgramado
where IdCiclo like '2022%';
go




