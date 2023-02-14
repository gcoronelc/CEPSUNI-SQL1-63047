/*
NORTHWIND

INGRESOS POR MES
CATEGORIA      ENERO   FEBRERO   MARZO   ...
------------------------------------------------------------------------
CAT1           800     840       790
CAT2           690     720       810
. . .
. . .
------------------------------------------------------------------------

*/

SELECT 
	C.CategoryName, MONTH(O.OrderDate) MES,
	SUM(OD.Quantity*OD.UnitPrice) IMPORTE
FROM Northwind..Categories C
JOIN Northwind..Products P ON C.CategoryID = P.CategoryID
JOIN Northwind..[Order Details] OD ON P.ProductID = OD.ProductID
JOIN Northwind..Orders O ON OD.OrderID = O.OrderID
GROUP BY C.CategoryName, MONTH(O.OrderDate)
ORDER BY 1,2;
GO


SELECT 
	C.CategoryName, 
	SUM(IIF(MONTH(O.OrderDate)=1,OD.Quantity*OD.UnitPrice,0)) ENERO,
	SUM(IIF(MONTH(O.OrderDate)=2,OD.Quantity*OD.UnitPrice,0)) FEBRERO,
	SUM(IIF(MONTH(O.OrderDate)=3,OD.Quantity*OD.UnitPrice,0)) MARZO,
	SUM(IIF(MONTH(O.OrderDate)=4,OD.Quantity*OD.UnitPrice,0)) ABRIL,
	SUM(IIF(MONTH(O.OrderDate)=5,OD.Quantity*OD.UnitPrice,0)) MAYO,
	SUM(IIF(MONTH(O.OrderDate)=6,OD.Quantity*OD.UnitPrice,0)) JUNIO,
	SUM(IIF(MONTH(O.OrderDate)=7,OD.Quantity*OD.UnitPrice,0)) JULIO,
	SUM(IIF(MONTH(O.OrderDate)=8,OD.Quantity*OD.UnitPrice,0)) AGOSTO,
	SUM(IIF(MONTH(O.OrderDate)=9,OD.Quantity*OD.UnitPrice,0)) SETIEMBRE,
	SUM(IIF(MONTH(O.OrderDate)=10,OD.Quantity*OD.UnitPrice,0)) OCTUBRE,
	SUM(IIF(MONTH(O.OrderDate)=11,OD.Quantity*OD.UnitPrice,0)) NOVIEMBRE,
	SUM(IIF(MONTH(O.OrderDate)=12,OD.Quantity*OD.UnitPrice,0)) DICIEMBRE,
	SUM(OD.Quantity*OD.UnitPrice) [IMPORTE TOTAL]
FROM Northwind..Categories C
JOIN Northwind..Products P ON C.CategoryID = P.CategoryID
JOIN Northwind..[Order Details] OD ON P.ProductID = OD.ProductID
JOIN Northwind..Orders O ON OD.OrderID = O.OrderID
GROUP BY C.CategoryName
ORDER BY 1
GO


SELECT 
	CategoryName, [1] AS Enero, [2] AS Febrero, [3] AS Marzo, [4] AS Abril, [5] AS Mayo,
	[6] Junio, [7] Julio, [8] Agosto, [9] Setiembre, [10] Octubre, [11] Noviembre, [12] Diciembre
FROM   
(
	SELECT 
		C.CategoryName, MONTH(O.OrderDate) MES,
		SUM(OD.Quantity*OD.UnitPrice) IMPORTE
	FROM Northwind..Categories C
	JOIN Northwind..Products P ON C.CategoryID = P.CategoryID
	JOIN Northwind..[Order Details] OD ON P.ProductID = OD.ProductID
	JOIN Northwind..Orders O ON OD.OrderID = O.OrderID
	GROUP BY C.CategoryName, MONTH(O.OrderDate)
) p  
PIVOT  
(  
	SUM (IMPORTE)  
	FOR p.MES IN  ( [1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12] )  
) AS pvt  
ORDER BY CategoryName;  