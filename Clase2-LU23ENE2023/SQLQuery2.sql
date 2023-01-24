
USE [DEMO]
GO

CREATE SCHEMA [maestros]
GO

CREATE SCHEMA [ventas]
GO

CREATE TABLE maestros.articulo(
	art_id INT NOT NULL IDENTITY(1,1),
	art_nombre VARCHAR(100) NOT NULL,
	art_pre_costo MONEY NOT NULL,
	art_pre_venta MONEY NOT NULL,
	art_stock INT NOT NULL
);
GO

-- Tablas maestras
-- Tablas transaccionales
-- Tablas seguridad
-- Tablas control
-- Tablas otros

insert into maestros.articulo values('televisor',3400,4500,100);
go

select * from maestros.articulo;
go

-- No se puede insertar un valor a una columna con IDENTITY
insert into maestros.articulo(art_id,art_nombre,art_pre_costo,art_pre_venta,art_stock)
values(1000,'refrigeradora',3400,4500,100);
go



