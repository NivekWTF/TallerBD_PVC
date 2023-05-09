use northwind

select * from Products

Select ProductID, SupplierID, UnitsInStock, ReorderLevel
from Products
where SupplierID in (
select SupplierID
from Products
where UnitsInStock < ReorderLevel
)

--sp que cada uno de los proveedores de los productos que estén por debajo de reeorderlevel comprar 20 unidades
-- de cada proveedor 
-- orden de compra, fecha, proveedor
-- orden de compra, detalle de orden de compra -- folio, producto, cantidad

select * from [Order Details]

CREATE table OrdenCompra(
orderId int not null primary key,
Fecha datetime,
proveedor int
)

declare Inventario cursor
for
Select ProductID, SupplierID
from Products
where SupplierID in (
select SupplierID
from Products
where UnitsInStock < ReorderLevel
)

Open Inventario

declare @producto int
declare @Proveedor int
fetch next from Inventario
	into @Producto, @Proveedor
select @producto, @Proveedor


close inventario
deallocate inventario

CREATE PROC ResurtirInventario
AS
INSERT OrdenCompra values (

CREATE TABLE DetalleOrdenCompra(
folio int,
productoID int,
cantidad int
)

--REVISAR CUANTOS PRODUCTOS ESTAN POR DEBAJO DE NIVEL DE REORDEN POR PROVEEDOR
select * from Products

Select ProductID, ProductName, SupplierID, UnitsInStock, ReorderLevel
from Products
where SupplierID in (
select SupplierID
from Products
where UnitsInStock < ReorderLevel
)




--


--