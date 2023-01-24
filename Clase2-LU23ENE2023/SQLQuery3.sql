

CREATE TABLE maestros.articulo2(
	art_id INT NOT NULL IDENTITY(1,1),
	art_nombre VARCHAR(100) NOT NULL,
	art_pre_costo MONEY NOT NULL,
	art_pre_venta MONEY NOT NULL,
	art_stock INT NOT NULL CONSTRAINT df_articulo_stock DEFAULT 0,
	CONSTRAINT pk_articulo PRIMARY KEY(art_id),
	CONSTRAINT u_articulo_nombre UNIQUE(art_nombre),
	CONSTRAINT chk_articulo_pre_costo CHECK(art_pre_costo >0),
	CONSTRAINT chk_articulo_pre_venta CHECK(art_pre_venta > art_pre_costo)
);
go

insert into maestros.articulo2(art_nombre,art_pre_costo,art_pre_venta,art_stock)
values('refrigeradora',3400,4500,100);
go

